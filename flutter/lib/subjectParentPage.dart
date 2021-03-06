import 'dart:html';
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'viewSubjectResourcesPage.dart';
import 'addSubjectPage.dart';

class SubjectParentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> data = [];
    for (int i = 0; i < 10; i++) {
      data.add(i);
    }

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('SubjectParentPage'),//TODO REMOVE
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(Icons.home),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Center(
                    widthFactor: double.infinity,
                    child: Container(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        child: Text('Subjects',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)))),
              ),
              Flexible(
                  flex: (data.length <= 5) ? data.length : 5,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          )),
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Card(
                              margin: EdgeInsets.all(3),
                              child: ListTile(
                                title: Text('SWK ${data[index]}22'),
                                leading: Icon(Icons.drag_handle),
                                onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ViewSubjectResourcesPage(
                                                id: index))),

                                //js.context.callMethod('open',['https://google.com']),
                              ));
                        },
                      ))),
              Flexible(
                  flex: 4,
                  child: Card(
                    child: GestureDetector(
                      child: ListTile(
                          title: Text('Add a subject'),
                          leading: Icon(Icons.add)),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AddSubjectPage())),
                    ),
                  ))
            ],
          ),
        ));
  }
}
