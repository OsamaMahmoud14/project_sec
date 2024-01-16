import 'package:flutter/material.dart';
import 'package:project_sec/pages/behaviors/situationscreen.dart';
class GoodCategory extends StatefulWidget {
  String title = " المواقف الجيدة";
  Color primaryColor =  Colors.orangeAccent.shade100;
  Color secondaryColor = Colors.orange;

  GoodCategory({
    required this.title,
    required this.primaryColor,
    required this.secondaryColor,
  });
  @override
  State<GoodCategory> createState() => _GoodCategoryState();
}
class _GoodCategoryState extends State<GoodCategory> {
  late String image = 'assets/behavior/good/aaaa-removebg-preview.png';
  late String text = " يجب ان تساعد الاخرين ";
  int currentindex = 0;

  List<String> images = [
    'assets/behavior/good/aaaa-removebg-preview.png',
    'assets/behavior/good/calculate.jpg',
    'assets/behavior/good/eeee-removebg-preview.png',
    'assets/behavior/good/gggg-removebg-preview.png',
    'assets/behavior/good/growplant-removebg-preview.png',
    'assets/behavior/good/help-removebg-preview.png',
    'assets/behavior/good/oooo-removebg-preview.png',
    'assets/behavior/good/plant-removebg-preview.png',
    'assets/behavior/good/ridecar-removebg-preview.png',
    'assets/behavior/good/rrrr-removebg-preview.png',
    'assets/behavior/good/swip-removebg-preview.png',
    'assets/behavior/good/tttt-removebg-preview.png',
    'assets/behavior/good/wash-removebg-preview.png',
    'assets/behavior/good/wwww-removebg-preview.png',
  ];
  List<String> text1 = [
    "يجب ان تساعد الاخرين ",
  'عدم القاء القمامة علي الارض',
    'الجلوس في أدب و انتباه',
    'القيام بأنشطة مفيدة',
   'زرع النبات',
    'مساعدة ضعفاء البصر ',
    'مساعدة كبار السن ',
   'الاهتمام بالنباتات',
    'تعلم ركوب السيارة وربط الحزام',
   'يجب الاستئذان قبل الكلام',
    'التعاون مع الاخرين في التنظيف',
    'نحب اصدقانا ونلعب سوي',
    'مساعدة ماما في المنزل',
    'الاهتمام بالزرع وتنظيف المنزل',
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
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.orangeAccent,),
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
                          color: Colors.orangeAccent,
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
                        if (currentindex < 13) {
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
                                                   SituationsScreen(), ));
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
                                        return GoodCategory(
                                          title: 'المواقف الجيدة',
                                          primaryColor: Colors
                                              .orangeAccent.shade100,
                                          secondaryColor:
                                          Colors.orange,
                                        );
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
                          color: Colors.orangeAccent,
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