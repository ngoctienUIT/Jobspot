import 'package:jobspot/src/core/resources/data_state.dart';
import 'package:jobspot/src/presentations/view_job/domain/entities/job_entity.dart';

abstract class ViewCompanyProfileRepository {
  Future<DataState<List<JobEntity>>> getListJob(String uid);
}
