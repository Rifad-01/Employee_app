// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsersEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UsersEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UsersEvent()';
}


}

/// @nodoc
class $UsersEventCopyWith<$Res>  {
$UsersEventCopyWith(UsersEvent _, $Res Function(UsersEvent) __);
}


/// Adds pattern-matching-related methods to [UsersEvent].
extension UsersEventPatterns on UsersEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Started value)?  started,TResult Function( FetchUser value)?  fetchUser,TResult Function( LoadedUsers value)?  loadedUsers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case FetchUser() when fetchUser != null:
return fetchUser(_that);case LoadedUsers() when loadedUsers != null:
return loadedUsers(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Started value)  started,required TResult Function( FetchUser value)  fetchUser,required TResult Function( LoadedUsers value)  loadedUsers,}){
final _that = this;
switch (_that) {
case Started():
return started(_that);case FetchUser():
return fetchUser(_that);case LoadedUsers():
return loadedUsers(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Started value)?  started,TResult? Function( FetchUser value)?  fetchUser,TResult? Function( LoadedUsers value)?  loadedUsers,}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case FetchUser() when fetchUser != null:
return fetchUser(_that);case LoadedUsers() when loadedUsers != null:
return loadedUsers(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( List<EmployeeEntity> employee)?  fetchUser,TResult Function( List<EmployeeEntity> employee)?  loadedUsers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case FetchUser() when fetchUser != null:
return fetchUser(_that.employee);case LoadedUsers() when loadedUsers != null:
return loadedUsers(_that.employee);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( List<EmployeeEntity> employee)  fetchUser,required TResult Function( List<EmployeeEntity> employee)  loadedUsers,}) {final _that = this;
switch (_that) {
case Started():
return started();case FetchUser():
return fetchUser(_that.employee);case LoadedUsers():
return loadedUsers(_that.employee);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( List<EmployeeEntity> employee)?  fetchUser,TResult? Function( List<EmployeeEntity> employee)?  loadedUsers,}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case FetchUser() when fetchUser != null:
return fetchUser(_that.employee);case LoadedUsers() when loadedUsers != null:
return loadedUsers(_that.employee);case _:
  return null;

}
}

}

/// @nodoc


class Started with DiagnosticableTreeMixin implements UsersEvent {
  const Started();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UsersEvent.started'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UsersEvent.started()';
}


}




/// @nodoc


class FetchUser with DiagnosticableTreeMixin implements UsersEvent {
  const FetchUser(final  List<EmployeeEntity> employee): _employee = employee;
  

 final  List<EmployeeEntity> _employee;
 List<EmployeeEntity> get employee {
  if (_employee is EqualUnmodifiableListView) return _employee;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employee);
}


/// Create a copy of UsersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchUserCopyWith<FetchUser> get copyWith => _$FetchUserCopyWithImpl<FetchUser>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UsersEvent.fetchUser'))
    ..add(DiagnosticsProperty('employee', employee));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchUser&&const DeepCollectionEquality().equals(other._employee, _employee));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_employee));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UsersEvent.fetchUser(employee: $employee)';
}


}

/// @nodoc
abstract mixin class $FetchUserCopyWith<$Res> implements $UsersEventCopyWith<$Res> {
  factory $FetchUserCopyWith(FetchUser value, $Res Function(FetchUser) _then) = _$FetchUserCopyWithImpl;
@useResult
$Res call({
 List<EmployeeEntity> employee
});




}
/// @nodoc
class _$FetchUserCopyWithImpl<$Res>
    implements $FetchUserCopyWith<$Res> {
  _$FetchUserCopyWithImpl(this._self, this._then);

  final FetchUser _self;
  final $Res Function(FetchUser) _then;

/// Create a copy of UsersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employee = null,}) {
  return _then(FetchUser(
null == employee ? _self._employee : employee // ignore: cast_nullable_to_non_nullable
as List<EmployeeEntity>,
  ));
}


}

/// @nodoc


class LoadedUsers with DiagnosticableTreeMixin implements UsersEvent {
  const LoadedUsers(final  List<EmployeeEntity> employee): _employee = employee;
  

 final  List<EmployeeEntity> _employee;
 List<EmployeeEntity> get employee {
  if (_employee is EqualUnmodifiableListView) return _employee;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employee);
}


/// Create a copy of UsersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedUsersCopyWith<LoadedUsers> get copyWith => _$LoadedUsersCopyWithImpl<LoadedUsers>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UsersEvent.loadedUsers'))
    ..add(DiagnosticsProperty('employee', employee));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedUsers&&const DeepCollectionEquality().equals(other._employee, _employee));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_employee));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UsersEvent.loadedUsers(employee: $employee)';
}


}

/// @nodoc
abstract mixin class $LoadedUsersCopyWith<$Res> implements $UsersEventCopyWith<$Res> {
  factory $LoadedUsersCopyWith(LoadedUsers value, $Res Function(LoadedUsers) _then) = _$LoadedUsersCopyWithImpl;
@useResult
$Res call({
 List<EmployeeEntity> employee
});




}
/// @nodoc
class _$LoadedUsersCopyWithImpl<$Res>
    implements $LoadedUsersCopyWith<$Res> {
  _$LoadedUsersCopyWithImpl(this._self, this._then);

  final LoadedUsers _self;
  final $Res Function(LoadedUsers) _then;

/// Create a copy of UsersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employee = null,}) {
  return _then(LoadedUsers(
null == employee ? _self._employee : employee // ignore: cast_nullable_to_non_nullable
as List<EmployeeEntity>,
  ));
}


}

/// @nodoc
mixin _$UsersState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UsersState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UsersState()';
}


}

/// @nodoc
class $UsersStateCopyWith<$Res>  {
$UsersStateCopyWith(UsersState _, $Res Function(UsersState) __);
}


/// Adds pattern-matching-related methods to [UsersState].
extension UsersStatePatterns on UsersState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( ErrorState value)?  errorState,TResult Function( Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case ErrorState() when errorState != null:
return errorState(_that);case Success() when success != null:
return success(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( ErrorState value)  errorState,required TResult Function( Success value)  success,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case ErrorState():
return errorState(_that);case Success():
return success(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( ErrorState value)?  errorState,TResult? Function( Success value)?  success,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case ErrorState() when errorState != null:
return errorState(_that);case Success() when success != null:
return success(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Failure failure)?  errorState,TResult Function( List<EmployeeEntity> employees)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case ErrorState() when errorState != null:
return errorState(_that.failure);case Success() when success != null:
return success(_that.employees);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Failure failure)  errorState,required TResult Function( List<EmployeeEntity> employees)  success,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case ErrorState():
return errorState(_that.failure);case Success():
return success(_that.employees);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Failure failure)?  errorState,TResult? Function( List<EmployeeEntity> employees)?  success,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case ErrorState() when errorState != null:
return errorState(_that.failure);case Success() when success != null:
return success(_that.employees);case _:
  return null;

}
}

}

/// @nodoc


class Initial with DiagnosticableTreeMixin implements UsersState {
  const Initial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UsersState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UsersState.initial()';
}


}




/// @nodoc


class Loading with DiagnosticableTreeMixin implements UsersState {
  const Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UsersState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UsersState.loading()';
}


}




/// @nodoc


class ErrorState with DiagnosticableTreeMixin implements UsersState {
  const ErrorState(this.failure);
  

 final  Failure failure;

/// Create a copy of UsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorStateCopyWith<ErrorState> get copyWith => _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UsersState.errorState'))
    ..add(DiagnosticsProperty('failure', failure));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UsersState.errorState(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(ErrorState value, $Res Function(ErrorState) _then) = _$ErrorStateCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$ErrorStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._self, this._then);

  final ErrorState _self;
  final $Res Function(ErrorState) _then;

/// Create a copy of UsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(ErrorState(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class Success with DiagnosticableTreeMixin implements UsersState {
  const Success(final  List<EmployeeEntity> employees): _employees = employees;
  

 final  List<EmployeeEntity> _employees;
 List<EmployeeEntity> get employees {
  if (_employees is EqualUnmodifiableListView) return _employees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employees);
}


/// Create a copy of UsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UsersState.success'))
    ..add(DiagnosticsProperty('employees', employees));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&const DeepCollectionEquality().equals(other._employees, _employees));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_employees));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UsersState.success(employees: $employees)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 List<EmployeeEntity> employees
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of UsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employees = null,}) {
  return _then(Success(
null == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<EmployeeEntity>,
  ));
}


}

// dart format on
