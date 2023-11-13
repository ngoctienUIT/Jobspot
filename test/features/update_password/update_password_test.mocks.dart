// Mocks generated by Mockito 5.4.2 from annotations
// in jobspot/test/features/update_password/update_password_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:jobspot/src/core/resources/data_state.dart' as _i2;
import 'package:jobspot/src/presentations/update_password/domain/use_cases/change_password_use_case.dart'
    as _i3;
import 'package:jobspot/src/presentations/update_password/domain/use_cases/validate_password_use_case.dart'
    as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDataState_0<T> extends _i1.SmartFake implements _i2.DataState<T> {
  _FakeDataState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ChangePasswordUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockChangePasswordUseCase extends _i1.Mock
    implements _i3.ChangePasswordUseCase {
  MockChangePasswordUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.DataState<bool>> call({required String? params}) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {#params: params},
        ),
        returnValue:
            _i4.Future<_i2.DataState<bool>>.value(_FakeDataState_0<bool>(
          this,
          Invocation.method(
            #call,
            [],
            {#params: params},
          ),
        )),
      ) as _i4.Future<_i2.DataState<bool>>);
}

/// A class which mocks [ValidatePassworkUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockValidatePassworkUseCase extends _i1.Mock
    implements _i5.ValidatePassworkUseCase {
  MockValidatePassworkUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.DataState<bool>> call({required String? params}) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {#params: params},
        ),
        returnValue:
            _i4.Future<_i2.DataState<bool>>.value(_FakeDataState_0<bool>(
          this,
          Invocation.method(
            #call,
            [],
            {#params: params},
          ),
        )),
      ) as _i4.Future<_i2.DataState<bool>>);
}
