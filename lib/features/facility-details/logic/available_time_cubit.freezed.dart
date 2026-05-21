// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_time_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AvailableTimeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableTimeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AvailableTimeState()';
}


}

/// @nodoc
class $AvailableTimeStateCopyWith<$Res>  {
$AvailableTimeStateCopyWith(AvailableTimeState _, $Res Function(AvailableTimeState) __);
}


/// Adds pattern-matching-related methods to [AvailableTimeState].
extension AvailableTimeStatePatterns on AvailableTimeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( AvailableTimeLoading value)?  loading,TResult Function( AvailableTimeSuccess value)?  success,TResult Function( AvailableTimeError value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AvailableTimeLoading() when loading != null:
return loading(_that);case AvailableTimeSuccess() when success != null:
return success(_that);case AvailableTimeError() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( AvailableTimeLoading value)  loading,required TResult Function( AvailableTimeSuccess value)  success,required TResult Function( AvailableTimeError value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case AvailableTimeLoading():
return loading(_that);case AvailableTimeSuccess():
return success(_that);case AvailableTimeError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( AvailableTimeLoading value)?  loading,TResult? Function( AvailableTimeSuccess value)?  success,TResult? Function( AvailableTimeError value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AvailableTimeLoading() when loading != null:
return loading(_that);case AvailableTimeSuccess() when success != null:
return success(_that);case AvailableTimeError() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AvailableTimeModel data)?  success,TResult Function( ErrorHandler error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AvailableTimeLoading() when loading != null:
return loading();case AvailableTimeSuccess() when success != null:
return success(_that.data);case AvailableTimeError() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AvailableTimeModel data)  success,required TResult Function( ErrorHandler error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case AvailableTimeLoading():
return loading();case AvailableTimeSuccess():
return success(_that.data);case AvailableTimeError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AvailableTimeModel data)?  success,TResult? Function( ErrorHandler error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AvailableTimeLoading() when loading != null:
return loading();case AvailableTimeSuccess() when success != null:
return success(_that.data);case AvailableTimeError() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AvailableTimeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AvailableTimeState.initial()';
}


}




/// @nodoc


class AvailableTimeLoading implements AvailableTimeState {
  const AvailableTimeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableTimeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AvailableTimeState.loading()';
}


}




/// @nodoc


class AvailableTimeSuccess implements AvailableTimeState {
  const AvailableTimeSuccess(this.data);
  

 final  AvailableTimeModel data;

/// Create a copy of AvailableTimeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableTimeSuccessCopyWith<AvailableTimeSuccess> get copyWith => _$AvailableTimeSuccessCopyWithImpl<AvailableTimeSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableTimeSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AvailableTimeState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $AvailableTimeSuccessCopyWith<$Res> implements $AvailableTimeStateCopyWith<$Res> {
  factory $AvailableTimeSuccessCopyWith(AvailableTimeSuccess value, $Res Function(AvailableTimeSuccess) _then) = _$AvailableTimeSuccessCopyWithImpl;
@useResult
$Res call({
 AvailableTimeModel data
});




}
/// @nodoc
class _$AvailableTimeSuccessCopyWithImpl<$Res>
    implements $AvailableTimeSuccessCopyWith<$Res> {
  _$AvailableTimeSuccessCopyWithImpl(this._self, this._then);

  final AvailableTimeSuccess _self;
  final $Res Function(AvailableTimeSuccess) _then;

/// Create a copy of AvailableTimeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(AvailableTimeSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AvailableTimeModel,
  ));
}


}

/// @nodoc


class AvailableTimeError implements AvailableTimeState {
  const AvailableTimeError(this.error);
  

 final  ErrorHandler error;

/// Create a copy of AvailableTimeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableTimeErrorCopyWith<AvailableTimeError> get copyWith => _$AvailableTimeErrorCopyWithImpl<AvailableTimeError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableTimeError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AvailableTimeState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $AvailableTimeErrorCopyWith<$Res> implements $AvailableTimeStateCopyWith<$Res> {
  factory $AvailableTimeErrorCopyWith(AvailableTimeError value, $Res Function(AvailableTimeError) _then) = _$AvailableTimeErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$AvailableTimeErrorCopyWithImpl<$Res>
    implements $AvailableTimeErrorCopyWith<$Res> {
  _$AvailableTimeErrorCopyWithImpl(this._self, this._then);

  final AvailableTimeError _self;
  final $Res Function(AvailableTimeError) _then;

/// Create a copy of AvailableTimeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AvailableTimeError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
