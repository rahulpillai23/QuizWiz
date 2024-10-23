import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_wiz/page/quizpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'QUIZWIZ',
            style: GoogleFonts.josefinSans(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: buildWelcome('rahul'),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF73B9F9),
                  Color(0xD966B9F5),
                  Color.fromARGB(180, 69, 94, 233),
                  Color.fromARGB(116, 201, 127, 236),
                  Color.fromARGB(40, 141, 82, 216),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          actions: [
            Icon(Icons.logout_outlined),
            SizedBox(width: 12),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Today\'s Quiz',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    buildSubjectCard('Physics', 'Start Quiz', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }),
                    // Add more subject cards as needed
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upcoming Quiz',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    buildUpcomingQuizCard('Chemistry', 'Start Quiz', () {
                      // Add navigation logic to quiz page for Chemistry
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ChemistryQuizPage()));
                    }),
                    buildUpcomingQuizCard('Maths', 'Start Quiz', () {
                      // Add navigation logic to quiz page for Maths
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => MathsQuizPage()));
                    }),
                    buildUpcomingQuizCard('Biology', 'Start Quiz', () {
                      // Add navigation logic to quiz page for Biology
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => BiologyQuizPage()));
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildWelcome(String username) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            username,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      );

  Widget buildSubjectCard(
          String subject, String buttonText, VoidCallback onPressed) =>
      Card(
        margin: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subject,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: onPressed,
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      );

  Widget buildUpcomingQuizCard(
          String subject, String buttonText, VoidCallback onPressed) =>
      Card(
        margin: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subject,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: onPressed,
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      );
}
