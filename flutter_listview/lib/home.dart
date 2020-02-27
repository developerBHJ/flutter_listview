import 'package:flutter/material.dart';
import 'car_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ListViewDemo'),
      ),
      body: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: datas.length,
      itemBuilder: _cellForRow,
    );
  }

  Widget _cellForRow(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Image.network(
              datas[index].imageUrl
          ),
          SizedBox(
            height: 10, // 图片和文字间距
          ),
          Text(
            datas[index].name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontStyle: FontStyle.values[1],
            ),
          ),
          Container(height: 0,),
        ],
      ),
    );

  }
}

