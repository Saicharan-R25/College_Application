import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

//TO-Do show animation like speedometer for attendance
//overall should be at top and big , further should be individual subject attendance in listtile

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  List<Widget> IndividualSubjects = [
    Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        leading: Text("1"),
        title: Text('Python'),
        subtitle: Text("Safe"),
        trailing: CircularPercentIndicator(
          radius: 20.0,
          animation: true,
          animationDuration: 1200,
          lineWidth: 6,
          percent: 0.85,
          center: Text(
            "85%", style: TextStyle(fontSize: 10.0),
          ),
          backgroundColor: Colors.teal,
          progressColor: Colors.green,
        ),
      ),
    ),
    Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        leading: Text("2"),
        title: Text('Operating Systems'),
        subtitle: Text("Danger"),
        trailing: CircularPercentIndicator(
          radius: 20.0,
          animation: true,
          animationDuration: 1200,
          lineWidth: 6.0,
          percent: 0.75,
          center: Text(
            "75%",style: TextStyle(fontSize: 10.0),
          ),
          backgroundColor: Colors.teal,
          progressColor: Colors.green,
        ),
      ),
    ),

    Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        leading: Text("3"),
        title: Text('DATA STRUCTURES'),
        subtitle: Text("Safe"),
        trailing: CircularPercentIndicator(
          radius: 20.0,
          animation: true,
          animationDuration: 1200,
          lineWidth: 6.0,
          percent: 0.95,
          center: Text(
            "95%",style: TextStyle(fontSize: 10.0),
          ),
          backgroundColor: Colors.teal,
          progressColor: Colors.green,
        ),
      ),
    ),

    Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        leading: Text("4"),
        title: Text('Soft Skills'),
        subtitle: Text("Danger"),
        trailing: CircularPercentIndicator(
          radius: 20.0,
          animation: true,
          animationDuration: 1200,
          lineWidth: 6.0,
          percent: 0.74,
          center: Text(
            "74%",style: TextStyle(fontSize: 10.0),
          ),
          backgroundColor: Colors.teal,
          progressColor: Colors.green,
        ),
      ),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATTENDANCE'),
      ),
      body:
     Container(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            "YOUR OVERALL ATTENDANCE",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 25,
          ),
          CircularPercentIndicator(
            radius: 90.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 15.0,
            percent: 0.85,
            center: Text(
              "85%",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            backgroundColor: Colors.teal,
            progressColor: Colors.green,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "GREAT,KEEP GOING",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "ATTENDANCE IN YOUR SUBJECTS",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: IndividualSubjects.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [IndividualSubjects[index]],
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
