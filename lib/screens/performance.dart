
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/reusable_widgets/circleprogress.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Performance extends StatefulWidget{
  @override
  _PerformanceState createState() => _PerformanceState();
}

class _PerformanceState extends State<Performance> with SingleTickerProviderStateMixin {

  final a = 0.89;
  final b = 0.75;
  final c = 0.91;
  final d = 0.87;
  final e = 0.92;
  final f = 0.97;

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Performance Analysis'),
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text('Last Year Analysis',style: TextStyle(fontSize: 18),),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                  children:[
                    SizedBox(
                      width: 15,
                    ),
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1500,
                      radius: 50,
                      lineWidth: 6,
                      percent: a,
                      progressColor: Colors.greenAccent,
                      backgroundColor: Colors.blueGrey  ,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text('${a*100}'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircularPercentIndicator(
                        animation: true,
                        animationDuration: 1500,
                        radius: 50,
                        lineWidth: 6,
                        percent: b,
                        progressColor: Colors.greenAccent,
                        backgroundColor: Colors.blueGrey  ,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text('${b*100}'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1500,
                      radius: 50,
                      lineWidth: 6,
                      percent: c,
                      progressColor: Colors.greenAccent,
                      backgroundColor: Colors.blueGrey  ,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text('${c*100}'),
                    ),
                  ]
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text('Mathametics'),
                  SizedBox(
                    width: 60,
                  ),
                  Text('DAA'),
                  SizedBox(
                    width: 95,
                  ),
                  Text('CA')
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                  children:[
                    SizedBox(
                      width: 15,
                    ),
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1500,
                      radius: 50,
                      lineWidth: 6,
                      percent: d,
                      progressColor: Colors.greenAccent,
                      backgroundColor: Colors.blueGrey  ,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text('${d*100}'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1500,
                      radius: 50,
                      lineWidth: 6,
                      percent: e,
                      progressColor: Colors.greenAccent,
                      backgroundColor: Colors.blueGrey  ,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text('${e*100}'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1500,
                      radius: 50,
                      lineWidth: 6,
                      percent: f,
                      progressColor: Colors.greenAccent,
                      backgroundColor: Colors.blueGrey  ,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text('${f*100}'),
                    ),
                  ]
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text('DBMS'),
                  SizedBox(
                    width: 95,
                  ),
                  Text('MPMC'),
                  SizedBox(
                    width: 88,
                  ),
                  Text('OS')
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text('Registered Skills',style: TextStyle(fontSize: 20),),
              SizedBox(
                height: 20,
              ),

              //Container 1

              Container(
                height: 60,
                width: MediaQuery.of(context).size.width-10,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(4.0,4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0,-4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0
                    )
                  ]),
                child: Center(
                  child: Text('Embedded Internet Of Things')
                )
              ),
              SizedBox(
                height: 15,
              ),

              //Container 2

              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width-10,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(4.0,4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0,-4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0
                        )
                      ]),
                  child: Center(
                      child: Text('Networking')
                  )
              ),
              SizedBox(
                height: 15,
              ),

              //Container 3
              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width-10,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(4.0,4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0,-4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0
                        )
                      ]),
                  child: Center(
                      child: Text('Mobile App Development')
                  )
              ),
              SizedBox(
                height: 15,
              ),

              //Container 4

              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width-10,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(4.0,4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0,-4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0
                        )
                      ]),
                  child: Center(
                      child: Text('Full Stack Development')
                  )
              ),
              SizedBox(
                height: 15,
              ),

              //Container 5

              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width-10,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(4.0,4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0,-4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0
                        )
                      ]),
                  child: Center(
                      child: Text('Edge Artificial Intelligence')
                  )
              ),
              SizedBox(
                height: 15,
              ),

              //Container 6

              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width-10,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(4.0,4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0,-4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0
                        )
                      ]),
                  child: Center(
                      child: Text('Cloud Computing')
                  )
              ),
              SizedBox(
                height: 35,
              ),
              Text('Programming Skills',style: TextStyle(fontSize: 20),),
              SizedBox(
                height: 30,
              ),

              Row(
                children:[
                //Programming 1
                  SizedBox(
                    width: 30,
                  ),
              Text('Java',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              SizedBox(
                width: 40,
              ),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width/1.5,
                animation: true,
                animationDuration: 1500,
                lineHeight: 10,
                percent: 0.7,
                progressColor: Colors.blue,
                backgroundColor: Colors.grey.shade50,
                barRadius: Radius.circular(10),
              ),]
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                  children:[

                    SizedBox(
                      width: 30,
                    ),
                    Text('Node JS',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 15,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.5,
                      animation: true,
                      animationDuration: 1500,
                      lineHeight: 10,
                      percent: 0.8,
                      progressColor: Colors.blue,
                      backgroundColor: Colors.grey.shade50,
                      barRadius: Radius.circular(10),
                    ),]
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                  children:[

                    SizedBox(
                      width: 30,
                    ),
                    Text('Python',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 24,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.5,
                      animation: true,
                      animationDuration: 1500,
                      lineHeight: 10,
                      percent: 0.85,
                      progressColor: Colors.blue,
                      backgroundColor: Colors.grey.shade50,
                      barRadius: Radius.circular(10),
                    ),]
              ),
              SizedBox(
                height: 20,
              ),

              //Programming 4
              Row(
                  children:[
                    SizedBox(
                      width: 30,
                    ),
                    Text('Django',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 25,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.5,
                      animation: true,
                      animationDuration: 1500,
                      lineHeight: 10,
                      percent: 0.69,
                      progressColor: Colors.blue,
                      backgroundColor: Colors.grey.shade50,
                      barRadius: Radius.circular(10),
                    ),]
              ),
              SizedBox(
                height: 20,
              ),

              //Programming 5
              Row(
                  children:[

                    SizedBox(
                      width: 30,
                    ),
                    Text('Springboot',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 7,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.5,
                      animation: true,
                      animationDuration: 1500,
                      lineHeight: 10,
                      percent: 0.65,
                      progressColor: Colors.blue,
                      backgroundColor: Colors.grey.shade50,
                      barRadius: Radius.circular(10),
                    ),]
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                  children:[

                    SizedBox(
                      width: 30,
                    ),
                    Text('Flutter',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 30,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.5,
                      animation: true,
                      animationDuration: 1500,
                      lineHeight: 10,
                      percent: 0.85,
                      progressColor: Colors.blue,
                      backgroundColor: Colors.grey.shade50,
                      barRadius: Radius.circular(10),
                    ),]
              ),
              SizedBox(
                height: 40,
              ),

              //Attended Webinars and Workshops


              Text('Attended Webinars and Workshops',style: TextStyle(fontSize: 18),),
              SizedBox(
                height: 25,
              ),
              DataTable(columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Data')),
              ], rows:[
                DataRow(cells: [
                  DataCell(
                      Text('Data Science')),
                  DataCell(
                    Text('11 Aug')
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('5g')),
                  DataCell(
                      Text('13 Sep')
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('IOT')),
                  DataCell(
                      Text('23 Aug')
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Deep Learning')),
                  DataCell(
                      Text('1 Nov')
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Machine Learning')),
                  DataCell(
                      Text('11 Oct')
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Cloud Computing')),
                  DataCell(
                      Text('21 Sep')
                  )
                ])
              ]),
              SizedBox(
                height: 40,
              ),

              //Competitions


              Text('Competitions',style: TextStyle(fontSize: 20),),
              SizedBox(
                height: 25,
              ),
              DataTable(columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Position'))
              ], rows: [
                DataRow(cells: [
                  DataCell(Expanded( child: Text('Paper Presentation'),)),
                  DataCell(Expanded( child: Text('23 Sep 2021'),)),
                  DataCell(Expanded( child: Text('Participation'),))
                ]),
                DataRow(cells: [
                  DataCell(Expanded( child: Text('Project Presentation'),)),
                  DataCell(Expanded( child: Text('12 Nov 2021'),)),
                  DataCell(Expanded( child: Text('1st'),))
                ]),
                DataRow(cells: [
                  DataCell(Expanded( child: Text('Web development'),)),
                  DataCell(Expanded( child: Text('23 Sep 2021'),)),
                  DataCell(Expanded( child: Text('1st'),))
                ]),
                DataRow(cells: [
                  DataCell(Expanded( child: Text('Paper Presentation'),)),
                  DataCell(Expanded( child: Text('3 aug 2021'),)),
                  DataCell(Expanded( child: Text('2nd'),))
                ]),
              ]),
              SizedBox(
                height: 40,
              ),

              //Patents and Publications


              Text('Patents and Publications',style: TextStyle(fontSize: 20),),
              SizedBox(
                height: 30,
              ),
              DataTable(columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Type')),
                DataColumn(label: Text('Date'))
              ], rows: [
                DataRow(cells: [
                  DataCell(Expanded(child: Text('X Ray machine analysis'),)),
                  DataCell(Expanded(child: Text('Journal'),)),
                  DataCell(Expanded(child: Text('30 June'),)),
                ]),
                DataRow(cells: [
                  DataCell(Expanded(child: Text('Electric Bike'),)),
                  DataCell(Expanded(child: Text('Patent'),)),
                  DataCell(Expanded(child: Text('29 July'),)),
                ]),
              ]),
              SizedBox(
                height: 35,
              ),

              //Trainings

              Text('Trainings',style: TextStyle(fontSize: 20),),
              SizedBox(
                height: 25,
              ),
              DataTable(columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Data')),
              ], rows:[
                DataRow(cells: [
                  DataCell(
                      Text('Placement')),
                  DataCell(
                      Text('11 Aug')
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Arduino board')),
                  DataCell(
                      Text('13 Sep')
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Hardware displacement')),
                  DataCell(
                      Text('23 Aug')
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Robotics')),
                  DataCell(
                      Text('1 Nov')
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Artificial Intelligence')),
                  DataCell(
                      Text('11 Oct')
                  )
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Cloud Computing')),
                  DataCell(
                      Text('21 Sep')
                  )
                ])
              ]),
              SizedBox(
                height: 40,
              ),
                Text('Skill Score',style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 25,
                ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width/2.4,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(4.0,4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-4.0,-4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0
                            )
                          ]),
                      child: Center(
                        child: Text('Total Score\n\n      1350',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      )
                  ),
                  SizedBox(
                    width: 15,
                  ),

                  Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width/2.4,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(4.0,4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-4.0,-4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0
                            )
                          ]),
                      child: Center(
                        child: Text('Achieved\n\n    1050',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      )
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          )
      ),
    );
  }
}