// Mocks generated by Mockito 5.4.2 from annotations
// in jobspot/test/features/view_language/view_language_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:jobspot/src/core/resources/data_state.dart' as _i2;
import 'package:jobspot/src/presentations/add_language/domain/use_cases/delete_language_use_case.dart'
    as _i6;
import 'package:jobspot/src/presentations/view_language/domain/entities/language_entity.dart'
    as _i5;
import 'package:jobspot/src/presentations/view_language/domain/use_cases/stream_language_use_case.dart'
    as _i3;
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

/// A class which mocks [StreamLanguagesUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockStreamLanguagesUseCase extends _i1.Mock
    implements _i3.StreamLanguagesUseCase {
  MockStreamLanguagesUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i2.DataState<List<_i5.LanguageEntity>>> call({dynamic params}) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {#params: params},
        ),
        returnValue:
            _i4.Stream<_i2.DataState<List<_i5.LanguageEntity>>>.empty(),
      ) as _i4.Stream<_i2.DataState<List<_i5.LanguageEntity>>>);
}

/// A class which mocks [DeleteLanguageUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteLanguageUseCase extends _i1.Mock
    implements _i6.DeleteLanguageUseCase {
  MockDeleteLanguageUseCase() {
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
