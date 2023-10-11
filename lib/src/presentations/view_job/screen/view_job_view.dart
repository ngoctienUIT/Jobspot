import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobspot/src/core/common/custom_toast.dart';
import 'package:jobspot/src/core/config/localization/app_local.dart';
import 'package:jobspot/src/presentations/view_job/widgets/app_bar_company_loading.dart';
import 'package:jobspot/src/presentations/view_job/widgets/job_description_loading.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:jobspot/src/core/constants/constants.dart';
import 'package:jobspot/src/core/resources/data_state.dart';
import 'package:jobspot/src/presentations/save_job/widgets/tag_item.dart';
import 'package:jobspot/src/presentations/sign_in/widgets/custom_button.dart';
import 'package:jobspot/src/presentations/view_job/cubit/view_job_cubit.dart';
import 'package:jobspot/src/presentations/view_job/domain/entities/job_entity.dart';
import 'package:jobspot/src/presentations/view_job/widgets/custom_app_bar_company.dart';
import 'package:jobspot/src/presentations/view_job/widgets/job_subtitle_info.dart';
import 'package:jobspot/src/presentations/view_job/widgets/job_title_info.dart';

class ViewJobView extends StatelessWidget {
  const ViewJobView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: _buildAppBar(width),
      bottomNavigationBar: _buildBottomBar(context),
      body: RefreshIndicator(
        onRefresh: context.read<ViewJobCubit>().fetchJobData,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.smallPadding),
            child: BlocListener<ViewJobCubit, ViewJobState>(
              listener: (context, state) {
                if (state.dataState is DataFailed) {
                  customToast(context, text: state.dataState!.error ?? "");
                }
              },
              child: _buildBody(),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSize _buildAppBar(double width) {
    return PreferredSize(
      preferredSize: Size(width, 240),
      child: BlocBuilder<ViewJobCubit, ViewJobState>(
        builder: (context, state) {
          if (state.dataState is DataSuccess) {
            return CustomAppBarCompany(
              avatar: state.dataState!.data!.company.avatar,
              companyName: state.dataState!.data!.company.name,
              location: state.dataState!.data!.company.address,
              jobPosition: state.dataState!.data!.position,
              time: timeago.format(state.dataState!.data!.startDate),
            );
          }
          return const AppBarCompanyLoading();
        },
      ),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<ViewJobCubit, ViewJobState>(
      buildWhen: (previous, current) => current is! DataFailed,
      builder: (context, state) {
        if (state.dataState is DataSuccess) {
          final data = state.dataState!.data!;
          String province = AppLists.provinces.firstWhere(
              (element) => (element["code"] as int) == data.location)["name"];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDescription(),
              const SizedBox(height: 20),
              _buildRequirements(data.requirements),
              const SizedBox(height: 20),
              _buildLocation(province),
              const SizedBox(height: 20),
              _buildInformation(data),
            ],
          );
        }
        return const JobDescriptionLoading();
      },
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.pastelBlue.withAlpha(20),
            blurRadius: 83,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.smallPadding),
      height: 80,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 80,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: SvgPicture.asset(
              AppImages.saveJob,
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: CustomButton(
              onPressed: () {
                //TODO tap to apply job
              },
              title: AppLocal.text.view_job_page_apply_now.toUpperCase(),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInformation(JobEntity job) {
    return JobTitleInfo(
      title: AppLocal.text.view_job_page_informations,
      child: Column(
        children: [
          JobSubtitleInfo(
            title: AppLocal.text.view_job_page_position,
            content: job.jobPosition,
          ),
          JobSubtitleInfo(
            title: AppLocal.text.view_job_page_level,
            content: AppLists.listLevel[job.level],
          ),
          JobSubtitleInfo(
            title: AppLocal.text.view_job_page_job_type,
            content: AppLists.listJobType[job.jobType],
          ),
        ],
      ),
    );
  }

  Widget _buildLocation(String location) {
    return JobTitleInfo(
      title: AppLocal.text.view_job_page_location,
      child: Text(location, style: TextStyle(color: AppColors.mulledWine)),
    );
  }

  Widget _buildRequirements(List<String> requirements) {
    return JobTitleInfo(
      title: AppLocal.text.view_job_page_requirement,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            children: [
              _buildDotText,
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  requirements[index],
                  style: AppStyles.normalTextMulledWine,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: requirements.length,
      ),
    );
  }

  Widget _buildDescription() {
    return BlocBuilder<ViewJobCubit, ViewJobState>(
      buildWhen: (previous, current) => current is! DataFailed,
      builder: (context, state) {
        final description = state.dataState?.data!.description ?? "";
        return JobTitleInfo(
          title: AppLocal.text.view_job_page_job_description,
          child: LayoutBuilder(
            builder: (context, constraints) {
              var span = TextSpan(
                text: description,
                style: AppStyles.normalTextMulledWine,
              );

              var tp = TextPainter(
                maxLines: state.isReadMore ? null : 5,
                textAlign: TextAlign.justify,
                textDirection: TextDirection.ltr,
                text: span,
              );

              tp.layout(maxWidth: constraints.maxWidth);
              var isOverflow = tp.didExceedMaxLines;

              return _buildTextDescription(
                context,
                description: description,
                isReadMore: state.isReadMore,
                isOverflow: isOverflow,
              );
            },
          ),
        );
      },
    );
  }

  Column _buildTextDescription(
    BuildContext context, {
    required String description,
    required bool isReadMore,
    required bool isOverflow,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          description,
          textAlign: TextAlign.justify,
          maxLines: isReadMore ? null : 5,
          overflow: isReadMore ? null : TextOverflow.ellipsis,
          style: AppStyles.normalTextMulledWine,
        ),
        if (isOverflow) const SizedBox(height: 8),
        if (isOverflow)
          GestureDetector(
            onTap: context.read<ViewJobCubit>().readMore,
            child: TagItem(
              title: AppLocal.text.view_job_page_read_more,
              backgroundColor: AppColors.veryLightBlue.withOpacity(0.2),
            ),
          ),
      ],
    );
  }

  Widget get _buildDotText =>
      Text("•", style: AppStyles.boldTextNightBlue.copyWith(fontSize: 25));
}
