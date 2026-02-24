// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState()';
}


}

/// @nodoc
class $SignupStateCopyWith<$Res>  {
$SignupStateCopyWith(SignupState _, $Res Function(SignupState) __);
}


/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns on SignupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SignupLoading value)?  loading,TResult Function( SignupSuccess value)?  success,TResult Function( SignupError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignupLoading() when loading != null:
return loading(_that);case SignupSuccess() when success != null:
return success(_that);case SignupError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SignupLoading value)  loading,required TResult Function( SignupSuccess value)  success,required TResult Function( SignupError value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SignupLoading():
return loading(_that);case SignupSuccess():
return success(_that);case SignupError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SignupLoading value)?  loading,TResult? Function( SignupSuccess value)?  success,TResult? Function( SignupError value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignupLoading() when loading != null:
return loading(_that);case SignupSuccess() when success != null:
return success(_that);case SignupError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SignupResponse signupResponse)?  success,TResult Function( ErrorHandler errorHandler)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignupLoading() when loading != null:
return loading();case SignupSuccess() when success != null:
return success(_that.signupResponse);case SignupError() when error != null:
return error(_that.errorHandler);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SignupResponse signupResponse)  success,required TResult Function( ErrorHandler errorHandler)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SignupLoading():
return loading();case SignupSuccess():
return success(_that.signupResponse);case SignupError():
return error(_that.errorHandler);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SignupResponse signupResponse)?  success,TResult? Function( ErrorHandler errorHandler)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignupLoading() when loading != null:
return loading();case SignupSuccess() when success != null:
return success(_that.signupResponse);case SignupError() when error != null:
return error(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SignupState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState.initial()';
}


}




/// @nodoc


class SignupLoading implements SignupState {
  const SignupLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState.loading()';
}


}




/// @nodoc


class SignupSuccess implements SignupState {
  const SignupSuccess(this.signupResponse);
  

 final  SignupResponse signupResponse;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupSuccessCopyWith<SignupSuccess> get copyWith => _$SignupSuccessCopyWithImpl<SignupSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSuccess&&(identical(other.signupResponse, signupResponse) || other.signupResponse == signupResponse));
}


@override
int get hashCode => Object.hash(runtimeType,signupResponse);

@override
String toString() {
  return 'SignupState.success(signupResponse: $signupResponse)';
}


}

/// @nodoc
abstract mixin class $SignupSuccessCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $SignupSuccessCopyWith(SignupSuccess value, $Res Function(SignupSuccess) _then) = _$SignupSuccessCopyWithImpl;
@useResult
$Res call({
 SignupResponse signupResponse
});




}
/// @nodoc
class _$SignupSuccessCopyWithImpl<$Res>
    implements $SignupSuccessCopyWith<$Res> {
  _$SignupSuccessCopyWithImpl(this._self, this._then);

  final SignupSuccess _self;
  final $Res Function(SignupSuccess) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? signupResponse = null,}) {
  return _then(SignupSuccess(
null == signupResponse ? _self.signupResponse : signupResponse // ignore: cast_nullable_to_non_nullable
as SignupResponse,
  ));
}


}

/// @nodoc


class SignupError implements SignupState {
  const SignupError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupErrorCopyWith<SignupError> get copyWith => _$SignupErrorCopyWithImpl<SignupError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'SignupState.error(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $SignupErrorCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $SignupErrorCopyWith(SignupError value, $Res Function(SignupError) _then) = _$SignupErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$SignupErrorCopyWithImpl<$Res>
    implements $SignupErrorCopyWith<$Res> {
  _$SignupErrorCopyWithImpl(this._self, this._then);

  final SignupError _self;
  final $Res Function(SignupError) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(SignupError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
