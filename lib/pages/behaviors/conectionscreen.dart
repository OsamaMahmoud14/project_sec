import 'package:flutter/material.dart';
import 'package:project_sec/pages/behaviors/situationscreen.dart';

class ConnectionCategory extends StatefulWidget {
  String title =' صح ولا غلط';
  Color primaryColor = Colors.purpleAccent.shade100;
  Color secondaryColor = Colors.purple;

  ConnectionCategory({
    required this.title,
    required this.primaryColor,
    required this.secondaryColor,
  });
  @override
  State<ConnectionCategory> createState() => _ConnectionCategoryState();
}
class _ConnectionCategoryState extends State<ConnectionCategory> {
  late String image = 'assets/behavior/connection/aaa.PNG';
  late String text = 'الاكل باليمين';
  int currentindex = 0;
  List<String> images = [
    'assets/behavior/connection/aaa.PNG',
    'assets/behavior/connection/abc.PNG',
    'assets/behavior/connection/bbb.PNG',
    'assets/behavior/connection/ccc.PNG',
    'assets/behavior/connection/ddd.PNG',
    'assets/behavior/connection/def.PNG',
    'assets/behavior/connection/eee.PNG',
    'assets/behavior/connection/fff.PNG',
    'assets/behavior/connection/ggg.PNG',
    'assets/behavior/connection/ghi.PNG',
    'assets/behavior/connection/hhh.PNG',
    'assets/behavior/connection/iii.PNG',
    'assets/behavior/connection/jjj.PNG',
    'assets/behavior/connection/jkl.PNG',
    'assets/behavior/connection/kkk.PNG',
    'assets/behavior/connection/lll.PNG',
    'assets/behavior/connection/mmm.PNG',
    'assets/behavior/connection/nnn.PNG',
    'assets/behavior/connection/ooo.PNG',
    'assets/behavior/connection/ppp.PNG',
    'assets/behavior/connection/qqq.PNG',
    'assets/behavior/connection/rrr.PNG',
    'assets/behavior/connection/sss.PNG',
    'assets/behavior/connection/ttt.PNG',
    'assets/behavior/connection/uuu.PNG',
    'assets/behavior/connection/vvv.PNG',
    'assets/behavior/connection/www.PNG',
    'assets/behavior/connection/xxx.PNG',
    'assets/behavior/connection/yyy.PNG',
    'assets/behavior/connection/zzz.PNG',
  ];
  List<String> text1 = [
    'الاكل باليمين',
    'سماع القران',
    'الذهاب الي المدرسة',
    'السجود الصحيح',
    'الجلوس بأدب مع الضيوف ',
    'تشكر والدك',
    'الاحسان والرفق للحيوان',
    'تجنب الاسراف في الماء',
    'اللعب مع اخوك',
    'الامانة',
    'اكرام الضيف',
    'ترتيب الاغراض',
    'تجنب الكتابة علي الحائط',
    'اطعام الاطفال',
    'الحفاظ علي الزرع',
    'ابعاد الاذي عن الطريق',
    'الرفق بالحيوان',
    'التصدق علي الفقراء',
    'التسمية قبل الاكل',
    'الادب في المسجد',
    'تجنب عيب الطعام',
    'لا تحلف الا بالله',
    'ترك اللعب للصلاة',
    'لا تغش',
    'مساعدة الضعفاء',
    'بر الوالدين',
    'قص الشعر بشكل مناسب ',
    'مذاكرة دروسك',
    'الاهتمام بالدراسة',
    'مساعدة ضعفاء البصر',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),

              Padding(
                padding: const EdgeInsets.only(
                    top: 25.0, left: 20, right: 20, bottom: 20),
                child: Image.asset(image),
              ),
              SizedBox(height: 50,),
              Text(
                text,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color:Colors.purpleAccent,),
              ),
              SizedBox(height: 80,),

              Row(
                children: [
                  SizedBox(width: 5,),

                  GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        if (currentindex == 0) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SituationsScreen()));

                        } else {
                          currentindex--;
                          image = images[currentindex];
                          text = text1[currentindex];

                        }
                      });


                    },
                    child: Container(
                        width:150,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Center(child: Text(
                          'الموقف السابق ',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        )
                        )),
                  ),

                  SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        if (currentindex < 29) {
                          currentindex++;
                          image = images[currentindex];
                          text = text1[currentindex];


                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  actions: [
                                    ElevatedButton(

                                      child: Text("اقفل "),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                  SituationsScreen(),
                                            ),
                                        );
                                      },
                                    )
                                  ],
                                  title: Text(
                                    'خلصنا المواقف',
                                    style: TextStyle(
                                      fontSize: 28,
                                    ),
                                  ),
                                  content: TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                      return ConnectionCategory(title: 'صح ولا غلط', primaryColor: Colors.purpleAccent.shade100, secondaryColor: Colors.purple);
                                    }));
                                  },
                                      child: Text("نبدأ تاني",style: TextStyle(fontSize: 24),)),
                                );
                              });
                        }
                      });

                    },
                    child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Center(child: Text(
                          'الموقف التالي  ',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        )
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}