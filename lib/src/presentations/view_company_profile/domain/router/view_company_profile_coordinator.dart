import 'package:jobspot/injection.dart';
import 'package:jobspot/src/core/config/router/app_router.dart';
import 'package:jobspot/src/core/config/router/app_router.gr.dart';
import 'package:jobspot/src/presentations/connection/domain/entities/post_entity.dart';

class ViewCompanyProfileCoordinator {
  ViewCompanyProfileCoordinator._();

  static AppRouter get rootRouter => getIt<AppRouter>();

  static void showFullPost({
    required PostEntity post,
    bool isComment = false,
  }) =>
      rootRouter.push(ViewPostRoute(post: post, isComment: isComment));

  static void showFullJob(String jobID) =>
      rootRouter.push(ViewJobRoute(jobID: jobID));
}
