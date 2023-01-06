import 'package:flutter/material.dart';
import 'package:my_time/timer.dart';
import 'package:my_time/timerModel.dart';
import 'package:my_time/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {

   MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TimerHomePage(),
    );
  }
}


class TimerHomePage extends StatelessWidget {
   TimerHomePage({Key? key}) : super(key: key);
  final double defaultPadding = 5.0;
  final CountDownTimer timer = CountDownTimer();

  @override
  Widget build(BuildContext context) {
    timer.startWork();

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
                child: StreamBuilder(
                    initialData: TimerModel('00:00', 1),
                    stream: timer.stream(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      TimerModel timer = snapshot.data;
                      return Container(
                          child: CircularPercentIndicator(
                            radius: availableWidth / 2,
                            lineWidth: 10.0,
                            percent: (timer.percent == null) ? 1 : timer.percent,
                            center: Text( (timer.time == null) ? '00:00' : timer.time ,
                                style: Theme.of(context).textTheme.headline4),
                            progressColor: Color(0xff009688),
                          ));
                    })),


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

          ],

          );
        },

        ),

      ),
    );
  }
}void emptyMethod() {}

