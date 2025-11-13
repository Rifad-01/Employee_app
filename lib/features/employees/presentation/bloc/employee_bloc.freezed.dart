// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmployeeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeEvent()';
}


}

/// @nodoc
class $EmployeeEventCopyWith<$Res>  {
$EmployeeEventCopyWith(EmployeeEvent _, $Res Function(EmployeeEvent) __);
}


/// Adds pattern-matching-related methods to [EmployeeEvent].
extension EmployeeEventPatterns on EmployeeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchEmployees value)?  fetchEmployees,TResult Function( CreatingEmployees value)?  creatingEmployees,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchEmployees() when fetchEmployees != null:
return fetchEmployees(_that);case CreatingEmployees() when creatingEmployees != null:
return creatingEmployees(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchEmployees value)  fetchEmployees,required TResult Function( CreatingEmployees value)  creatingEmployees,}){
final _that = this;
switch (_that) {
case FetchEmployees():
return fetchEmployees(_that);case CreatingEmployees():
return creatingEmployees(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchEmployees value)?  fetchEmployees,TResult? Function( CreatingEmployees value)?  creatingEmployees,}){
final _that = this;
switch (_that) {
case FetchEmployees() when fetchEmployees != null:
return fetchEmployees(_that);case CreatingEmployees() when creatingEmployees != null:
return creatingEmployees(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  fetchEmployees,TResult Function( String empName,  String jobTitle)?  creatingEmployees,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchEmployees() when fetchEmployees != null:
return fetchEmployees(_that.page);case CreatingEmployees() when creatingEmployees != null:
return creatingEmployees(_that.empName,_that.jobTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  fetchEmployees,required TResult Function( String empName,  String jobTitle)  creatingEmployees,}) {final _that = this;
switch (_that) {
case FetchEmployees():
return fetchEmployees(_that.page);case CreatingEmployees():
return creatingEmployees(_that.empName,_that.jobTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  fetchEmployees,TResult? Function( String empName,  String jobTitle)?  creatingEmployees,}) {final _that = this;
switch (_that) {
case FetchEmployees() when fetchEmployees != null:
return fetchEmployees(_that.page);case CreatingEmployees() when creatingEmployees != null:
return creatingEmployees(_that.empName,_that.jobTitle);case _:
  return null;

}
}

}

/// @nodoc


class FetchEmployees implements EmployeeEvent {
  const FetchEmployees({required this.page});
  

 final  int page;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchEmployeesCopyWith<FetchEmployees> get copyWith => _$FetchEmployeesCopyWithImpl<FetchEmployees>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchEmployees&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'EmployeeEvent.fetchEmployees(page: $page)';
}


}

/// @nodoc
abstract mixin class $FetchEmployeesCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $FetchEmployeesCopyWith(FetchEmployees value, $Res Function(FetchEmployees) _then) = _$FetchEmployeesCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class _$FetchEmployeesCopyWithImpl<$Res>
    implements $FetchEmployeesCopyWith<$Res> {
  _$FetchEmployeesCopyWithImpl(this._self, this._then);

  final FetchEmployees _self;
  final $Res Function(FetchEmployees) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(FetchEmployees(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreatingEmployees implements EmployeeEvent {
  const CreatingEmployees({required this.empName, required this.jobTitle});
  

 final  String empName;
 final  String jobTitle;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatingEmployeesCopyWith<CreatingEmployees> get copyWith => _$CreatingEmployeesCopyWithImpl<CreatingEmployees>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatingEmployees&&(identical(other.empName, empName) || other.empName == empName)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle));
}


@override
int get hashCode => Object.hash(runtimeType,empName,jobTitle);

@override
String toString() {
  return 'EmployeeEvent.creatingEmployees(empName: $empName, jobTitle: $jobTitle)';
}


}

/// @nodoc
abstract mixin class $CreatingEmployeesCopyWith<$Res> implements $EmployeeEventCopyWith<$Res> {
  factory $CreatingEmployeesCopyWith(CreatingEmployees value, $Res Function(CreatingEmployees) _then) = _$CreatingEmployeesCopyWithImpl;
@useResult
$Res call({
 String empName, String jobTitle
});




}
/// @nodoc
class _$CreatingEmployeesCopyWithImpl<$Res>
    implements $CreatingEmployeesCopyWith<$Res> {
  _$CreatingEmployeesCopyWithImpl(this._self, this._then);

  final CreatingEmployees _self;
  final $Res Function(CreatingEmployees) _then;

/// Create a copy of EmployeeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? empName = null,Object? jobTitle = null,}) {
  return _then(CreatingEmployees(
empName: null == empName ? _self.empName : empName // ignore: cast_nullable_to_non_nullable
as String,jobTitle: null == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$EmployeeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeState()';
}


}

/// @nodoc
class $EmployeeStateCopyWith<$Res>  {
$EmployeeStateCopyWith(EmployeeState _, $Res Function(EmployeeState) __);
}


/// Adds pattern-matching-related methods to [EmployeeState].
extension EmployeeStatePatterns on EmployeeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( EmployeeFetching value)?  employeeFetching,TResult Function( EmployeeFetchingFailed value)?  employeeFetchingFailed,TResult Function( EmployeeFetchingSuccess value)?  employeeFetchingSuccess,TResult Function( CreatingEmployee value)?  creatingEmployee,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case EmployeeFetching() when employeeFetching != null:
return employeeFetching(_that);case EmployeeFetchingFailed() when employeeFetchingFailed != null:
return employeeFetchingFailed(_that);case EmployeeFetchingSuccess() when employeeFetchingSuccess != null:
return employeeFetchingSuccess(_that);case CreatingEmployee() when creatingEmployee != null:
return creatingEmployee(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( EmployeeFetching value)  employeeFetching,required TResult Function( EmployeeFetchingFailed value)  employeeFetchingFailed,required TResult Function( EmployeeFetchingSuccess value)  employeeFetchingSuccess,required TResult Function( CreatingEmployee value)  creatingEmployee,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case EmployeeFetching():
return employeeFetching(_that);case EmployeeFetchingFailed():
return employeeFetchingFailed(_that);case EmployeeFetchingSuccess():
return employeeFetchingSuccess(_that);case CreatingEmployee():
return creatingEmployee(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( EmployeeFetching value)?  employeeFetching,TResult? Function( EmployeeFetchingFailed value)?  employeeFetchingFailed,TResult? Function( EmployeeFetchingSuccess value)?  employeeFetchingSuccess,TResult? Function( CreatingEmployee value)?  creatingEmployee,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case EmployeeFetching() when employeeFetching != null:
return employeeFetching(_that);case EmployeeFetchingFailed() when employeeFetchingFailed != null:
return employeeFetchingFailed(_that);case EmployeeFetchingSuccess() when employeeFetchingSuccess != null:
return employeeFetchingSuccess(_that);case CreatingEmployee() when creatingEmployee != null:
return creatingEmployee(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int page)?  employeeFetching,TResult Function( Failure failure,  int page)?  employeeFetchingFailed,TResult Function( List<EmployeeEntity> employees,  int page,  int totalPage)?  employeeFetchingSuccess,TResult Function()?  creatingEmployee,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case EmployeeFetching() when employeeFetching != null:
return employeeFetching(_that.page);case EmployeeFetchingFailed() when employeeFetchingFailed != null:
return employeeFetchingFailed(_that.failure,_that.page);case EmployeeFetchingSuccess() when employeeFetchingSuccess != null:
return employeeFetchingSuccess(_that.employees,_that.page,_that.totalPage);case CreatingEmployee() when creatingEmployee != null:
return creatingEmployee();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int page)  employeeFetching,required TResult Function( Failure failure,  int page)  employeeFetchingFailed,required TResult Function( List<EmployeeEntity> employees,  int page,  int totalPage)  employeeFetchingSuccess,required TResult Function()  creatingEmployee,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case EmployeeFetching():
return employeeFetching(_that.page);case EmployeeFetchingFailed():
return employeeFetchingFailed(_that.failure,_that.page);case EmployeeFetchingSuccess():
return employeeFetchingSuccess(_that.employees,_that.page,_that.totalPage);case CreatingEmployee():
return creatingEmployee();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int page)?  employeeFetching,TResult? Function( Failure failure,  int page)?  employeeFetchingFailed,TResult? Function( List<EmployeeEntity> employees,  int page,  int totalPage)?  employeeFetchingSuccess,TResult? Function()?  creatingEmployee,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case EmployeeFetching() when employeeFetching != null:
return employeeFetching(_that.page);case EmployeeFetchingFailed() when employeeFetchingFailed != null:
return employeeFetchingFailed(_that.failure,_that.page);case EmployeeFetchingSuccess() when employeeFetchingSuccess != null:
return employeeFetchingSuccess(_that.employees,_that.page,_that.totalPage);case CreatingEmployee() when creatingEmployee != null:
return creatingEmployee();case _:
  return null;

}
}

}

/// @nodoc


class Initial implements EmployeeState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeState.initial()';
}


}




/// @nodoc


class EmployeeFetching implements EmployeeState {
  const EmployeeFetching(this.page);
  

 final  int page;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeFetchingCopyWith<EmployeeFetching> get copyWith => _$EmployeeFetchingCopyWithImpl<EmployeeFetching>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeFetching&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'EmployeeState.employeeFetching(page: $page)';
}


}

/// @nodoc
abstract mixin class $EmployeeFetchingCopyWith<$Res> implements $EmployeeStateCopyWith<$Res> {
  factory $EmployeeFetchingCopyWith(EmployeeFetching value, $Res Function(EmployeeFetching) _then) = _$EmployeeFetchingCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class _$EmployeeFetchingCopyWithImpl<$Res>
    implements $EmployeeFetchingCopyWith<$Res> {
  _$EmployeeFetchingCopyWithImpl(this._self, this._then);

  final EmployeeFetching _self;
  final $Res Function(EmployeeFetching) _then;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(EmployeeFetching(
null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class EmployeeFetchingFailed implements EmployeeState {
  const EmployeeFetchingFailed(this.failure, this.page);
  

 final  Failure failure;
 final  int page;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeFetchingFailedCopyWith<EmployeeFetchingFailed> get copyWith => _$EmployeeFetchingFailedCopyWithImpl<EmployeeFetchingFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeFetchingFailed&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,failure,page);

@override
String toString() {
  return 'EmployeeState.employeeFetchingFailed(failure: $failure, page: $page)';
}


}

/// @nodoc
abstract mixin class $EmployeeFetchingFailedCopyWith<$Res> implements $EmployeeStateCopyWith<$Res> {
  factory $EmployeeFetchingFailedCopyWith(EmployeeFetchingFailed value, $Res Function(EmployeeFetchingFailed) _then) = _$EmployeeFetchingFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure, int page
});




}
/// @nodoc
class _$EmployeeFetchingFailedCopyWithImpl<$Res>
    implements $EmployeeFetchingFailedCopyWith<$Res> {
  _$EmployeeFetchingFailedCopyWithImpl(this._self, this._then);

  final EmployeeFetchingFailed _self;
  final $Res Function(EmployeeFetchingFailed) _then;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,Object? page = null,}) {
  return _then(EmployeeFetchingFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class EmployeeFetchingSuccess implements EmployeeState {
  const EmployeeFetchingSuccess(final  List<EmployeeEntity> employees, this.page, this.totalPage): _employees = employees;
  

 final  List<EmployeeEntity> _employees;
 List<EmployeeEntity> get employees {
  if (_employees is EqualUnmodifiableListView) return _employees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employees);
}

 final  int page;
 final  int totalPage;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeFetchingSuccessCopyWith<EmployeeFetchingSuccess> get copyWith => _$EmployeeFetchingSuccessCopyWithImpl<EmployeeFetchingSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeFetchingSuccess&&const DeepCollectionEquality().equals(other._employees, _employees)&&(identical(other.page, page) || other.page == page)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_employees),page,totalPage);

@override
String toString() {
  return 'EmployeeState.employeeFetchingSuccess(employees: $employees, page: $page, totalPage: $totalPage)';
}


}

/// @nodoc
abstract mixin class $EmployeeFetchingSuccessCopyWith<$Res> implements $EmployeeStateCopyWith<$Res> {
  factory $EmployeeFetchingSuccessCopyWith(EmployeeFetchingSuccess value, $Res Function(EmployeeFetchingSuccess) _then) = _$EmployeeFetchingSuccessCopyWithImpl;
@useResult
$Res call({
 List<EmployeeEntity> employees, int page, int totalPage
});




}
/// @nodoc
class _$EmployeeFetchingSuccessCopyWithImpl<$Res>
    implements $EmployeeFetchingSuccessCopyWith<$Res> {
  _$EmployeeFetchingSuccessCopyWithImpl(this._self, this._then);

  final EmployeeFetchingSuccess _self;
  final $Res Function(EmployeeFetchingSuccess) _then;

/// Create a copy of EmployeeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employees = null,Object? page = null,Object? totalPage = null,}) {
  return _then(EmployeeFetchingSuccess(
null == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<EmployeeEntity>,null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreatingEmployee implements EmployeeState {
  const CreatingEmployee();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatingEmployee);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeState.creatingEmployee()';
}


}




// dart format on
