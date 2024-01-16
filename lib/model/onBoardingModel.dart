
import '../constants/app_assets.dart';
import '../constants/app_strings.dart';

class onBoardingModel
{
  String image;
  String Title;

  onBoardingModel({
    required this.Title,
    required this.image,
  });
  static List<onBoardingModel>onBoardingScrens=[
    onBoardingModel(
      Title: AppStrings.onBoardTitle,
      image: AppAssets.onBoarding1,
    ),

    onBoardingModel(
      Title: AppStrings.onBoardTitle2,
      image: AppAssets.onBoarding2,
    ),
    onBoardingModel(
      Title: AppStrings.onBoardTitle3,
      image: AppAssets.onBoarding3,
    )
  ];
}