import 'package:jobspot/injection.dart';
import 'package:jobspot/src/core/config/router/app_router.dart';
import 'package:jobspot/src/core/config/router/app_router.gr.dart';
import 'package:jobspot/src/presentations/view_job/domain/entities/job_entity.dart';

class HomeCoordinator {
  HomeCoordinator._();

  static AppRouter get rootRouter => getIt<AppRouter>();

  static void showViewJobDescription(String postID) =>
      rootRouter.push(ViewJobRoute(postID: postID));

  static void showApplyJob({required JobEntity job}) =>
      rootRouter.push(ApplyJobRoute(job: job));
}