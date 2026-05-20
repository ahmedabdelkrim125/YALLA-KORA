// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalendarState {

 List<DayModel> get days; DayModel get selectedDay; int get currentMonth; int get currentYear; String get selectedDateFormatted;
/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarStateCopyWith<CalendarState> get copyWith => _$CalendarStateCopyWithImpl<CalendarState>(this as CalendarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarState&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.selectedDay, selectedDay) || other.selectedDay == selectedDay)&&(identical(other.currentMonth, currentMonth) || other.currentMonth == currentMonth)&&(identical(other.currentYear, currentYear) || other.currentYear == currentYear)&&(identical(other.selectedDateFormatted, selectedDateFormatted) || other.selectedDateFormatted == selectedDateFormatted));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(days),selectedDay,currentMonth,currentYear,selectedDateFormatted);

@override
String toString() {
  return 'CalendarState(days: $days, selectedDay: $selectedDay, currentMonth: $currentMonth, currentYear: $currentYear, selectedDateFormatted: $selectedDateFormatted)';
}


}

/// @nodoc
abstract mixin class $CalendarStateCopyWith<$Res>  {
  factory $CalendarStateCopyWith(CalendarState value, $Res Function(CalendarState) _then) = _$CalendarStateCopyWithImpl;
@useResult
$Res call({
 List<DayModel> days, DayModel selectedDay, int currentMonth, int currentYear, String selectedDateFormatted
});




}
/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._self, this._then);

  final CalendarState _self;
  final $Res Function(CalendarState) _then;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? days = null,Object? selectedDay = null,Object? currentMonth = null,Object? currentYear = null,Object? selectedDateFormatted = null,}) {
  return _then(_self.copyWith(
days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<DayModel>,selectedDay: null == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as DayModel,currentMonth: null == currentMonth ? _self.currentMonth : currentMonth // ignore: cast_nullable_to_non_nullable
as int,currentYear: null == currentYear ? _self.currentYear : currentYear // ignore: cast_nullable_to_non_nullable
as int,selectedDateFormatted: null == selectedDateFormatted ? _self.selectedDateFormatted : selectedDateFormatted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarState].
extension CalendarStatePatterns on CalendarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarState value)  $default,){
final _that = this;
switch (_that) {
case _CalendarState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarState value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DayModel> days,  DayModel selectedDay,  int currentMonth,  int currentYear,  String selectedDateFormatted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that.days,_that.selectedDay,_that.currentMonth,_that.currentYear,_that.selectedDateFormatted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DayModel> days,  DayModel selectedDay,  int currentMonth,  int currentYear,  String selectedDateFormatted)  $default,) {final _that = this;
switch (_that) {
case _CalendarState():
return $default(_that.days,_that.selectedDay,_that.currentMonth,_that.currentYear,_that.selectedDateFormatted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DayModel> days,  DayModel selectedDay,  int currentMonth,  int currentYear,  String selectedDateFormatted)?  $default,) {final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that.days,_that.selectedDay,_that.currentMonth,_that.currentYear,_that.selectedDateFormatted);case _:
  return null;

}
}

}

/// @nodoc


class _CalendarState implements CalendarState {
  const _CalendarState({required final  List<DayModel> days, required this.selectedDay, required this.currentMonth, required this.currentYear, required this.selectedDateFormatted}): _days = days;
  

 final  List<DayModel> _days;
@override List<DayModel> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

@override final  DayModel selectedDay;
@override final  int currentMonth;
@override final  int currentYear;
@override final  String selectedDateFormatted;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarStateCopyWith<_CalendarState> get copyWith => __$CalendarStateCopyWithImpl<_CalendarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarState&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.selectedDay, selectedDay) || other.selectedDay == selectedDay)&&(identical(other.currentMonth, currentMonth) || other.currentMonth == currentMonth)&&(identical(other.currentYear, currentYear) || other.currentYear == currentYear)&&(identical(other.selectedDateFormatted, selectedDateFormatted) || other.selectedDateFormatted == selectedDateFormatted));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_days),selectedDay,currentMonth,currentYear,selectedDateFormatted);

@override
String toString() {
  return 'CalendarState(days: $days, selectedDay: $selectedDay, currentMonth: $currentMonth, currentYear: $currentYear, selectedDateFormatted: $selectedDateFormatted)';
}


}

/// @nodoc
abstract mixin class _$CalendarStateCopyWith<$Res> implements $CalendarStateCopyWith<$Res> {
  factory _$CalendarStateCopyWith(_CalendarState value, $Res Function(_CalendarState) _then) = __$CalendarStateCopyWithImpl;
@override @useResult
$Res call({
 List<DayModel> days, DayModel selectedDay, int currentMonth, int currentYear, String selectedDateFormatted
});




}
/// @nodoc
class __$CalendarStateCopyWithImpl<$Res>
    implements _$CalendarStateCopyWith<$Res> {
  __$CalendarStateCopyWithImpl(this._self, this._then);

  final _CalendarState _self;
  final $Res Function(_CalendarState) _then;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? days = null,Object? selectedDay = null,Object? currentMonth = null,Object? currentYear = null,Object? selectedDateFormatted = null,}) {
  return _then(_CalendarState(
days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<DayModel>,selectedDay: null == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as DayModel,currentMonth: null == currentMonth ? _self.currentMonth : currentMonth // ignore: cast_nullable_to_non_nullable
as int,currentYear: null == currentYear ? _self.currentYear : currentYear // ignore: cast_nullable_to_non_nullable
as int,selectedDateFormatted: null == selectedDateFormatted ? _self.selectedDateFormatted : selectedDateFormatted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
