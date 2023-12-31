import 'package:injectable/injectable.dart';
import 'package:jobspot/src/core/resources/data_state.dart';
import 'package:jobspot/src/core/service/firebase_collection.dart';
import 'package:jobspot/src/presentations/add_appreciation/data/models/add_appreciation_model.dart';
import 'package:jobspot/src/presentations/add_appreciation/data/models/update_appreciation_model.dart';
import 'package:jobspot/src/presentations/add_appreciation/domain/entities/add_appreciation_entity.dart';
import 'package:jobspot/src/presentations/add_appreciation/domain/entities/update_appreciation_entity.dart';
import 'package:jobspot/src/presentations/add_appreciation/domain/repositories/appreciation_repository.dart';

@LazySingleton(as: AppreciationRepository)
class AppreciationRepositoryImpl extends AppreciationRepository {
  @override
  Future<DataState<bool>> addAppreciation(
      AddAppreciationEntity appreciation) async {
    try {
      await XCollection.appreciation
          .doc()
          .set(AddAppreciationModel.fromEntity(appreciation).toJson());
      return const DataSuccess(true);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }

  @override
  Future<DataState<bool>> updateAppreciation(
      UpdateAppreciationEntity appreciation) async {
    try {
      await XCollection.appreciation
          .doc(appreciation.id)
          .update(UpdateAppreciationModel.fromEntity(appreciation).toJson());
      return const DataSuccess(true);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }

  @override
  Future<DataState<bool>> deleteAppreciation(String id) async {
    try {
      await XCollection.appreciation.doc(id).delete();
      return const DataSuccess(true);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }
}
