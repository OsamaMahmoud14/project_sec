import 'package:flutter/material.dart';

import '../../widgets/category_card.dart';
import 'badscreen.dart';
import 'conectionscreen.dart';
import 'goodscreen.dart';

class SituationsScreen extends StatelessWidget {
  final List<Widget> _categories = [


  CategoryCard(
  title: 'المواقف الجيدة',
  primaryColor: Colors.orangeAccent.shade100,
  secondaryColor: Colors.orange,
  screen: GoodCategory(
  title: 'المواقف الجيدة',
  primaryColor: Colors.orangeAccent.shade100,
  secondaryColor: Colors.orange,

  ),
  ),
  CategoryCard(
  title: 'المواقف السيئة',
  primaryColor: Colors.greenAccent.shade100,
  secondaryColor: Colors.green,
  screen: BadCategory(
  title: '',
  primaryColor: Colors.greenAccent.shade100,
  secondaryColor: Colors.green,

  ),
  ),
  CategoryCard(
  title: 'صح ولا غلط ',
  primaryColor: Colors.purpleAccent.shade100,
  secondaryColor: Colors.purple,
  screen: ConnectionCategory(title: '', primaryColor: Colors.purpleAccent.shade100, secondaryColor: Colors.purple,

  ),
  ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
          image: DecorationImage(
            image: AssetImage('assets/bg-bottom.png'),
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 188.0,
              backgroundColor: Colors.grey[50],
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/bg-top.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(_categories),
            ),
          ],
        ),
      ),
    );
  }
}
