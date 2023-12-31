import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jobspot/src/core/config/localization/app_local.dart';
import 'package:jobspot/src/core/constants/constants.dart';
import 'package:jobspot/src/core/function/show_share_bottom_sheet.dart';
import 'package:jobspot/src/presentations/applicant_profile/cubit/applicant_profile_cubit.dart';
import 'package:jobspot/src/presentations/applicant_profile/domain/router/applicant_profile_coordinator.dart';
import 'package:jobspot/src/presentations/connection/domain/entities/post_entity.dart';
import 'package:jobspot/src/presentations/connection/domain/entities/share_post_base.dart';
import 'package:jobspot/src/presentations/connection/widgets/post_item.dart';
import 'package:jobspot/src/presentations/connection/widgets/post_item_loading.dart';

@RoutePage()
class ApplicantPostTab extends StatelessWidget {
  const ApplicantPostTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicantProfileCubit, ApplicantProfileState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async =>
              context.read<ApplicantProfileCubit>().getListPost(),
          child: ListView.separated(
            key: Key(AppLocalizations.of(context)!.key),
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            padding: const EdgeInsets.all(AppDimens.smallPadding),
            itemBuilder: (context, index) {
              if (state.listPost != null) {
                return _buildPostItem(context, post: state.listPost![index]);
              }
              return const PostItemLoading();
            },
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            itemCount: state.listPost?.length ?? 10,
          ),
        );
      },
    );
  }

  Widget _buildPostItem(BuildContext context, {required PostEntity post}) {
    return PostItem(
      post: post,
      onComment: (post) =>
          ApplicantProfileCoordinator.showFullPost(post: post, isComment: true),
      onFavourite: context.read<ApplicantProfileCubit>().favouritePost,
      onShare: context.read<ApplicantProfileCubit>().sharePost,
      onViewFullPost: (post) =>
          ApplicantProfileCoordinator.showFullPost(post: post),
      moreWidget: PopupMenuButton<int>(
        color: Colors.white,
        icon: Icon(
          FontAwesomeIcons.ellipsisVertical,
          color: AppColors.haiti,
          size: 18,
        ),
        shadowColor: Colors.black,
        itemBuilder: (BuildContext context) => [
          PopupMenuItem<int>(
            value: 0,
            child: _buildItemPopup(
              icon: AppImages.edit,
              title: AppLocal.text.applicant_profile_page_edit,
            ),
            onTap: () => post.sharePost == null
                ? ApplicantProfileCoordinator.showEditPost(post: post)
                : showShareBottomSheet(
                    context,
                    post: post.sharePost!,
                    update: UpdateSharePostEntity(
                        description: post.description, postID: post.id),
                    onShare: context.read<ApplicantProfileCubit>().sharePost,
                  ),
          ),
          PopupMenuItem<int>(
            value: 1,
            child: _buildItemPopup(
              icon: AppImages.trash,
              title: AppLocal.text.applicant_profile_page_delete,
            ),
            onTap: () => context.read<ApplicantProfileCubit>().deletePost(post),
          ),
        ],
      ),
      onViewProfile: ApplicantProfileCoordinator.showViewProfile,
      isViewProfile: false,
    );
  }

  Widget _buildItemPopup({required String title, required String icon}) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(AppColors.haiti, BlendMode.srcIn),
          width: 20,
        ),
        const SizedBox(width: 10),
        Text(title, style: AppStyles.normalTextHaiti),
      ],
    );
  }
}
