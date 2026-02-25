class OnBoardingState {
  final int currentPage;

  const OnBoardingState({this.currentPage = 0});

  OnBoardingState copyWith({int? currentPage}) {
    return OnBoardingState(currentPage: currentPage ?? this.currentPage);
  }
}