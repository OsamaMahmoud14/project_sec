import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


import '../model/question_model.dart';
import '../pages/Quiz/result_screen/result_screen.dart';
import '../pages/Quiz/welcome_screen.dart';

class QuizController extends GetxController{
  String name = '';
 //question variables
  int get countOfQuestion => _questionsList.length;
  final List<QuestionModel> _questionsList = [
    QuestionModel(
      id: 1,
      question:
          "اسمك ايه ",
      answer: 1,
      options: ['احمد ', 'اسامه ', 'اسلام', ' حسام'],
    ),
    QuestionModel(
      id: 2,
      question: "عندك كام سنه ؟ ",
      answer: 2,
      options: ['7', '5', '6', '8'],
    ),
    QuestionModel(
      id: 3,
      question: "بتحب ماده ايه ",
      answer: 3,
      options: ['العربي ', 'الانجليزي', 'الحساب', 'مبحبش ولا ماده '],
    ),
    QuestionModel(
      id: 4,
      question: "عايز تطلع ايه لما تكبر ",
      answer: 0,
      options: ['دكتور', 'مهندس ', 'حرامي', 'مدرس'],
    ),
    QuestionModel(
      id: 5,
      question:
          "بتحب فاكهه ايه ",
      answer: 2,
      options: ['موز', 'فراوله', 'مانجا', 'بطيخ'],
    ),
    QuestionModel(
      id: 6,
      question: "ايه اكتر حيوان بتحبه",
      answer: 2,
      options: ['الارنب', 'الكلب', 'القطه', 'السلحفاه'],
    ),
    QuestionModel(
      id: 7,
      question: "5+4 كام",
      answer: 2,
      options: ['8', '5', '9', '7'],
    ),
    QuestionModel(
      id: 8,
      question: "اين يعيش السمك ",
      answer: 3,
      options: ['الهواء', 'الحديقه', 'الشقه', 'البحر'],
    ),
    QuestionModel(
      id: 9,
      question:
      "بنكتب الواجب بايه ",
      answer: 0,
      options: ['القلم', 'المسطره', 'الاستيكه', ' الكتاب '],
    ),
    QuestionModel(
      id: 10,
      question: "كم عدد اصابع ايدك ",
      answer: 1,
      options: ['10', '5', '7', '6'],
    ),
  ];

  List<QuestionModel> get questionsList => [..._questionsList];


  bool _isPressed = false;


  bool get isPressed => _isPressed; //To check if the answer is pressed


  double _numberOfQuestion = 1;


  double get numberOfQuestion => _numberOfQuestion;


  int? _selectAnswer;


  int? get selectAnswer => _selectAnswer;


  int? _correctAnswer;


  int _countOfCorrectAnswers = 0;


  int get countOfCorrectAnswers => _countOfCorrectAnswers;

  //map for check if the question has been answered
  final Map<int, bool> _questionIsAnswerd = {};


  //page view controller
  late PageController pageController;

  //timer
  Timer? _timer;


  final maxSec = 15;


  final RxInt _sec = 15.obs;


  RxInt get sec => _sec;

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    resetAnswer();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  //get final score
  double get scoreResult {
    return _countOfCorrectAnswers * 100 / _questionsList.length;
  }

  void checkAnswer(QuestionModel questionModel, int selectAnswer) {
    _isPressed = true;

    _selectAnswer = selectAnswer;
    _correctAnswer = questionModel.answer;

    if (_correctAnswer == _selectAnswer) {
      _countOfCorrectAnswers++;
    }
    stopTimer();
    _questionIsAnswerd.update(questionModel.id, (value) => true);
    Future.delayed(const Duration(milliseconds: 500)).then((value) => nextQuestion());
    update();
  }

  //check if the question has been answered
  bool checkIsQuestionAnswered(int quesId) {
    return _questionIsAnswerd.entries
        .firstWhere((element) => element.key == quesId)
        .value;
  }

  void nextQuestion() {
    if (_timer != null || _timer!.isActive) {
      stopTimer();
    }

    if (pageController.page == _questionsList.length - 1) {
      Get.offAndToNamed(ResultScreen.routeName);
    } else {
      _isPressed = false;
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.linear);

      startTimer();
    }
    _numberOfQuestion = pageController.page! + 2;
    update();
  }

  //called when start again quiz
  void resetAnswer() {
    for (var element in _questionsList) {
      _questionIsAnswerd.addAll({element.id: false});
    }
    update();
  }

  //get right and wrong color
  Color getColor(int answerIndex) {
    if (_isPressed) {
      if (answerIndex == _correctAnswer) {
        return Colors.green.shade700;
      } else if (answerIndex == _selectAnswer &&
          _correctAnswer != _selectAnswer) {
        return Colors.red.shade700;
      }
    }
    return Colors.white;
  }

  //het right and wrong icon
  IconData getIcon(int answerIndex) {
    if (_isPressed) {
      if (answerIndex == _correctAnswer) {
        return Icons.done;
      } else if (answerIndex == _selectAnswer &&
          _correctAnswer != _selectAnswer) {
        return Icons.close;
      }
    }
    return Icons.close;
  }

  void startTimer() {
    resetTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_sec.value > 0) {
        _sec.value--;
      } else {
        stopTimer();
        nextQuestion();
      }
    });
  }

  void resetTimer() => _sec.value = maxSec;

  void stopTimer() => _timer!.cancel();
  //call when start again quiz
  void startAgain() {
    _correctAnswer = null;
    _countOfCorrectAnswers = 0;
    resetAnswer();
    _selectAnswer = null;
    Get.offAllNamed(WelcomeScreen.routeName);
  }
}
