class DayModel {
  final DateTime date;
  final String dayName;
  final String dayNumber;
  bool isSelected;

  DayModel({
    required this.date,
    required this.dayName,
    required this.dayNumber,
    this.isSelected = false,
  });

  DayModel copyWith({bool? isSelected}){
    return DayModel(
      date: date,
      dayName: dayName,
      dayNumber: dayNumber,
      isSelected: isSelected ?? this.isSelected
    );
  }
}