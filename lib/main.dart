import 'package:flutter/material.dart';
import 'package:my_time/timerHomePage.dart';
import 'package:my_time/widgets.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  final double defaultPadding = 5.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TimerHomePage(),
    );
  }
}


class TimerHomePage extends StatelessWidget {
  const TimerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Work Timer',
        ),
      ),
      body: Center(
        child: Column(

          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(5.0),),
                Expanded(child: ProductivityButton(color: Color(0xff009688),
                  text: "Work", onPressed: emptyMethod,size: 3,)),
                Padding(padding: EdgeInsets.all(5.0),),
                Expanded(child: ProductivityButton(color: Color(0xff607D8B),
                  text: "Short Break", onPressed: emptyMethod, size: 3,),
                ),
                Padding(padding: EdgeInsets.all(5.0),),
                Expanded(child: ProductivityButton(color: Color(0xff455A64),
                  text: "Long Break", onPressed: emptyMethod,size: 3,)),
                Padding(padding: EdgeInsets.all(5.0),),

              ],
            ),
            Expanded(child: Text("Hello")),

            Expanded(child:
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Expanded(
                        child: ProductivityButton(
                            color: Color(0xff212121),
                            text: 'Stop',onPressed: emptyMethod,size: 5,)),

                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Expanded(
                        child: ProductivityButton(
                            color: Color(0xff009688),
                            text: 'Restart',onPressed: emptyMethod,size: 5,)),

                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                  ],
                )
            ),
          ],

        ),

      ),
    );
  }
}void emptyMethod() {}

