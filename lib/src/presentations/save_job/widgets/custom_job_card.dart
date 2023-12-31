import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:jobspot/src/core/common/widgets/item_loading.dart';
import 'package:jobspot/src/core/extension/int_extension.dart';
import 'package:jobspot/src/core/extension/string_extension.dart';
import 'package:jobspot/src/core/function/get_location.dart';
import 'package:jobspot/src/core/constants/constants.dart';
import 'package:jobspot/src/presentations/save_job/widgets/tag_item.dart';
import 'package:jobspot/src/presentations/view_job/domain/entities/job_entity.dart';

class CustomJobCard extends StatelessWidget {
  const CustomJobCard({
    super.key,
    required this.job,
    required this.button,
    required this.onTap,
    this.onLongPress,
    this.moreWidget,
  });

  final VoidCallback onTap;
  final VoidCallback? onLongPress;
  final JobEntity job;
  final Widget button;
  final Widget? moreWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: AppColors.wildBlueYonder.withAlpha(18),
              blurRadius: 62,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.all(AppDimens.smallPadding),
        width: double.infinity,
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(),
        const SizedBox(height: 10),
        Text(
          job.position.capitalizedString,
          style: AppStyles.boldTextHaiti.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 5),
        Text(
          "${job.company.name} • ${getLocation(job.location)}",
          style: AppStyles.normalTextMulledWine,
        ),
        const SizedBox(height: 20),
        _buildTag(),
        const SizedBox(height: 20),
        _buildSalary(),
      ],
    );
  }

  Widget _buildSalary() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          timeago.format(job.startDate),
          style: AppStyles.normalTextSpunPearl,
        ),
        Text(
          "\$${job.salary.toCurrency}",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        ClipOval(
          child: CachedNetworkImage(
            imageUrl: job.company.avatar,
            width: 40,
            height: 40,
            placeholder: (context, url) =>
                const ItemLoading(width: 40, height: 40, radius: 0),
            errorWidget: (context, url, error) =>
                SvgPicture.asset(AppImages.logo),
          ),
        ),
        const Spacer(),
        moreWidget ?? button,
      ],
    );
  }

  Widget _buildTag() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TagItem(
              title: AppLists.listTypeWorkplace[job.typeWorkplace]["title"]!),
          const SizedBox(width: 8),
          TagItem(title: AppLists.listLevel[job.level]),
          const SizedBox(width: 8),
          TagItem(title: AppLists.listJobType[job.jobType]),
        ],
      ),
    );
  }
}
