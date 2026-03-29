// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'near_facilities_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NearFacilitiesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NearFacilitiesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NearFacilitiesState()';
}


}

/// @nodoc
class $NearFacilitiesStateCopyWith<$Res>  {
$NearFacilitiesStateCopyWith(NearFacilitiesState _, $Res Function(NearFacilitiesState) __);
}


/// Adds pattern-matching-related methods to [NearFacilitiesState].
extension NearFacilitiesStatePatterns on NearFacilitiesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( NearFacilitiesLoading value)?  loading,TResult Function( NearFacilitiesSuccess value)?  success,TResult Function( NearFacilitiesError value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case NearFacilitiesLoading() when loading != null:
return loading(_that);case NearFacilitiesSuccess() when success != null:
return success(_that);case NearFacilitiesError() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( NearFacilitiesLoading value)  loading,required TResult Function( NearFacilitiesSuccess value)  success,required TResult Function( NearFacilitiesError value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case NearFacilitiesLoading():
return loading(_that);case NearFacilitiesSuccess():
return success(_that);case NearFacilitiesError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( NearFacilitiesLoading value)?  loading,TResult? Function( NearFacilitiesSuccess value)?  success,TResult? Function( NearFacilitiesError value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case NearFacilitiesLoading() when loading != null:
return loading(_that);case NearFacilitiesSuccess() when success != null:
return success(_that);case NearFacilitiesError() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<FootballFieldModel> data)?  success,TResult Function( ErrorHandler error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case NearFacilitiesLoading() when loading != null:
return loading();case NearFacilitiesSuccess() when success != null:
return success(_that.data);case NearFacilitiesError() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<FootballFieldModel> data)  success,required TResult Function( ErrorHandler error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case NearFacilitiesLoading():
return loading();case NearFacilitiesSuccess():
return success(_that.data);case NearFacilitiesError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<FootballFieldModel> data)?  success,TResult? Function( ErrorHandler error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case NearFacilitiesLoading() when loading != null:
return loading();case NearFacilitiesSuccess() when success != null:
return success(_that.data);case NearFacilitiesError() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements NearFacilitiesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NearFacilitiesState.initial()';
}


}




/// @nodoc


class NearFacilitiesLoading implements NearFacilitiesState {
  const NearFacilitiesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NearFacilitiesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NearFacilitiesState.loading()';
}


}




/// @nodoc


class NearFacilitiesSuccess implements NearFacilitiesState {
  const NearFacilitiesSuccess(final  List<FootballFieldModel> data): _data = data;
  

 final  List<FootballFieldModel> _data;
 List<FootballFieldModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of NearFacilitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NearFacilitiesSuccessCopyWith<NearFacilitiesSuccess> get copyWith => _$NearFacilitiesSuccessCopyWithImpl<NearFacilitiesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NearFacilitiesSuccess&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'NearFacilitiesState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $NearFacilitiesSuccessCopyWith<$Res> implements $NearFacilitiesStateCopyWith<$Res> {
  factory $NearFacilitiesSuccessCopyWith(NearFacilitiesSuccess value, $Res Function(NearFacilitiesSuccess) _then) = _$NearFacilitiesSuccessCopyWithImpl;
@useResult
$Res call({
 List<FootballFieldModel> data
});




}
/// @nodoc
class _$NearFacilitiesSuccessCopyWithImpl<$Res>
    implements $NearFacilitiesSuccessCopyWith<$Res> {
  _$NearFacilitiesSuccessCopyWithImpl(this._self, this._then);

  final NearFacilitiesSuccess _self;
  final $Res Function(NearFacilitiesSuccess) _then;

/// Create a copy of NearFacilitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(NearFacilitiesSuccess(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<FootballFieldModel>,
  ));
}


}

/// @nodoc


class NearFacilitiesError implements NearFacilitiesState {
  const NearFacilitiesError(this.error);
  

 final  ErrorHandler error;

/// Create a copy of NearFacilitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NearFacilitiesErrorCopyWith<NearFacilitiesError> get copyWith => _$NearFacilitiesErrorCopyWithImpl<NearFacilitiesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NearFacilitiesError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'NearFacilitiesState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $NearFacilitiesErrorCopyWith<$Res> implements $NearFacilitiesStateCopyWith<$Res> {
  factory $NearFacilitiesErrorCopyWith(NearFacilitiesError value, $Res Function(NearFacilitiesError) _then) = _$NearFacilitiesErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$NearFacilitiesErrorCopyWithImpl<$Res>
    implements $NearFacilitiesErrorCopyWith<$Res> {
  _$NearFacilitiesErrorCopyWithImpl(this._self, this._then);

  final NearFacilitiesError _self;
  final $Res Function(NearFacilitiesError) _then;

/// Create a copy of NearFacilitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(NearFacilitiesError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
