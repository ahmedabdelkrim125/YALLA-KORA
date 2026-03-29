// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_matches_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventMatchesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventMatchesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventMatchesState()';
}


}

/// @nodoc
class $EventMatchesStateCopyWith<$Res>  {
$EventMatchesStateCopyWith(EventMatchesState _, $Res Function(EventMatchesState) __);
}


/// Adds pattern-matching-related methods to [EventMatchesState].
extension EventMatchesStatePatterns on EventMatchesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( EventMatchesLoading value)?  loading,TResult Function( EventMatchesSuccess value)?  success,TResult Function( EventMatchesFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case EventMatchesLoading() when loading != null:
return loading(_that);case EventMatchesSuccess() when success != null:
return success(_that);case EventMatchesFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( EventMatchesLoading value)  loading,required TResult Function( EventMatchesSuccess value)  success,required TResult Function( EventMatchesFailure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case EventMatchesLoading():
return loading(_that);case EventMatchesSuccess():
return success(_that);case EventMatchesFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( EventMatchesLoading value)?  loading,TResult? Function( EventMatchesSuccess value)?  success,TResult? Function( EventMatchesFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case EventMatchesLoading() when loading != null:
return loading(_that);case EventMatchesSuccess() when success != null:
return success(_that);case EventMatchesFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<MatchModel> data)?  success,TResult Function( ErrorHandler error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case EventMatchesLoading() when loading != null:
return loading();case EventMatchesSuccess() when success != null:
return success(_that.data);case EventMatchesFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<MatchModel> data)  success,required TResult Function( ErrorHandler error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case EventMatchesLoading():
return loading();case EventMatchesSuccess():
return success(_that.data);case EventMatchesFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<MatchModel> data)?  success,TResult? Function( ErrorHandler error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case EventMatchesLoading() when loading != null:
return loading();case EventMatchesSuccess() when success != null:
return success(_that.data);case EventMatchesFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements EventMatchesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventMatchesState.initial()';
}


}




/// @nodoc


class EventMatchesLoading implements EventMatchesState {
  const EventMatchesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventMatchesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventMatchesState.loading()';
}


}




/// @nodoc


class EventMatchesSuccess implements EventMatchesState {
  const EventMatchesSuccess(final  List<MatchModel> data): _data = data;
  

 final  List<MatchModel> _data;
 List<MatchModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of EventMatchesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventMatchesSuccessCopyWith<EventMatchesSuccess> get copyWith => _$EventMatchesSuccessCopyWithImpl<EventMatchesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventMatchesSuccess&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'EventMatchesState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $EventMatchesSuccessCopyWith<$Res> implements $EventMatchesStateCopyWith<$Res> {
  factory $EventMatchesSuccessCopyWith(EventMatchesSuccess value, $Res Function(EventMatchesSuccess) _then) = _$EventMatchesSuccessCopyWithImpl;
@useResult
$Res call({
 List<MatchModel> data
});




}
/// @nodoc
class _$EventMatchesSuccessCopyWithImpl<$Res>
    implements $EventMatchesSuccessCopyWith<$Res> {
  _$EventMatchesSuccessCopyWithImpl(this._self, this._then);

  final EventMatchesSuccess _self;
  final $Res Function(EventMatchesSuccess) _then;

/// Create a copy of EventMatchesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(EventMatchesSuccess(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MatchModel>,
  ));
}


}

/// @nodoc


class EventMatchesFailure implements EventMatchesState {
  const EventMatchesFailure(this.error);
  

 final  ErrorHandler error;

/// Create a copy of EventMatchesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventMatchesFailureCopyWith<EventMatchesFailure> get copyWith => _$EventMatchesFailureCopyWithImpl<EventMatchesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventMatchesFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'EventMatchesState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $EventMatchesFailureCopyWith<$Res> implements $EventMatchesStateCopyWith<$Res> {
  factory $EventMatchesFailureCopyWith(EventMatchesFailure value, $Res Function(EventMatchesFailure) _then) = _$EventMatchesFailureCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$EventMatchesFailureCopyWithImpl<$Res>
    implements $EventMatchesFailureCopyWith<$Res> {
  _$EventMatchesFailureCopyWithImpl(this._self, this._then);

  final EventMatchesFailure _self;
  final $Res Function(EventMatchesFailure) _then;

/// Create a copy of EventMatchesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(EventMatchesFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
