import '../../../core/constants/app_images.dart';

class OnBoardingModel {
  final String image;
  final String buttonText;

  OnBoardingModel({required this.image, required this.buttonText});

  static List<OnBoardingModel> onboardingPages = [
    OnBoardingModel(image: Assets.onboarding1, buttonText: 'التالي'),
    OnBoardingModel(image: Assets.onboarding2, buttonText: 'التالي'),
    OnBoardingModel(image: Assets.onboarding3, buttonText: '! يلا بينا'),
  ];
}