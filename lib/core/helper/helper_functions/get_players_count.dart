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