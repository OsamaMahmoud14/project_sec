
import 'package:flutter/material.dart';
import 'package:project_sec/pages/entertainment/Matching/animals.dart';


import '../../model/item.dart';
import '../../widgets/common.dart';
import '../education/home.dart';
import '../screens/splash.dart';


class EntertainmentHome extends StatelessWidget {
  List<String> names=[
    " توصيل الحيوانات ",
    " توصيل الفواكه ",
    " توصيل الاثاث ",
    " توصيل الحروف ",


  ];
  List<Widget> Pages=[
    animals(initialItems: AnimalsData, isAnimal: true),
    animals(initialItems: fruitData, isAnimal: false),
    animals(initialItems: thingsData, isAnimal: false),
    animals(initialItems: letters, isAnimal:true),


  ];

  List<IconData> Iconss=[
    Icons.widgets_outlined,
    Icons.star,
    Icons.circle_notifications,
    Icons.security,

  ];

  @override
  Widget build(BuildContext context) {
    const Color bgColor = Color(0xFF4993FA);
    const Color bgColor3 = Color(0xFF5170FD);
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            navigate(context: context, screen: home());

          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                decoration: BoxDecoration(
                  color: bgColor3,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.24),
                      blurRadius: 20.0,
                      offset: const Offset(0.0, 10.0),
                      spreadRadius: -10,
                      blurStyle: BlurStyle.outer,
                    )
                  ],
                ),
                child: Image.asset("assets/dash.png"),
              ),
              const SizedBox(
                height: 10,
              ),

              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.85,
                ),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount:4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      navigate(context: context, screen: Pages[index]);
                    },
                    child: Card(
                      color: bgColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Iconss[index],
                              color: Colors.white,
                              size: 55,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              names[index],
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
