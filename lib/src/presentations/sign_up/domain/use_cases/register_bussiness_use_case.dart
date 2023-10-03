import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:jobspot/src/core/resources/data_state.dart';
import 'package:jobspot/src/core/resources/use_case.dart';
import 'package:jobspot/src/presentations/sign_up/domain/entities/register_bussiness_entity.dart';
import 'package:jobspot/src/presentations/sign_up/domain/repositories/sign_up_repository.dart';

@lazySingleton
class RegisterBussinessUseCase
    extends UseCase<DataState<UserCredential>, RegisterBussinessEntity> {
  RegisterBussinessUseCase(this._signUpRepository);

  final SignUpRepository _signUpRepository;

  @override
  Future<DataState<UserCredential>> call(
      {required RegisterBussinessEntity params}) {
    return _signUpRepository.signUpBussiness(params);
  }
}
