import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CompanyCard(),
  ));
}

class CompanyCard extends StatefulWidget {
  @override
  _CompanyCardState createState() => _CompanyCardState();
}

class _CompanyCardState extends State<CompanyCard> {
  int currentFlutterLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Company Card"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.redAccent,
            onPressed: () {
              setState(() {
                currentFlutterLevel--;
              });
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            backgroundColor: Colors.greenAccent,
            onPressed: () {
              setState(() {
                currentFlutterLevel++;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pic.jpg'),
                radius: 60,
              ),
            ),
          ),
          Center(
            child: Text(
              "UNION SYSTEMS GLOBAL- GHANA (ACCRA)",
              style: TextStyle(
                  color: Colors.white70, fontSize: 15, letterSpacing: 1.5),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "STAFF ID",
                  style: TextStyle(
                      color: Colors.white70, fontSize: 15, letterSpacing: 1.5),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                child: Text(
                  "USG0066",
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 15,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Center(
            child: Text(
              "COMPANY  DETAILS",
              style: TextStyle(
                  color: Colors.white70, fontSize: 14, letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "NAME",
              style: TextStyle(
                  color: Colors.grey[300], fontSize: 15, letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 12.0, 12.0),
            child: Text(
              "Ake Victoria Delali",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "AGE",
              style: TextStyle(
                  color: Colors.grey[300], fontSize: 15, letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 12.0, 12.0),
            child: Text(
              "25",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "CONTACT",
              style: TextStyle(
                  color: Colors.grey[300], fontSize: 15, letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
            child: Text(
              "+233555019214/+233501023458",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Email",
              style: TextStyle(
                  color: Colors.grey[300], fontSize: 15, letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
            child: Column(
              children: [
                Text(
                  "victoria.ake@unionsg.com",
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.5),
                ),
                Text(
                  "vickydelaliake@gmail.com",
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.5),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "POSITION",
              style: TextStyle(
                  color: Colors.grey[300], fontSize: 15, letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
            child: Text(
              "Mobile Solutions Officer",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Current Flutter skill level",
              style: TextStyle(
                  color: Colors.grey[300], fontSize: 15, letterSpacing: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
            child: Text(
              "Level  $currentFlutterLevel  ",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
