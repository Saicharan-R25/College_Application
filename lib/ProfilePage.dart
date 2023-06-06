import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://staticg.sportskeeda.com/editor/2022/12/acd29-16723910252105-1920.jpg',
                ),
                radius: 50.0,
              ),
              SizedBox(height: 20.0),
              Text(
                'SAITAMA',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text('Registration Number: 696969696969'),
              Text('Roll Number: 69E6969'),
              SizedBox(height: 10.0),
              Text(
                'CGPA: 7.8',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),

              Text(
                'Semesters',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: ListView.builder(
                  itemCount: 6, // Replace with the actual number of semesters
                  itemBuilder: (context, index) {
                    int semesterNumber = index + 1;
                    return InkWell(
                      onTap: () {
                        // Handle semester card tap
                      },
                      child: Card(
                        child: ListTile(
                          title: Text('Semester $semesterNumber'),
                          trailing: Icon(Icons.download),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

