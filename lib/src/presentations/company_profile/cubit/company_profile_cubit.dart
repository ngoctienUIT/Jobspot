import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:jobspot/src/core/resources/data_state.dart';
import 'package:jobspot/src/core/utils/prefs_utils.dart';
import 'package:jobspot/src/data/entities/user_entity.dart';
import 'package:jobspot/src/presentations/applicant_profile/domain/entities/get_post_entity.dart';
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/stream_list_post_use_case.dart';
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/stream_user_info_use_case.dart';
import 'package:jobspot/src/presentations/connection/domain/entities/post_entity.dart';
import 'package:jobspot/src/presentations/view_company_profile/domain/use_cases/get_list_job_use_case.dart';
import 'package:jobspot/src/presentations/view_job/domain/entities/job_entity.dart';
import 'package:jobspot/src/presentations/view_post/domain/entities/favourite_entity.dart';
import 'package:jobspot/src/presentations/view_post/domain/use_cases/favourite_post_use_case.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'company_profile_state.dart';

@injectable
class CompanyProfileCubit extends Cubit<CompanyProfileState> {
  late TabController tabController;
  final ScrollController scrollController = ScrollController();
  StreamSubscription? _postSubscription;
  StreamSubscription? _userInfoSubscription;

  final FavouritePostUseCase _favouritePostUseCase;
  final GetListJobUseCase _getListJobUseCase;
  final StreamListPostUseCase _streamListPostUseCase;
  final StreamUserInfoUseCase _streamUserInfoUseCase;

  CompanyProfileCubit(
    this._favouritePostUseCase,
    this._streamUserInfoUseCase,
    this._streamListPostUseCase,
    this._getListJobUseCase,
  ) : super(const CompanyProfileState(isTop: false)) {
    scrollController.addListener(() {
      bool isTop = scrollController.position.pixels >=
          240 - 2 * AppBar().preferredSize.height;
      changeIsTop(isTop);
    });
    _getUserInfo();
    _getListJob();
    _getListPost();
  }

  void changeIsTop(bool isTop) => emit(state.copyWith(isTop: isTop));

  void toTab(int index) => tabController.animateTo(index);

  Future favouritePost(FavouriteEntity entity) async {
    final response = await _favouritePostUseCase.call(params: entity);
    if (response is DataFailed) {
      emit(state.copyWith(error: response.error));
    }
  }

  Future _getListJob() async {
    final response = await _getListJobUseCase.call(
        params: FirebaseAuth.instance.currentUser!.uid);
    if (response is DataSuccess) {
      emit(state.copyWith(listJob: response.data));
    } else {
      emit(state.copyWith(error: response.error));
    }
  }

  void _getListPost() {
    if (_postSubscription != null) _postSubscription!.cancel();
    _postSubscription = _streamListPostUseCase
        .call(
            params: GetPostEntity(
                limit: 15, uid: FirebaseAuth.instance.currentUser!.uid))
        .listen((event) {
      if (event is DataSuccess) {
        emit(state.copyWith(listPost: event.data));
      } else {
        emit(state.copyWith(error: event.error));
      }
    });
  }

  void _getUserInfo() {
    if (_userInfoSubscription != null) _userInfoSubscription!.cancel();
    emit(state.copyWith(user: PrefsUtils.getUserInfo()));
    _userInfoSubscription = _streamUserInfoUseCase.call().listen((event) {
      if (event is DataSuccess) {
        emit(state.copyWith(user: event.data));
      }
    });
  }

  Future openWebsite() async {
    if (await canLaunchUrlString(state.user?.website ?? "")) {
      await launchUrlString(state.user?.website ?? "");
    }
  }

  @override
  Future<void> close() {
    tabController.dispose();
    scrollController.dispose();
    if (_postSubscription != null) _postSubscription!.cancel();
    return super.close();
  }
}
