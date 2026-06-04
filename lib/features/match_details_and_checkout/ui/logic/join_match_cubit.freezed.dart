// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_match_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JoinMatchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinMatchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JoinMatchState()';
}


}

/// @nodoc
class $JoinMatchStateCopyWith<$Res>  {
$JoinMatchStateCopyWith(JoinMatchState _, $Res Function(JoinMatchState) __);
}


/// Adds pattern-matching-related methods to [JoinMatchState].
extension JoinMatchStatePatterns on JoinMatchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( JoinMatchLoading value)?  loading,TResult Function( JoinMatchSuccess value)?  success,TResult Function( JoinMatchError value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case JoinMatchLoading() when loading != null:
return loading(_that);case JoinMatchSuccess() when success != null:
return success(_that);case JoinMatchError() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( JoinMatchLoading value)  loading,required TResult Function( JoinMatchSuccess value)  success,required TResult Function( JoinMatchError value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case JoinMatchLoading():
return loading(_that);case JoinMatchSuccess():
return success(_that);case JoinMatchError():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( JoinMatchLoading value)?  loading,TResult? Function( JoinMatchSuccess value)?  success,TResult? Function( JoinMatchError value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case JoinMatchLoading() when loading != null:
return loading(_that);case JoinMatchSuccess() when success != null:
return success(_that);case JoinMatchError() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( JoinMatchResponse joinMatchResponse)?  success,TResult Function( ErrorHandler error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case JoinMatchLoading() when loading != null:
return loading();case JoinMatchSuccess() when success != null:
return success(_that.joinMatchResponse);case JoinMatchError() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( JoinMatchResponse joinMatchResponse)  success,required TResult Function( ErrorHandler error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case JoinMatchLoading():
return loading();case JoinMatchSuccess():
return success(_that.joinMatchResponse);case JoinMatchError():
return failure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( JoinMatchResponse joinMatchResponse)?  success,TResult? Function( ErrorHandler error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case JoinMatchLoading() when loading != null:
return loading();case JoinMatchSuccess() when success != null:
return success(_that.joinMatchResponse);case JoinMatchError() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements JoinMatchState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JoinMatchState.initial()';
}


}




/// @nodoc


class JoinMatchLoading implements JoinMatchState {
  const JoinMatchLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinMatchLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JoinMatchState.loading()';
}


}




/// @nodoc


class JoinMatchSuccess implements JoinMatchState {
  const JoinMatchSuccess(this.joinMatchResponse);
  

 final  JoinMatchResponse joinMatchResponse;

/// Create a copy of JoinMatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JoinMatchSuccessCopyWith<JoinMatchSuccess> get copyWith => _$JoinMatchSuccessCopyWithImpl<JoinMatchSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinMatchSuccess&&(identical(other.joinMatchResponse, joinMatchResponse) || other.joinMatchResponse == joinMatchResponse));
}


@override
int get hashCode => Object.hash(runtimeType,joinMatchResponse);

@override
String toString() {
  return 'JoinMatchState.success(joinMatchResponse: $joinMatchResponse)';
}


}

/// @nodoc
abstract mixin class $JoinMatchSuccessCopyWith<$Res> implements $JoinMatchStateCopyWith<$Res> {
  factory $JoinMatchSuccessCopyWith(JoinMatchSuccess value, $Res Function(JoinMatchSuccess) _then) = _$JoinMatchSuccessCopyWithImpl;
@useResult
$Res call({
 JoinMatchResponse joinMatchResponse
});




}
/// @nodoc
class _$JoinMatchSuccessCopyWithImpl<$Res>
    implements $JoinMatchSuccessCopyWith<$Res> {
  _$JoinMatchSuccessCopyWithImpl(this._self, this._then);

  final JoinMatchSuccess _self;
  final $Res Function(JoinMatchSuccess) _then;

/// Create a copy of JoinMatchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? joinMatchResponse = null,}) {
  return _then(JoinMatchSuccess(
null == joinMatchResponse ? _self.joinMatchResponse : joinMatchResponse // ignore: cast_nullable_to_non_nullable
as JoinMatchResponse,
  ));
}


}

/// @nodoc


class JoinMatchError implements JoinMatchState {
  const JoinMatchError(this.error);
  

 final  ErrorHandler error;

/// Create a copy of JoinMatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JoinMatchErrorCopyWith<JoinMatchError> get copyWith => _$JoinMatchErrorCopyWithImpl<JoinMatchError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinMatchError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'JoinMatchState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $JoinMatchErrorCopyWith<$Res> implements $JoinMatchStateCopyWith<$Res> {
  factory $JoinMatchErrorCopyWith(JoinMatchError value, $Res Function(JoinMatchError) _then) = _$JoinMatchErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$JoinMatchErrorCopyWithImpl<$Res>
    implements $JoinMatchErrorCopyWith<$Res> {
  _$JoinMatchErrorCopyWithImpl(this._self, this._then);

  final JoinMatchError _self;
  final $Res Function(JoinMatchError) _then;

/// Create a copy of JoinMatchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(JoinMatchError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
