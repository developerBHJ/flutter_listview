import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(ListViewDemo());

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 不显示右上角debug标记
      home: HomeView(),
      theme: ThemeData(
          primaryColor: Colors.yellow
      ),
    );
  }
}



