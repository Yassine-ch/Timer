import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_time/widgets.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle  textStyle = TextStyle(fontSize: 24);
    return  Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 3,
          childAspectRatio: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            Text("Work", style: textStyle),
            Text(""),
            Text(""),
            SettingsButton(Color(0xff455A64), "-", -1),
            TextField(
                style: textStyle,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number),
            SettingsButton(Color(0xff009688), "+", 1,),
                Text("Short", style: textStyle),
            Text(""),
            Text(""),
            SettingsButton(Color(0xff455A64), "-", -1, ),
            TextField(
                style: textStyle,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number),
            SettingsButton(Color(0xff009688), "+", 1),
            Text("Long", style: textStyle,),
            Text(""),
            Text(""),
            SettingsButton(Color(0xff455A64), "-", -1,),
            TextField(
                style: textStyle,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number),


            SettingsButton(Color(0xff009688), "+", 1,),
          ],
          padding: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}
