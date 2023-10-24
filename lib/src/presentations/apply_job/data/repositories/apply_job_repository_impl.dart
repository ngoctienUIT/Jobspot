import 'package:injectable/injectable.dart';
import 'package:jobspot/src/core/resources/data_state.dart';
import 'package:jobspot/src/core/service/firebase_collection.dart';
import 'package:jobspot/src/core/utils/firebase_utils.dart';
import 'package:jobspot/src/presentations/apply_job/data/models/resume_model.dart';
import 'package:jobspot/src/presentations/apply_job/domain/entities/resume_entity.dart';
import 'package:jobspot/src/presentations/apply_job/domain/repositories/apply_job_repository.dart';

@LazySingleton(as: ApplyJobRepository)
class ApplyJobRepositoryImpl extends ApplyJobRepository {
  @override
  Future<DataState<bool>> applyJob(ResumeEntity cv) async {
    try {
      final applyFirestore = XCollection.apply.doc();
      String cvUrl = await FirebaseUtils.uploadImage(
        folder: "cvs",
        name: DateTime.now().microsecondsSinceEpoch.toString(),
        image: cv.path,
      );
      ResumeModel cvModel = ResumeModel.fromCVEntity(cv)..file = cvUrl;
      await applyFirestore.set(cvModel.toJson());
      return DataSuccess(true);
    } catch (e) {
      print(e);
      return DataFailed(e.toString());
    }
  }
}
