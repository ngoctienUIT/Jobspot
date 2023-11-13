// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:jobspot/injection.dart' as _i201;
import 'package:jobspot/src/core/config/router/app_router.dart' as _i9;
import 'package:jobspot/src/core/service/network_service.dart' as _i41;
import 'package:jobspot/src/presentations/add_appreciation/cubit/add_appreciation_cubit.dart'
    as _i177;
import 'package:jobspot/src/presentations/add_appreciation/data/repositories/appreciation_repository_impl.dart'
    as _i13;
import 'package:jobspot/src/presentations/add_appreciation/domain/repositories/appreciation_repository.dart'
    as _i12;
import 'package:jobspot/src/presentations/add_appreciation/domain/use_cases/add_appreciation_use_case.dart'
    as _i103;
import 'package:jobspot/src/presentations/add_appreciation/domain/use_cases/delete_appreciation_use_case.dart'
    as _i16;
import 'package:jobspot/src/presentations/add_appreciation/domain/use_cases/update_appreciation_use_case.dart'
    as _i79;
import 'package:jobspot/src/presentations/add_education/cubit/add_education_cubit.dart'
    as _i178;
import 'package:jobspot/src/presentations/add_education/data/repositories/education_repository_impl.dart'
    as _i24;
import 'package:jobspot/src/presentations/add_education/domain/repositories/education_repository.dart'
    as _i23;
import 'package:jobspot/src/presentations/add_education/domain/use_cases/add_education_use_case.dart'
    as _i104;
import 'package:jobspot/src/presentations/add_education/domain/use_cases/delete_education_use_case.dart'
    as _i121;
import 'package:jobspot/src/presentations/add_education/domain/use_cases/update_education_use_case.dart'
    as _i81;
import 'package:jobspot/src/presentations/add_job/cubit/add_job_cubit.dart'
    as _i106;
import 'package:jobspot/src/presentations/add_job/data/repositories/add_job_repository_impl.dart'
    as _i4;
import 'package:jobspot/src/presentations/add_job/domain/repositories/add_job_repository.dart'
    as _i3;
import 'package:jobspot/src/presentations/add_job/domain/use_cases/add_job_use_case.dart'
    as _i5;
import 'package:jobspot/src/presentations/add_job/domain/use_cases/update_job_use_case.dart'
    as _i84;
import 'package:jobspot/src/presentations/add_language/cubit/add_language_cubit.dart'
    as _i179;
import 'package:jobspot/src/presentations/add_language/data/repositories/language_repository_impl.dart'
    as _i40;
import 'package:jobspot/src/presentations/add_language/domain/repositories/language_repository.dart'
    as _i39;
import 'package:jobspot/src/presentations/add_language/domain/use_cases/add_language_use_case.dart'
    as _i107;
import 'package:jobspot/src/presentations/add_language/domain/use_cases/delete_language_use_case.dart'
    as _i123;
import 'package:jobspot/src/presentations/add_language/domain/use_cases/update_language_use_case.dart'
    as _i85;
import 'package:jobspot/src/presentations/add_post/cubit/add_post_cubit.dart'
    as _i108;
import 'package:jobspot/src/presentations/add_post/data/repositories/add_post_repository_impl.dart'
    as _i7;
import 'package:jobspot/src/presentations/add_post/domain/repositories/add_post_repository.dart'
    as _i6;
import 'package:jobspot/src/presentations/add_post/domain/use_cases/add_post_use_case.dart'
    as _i8;
import 'package:jobspot/src/presentations/add_post/domain/use_cases/update_post_use_case.dart'
    as _i88;
import 'package:jobspot/src/presentations/add_resume/cubit/add_resume_cubit.dart'
    as _i180;
import 'package:jobspot/src/presentations/add_resume/data/repositories/resume_repository_impl.dart'
    as _i49;
import 'package:jobspot/src/presentations/add_resume/domain/repositories/resume_repository.dart'
    as _i48;
import 'package:jobspot/src/presentations/add_resume/domain/use_cases/add_resume_use_case.dart'
    as _i110;
import 'package:jobspot/src/presentations/add_resume/domain/use_cases/delete_resume_use_case.dart'
    as _i126;
import 'package:jobspot/src/presentations/add_skill/cubit/add_skill_cubit.dart'
    as _i181;
import 'package:jobspot/src/presentations/add_skill/data/repositories/skill_repository_impl.dart'
    as _i68;
import 'package:jobspot/src/presentations/add_skill/domain/repositories/skill_repository.dart'
    as _i67;
import 'package:jobspot/src/presentations/add_skill/domain/use_cases/get_list_skill_use_case.dart'
    as _i141;
import 'package:jobspot/src/presentations/add_skill/domain/use_cases/update_skill_use_case.dart'
    as _i89;
import 'package:jobspot/src/presentations/add_work_experience/cubit/add_work_experience_cubit.dart'
    as _i182;
import 'package:jobspot/src/presentations/add_work_experience/data/repositories/experience_repository_impl.dart'
    as _i26;
import 'package:jobspot/src/presentations/add_work_experience/domain/repositories/experience_repository.dart'
    as _i25;
import 'package:jobspot/src/presentations/add_work_experience/domain/use_cases/add_experience_use_case.dart'
    as _i105;
import 'package:jobspot/src/presentations/add_work_experience/domain/use_cases/delete_experience_use_case.dart'
    as _i122;
import 'package:jobspot/src/presentations/add_work_experience/domain/use_cases/update_experience_use_case.dart'
    as _i82;
import 'package:jobspot/src/presentations/applicant_profile/cubit/applicant_profile_cubit.dart'
    as _i198;
import 'package:jobspot/src/presentations/applicant_profile/data/repositories/applicant_profile_repository_impl.dart'
    as _i11;
import 'package:jobspot/src/presentations/applicant_profile/domain/repositories/applicant_profile_repository.dart'
    as _i10;
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/delete_post_use_case.dart'
    as _i18;
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/get_skill_use_case.dart'
    as _i30;
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/stream_appreciation_use_case.dart'
    as _i69;
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/stream_education_use_case.dart'
    as _i70;
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/stream_list_post_use_case.dart'
    as _i71;
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/stream_resume_use_case.dart'
    as _i73;
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/stream_user_info_use_case.dart'
    as _i74;
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/stream_work_experience_use_case.dart'
    as _i75;
import 'package:jobspot/src/presentations/applicant_profile/domain/use_cases/update_about_me_use_case.dart'
    as _i78;
import 'package:jobspot/src/presentations/apply_job/cubit/apply_job_cubit.dart'
    as _i183;
import 'package:jobspot/src/presentations/apply_job/data/repositories/apply_job_repository_impl.dart'
    as _i112;
import 'package:jobspot/src/presentations/apply_job/domain/repositories/apply_job_repository.dart'
    as _i111;
import 'package:jobspot/src/presentations/apply_job/domain/use_cases/apply_job_use_case.dart'
    as _i113;
import 'package:jobspot/src/presentations/company_profile/cubit/company_profile_cubit.dart'
    as _i199;
import 'package:jobspot/src/presentations/company_profile/data/repositories/company_profile_repository_impl.dart'
    as _i15;
import 'package:jobspot/src/presentations/company_profile/domain/repositories/company_profile_repository.dart'
    as _i14;
import 'package:jobspot/src/presentations/company_profile/domain/use_cases/delete_job_use_case.dart'
    as _i17;
import 'package:jobspot/src/presentations/connection/cubit/connection_cubit.dart'
    as _i200;
import 'package:jobspot/src/presentations/connection/data/repositories/connection_repository_impl.dart'
    as _i116;
import 'package:jobspot/src/presentations/connection/domain/repositories/connection_repository.dart'
    as _i115;
import 'package:jobspot/src/presentations/connection/domain/use_cases/fetch_post_use_case.dart'
    as _i131;
import 'package:jobspot/src/presentations/connection/domain/use_cases/share_post_use_case.dart'
    as _i160;
import 'package:jobspot/src/presentations/edit_applicant_profile/cubit/edit_applicant_profile_cubit.dart'
    as _i127;
import 'package:jobspot/src/presentations/edit_applicant_profile/data/repositories/edit_applicant_profile_repository_impl.dart'
    as _i20;
import 'package:jobspot/src/presentations/edit_applicant_profile/domain/repositories/edit_applicant_profile_repository.dart'
    as _i19;
import 'package:jobspot/src/presentations/edit_applicant_profile/domain/use_cases/update_user_info_use_case.dart'
    as _i91;
import 'package:jobspot/src/presentations/edit_company_profile/cubit/edit_company_profile_cubit.dart'
    as _i128;
import 'package:jobspot/src/presentations/edit_company_profile/data/repositories/edit_company_profile_repository_impl.dart'
    as _i22;
import 'package:jobspot/src/presentations/edit_company_profile/domain/repositories/edit_company_profile_repository.dart'
    as _i21;
import 'package:jobspot/src/presentations/edit_company_profile/domain/use_cases/update_company_info_use_case.dart'
    as _i80;
import 'package:jobspot/src/presentations/follow/cubit/follow_cubit.dart'
    as _i132;
import 'package:jobspot/src/presentations/follow/data/repositories/follow_repository_impl.dart'
    as _i28;
import 'package:jobspot/src/presentations/follow/domain/repositories/follow_repository.dart'
    as _i27;
import 'package:jobspot/src/presentations/follow/domain/use_cases/get_list_follow_use_case.dart'
    as _i29;
import 'package:jobspot/src/presentations/home_admin/cubit/home_admin_cubit.dart'
    as _i145;
import 'package:jobspot/src/presentations/home_admin/data/repositories/home_admin_repository_impl.dart'
    as _i32;
import 'package:jobspot/src/presentations/home_admin/domain/repositories/home_admin_repository.dart'
    as _i31;
import 'package:jobspot/src/presentations/home_admin/domain/use_cases/consider_company_use_case.dart'
    as _i117;
import 'package:jobspot/src/presentations/home_admin/domain/use_cases/get_list_company_pending_use_case.dart'
    as _i138;
import 'package:jobspot/src/presentations/home_applicant/cubit/home_applicant_cubit.dart'
    as _i146;
import 'package:jobspot/src/presentations/home_applicant/data/repositories/home_applicant_repository_impl.dart'
    as _i34;
import 'package:jobspot/src/presentations/home_applicant/domain/repositories/home_applicant_repository.dart'
    as _i33;
import 'package:jobspot/src/presentations/home_applicant/domain/use_cases/fetch_job_use_case.dart'
    as _i130;
import 'package:jobspot/src/presentations/home_applicant/domain/use_cases/save_job_use_case.dart'
    as _i52;
import 'package:jobspot/src/presentations/home_company/cubit/home_company_cubit.dart'
    as _i147;
import 'package:jobspot/src/presentations/home_company/data/repositories/home_company_repository_impl.dart'
    as _i36;
import 'package:jobspot/src/presentations/home_company/domain/repositories/home_company_repository.dart'
    as _i35;
import 'package:jobspot/src/presentations/home_company/domain/use_cases/get_list_my_job_use_case.dart'
    as _i139;
import 'package:jobspot/src/presentations/job_position/cubit/job_position_cubit.dart'
    as _i148;
import 'package:jobspot/src/presentations/job_position/data/repositories/job_position_repository_impl.dart'
    as _i38;
import 'package:jobspot/src/presentations/job_position/domain/repositories/job_position_repository.dart'
    as _i37;
import 'package:jobspot/src/presentations/job_position/domain/use_cases/search_job_position_use_case.dart'
    as _i53;
import 'package:jobspot/src/presentations/main/cubit/main_cubit.dart' as _i150;
import 'package:jobspot/src/presentations/notification/cubit/notification_cubit.dart'
    as _i151;
import 'package:jobspot/src/presentations/notification/data/repositories/notification_repository_impl.dart'
    as _i43;
import 'package:jobspot/src/presentations/notification/domain/repositories/notification_repository.dart'
    as _i42;
import 'package:jobspot/src/presentations/notification/domain/use_cases/delete_notification_from_id_use_case.dart'
    as _i124;
import 'package:jobspot/src/presentations/notification/domain/use_cases/delete_notification_use_case.dart'
    as _i125;
import 'package:jobspot/src/presentations/notification/domain/use_cases/read_all_notification_use_case.dart'
    as _i44;
import 'package:jobspot/src/presentations/notification/domain/use_cases/read_notification_use_case.dart'
    as _i45;
import 'package:jobspot/src/presentations/notification/domain/use_cases/send_notification_use_case.dart'
    as _i59;
import 'package:jobspot/src/presentations/notification/domain/use_cases/stream_notification_use_case.dart'
    as _i72;
import 'package:jobspot/src/presentations/notification/domain/use_cases/update_token_use_case.dart'
    as _i90;
import 'package:jobspot/src/presentations/register_google/cubit/register_google_cubit.dart'
    as _i154;
import 'package:jobspot/src/presentations/register_google/data/repositories/register_google_repository_impl.dart'
    as _i47;
import 'package:jobspot/src/presentations/register_google/domain/repositories/register_google_repository.dart'
    as _i46;
import 'package:jobspot/src/presentations/register_google/domain/use_cases/update_info_user_use_case.dart'
    as _i83;
import 'package:jobspot/src/presentations/save_job/cubit/save_job_cubit.dart'
    as _i156;
import 'package:jobspot/src/presentations/save_job/data/repositories/save_job_repository_impl.dart'
    as _i51;
import 'package:jobspot/src/presentations/save_job/domain/repositories/save_job_repository.dart'
    as _i50;
import 'package:jobspot/src/presentations/save_job/domain/use_cases/delete_all_save_job_use_case.dart'
    as _i120;
import 'package:jobspot/src/presentations/save_job/domain/use_cases/listen_save_job_use_case.dart'
    as _i149;
import 'package:jobspot/src/presentations/search_job/cubit/search_job_cubit.dart'
    as _i157;
import 'package:jobspot/src/presentations/search_job/data/repositories/search_job_repository_impl.dart'
    as _i55;
import 'package:jobspot/src/presentations/search_job/domain/repositories/search_job_repository.dart'
    as _i54;
import 'package:jobspot/src/presentations/search_job/domain/use_cases/search_job_use_case.dart'
    as _i56;
import 'package:jobspot/src/presentations/search_language/cubit/search_language_cubit.dart'
    as _i158;
import 'package:jobspot/src/presentations/search_language/data/repositories/search_language_repository_impl.dart'
    as _i58;
import 'package:jobspot/src/presentations/search_language/domain/repositories/search_language_repository.dart'
    as _i57;
import 'package:jobspot/src/presentations/search_language/domain/use_cases/get_countries_use_case.dart'
    as _i134;
import 'package:jobspot/src/presentations/setting/cubit/setting_cubit.dart'
    as _i159;
import 'package:jobspot/src/presentations/setting/data/repositories/setting_repository_impl.dart'
    as _i61;
import 'package:jobspot/src/presentations/setting/domain/repositories/setting_repository.dart'
    as _i60;
import 'package:jobspot/src/presentations/setting/domain/use_cases/delete_account_use_case.dart'
    as _i119;
import 'package:jobspot/src/presentations/sign_in/cubit/sign_in_cubit.dart'
    as _i193;
import 'package:jobspot/src/presentations/sign_in/data/repositories/sign_in_repository_impl.dart'
    as _i64;
import 'package:jobspot/src/presentations/sign_in/domain/repositories/sign_in_repository.dart'
    as _i63;
import 'package:jobspot/src/presentations/sign_in/domain/use_cases/sign_in_email_password_use_case.dart'
    as _i161;
import 'package:jobspot/src/presentations/sign_in/domain/use_cases/sign_in_google_use_case.dart'
    as _i162;
import 'package:jobspot/src/presentations/sign_up/cubit/sign_up_cubit.dart'
    as _i163;
import 'package:jobspot/src/presentations/sign_up/data/repositories/sign_up_repository_impl.dart'
    as _i66;
import 'package:jobspot/src/presentations/sign_up/domain/repositories/sign_up_repository.dart'
    as _i65;
import 'package:jobspot/src/presentations/sign_up/domain/use_cases/register_applicant_use_case.dart'
    as _i152;
import 'package:jobspot/src/presentations/sign_up/domain/use_cases/register_business_use_case.dart'
    as _i153;
import 'package:jobspot/src/presentations/sign_up/domain/use_cases/register_google_use_case.dart'
    as _i155;
import 'package:jobspot/src/presentations/test_iq/cubit/test_iq_cubit.dart'
    as _i165;
import 'package:jobspot/src/presentations/test_iq/data/repositories/test_iq_repository_impl.dart'
    as _i77;
import 'package:jobspot/src/presentations/test_iq/domain/repositories/test_iq_repository.dart'
    as _i76;
import 'package:jobspot/src/presentations/test_iq/domain/use_cases/add_result_test_iq_use_case.dart'
    as _i109;
import 'package:jobspot/src/presentations/test_iq/domain/use_cases/get_list_question_use_case.dart'
    as _i140;
import 'package:jobspot/src/presentations/update_password/cubit/update_password_cubit.dart'
    as _i166;
import 'package:jobspot/src/presentations/update_password/data/repositories/update_password_repository_impl.dart'
    as _i87;
import 'package:jobspot/src/presentations/update_password/domain/repositories/update_password_repository.dart'
    as _i86;
import 'package:jobspot/src/presentations/update_password/domain/use_cases/change_password_use_case.dart'
    as _i114;
import 'package:jobspot/src/presentations/update_password/domain/use_cases/validate_password_use_case.dart'
    as _i92;
import 'package:jobspot/src/presentations/verify_business/cubit/verify_business_cubit.dart'
    as _i168;
import 'package:jobspot/src/presentations/verify_business/data/repositories/verify_business_repository_impl.dart'
    as _i94;
import 'package:jobspot/src/presentations/verify_business/domain/repositories/verify_business_repository.dart'
    as _i93;
import 'package:jobspot/src/presentations/verify_business/domain/use_cases/upload_file_verify_business_use_case.dart'
    as _i167;
import 'package:jobspot/src/presentations/view_applicant_profile/cubit/view_applicant_profile_cubit.dart'
    as _i195;
import 'package:jobspot/src/presentations/view_applicant_profile/data/repositories/view_applicant_profile_repository_impl.dart'
    as _i96;
import 'package:jobspot/src/presentations/view_applicant_profile/domain/repositories/view_applicant_profile_repository.dart'
    as _i95;
import 'package:jobspot/src/presentations/view_applicant_profile/domain/use_cases/get_appreciation_use_case.dart'
    as _i133;
import 'package:jobspot/src/presentations/view_applicant_profile/domain/use_cases/get_education_use_case.dart'
    as _i135;
import 'package:jobspot/src/presentations/view_applicant_profile/domain/use_cases/get_language_use_case.dart'
    as _i136;
import 'package:jobspot/src/presentations/view_applicant_profile/domain/use_cases/get_resume_use_case.dart'
    as _i142;
import 'package:jobspot/src/presentations/view_applicant_profile/domain/use_cases/get_user_info_use_case.dart'
    as _i143;
import 'package:jobspot/src/presentations/view_applicant_profile/domain/use_cases/get_work_experience_use_case.dart'
    as _i144;
import 'package:jobspot/src/presentations/view_company_profile/cubit/view_company_profile_cubit.dart'
    as _i196;
import 'package:jobspot/src/presentations/view_company_profile/data/repositories/view_company_profile_repository_impl.dart'
    as _i170;
import 'package:jobspot/src/presentations/view_company_profile/domain/repositories/view_company_profile_repository.dart'
    as _i169;
import 'package:jobspot/src/presentations/view_company_profile/domain/use_cases/follow_user_use_case.dart'
    as _i188;
import 'package:jobspot/src/presentations/view_company_profile/domain/use_cases/get_list_job_use_case.dart'
    as _i189;
import 'package:jobspot/src/presentations/view_job/cubit/view_job_cubit.dart'
    as _i172;
import 'package:jobspot/src/presentations/view_job/data/repositories/view_job_repository_impl.dart'
    as _i100;
import 'package:jobspot/src/presentations/view_job/domain/repositories/view_job_repository.dart'
    as _i99;
import 'package:jobspot/src/presentations/view_job/domain/use_cases/fetch_job_use_case.dart'
    as _i129;
import 'package:jobspot/src/presentations/view_job_applicant/cubit/view_job_applicant_cubit.dart'
    as _i171;
import 'package:jobspot/src/presentations/view_job_applicant/data/repositories/view_job_applicant_repository_impl.dart'
    as _i98;
import 'package:jobspot/src/presentations/view_job_applicant/domain/repositories/view_job_applicant_repository.dart'
    as _i97;
import 'package:jobspot/src/presentations/view_job_applicant/domain/use_cases/consider_resume_use_case.dart'
    as _i118;
import 'package:jobspot/src/presentations/view_job_applicant/domain/use_cases/get_list_applicant_use_case.dart'
    as _i137;
import 'package:jobspot/src/presentations/view_language/cubit/view_language_cubit.dart'
    as _i173;
import 'package:jobspot/src/presentations/view_language/data/repositories/view_language_repository_impl.dart'
    as _i102;
import 'package:jobspot/src/presentations/view_language/domain/repositories/view_language_repository.dart'
    as _i101;
import 'package:jobspot/src/presentations/view_language/domain/use_cases/stream_language_use_case.dart'
    as _i164;
import 'package:jobspot/src/presentations/view_post/bloc/view_post_bloc.dart'
    as _i197;
import 'package:jobspot/src/presentations/view_post/data/repositories/view_post_repository_impl.dart'
    as _i175;
import 'package:jobspot/src/presentations/view_post/domain/repositories/view_post_repository.dart'
    as _i174;
import 'package:jobspot/src/presentations/view_post/domain/use_cases/delete_comment_use_case.dart'
    as _i184;
import 'package:jobspot/src/presentations/view_post/domain/use_cases/favourite_comment_use_case.dart'
    as _i185;
import 'package:jobspot/src/presentations/view_post/domain/use_cases/favourite_post_use_case.dart'
    as _i186;
import 'package:jobspot/src/presentations/view_post/domain/use_cases/fetch_data_comment_first_level_use_case.dart'
    as _i187;
import 'package:jobspot/src/presentations/view_post/domain/use_cases/get_reply_comment_use_case.dart'
    as _i190;
import 'package:jobspot/src/presentations/view_post/domain/use_cases/reply_comment_use_case.dart'
    as _i191;
import 'package:jobspot/src/presentations/view_post/domain/use_cases/send_comment_use_case.dart'
    as _i192;
import 'package:jobspot/src/presentations/view_post/domain/use_cases/sync_post_data_use_case.dart'
    as _i194;
import 'package:jobspot/src/presentations/view_test_iq/cubit/view_test_iq_cubit.dart'
    as _i176;
import 'package:shared_preferences/shared_preferences.dart' as _i62;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.lazySingleton<_i3.AddJobRepository>(() => _i4.AddJobRepositoryImpl());
    gh.lazySingleton<_i5.AddJobUseCase>(
        () => _i5.AddJobUseCase(gh<_i3.AddJobRepository>()));
    gh.lazySingleton<_i6.AddPostRepository>(() => _i7.AddPostRepositoryImpl());
    gh.lazySingleton<_i8.AddPostUseCase>(
        () => _i8.AddPostUseCase(gh<_i6.AddPostRepository>()));
    gh.lazySingleton<_i9.AppRouter>(() => _i9.AppRouter());
    gh.lazySingleton<_i10.ApplicantProfileRepository>(
        () => _i11.ApplicantProfileRepositoryImpl());
    gh.lazySingleton<_i12.AppreciationRepository>(
        () => _i13.AppreciationRepositoryImpl());
    gh.lazySingleton<_i14.CompanyProfileRepository>(
        () => _i15.CompanyProfileRepositoryImpl());
    gh.lazySingleton<_i16.DeleteAppreciationUseCase>(() =>
        _i16.DeleteAppreciationUseCase(gh<_i12.AppreciationRepository>()));
    gh.lazySingleton<_i17.DeleteJobUseCase>(
        () => _i17.DeleteJobUseCase(gh<_i14.CompanyProfileRepository>()));
    gh.lazySingleton<_i18.DeletePostUseCase>(
        () => _i18.DeletePostUseCase(gh<_i10.ApplicantProfileRepository>()));
    gh.lazySingleton<_i19.EditApplicantProfileRepository>(
        () => _i20.EditApplicantProfileRepositoryImpl());
    gh.lazySingleton<_i21.EditCompanyProfileRepository>(
        () => _i22.EditCompanyProfileRepositoryImpl());
    gh.lazySingleton<_i23.EducationRepository>(
        () => _i24.EducationRepositoryImpl());
    gh.lazySingleton<_i25.ExperienceRepository>(
        () => _i26.ExperienceRepositoryImpl());
    gh.lazySingleton<_i27.FollowRepository>(() => _i28.FollowRepositoryImpl());
    gh.lazySingleton<_i29.GetListFollowUseCase>(
        () => _i29.GetListFollowUseCase(gh<_i27.FollowRepository>()));
    gh.factory<_i30.GetSkillUseCase>(
        () => _i30.GetSkillUseCase(gh<_i10.ApplicantProfileRepository>()));
    gh.lazySingleton<_i31.HomeAdminRepository>(
        () => _i32.HomeAdminRepositoryImpl());
    gh.lazySingleton<_i33.HomeApplicantRepository>(
        () => _i34.HomeApplicantRepositoryImpl());
    gh.lazySingleton<_i35.HomeCompanyRepository>(
        () => _i36.HomeCompanyRepositoryImpl());
    gh.lazySingleton<_i37.JobPositionRepository>(
        () => _i38.JobPositionRepositoryImpl());
    gh.lazySingleton<_i39.LanguageRepository>(
        () => _i40.LanguageRepositoryImpl());
    gh.lazySingleton<_i41.NetworkService>(() => _i41.NetworkService());
    gh.lazySingleton<_i42.NotificationRepository>(
        () => _i43.NotificationRepositoryImpl());
    gh.lazySingleton<_i44.ReadAllNotificationUseCase>(() =>
        _i44.ReadAllNotificationUseCase(gh<_i42.NotificationRepository>()));
    gh.lazySingleton<_i45.ReadNotificationUseCase>(
        () => _i45.ReadNotificationUseCase(gh<_i42.NotificationRepository>()));
    gh.lazySingleton<_i46.RegisterGoogleRepository>(
        () => _i47.RegisterGoogleRepositoryImpl());
    gh.lazySingleton<_i48.ResumeRepository>(() => _i49.ResumeRepositoryImpl());
    gh.lazySingleton<_i50.SaveJobRepository>(
        () => _i51.SaveJobRepositoryImpl());
    gh.lazySingleton<_i52.SaveJobUseCase>(
        () => _i52.SaveJobUseCase(gh<_i33.HomeApplicantRepository>()));
    gh.factory<_i53.SearchJobPositionUseCase>(
        () => _i53.SearchJobPositionUseCase(gh<_i37.JobPositionRepository>()));
    gh.lazySingleton<_i54.SearchJobRepository>(
        () => _i55.SearchJobRepositoryImpl());
    gh.lazySingleton<_i56.SearchJobUseCase>(
        () => _i56.SearchJobUseCase(gh<_i54.SearchJobRepository>()));
    gh.lazySingleton<_i57.SearchLanguageRepository>(
        () => _i58.SearchLanguageRepositoryImpl());
    gh.lazySingleton<_i59.SendNotificationUseCase>(
        () => _i59.SendNotificationUseCase(gh<_i42.NotificationRepository>()));
    gh.lazySingleton<_i60.SettingRepository>(
        () => _i61.SettingRepositoryImpl());
    await gh.lazySingletonAsync<_i62.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i63.SignInRepository>(() => _i64.LoginRepositoryImpl());
    gh.lazySingleton<_i65.SignUpRepository>(() => _i66.SignUpRepositoryImpl());
    gh.lazySingleton<_i67.SkillRepository>(() => _i68.SkillRepositoryImpl());
    gh.lazySingleton<_i69.StreamAppreciationUseCase>(() =>
        _i69.StreamAppreciationUseCase(gh<_i10.ApplicantProfileRepository>()));
    gh.factory<_i70.StreamEducationUseCase>(() =>
        _i70.StreamEducationUseCase(gh<_i10.ApplicantProfileRepository>()));
    gh.lazySingleton<_i71.StreamListPostUseCase>(() =>
        _i71.StreamListPostUseCase(gh<_i10.ApplicantProfileRepository>()));
    gh.lazySingleton<_i72.StreamNotificationUseCase>(() =>
        _i72.StreamNotificationUseCase(gh<_i42.NotificationRepository>()));
    gh.lazySingleton<_i73.StreamResumeUseCase>(
        () => _i73.StreamResumeUseCase(gh<_i10.ApplicantProfileRepository>()));
    gh.lazySingleton<_i74.StreamUserInfoUseCase>(() =>
        _i74.StreamUserInfoUseCase(gh<_i10.ApplicantProfileRepository>()));
    gh.lazySingleton<_i75.StreamWorkExperienceUseCase>(() =>
        _i75.StreamWorkExperienceUseCase(
            gh<_i10.ApplicantProfileRepository>()));
    gh.lazySingleton<_i76.TestIQRepository>(() => _i77.TestIQRepositoryImpl());
    gh.lazySingleton<_i78.UpdateAboutMeUseCase>(
        () => _i78.UpdateAboutMeUseCase(gh<_i10.ApplicantProfileRepository>()));
    gh.lazySingleton<_i79.UpdateAppreciationUseCase>(() =>
        _i79.UpdateAppreciationUseCase(gh<_i12.AppreciationRepository>()));
    gh.lazySingleton<_i80.UpdateCompanyInfoUseCase>(() =>
        _i80.UpdateCompanyInfoUseCase(gh<_i21.EditCompanyProfileRepository>()));
    gh.lazySingleton<_i81.UpdateEducationUseCase>(
        () => _i81.UpdateEducationUseCase(gh<_i23.EducationRepository>()));
    gh.lazySingleton<_i82.UpdateExperienceUseCase>(
        () => _i82.UpdateExperienceUseCase(gh<_i25.ExperienceRepository>()));
    gh.lazySingleton<_i83.UpdateInfoUserUseCase>(
        () => _i83.UpdateInfoUserUseCase(gh<_i46.RegisterGoogleRepository>()));
    gh.factory<_i84.UpdateJobUseCase>(
        () => _i84.UpdateJobUseCase(gh<_i3.AddJobRepository>()));
    gh.lazySingleton<_i85.UpdateLanguageUseCase>(
        () => _i85.UpdateLanguageUseCase(gh<_i39.LanguageRepository>()));
    gh.lazySingleton<_i86.UpdatePasswordRepository>(
        () => _i87.UpdatePasswordRepositoryImpl());
    gh.lazySingleton<_i88.UpdatePostUseCase>(
        () => _i88.UpdatePostUseCase(gh<_i6.AddPostRepository>()));
    gh.factory<_i89.UpdateSkillUseCase>(
        () => _i89.UpdateSkillUseCase(gh<_i67.SkillRepository>()));
    gh.lazySingleton<_i90.UpdateTokenUseCase>(
        () => _i90.UpdateTokenUseCase(gh<_i42.NotificationRepository>()));
    gh.lazySingleton<_i91.UpdateUserInfoUseCase>(() =>
        _i91.UpdateUserInfoUseCase(gh<_i19.EditApplicantProfileRepository>()));
    gh.lazySingleton<_i92.ValidatePassworkUseCase>(() =>
        _i92.ValidatePassworkUseCase(gh<_i86.UpdatePasswordRepository>()));
    gh.lazySingleton<_i93.VerifyBusinessRepository>(
        () => _i94.VerifyBusinessRepositoryImpl());
    gh.lazySingleton<_i95.ViewApplicantProfileRepository>(
        () => _i96.ViewApplicantProfileRepositoryImpl());
    gh.lazySingleton<_i97.ViewJobApplicantRepository>(() =>
        _i98.ViewJobApplicantRepositoryImpl(
            gh<_i59.SendNotificationUseCase>()));
    gh.lazySingleton<_i99.ViewJobRepository>(
        () => _i100.ViewJobRepositoryImpl());
    gh.lazySingleton<_i101.ViewLanguageRepository>(
        () => _i102.ViewLanguageRepositoryImpl());
    gh.lazySingleton<_i103.AddAppreciationUseCase>(
        () => _i103.AddAppreciationUseCase(gh<_i12.AppreciationRepository>()));
    gh.lazySingleton<_i104.AddEducationUseCase>(
        () => _i104.AddEducationUseCase(gh<_i23.EducationRepository>()));
    gh.lazySingleton<_i105.AddExperienceUseCase>(
        () => _i105.AddExperienceUseCase(gh<_i25.ExperienceRepository>()));
    gh.factory<_i106.AddJobCubit>(() => _i106.AddJobCubit(
          gh<_i5.AddJobUseCase>(),
          gh<_i84.UpdateJobUseCase>(),
        ));
    gh.lazySingleton<_i107.AddLanguageUseCase>(
        () => _i107.AddLanguageUseCase(gh<_i39.LanguageRepository>()));
    gh.factory<_i108.AddPostCubit>(() => _i108.AddPostCubit(
          gh<_i8.AddPostUseCase>(),
          gh<_i88.UpdatePostUseCase>(),
        ));
    gh.lazySingleton<_i109.AddResultTestIQUseCase>(
        () => _i109.AddResultTestIQUseCase(gh<_i76.TestIQRepository>()));
    gh.lazySingleton<_i110.AddResumeUseCase>(
        () => _i110.AddResumeUseCase(gh<_i48.ResumeRepository>()));
    gh.lazySingleton<_i111.ApplyJobRepository>(
        () => _i112.ApplyJobRepositoryImpl(
              gh<_i59.SendNotificationUseCase>(),
              gh<_i110.AddResumeUseCase>(),
            ));
    gh.lazySingleton<_i113.ApplyJobUseCase>(
        () => _i113.ApplyJobUseCase(gh<_i111.ApplyJobRepository>()));
    gh.lazySingleton<_i114.ChangePasswordUseCase>(
        () => _i114.ChangePasswordUseCase(gh<_i86.UpdatePasswordRepository>()));
    gh.lazySingleton<_i115.ConnectionRepository>(() =>
        _i116.ConnectionRepositoryImpl(gh<_i59.SendNotificationUseCase>()));
    gh.lazySingleton<_i117.ConsiderCompanyUseCase>(
        () => _i117.ConsiderCompanyUseCase(gh<_i31.HomeAdminRepository>()));
    gh.lazySingleton<_i118.ConsiderResumeUseCase>(() =>
        _i118.ConsiderResumeUseCase(gh<_i97.ViewJobApplicantRepository>()));
    gh.lazySingleton<_i119.DeleteAccountUseCase>(
        () => _i119.DeleteAccountUseCase(gh<_i60.SettingRepository>()));
    gh.lazySingleton<_i120.DeleteAllSaveJobUseCase>(
        () => _i120.DeleteAllSaveJobUseCase(gh<_i50.SaveJobRepository>()));
    gh.lazySingleton<_i121.DeleteEducationUseCase>(
        () => _i121.DeleteEducationUseCase(gh<_i23.EducationRepository>()));
    gh.lazySingleton<_i122.DeleteExperienceUseCase>(
        () => _i122.DeleteExperienceUseCase(gh<_i25.ExperienceRepository>()));
    gh.lazySingleton<_i123.DeleteLanguageUseCase>(
        () => _i123.DeleteLanguageUseCase(gh<_i39.LanguageRepository>()));
    gh.lazySingleton<_i124.DeleteNotificationFromIDUseCase>(() =>
        _i124.DeleteNotificationFromIDUseCase(
            gh<_i42.NotificationRepository>()));
    gh.lazySingleton<_i125.DeleteNotificationUseCase>(() =>
        _i125.DeleteNotificationUseCase(gh<_i42.NotificationRepository>()));
    gh.lazySingleton<_i126.DeleteResumeUseCase>(
        () => _i126.DeleteResumeUseCase(gh<_i48.ResumeRepository>()));
    gh.factory<_i127.EditApplicantProfileCubit>(() =>
        _i127.EditApplicantProfileCubit(gh<_i91.UpdateUserInfoUseCase>()));
    gh.factory<_i128.EditCompanyProfileCubit>(() =>
        _i128.EditCompanyProfileCubit(gh<_i80.UpdateCompanyInfoUseCase>()));
    gh.lazySingleton<_i129.FetchJobUseCase>(
        () => _i129.FetchJobUseCase(gh<_i99.ViewJobRepository>()));
    gh.lazySingleton<_i130.FetchJobUseCase>(
        () => _i130.FetchJobUseCase(gh<_i33.HomeApplicantRepository>()));
    gh.lazySingleton<_i131.FetchPostUseCase>(
        () => _i131.FetchPostUseCase(gh<_i115.ConnectionRepository>()));
    gh.factory<_i132.FollowCubit>(
        () => _i132.FollowCubit(gh<_i29.GetListFollowUseCase>()));
    gh.lazySingleton<_i133.GetAppreciationUseCase>(() =>
        _i133.GetAppreciationUseCase(
            gh<_i95.ViewApplicantProfileRepository>()));
    gh.lazySingleton<_i134.GetCountriesUseCase>(
        () => _i134.GetCountriesUseCase(gh<_i57.SearchLanguageRepository>()));
    gh.factory<_i135.GetEducationUseCase>(() =>
        _i135.GetEducationUseCase(gh<_i95.ViewApplicantProfileRepository>()));
    gh.lazySingleton<_i136.GetLanguageUseCase>(() =>
        _i136.GetLanguageUseCase(gh<_i95.ViewApplicantProfileRepository>()));
    gh.lazySingleton<_i137.GetListApplicantUseCase>(() =>
        _i137.GetListApplicantUseCase(gh<_i97.ViewJobApplicantRepository>()));
    gh.lazySingleton<_i138.GetListCompanyPendingUseCase>(() =>
        _i138.GetListCompanyPendingUseCase(gh<_i31.HomeAdminRepository>()));
    gh.lazySingleton<_i139.GetListMyJobUseCase>(
        () => _i139.GetListMyJobUseCase(gh<_i35.HomeCompanyRepository>()));
    gh.lazySingleton<_i140.GetListQuestionUseCase>(
        () => _i140.GetListQuestionUseCase(gh<_i76.TestIQRepository>()));
    gh.lazySingleton<_i141.GetListSkillUseCase>(
        () => _i141.GetListSkillUseCase(gh<_i67.SkillRepository>()));
    gh.lazySingleton<_i142.GetResumeUseCase>(() =>
        _i142.GetResumeUseCase(gh<_i95.ViewApplicantProfileRepository>()));
    gh.lazySingleton<_i143.GetUserInfoUseCase>(() =>
        _i143.GetUserInfoUseCase(gh<_i95.ViewApplicantProfileRepository>()));
    gh.lazySingleton<_i144.GetWorkExperienceUseCase>(() =>
        _i144.GetWorkExperienceUseCase(
            gh<_i95.ViewApplicantProfileRepository>()));
    gh.factory<_i145.HomeAdminCubit>(() => _i145.HomeAdminCubit(
          gh<_i138.GetListCompanyPendingUseCase>(),
          gh<_i117.ConsiderCompanyUseCase>(),
        ));
    gh.factory<_i146.HomeApplicantCubit>(() => _i146.HomeApplicantCubit(
          gh<_i130.FetchJobUseCase>(),
          gh<_i52.SaveJobUseCase>(),
        ));
    gh.factory<_i147.HomeCompanyCubit>(
        () => _i147.HomeCompanyCubit(gh<_i139.GetListMyJobUseCase>()));
    gh.factory<_i148.JobPositionCubit>(
        () => _i148.JobPositionCubit(gh<_i53.SearchJobPositionUseCase>()));
    gh.lazySingleton<_i149.ListenSaveJobUseCase>(
        () => _i149.ListenSaveJobUseCase(gh<_i50.SaveJobRepository>()));
    gh.factory<_i150.MainCubit>(
        () => _i150.MainCubit(gh<_i90.UpdateTokenUseCase>()));
    gh.factory<_i151.NotificationCubit>(() => _i151.NotificationCubit(
          gh<_i72.StreamNotificationUseCase>(),
          gh<_i45.ReadNotificationUseCase>(),
          gh<_i44.ReadAllNotificationUseCase>(),
          gh<_i124.DeleteNotificationFromIDUseCase>(),
        ));
    gh.lazySingleton<_i152.RegisterApplicantUseCase>(
        () => _i152.RegisterApplicantUseCase(gh<_i65.SignUpRepository>()));
    gh.lazySingleton<_i153.RegisterBusinessUseCase>(
        () => _i153.RegisterBusinessUseCase(gh<_i65.SignUpRepository>()));
    gh.factory<_i154.RegisterGoogleCubit>(
        () => _i154.RegisterGoogleCubit(gh<_i83.UpdateInfoUserUseCase>()));
    gh.lazySingleton<_i155.RegisterGoogleUseCase>(
        () => _i155.RegisterGoogleUseCase(gh<_i65.SignUpRepository>()));
    gh.factory<_i156.SaveJobCubit>(() => _i156.SaveJobCubit(
          gh<_i149.ListenSaveJobUseCase>(),
          gh<_i120.DeleteAllSaveJobUseCase>(),
          gh<_i52.SaveJobUseCase>(),
        ));
    gh.factory<_i157.SearchJobCubit>(() => _i157.SearchJobCubit(
          gh<_i56.SearchJobUseCase>(),
          gh<_i52.SaveJobUseCase>(),
        ));
    gh.factory<_i158.SearchLanguageCubit>(
        () => _i158.SearchLanguageCubit(gh<_i134.GetCountriesUseCase>()));
    gh.factory<_i159.SettingCubit>(() => _i159.SettingCubit(
          gh<_i119.DeleteAccountUseCase>(),
          gh<_i90.UpdateTokenUseCase>(),
        ));
    gh.lazySingleton<_i160.SharePostUseCase>(
        () => _i160.SharePostUseCase(gh<_i115.ConnectionRepository>()));
    gh.lazySingleton<_i161.SignInEmailPasswordUseCase>(
        () => _i161.SignInEmailPasswordUseCase(gh<_i63.SignInRepository>()));
    gh.lazySingleton<_i162.SignInGoogleUseCase>(
        () => _i162.SignInGoogleUseCase(gh<_i63.SignInRepository>()));
    gh.factory<_i163.SignUpCubit>(() => _i163.SignUpCubit(
          gh<_i152.RegisterApplicantUseCase>(),
          gh<_i153.RegisterBusinessUseCase>(),
          gh<_i155.RegisterGoogleUseCase>(),
        ));
    gh.lazySingleton<_i164.StreamLanguagesUseCase>(
        () => _i164.StreamLanguagesUseCase(gh<_i101.ViewLanguageRepository>()));
    gh.factory<_i165.TestIQCubit>(() => _i165.TestIQCubit(
          gh<_i140.GetListQuestionUseCase>(),
          gh<_i109.AddResultTestIQUseCase>(),
        ));
    gh.factory<_i166.UpdatePasswordCubit>(() => _i166.UpdatePasswordCubit(
          gh<_i114.ChangePasswordUseCase>(),
          gh<_i92.ValidatePassworkUseCase>(),
        ));
    gh.lazySingleton<_i167.UploadFileVerifyBusinessUseCase>(() =>
        _i167.UploadFileVerifyBusinessUseCase(
            gh<_i93.VerifyBusinessRepository>()));
    gh.factory<_i168.VerifyBusinessCubit>(() =>
        _i168.VerifyBusinessCubit(gh<_i167.UploadFileVerifyBusinessUseCase>()));
    gh.lazySingleton<_i169.ViewCompanyProfileRepository>(
        () => _i170.ViewCompanyProfileRepositoryImpl(
              gh<_i125.DeleteNotificationUseCase>(),
              gh<_i59.SendNotificationUseCase>(),
            ));
    gh.factory<_i171.ViewJobApplicantCubit>(() => _i171.ViewJobApplicantCubit(
          gh<_i137.GetListApplicantUseCase>(),
          gh<_i118.ConsiderResumeUseCase>(),
        ));
    gh.factory<_i172.ViewJobCubit>(() => _i172.ViewJobCubit(
          gh<_i129.FetchJobUseCase>(),
          gh<_i52.SaveJobUseCase>(),
        ));
    gh.factory<_i173.ViewLanguageCubit>(() => _i173.ViewLanguageCubit(
          gh<_i164.StreamLanguagesUseCase>(),
          gh<_i123.DeleteLanguageUseCase>(),
        ));
    gh.lazySingleton<_i174.ViewPostRepository>(
        () => _i175.ViewPostRepositoryImpl(
              gh<_i59.SendNotificationUseCase>(),
              gh<_i125.DeleteNotificationUseCase>(),
            ));
    gh.factory<_i176.ViewTestIQCubit>(
        () => _i176.ViewTestIQCubit(gh<_i140.GetListQuestionUseCase>()));
    gh.factory<_i177.AddAppreciationCubit>(() => _i177.AddAppreciationCubit(
          gh<_i103.AddAppreciationUseCase>(),
          gh<_i79.UpdateAppreciationUseCase>(),
          gh<_i16.DeleteAppreciationUseCase>(),
        ));
    gh.factory<_i178.AddEducationCubit>(() => _i178.AddEducationCubit(
          gh<_i104.AddEducationUseCase>(),
          gh<_i121.DeleteEducationUseCase>(),
          gh<_i81.UpdateEducationUseCase>(),
        ));
    gh.factory<_i179.AddLanguageCubit>(() => _i179.AddLanguageCubit(
          gh<_i107.AddLanguageUseCase>(),
          gh<_i85.UpdateLanguageUseCase>(),
        ));
    gh.factory<_i180.AddResumeCubit>(
        () => _i180.AddResumeCubit(gh<_i110.AddResumeUseCase>()));
    gh.factory<_i181.AddSkillCubit>(() => _i181.AddSkillCubit(
          gh<_i141.GetListSkillUseCase>(),
          gh<_i89.UpdateSkillUseCase>(),
        ));
    gh.factory<_i182.AddWorkExperienceCubit>(() => _i182.AddWorkExperienceCubit(
          gh<_i105.AddExperienceUseCase>(),
          gh<_i82.UpdateExperienceUseCase>(),
          gh<_i122.DeleteExperienceUseCase>(),
        ));
    gh.factory<_i183.ApplyJobCubit>(() => _i183.ApplyJobCubit(
          gh<_i113.ApplyJobUseCase>(),
          gh<_i142.GetResumeUseCase>(),
        ));
    gh.lazySingleton<_i184.DeleteCommentUseCase>(
        () => _i184.DeleteCommentUseCase(gh<_i174.ViewPostRepository>()));
    gh.lazySingleton<_i185.FavouriteCommentUseCase>(
        () => _i185.FavouriteCommentUseCase(gh<_i174.ViewPostRepository>()));
    gh.lazySingleton<_i186.FavouritePostUseCase>(
        () => _i186.FavouritePostUseCase(gh<_i174.ViewPostRepository>()));
    gh.lazySingleton<_i187.FetchDataCommentFirstLevelUseCase>(() =>
        _i187.FetchDataCommentFirstLevelUseCase(
            gh<_i174.ViewPostRepository>()));
    gh.lazySingleton<_i188.FollowUserUseCase>(() =>
        _i188.FollowUserUseCase(gh<_i169.ViewCompanyProfileRepository>()));
    gh.lazySingleton<_i189.GetListJobUseCase>(() =>
        _i189.GetListJobUseCase(gh<_i169.ViewCompanyProfileRepository>()));
    gh.lazySingleton<_i190.GetReplyCommentUseCase>(
        () => _i190.GetReplyCommentUseCase(gh<_i174.ViewPostRepository>()));
    gh.lazySingleton<_i191.ReplyCommentUseCase>(
        () => _i191.ReplyCommentUseCase(gh<_i174.ViewPostRepository>()));
    gh.lazySingleton<_i192.SendCommentUseCase>(
        () => _i192.SendCommentUseCase(gh<_i174.ViewPostRepository>()));
    gh.factory<_i193.SignInCubit>(() => _i193.SignInCubit(
          gh<_i161.SignInEmailPasswordUseCase>(),
          gh<_i162.SignInGoogleUseCase>(),
        ));
    gh.lazySingleton<_i194.SyncPostDataUseCase>(
        () => _i194.SyncPostDataUseCase(gh<_i174.ViewPostRepository>()));
    gh.factory<_i195.ViewApplicantProfileCubit>(
        () => _i195.ViewApplicantProfileCubit(
              gh<_i133.GetAppreciationUseCase>(),
              gh<_i135.GetEducationUseCase>(),
              gh<_i136.GetLanguageUseCase>(),
              gh<_i142.GetResumeUseCase>(),
              gh<_i30.GetSkillUseCase>(),
              gh<_i143.GetUserInfoUseCase>(),
              gh<_i144.GetWorkExperienceUseCase>(),
              gh<_i71.StreamListPostUseCase>(),
              gh<_i186.FavouritePostUseCase>(),
              gh<_i160.SharePostUseCase>(),
            ));
    gh.factory<_i196.ViewCompanyProfileCubit>(
        () => _i196.ViewCompanyProfileCubit(
              gh<_i189.GetListJobUseCase>(),
              gh<_i71.StreamListPostUseCase>(),
              gh<_i143.GetUserInfoUseCase>(),
              gh<_i186.FavouritePostUseCase>(),
              gh<_i188.FollowUserUseCase>(),
              gh<_i160.SharePostUseCase>(),
              gh<_i52.SaveJobUseCase>(),
            ));
    gh.factory<_i197.ViewPostBloc>(() => _i197.ViewPostBloc(
          gh<_i187.FetchDataCommentFirstLevelUseCase>(),
          gh<_i185.FavouriteCommentUseCase>(),
          gh<_i186.FavouritePostUseCase>(),
          gh<_i192.SendCommentUseCase>(),
          gh<_i194.SyncPostDataUseCase>(),
          gh<_i191.ReplyCommentUseCase>(),
          gh<_i190.GetReplyCommentUseCase>(),
          gh<_i184.DeleteCommentUseCase>(),
          gh<_i160.SharePostUseCase>(),
          gh<_i18.DeletePostUseCase>(),
        ));
    gh.factory<_i198.ApplicantProfileCubit>(() => _i198.ApplicantProfileCubit(
          gh<_i18.DeletePostUseCase>(),
          gh<_i126.DeleteResumeUseCase>(),
          gh<_i71.StreamListPostUseCase>(),
          gh<_i75.StreamWorkExperienceUseCase>(),
          gh<_i70.StreamEducationUseCase>(),
          gh<_i69.StreamAppreciationUseCase>(),
          gh<_i73.StreamResumeUseCase>(),
          gh<_i30.GetSkillUseCase>(),
          gh<_i74.StreamUserInfoUseCase>(),
          gh<_i164.StreamLanguagesUseCase>(),
          gh<_i78.UpdateAboutMeUseCase>(),
          gh<_i186.FavouritePostUseCase>(),
          gh<_i160.SharePostUseCase>(),
        ));
    gh.factory<_i199.CompanyProfileCubit>(() => _i199.CompanyProfileCubit(
          gh<_i186.FavouritePostUseCase>(),
          gh<_i74.StreamUserInfoUseCase>(),
          gh<_i71.StreamListPostUseCase>(),
          gh<_i189.GetListJobUseCase>(),
          gh<_i18.DeletePostUseCase>(),
          gh<_i17.DeleteJobUseCase>(),
          gh<_i160.SharePostUseCase>(),
          gh<_i52.SaveJobUseCase>(),
        ));
    gh.factory<_i200.ConnectionCubit>(() => _i200.ConnectionCubit(
          gh<_i131.FetchPostUseCase>(),
          gh<_i186.FavouritePostUseCase>(),
          gh<_i160.SharePostUseCase>(),
        ));
    return this;
  }
}

class _$InjectionModule extends _i201.InjectionModule {}
