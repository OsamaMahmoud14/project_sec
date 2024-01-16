import 'package:flutter/material.dart';
import 'package:project_sec/pages/behaviors/situationscreen.dart';
class BadCategory extends StatefulWidget {
  String title = "المواقف السيئة";
  Color primaryColor = Colors.greenAccent.shade100;
  Color secondaryColor = Colors.green;

  BadCategory({
    required this.title,
    required this.primaryColor,
    required this.secondaryColor,
  });
  @override
  State<BadCategory> createState() => _BadCategory2State();
}
class _BadCategory2State extends State<BadCategory> {
  late String image = "assets/behavior/bad/artyi-removebg-preview.png";
  late String text = " لا تعركل غيرك ";
  int currentindex = 0;

  List<String> images = [
    'assets/behavior/bad/artyi-removebg-preview.png',
    'assets/behavior/bad/dfert-removebg-preview.png',
    'assets/behavior/bad/ertyu-removebg-preview.png',
    'assets/behavior/bad/fdsaz-removebg-preview.png',
    'assets/behavior/bad/fgdsa-removebg-preview.png',
    'assets/behavior/bad/img.png',
    'assets/behavior/bad/img_3.png',
    'assets/behavior/bad/lkjhg-removebg-preview.png',
    'assets/behavior/bad/lopit-removebg-preview.png',
    'assets/behavior/bad/nhjuy-removebg-preview.png',
    'assets/behavior/bad/OIP__11_-removebg-preview.png',
    'assets/behavior/bad/poiuy-removebg-preview.png',
    'assets/behavior/bad/qweas-removebg-preview.png',
    'assets/behavior/bad/rtuwq-removebg-preview.png',
    'assets/behavior/bad/trewq-removebg-preview.png',
    'assets/behavior/bad/vvgfd-removebg-preview.png',
    'assets/behavior/bad/zxcvb-removebg-preview.png',
  ];
  List<String> text1 = [
    'لا تعركل غيرك',
    'لا ترخم علي الاخرين',
    ' لا تتضارب مع اصدقائك',
    'لا تأخذ حاجه غيرك',
    'لا تتنمر علي الاخرين',
    'لا تزعج غيرك',
    'لا تتشاجر مع صديقك',
   'لا تلعب ف الطين',
   'لا تبوظ وتخرب لعب غيرك',
   'لا تعض الاخرين',
   'لا تلعب في الكهرباء',
   'لا تؤذي الحيوان ',
    'لا تلعب بأشياء خطرة',
   'لا تضايق اختك',
    'لا تدمر الزرع',
    'لا تلعب بالهب',
    'لا ترمي القمامة علي الارض',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 120,),
              Padding(
                padding: const EdgeInsets.only(
                    top: 25.0, left: 20, right: 20, bottom: 20),
                child: Container(
                    width: 390,
                    height: 260,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEEF5FB).withOpacity(.8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0xB2306694),
                          blurRadius: 10,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Image.asset(image)),
              ),
              SizedBox(height: 50,),
              Text(
                text,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.greenAccent,),
              ),
              SizedBox(
                height: 80,
              ),
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
                          color: Colors.greenAccent.shade200,
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
                        if (currentindex < 16) {
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

                                      child: Text("اقفل"),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                   SituationsScreen(),));
                                      },
                                    )
                                  ],
                                  title: Text(
                                    'خلصنا المواقف',
                                    style: TextStyle(
                                      fontSize: 28,
                                    ),
                                  ),
                                  content: TextButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                        return BadCategory(title: 'المواقف السيئة', primaryColor: Colors.greenAccent.shade100, secondaryColor: Colors.green);
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
                          color: Colors.greenAccent.shade200,
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