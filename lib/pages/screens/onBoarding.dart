import 'package:flutter/material.dart';
import 'package:project_sec/pages/login.dart';
import 'package:project_sec/model/onBoardingModel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../widgets/common.dart';
import '../../widgets/customElevatedButton.dart';
import '../../widgets/customTextButton.dart';
import '../../helpers/services_locator.dart';
import '../../helpers/cache_helper.dart';

class onBoarding extends StatelessWidget {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: PageView.builder(
            itemCount: onBoardingModel.onBoardingScrens.length,
            controller: controller,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: index != 2
                        ? customTextButton(
                            text: AppStrings.skip,
                            onpressed: () => controller.jumpToPage(2),
                          )
                        : SizedBox.shrink(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Image.asset(
                    onBoardingModel.onBoardingScrens[index].image,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: JumpingDotEffect(
                        activeDotColor: AppColors.primary, spacing: 10),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    onBoardingModel.onBoardingScrens[index].Title,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      index != 0
                          ? customTextButton(
                              text: AppStrings.back,
                              onpressed: () => controller.previousPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeIn),
                            )
                          : SizedBox.shrink(),
                      const Spacer(),
                      index != 2
                          ? customElevatedButton(
                              text: AppStrings.next,
                              onPressed: () {
                                controller.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              })
                          : customElevatedButton(
                              text: AppStrings.getStarted,
                              onPressed: () async {
                                await sl<CacheHelper>()
                                    .saveData(
                                        key: AppStrings.onBoardingKey,
                                        value: true)
                                    .then(
                                      (value) => navigate(
                                          context: context, screen: login()),
                                    )
                                    .catchError((e) {
                                  print(e.toString());
                                });
                              },
                            ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
