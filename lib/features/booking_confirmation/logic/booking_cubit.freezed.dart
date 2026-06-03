// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState()';
}


}

/// @nodoc
class $BookingStateCopyWith<$Res>  {
$BookingStateCopyWith(BookingState _, $Res Function(BookingState) __);
}


/// Adds pattern-matching-related methods to [BookingState].
extension BookingStatePatterns on BookingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( BookingLoading value)?  loading,TResult Function( BookingSuccess value)?  success,TResult Function( BookingFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case BookingLoading() when loading != null:
return loading(_that);case BookingSuccess() when success != null:
return success(_that);case BookingFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( BookingLoading value)  loading,required TResult Function( BookingSuccess value)  success,required TResult Function( BookingFailure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case BookingLoading():
return loading(_that);case BookingSuccess():
return success(_that);case BookingFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( BookingLoading value)?  loading,TResult? Function( BookingSuccess value)?  success,TResult? Function( BookingFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case BookingLoading() when loading != null:
return loading(_that);case BookingSuccess() when success != null:
return success(_that);case BookingFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( BookingData response)?  success,TResult Function( ErrorHandler error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case BookingLoading() when loading != null:
return loading();case BookingSuccess() when success != null:
return success(_that.response);case BookingFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( BookingData response)  success,required TResult Function( ErrorHandler error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case BookingLoading():
return loading();case BookingSuccess():
return success(_that.response);case BookingFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( BookingData response)?  success,TResult? Function( ErrorHandler error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case BookingLoading() when loading != null:
return loading();case BookingSuccess() when success != null:
return success(_that.response);case BookingFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements BookingState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState.initial()';
}


}




/// @nodoc


class BookingLoading implements BookingState {
  const BookingLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState.loading()';
}


}




/// @nodoc


class BookingSuccess implements BookingState {
  const BookingSuccess(this.response);
  

 final  BookingData response;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingSuccessCopyWith<BookingSuccess> get copyWith => _$BookingSuccessCopyWithImpl<BookingSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'BookingState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class $BookingSuccessCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory $BookingSuccessCopyWith(BookingSuccess value, $Res Function(BookingSuccess) _then) = _$BookingSuccessCopyWithImpl;
@useResult
$Res call({
 BookingData response
});




}
/// @nodoc
class _$BookingSuccessCopyWithImpl<$Res>
    implements $BookingSuccessCopyWith<$Res> {
  _$BookingSuccessCopyWithImpl(this._self, this._then);

  final BookingSuccess _self;
  final $Res Function(BookingSuccess) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(BookingSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as BookingData,
  ));
}


}

/// @nodoc


class BookingFailure implements BookingState {
  const BookingFailure(this.error);
  

 final  ErrorHandler error;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingFailureCopyWith<BookingFailure> get copyWith => _$BookingFailureCopyWithImpl<BookingFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'BookingState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $BookingFailureCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory $BookingFailureCopyWith(BookingFailure value, $Res Function(BookingFailure) _then) = _$BookingFailureCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$BookingFailureCopyWithImpl<$Res>
    implements $BookingFailureCopyWith<$Res> {
  _$BookingFailureCopyWithImpl(this._self, this._then);

  final BookingFailure _self;
  final $Res Function(BookingFailure) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(BookingFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
