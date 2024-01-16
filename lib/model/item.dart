import 'package:flutter/material.dart';
class ItemModel {
  final String  image;
  final String name;
  final String value;
  bool accepting;
   ItemModel({ required this.image,required this.name,required this.value,this.accepting=false});


}
List<ItemModel> fruitData = [
  ItemModel(image: 'assets/image/fruits/apple.png', name: 'apple', value: 'apple'),
  ItemModel(image: 'assets/image/fruits/avocado.png', name: 'avocado', value: 'avocado'),
  ItemModel(image: 'assets/image/fruits/banana.png', name: 'banana', value: 'banana'),
  ItemModel(image: 'assets/image/fruits/cherry.png', name: 'cherry', value: 'cherry'),
  ItemModel(image: 'assets/image/fruits/kiwi.png', name: 'kiwi', value: 'kiwi'),
  ItemModel(image: 'assets/image/fruits/orange.png', name: 'orange', value: 'orange'),
  ItemModel(image: 'assets/image/fruits/grape.jpg', name: 'grapes', value: 'grapes'),
  ItemModel(image: 'assets/image/fruits/pinenapple.png', name: 'pinenapple', value: 'pinenapple'),
  ItemModel(image: 'assets/image/fruits/strawberry.png', name: 'strawberry', value: 'strawberry'),
  ItemModel(image: 'assets/image/fruits/watermelon.png', name: 'watermelon', value: 'watermelon'),
];
List<ItemModel> thingsData = [
  ItemModel(image: 'assets/image/things/chair.png', name: 'Chair', value: 'chair'),
  ItemModel(image: 'assets/image/things/fan.png', name: 'Fan', value: 'fan'),
  ItemModel(image: 'assets/image/things/bed2.png', name: 'Bed', value: 'bed'),
  ItemModel(image: 'assets/image/things/house2.png', name: 'House', value: 'house'),
  ItemModel(image: 'assets/image/things/tv.png', name: 'Tv', value: 'Tv'),
  ItemModel(image: 'assets/image/things/window.png', name: 'Window', value: 'window'),
  ItemModel(image: 'assets/image/things/workspace.png', name: 'Workspace', value: 'workspace'),
  ItemModel(image: 'assets/image/things/table2.png', name: 'Table', value: 'table'),
  ItemModel(image: 'assets/image/things/fridge2.png', name: 'Fridge', value: 'fridge'),
  ItemModel(image: 'assets/image/things/seater2.png', name: 'Seater', value: 'seater'),

];
List<ItemModel>AnimalsData=[
  ItemModel(image: 'assets/image/animals/camel.png', name: 'Camel', value: 'camel'),
  ItemModel(image: 'assets/image/animals/cat.png', name: 'Cat', value: 'cat'),
  ItemModel(image: 'assets/image/animals/cow.png', name: 'Cow', value: 'cow'),
  ItemModel(image: 'assets/image/animals/dog.png', name: 'Dog', value: 'dog'),
  ItemModel(image: 'assets/image/animals/fox.png', name: 'Fox', value: 'fox'),
  ItemModel(image: 'assets/image/animals/hen.png', name: 'Hen', value: 'hen'),
  ItemModel(image: 'assets/image/animals/horse.png', name: 'Horse', value: 'horse'),
  ItemModel(image: 'assets/image/animals/lion.png', name: 'Lion', value: 'lion'),
  ItemModel(image: 'assets/image/animals/panda.png', name: 'Panda', value: 'panda'),
  ItemModel(image: 'assets/image/animals/sheep.png', name: 'Sheep', value: 'sheep')
];

List<ItemModel>letters=[
  ItemModel(image: 'assets/Letters/A.png', name: 'A', value: 'A'),
  ItemModel(image: 'assets/Letters/C.png', name: 'C', value: 'C'),
  ItemModel(image: 'assets/Letters/D.png', name: 'D', value: 'D'),
  ItemModel(image: 'assets/Letters/E.png', name: 'E', value: 'E'),
  ItemModel(image: 'assets/Letters/M.png', name: 'M', value: 'M'),
  ItemModel(image: 'assets/Letters/N.png', name: 'N', value: 'N'),
  ItemModel(image: 'assets/Letters/R.png', name: 'R', value: 'R'),
  ItemModel(image: 'assets/Letters/S.png', name: 'S', value: 'S'),
  ItemModel(image: 'assets/Letters/V.png', name: 'V', value: 'V'),
  ItemModel(image: 'assets/Letters/W.png', name: 'W', value: 'W'),

];


