int getPlayersCount(String type) {
  switch (type) {
    case '5x5':
      return 10;
    case '7x7':
      return 14;
    case '11x11':
      return 22;
    default:
      throw ArgumentError('Unknown field type: $type');
  }
}

String getPlayersCountLabel(String type) {
  switch (type) {
    case '5x5':
      return 'خماسي (5 ضد 5)';
    case '7x7':
      return 'سباعي (7 ضد 7)';
    case '11x11':
      return 'حداشر (11 ضد 11)';
    default:
      throw ArgumentError('Unknown field type: $type');
  }
}