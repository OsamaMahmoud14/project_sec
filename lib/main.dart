
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:project_sec/helpers/cache_helper.dart';
import 'package:project_sec/pages/Quiz/bindings_app.dart';

import 'package:project_sec/helpers/services_locator.dart';
import 'package:project_sec/pages/Quiz/quiz_screen/quiz_screen.dart';
import 'package:project_sec/pages/Quiz/result_screen/result_screen.dart';
import 'package:project_sec/pages/Quiz/welcome_screen.dart';
import 'package:project_sec/pages/screens/splash.dart';

import 'constants/theme.dart';
import 'firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await sl<CacheHelper>().init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(


    const MyApp(),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BilndingsApp(),
      theme:getTheme(),
      getPages: [
        GetPage(name: WelcomeScreen.routeName, page: () => WelcomeScreen()),
        GetPage(name: QuizScreen.routeName, page: () =>  QuizScreen()),
        GetPage(name: ResultScreen.routeName, page: () =>  ResultScreen()),
      ],
      home: splash(image: "assets/lottiefiles/Animation - 1701067352884.json", image2: "assets/lottiefiles/Animation - 1701067442585.json", isSplash: true),



    );
  }
}
