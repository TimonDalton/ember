import 'package:flutter/material.dart';

class ViewResourcePage extends StatelessWidget {
  final int id;
  ViewResourcePage({this.id});

  @override
  Widget build(BuildContext context) {
    List<int> uploads = [];
    for (int i = 0; i < 3; i++) uploads.add(i);

    return Scaffold(
        appBar: AppBar(
          title: Text('ViewResourcePage'), //TODO REMOVE
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.blueGrey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Text(
                  'Resource Number $id',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Hier is my opsommings omgaande wat einstein oor toads gese het',
                    softWrap: true,
                    style: TextStyle(fontSize:16),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                        height: 200,
                        child: ListView.builder(
                            itemCount: uploads.length,
                            itemBuilder: (context, index) {
                              return Card(
                                  child: GestureDetector(
                                    onTap:()=>print('Clicked on pdf #${uploads[index]}'),
                                      child: ListTile(
                                title: Text('example upload nr ${uploads[index]}'),
                              )));
                            })),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
