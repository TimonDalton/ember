import 'package:flutter/material.dart';
import 'subjectParentPage.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        
          title: Text('LandingPage'),//TODO REMOVE
      ),

      body: Center(
        child: Column(
          children: [
            Container(margin: EdgeInsets.all(100)),
            Flexible(
                flex: 2,
                child: Text(
                  'Welcome to our note sharing site!',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
            Flexible(flex: 1, child: Container()),
            Flexible(
              flex: 2,
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Text(
                      'Subjects',
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SubjectParentPage())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
