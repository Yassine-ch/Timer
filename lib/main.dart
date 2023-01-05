import 'package:flutter/material.dart';
import 'package:my_time/timerHomePage.dart';
import 'package:my_time/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
        child: LayoutBuilder(builder: (BuildContext context, BoxConstraints
        constraints) {
          final double availableWidth = constraints.maxWidth;
          return Column(



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
            Expanded(
              child: CircularPercentIndicator(

                radius: availableWidth/2,
                lineWidth: 10.0,
                percent: 1,
                center: Text('30:00',
                style: Theme.of(context).textTheme.displayMedium
                ),
                progressColor: Color(0xff009688),

              ),
            ),

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

          );
        },

        ),

      ),
    );
  }
}void emptyMethod() {}

