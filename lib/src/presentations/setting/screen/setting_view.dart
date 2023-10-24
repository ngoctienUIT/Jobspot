import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobspot/src/core/common/custom_toast.dart';
import 'package:jobspot/src/core/config/localization/app_local.dart';
import 'package:jobspot/src/core/config/localization/cubit/localization_cubit.dart';
import 'package:jobspot/src/core/constants/constants.dart';
import 'package:jobspot/src/core/function/loading_animation.dart';
import 'package:jobspot/src/presentations/setting/cubit/setting_cubit.dart';
import 'package:jobspot/src/presentations/setting/domain/router/setting_coordinator.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, scrolledUnderElevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.smallPadding),
        child: BlocListener<SettingCubit, SettingState>(
          listenWhen: (previous, current) {
            if (previous.isLoading) Navigator.of(context).pop();

            return true;
          },
          listener: (context, state) {
            if (state.isLoading) loadingAnimation(context);

            if (state.error != null) {
              customToast(context, text: state.error ?? "");
            }
          },
          child: _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocal.text.setting_page_setting,
          style: AppStyles.boldTextHaiti.copyWith(fontSize: 18),
        ),
        const SizedBox(height: 25),
        _buildLanguage(context),
        const SizedBox(height: 10),
        _buildNotification(),
        const SizedBox(height: 10),
        _itemSetting(
          icon: AppImages.trash,
          title: AppLocal.text.setting_page_delete_account,
          onTap: () => context
              .read<SettingCubit>()
              .showBottomSheetDeleteAccount(context),
        ),
        const SizedBox(height: 10),
        _itemSetting(
          icon: AppImages.lock,
          title: AppLocal.text.setting_page_password,
          onTap: SettingCoordinator.showUpdatePassword,
        ),
        const SizedBox(height: 10),
        _itemSetting(
          icon: AppImages.logOut,
          title: AppLocal.text.setting_page_log_out,
          onTap: () =>
              context.read<SettingCubit>().showBottomSheetLogOut(context),
        ),
      ],
    );
  }

  Widget _buildLanguage(BuildContext context) {
    return BlocBuilder<SettingCubit, SettingState>(
      buildWhen: (previous, current) => previous.isVietNam != current.isVietNam,
      builder: (context, state) {
        context.read<LocalizationCubit>().changeLanguage(state.isVietNam);
        return _itemSetting(
          icon: AppImages.language,
          title: AppLocal.text.setting_page_language,
          content: state.isVietNam
              ? AppLocal.text.setting_page_vietnamese
              : AppLocal.text.setting_page_english,
          onTap: () => context.read<SettingCubit>().showBottomLanguage(context),
        );
      },
    );
  }

  Widget _buildNotification() {
    return BlocBuilder<SettingCubit, SettingState>(
      buildWhen: (previous, current) =>
          previous.isNotification != current.isNotification,
      builder: (context, state) {
        return _itemSettingSwitch(
          icon: AppImages.notification,
          title: AppLocal.text.setting_page_notification,
          value: state.isNotification,
          onChange: context.read<SettingCubit>().changeNotification,
        );
      },
    );
  }

  Widget _itemSettingSwitch({
    required String icon,
    required String title,
    required bool value,
    required Function(bool value) onChange,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(AppColors.haiti, BlendMode.srcIn),
          ),
          const SizedBox(width: 10),
          Text(title, style: AppStyles.normalTextHaiti),
          const Spacer(),
          SizedBox(
            height: 20,
            child: Transform.scale(
              scale: 0.8,
              child: Switch(
                value: value,
                onChanged: onChange,
                activeColor: Colors.white,
                activeTrackColor: const Color(0xFF56CD54),
                inactiveTrackColor: const Color(0xFFE5E5E5),
                inactiveThumbColor: const Color(0xFF3D4859),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _itemSetting({
    required String icon,
    required String title,
    String? content,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(AppColors.haiti, BlendMode.srcIn),
            ),
            const SizedBox(width: 10),
            Text(title, style: AppStyles.normalTextHaiti),
            const Spacer(),
            if (content != null)
              Text(content, style: AppStyles.normalTextMulledWine),
            if (content != null) const SizedBox(width: 10),
            Icon(Icons.arrow_forward_ios_rounded, color: AppColors.haiti)
          ],
        ),
      ),
    );
  }
}
