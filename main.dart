import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Student {
  final String name;
  final String rollNumber;
  final String department;

  Student(this.name, this.rollNumber, this.department);
}

class MyApp extends StatelessWidget {
  final List<Student> students = [
    Student("John Doe", "123", "Computer Science"),
    Student("Jane Smith", "456", "Electrical Engineering"),
    // Add more students
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AttendanceScreen(students: students),
    );
  }
}

class AttendanceScreen extends StatefulWidget {
  final List<Student> students;

  AttendanceScreen({required this.students});

  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Name: ${widget.students[currentIndex].name}\nRoll Number: ${widget.students[currentIndex].rollNumber}\nDepartment: ${widget.students[currentIndex].department}",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentIndex = (currentIndex + 1) % widget.students.length;
                });
              },
              child: Text("Mark Present"),
            ),
          ],
        ),
      ),
    );
  }
}
