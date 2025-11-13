// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JobPostEvent {

 String get name; String get job;
/// Create a copy of JobPostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobPostEventCopyWith<JobPostEvent> get copyWith => _$JobPostEventCopyWithImpl<JobPostEvent>(this as JobPostEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobPostEvent&&(identical(other.name, name) || other.name == name)&&(identical(other.job, job) || other.job == job));
}


@override
int get hashCode => Object.hash(runtimeType,name,job);

@override
String toString() {
  return 'JobPostEvent(name: $name, job: $job)';
}


}

/// @nodoc
abstract mixin class $JobPostEventCopyWith<$Res>  {
  factory $JobPostEventCopyWith(JobPostEvent value, $Res Function(JobPostEvent) _then) = _$JobPostEventCopyWithImpl;
@useResult
$Res call({
 String name, String job
});




}
/// @nodoc
class _$JobPostEventCopyWithImpl<$Res>
    implements $JobPostEventCopyWith<$Res> {
  _$JobPostEventCopyWithImpl(this._self, this._then);

  final JobPostEvent _self;
  final $Res Function(JobPostEvent) _then;

/// Create a copy of JobPostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? job = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [JobPostEvent].
extension JobPostEventPatterns on JobPostEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Adding value)?  adding,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Adding() when adding != null:
return adding(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Adding value)  adding,}){
final _that = this;
switch (_that) {
case Adding():
return adding(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Adding value)?  adding,}){
final _that = this;
switch (_that) {
case Adding() when adding != null:
return adding(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name,  String job)?  adding,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Adding() when adding != null:
return adding(_that.name,_that.job);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name,  String job)  adding,}) {final _that = this;
switch (_that) {
case Adding():
return adding(_that.name,_that.job);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name,  String job)?  adding,}) {final _that = this;
switch (_that) {
case Adding() when adding != null:
return adding(_that.name,_that.job);case _:
  return null;

}
}

}

/// @nodoc


class Adding implements JobPostEvent {
  const Adding({required this.name, required this.job});
  

@override final  String name;
@override final  String job;

/// Create a copy of JobPostEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddingCopyWith<Adding> get copyWith => _$AddingCopyWithImpl<Adding>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Adding&&(identical(other.name, name) || other.name == name)&&(identical(other.job, job) || other.job == job));
}


@override
int get hashCode => Object.hash(runtimeType,name,job);

@override
String toString() {
  return 'JobPostEvent.adding(name: $name, job: $job)';
}


}

/// @nodoc
abstract mixin class $AddingCopyWith<$Res> implements $JobPostEventCopyWith<$Res> {
  factory $AddingCopyWith(Adding value, $Res Function(Adding) _then) = _$AddingCopyWithImpl;
@override @useResult
$Res call({
 String name, String job
});




}
/// @nodoc
class _$AddingCopyWithImpl<$Res>
    implements $AddingCopyWith<$Res> {
  _$AddingCopyWithImpl(this._self, this._then);

  final Adding _self;
  final $Res Function(Adding) _then;

/// Create a copy of JobPostEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? job = null,}) {
  return _then(Adding(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$JobPostState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobPostState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JobPostState()';
}


}

/// @nodoc
class $JobPostStateCopyWith<$Res>  {
$JobPostStateCopyWith(JobPostState _, $Res Function(JobPostState) __);
}


/// Adds pattern-matching-related methods to [JobPostState].
extension JobPostStatePatterns on JobPostState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Failure failure)?  errorState,TResult Function( String jobPost)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case ErrorState() when errorState != null:
return errorState(_that.failure);case Success() when success != null:
return success(_that.jobPost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Failure failure)  errorState,required TResult Function( String jobPost)  success,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case ErrorState():
return errorState(_that.failure);case Success():
return success(_that.jobPost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Failure failure)?  errorState,TResult? Function( String jobPost)?  success,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case ErrorState() when errorState != null:
return errorState(_that.failure);case Success() when success != null:
return success(_that.jobPost);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements JobPostState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JobPostState.initial()';
}


}




/// @nodoc


class Loading implements JobPostState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JobPostState.loading()';
}


}




/// @nodoc


class ErrorState implements JobPostState {
  const ErrorState(this.failure);
  

 final  Failure failure;

/// Create a copy of JobPostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorStateCopyWith<ErrorState> get copyWith => _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'JobPostState.errorState(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $JobPostStateCopyWith<$Res> {
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

/// Create a copy of JobPostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(ErrorState(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class Success implements JobPostState {
  const Success(this.jobPost);
  

 final  String jobPost;

/// Create a copy of JobPostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.jobPost, jobPost) || other.jobPost == jobPost));
}


@override
int get hashCode => Object.hash(runtimeType,jobPost);

@override
String toString() {
  return 'JobPostState.success(jobPost: $jobPost)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $JobPostStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 String jobPost
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of JobPostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jobPost = null,}) {
  return _then(Success(
null == jobPost ? _self.jobPost : jobPost // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
