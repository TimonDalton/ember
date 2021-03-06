import 'package:flutter/material.dart';

class AddResourcePage extends StatelessWidget {
  final TextEditingController teController =
      TextEditingController(text: 'Resource Description');

  @override
  Widget build(BuildContext context) {
    List<int> uploads = [];
    for (int i = 0; i < 2; i++) uploads.add(i);

    return Scaffold(
        appBar: AppBar(
          title: Text('AddResourcePage'), //TODO REMOVE
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.blueGrey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Text('Enter Description',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(3))),
                child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  controller: teController,
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: GestureDetector(
                          onTap: () => uploads.add(uploads.last + 1),
                          child: Card(
                              child: ListTile(
                            title: Text('upload file'),
                            leading: Icon(Icons.add),
                          ))),
                    ),
                    Container(
                        height: 200,
                        child: ListView.builder(
                            itemCount: uploads.length,
                            itemBuilder: (context, index) {
                              return Card(
                                  child: GestureDetector(
                                      onTap: () => print(
                                          'Clicked on pdf #${uploads[index]}'),
                                      child: ListTile(
                                        title: Text(
                                            'placeholder upload file text nr ${uploads[index]}'),
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
