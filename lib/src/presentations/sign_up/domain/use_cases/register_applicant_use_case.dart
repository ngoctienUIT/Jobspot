import 'package:injectable/injectable.dart';
import 'package:jobspot/src/core/resources/data_state.dart';
import 'package:jobspot/src/core/resources/use_case.dart';
import 'package:jobspot/src/presentations/sign_up/domain/entities/register_applicant_entity.dart';
import 'package:jobspot/src/presentations/sign_up/domain/repositories/sign_up_repository.dart';

@lazySingleton
class RegisterApplicantUseCase
    extends UseCase<DataState<bool>, RegisterApplicantEntity> {
  RegisterApplicantUseCase(this._signUpRepository);

  final SignUpRepository _signUpRepository;

  @override
  Future<DataState<bool>> call({required RegisterApplicantEntity params}) {
    return _signUpRepository.signUpApplicant(params);
  }
}
