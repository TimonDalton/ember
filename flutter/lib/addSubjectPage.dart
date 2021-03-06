import 'package:flutter/material.dart';

class AddSubjectPage extends StatelessWidget {
  //TODO turn into add subject page from add resource page

  final TextEditingController nameTEController = TextEditingController(text: 'Subject Name');
  final TextEditingController descriptionTEController = TextEditingController(text: 'Subject Description');

  
  @override
  Widget build(BuildContext context) {
    List<int> uploads = [];
    for (int i = 0; i < 2; i++) uploads.add(i);

    return Scaffold(
        appBar: AppBar(
          title: Text('AddSubjectPage'), //TODO REMOVE
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          color: Colors.blueGrey,
          child: Column(
            children: [
              Center(
                  widthFactor: double.infinity,
                  child: Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: Text('Enter Subject Name',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)))),
              _FormattedInputField(controller: nameTEController,),
              Center(
                  widthFactor: double.infinity,
                  child: Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: Text('Enter Subject Description',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)))),
              _FormattedInputField(controller: descriptionTEController,),

            ],
          ),
        ));
  }
}

class _FormattedInputField extends StatelessWidget {
  final TextEditingController controller;

  _FormattedInputField({this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          maxLines: null,
          keyboardType: TextInputType.multiline,
          controller: controller,
        ));
  }
}
