import 'package:flutter/material.dart';
import 'addResourcePage.dart';
import 'package:note_share_web/viewResourcePage.dart';

class ViewSubjectResourcesPage extends StatelessWidget {
  final int id;
  ViewSubjectResourcesPage({this.id});

  @override
  Widget build(BuildContext context) {
    List<int> data = [];
    for (int i = 0; i < 7; i++) data.add(i);

    return Scaffold(
        appBar: AppBar(
          title: Text('ViewSubjectResourcesPage'),//TODO REMOVE
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
              Row(
                children: [
                  Container(margin:EdgeInsets.all(10),padding:EdgeInsets.symmetric(vertical: 10,horizontal: 5), child:Text('SWK ${id}22',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                  Container(width: 200),
                  Card(child: GestureDetector(onTap:()=>print('Jammer babe ek code nog daai'),child:Container(margin:EdgeInsets.all(10),padding:EdgeInsets.symmetric(vertical: 10,horizontal: 5), child:Text('Filter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),),),
              ],),
              
              Flexible(
                  flex: (data.length <= 5)?data.length:5,
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                          margin: EdgeInsets.all(3),
                          child: ListTile(
                            title: Text('Die tannie se lectures opgesom week ${data[index]}'),
                            leading: Icon(Icons.drag_handle),
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ViewResourcePage(id: index))),

                            //js.context.callMethod('open',['https://google.com']),
                          ));
                    },
                  )),
              Flexible(
                flex: 4,
                  child: Card(
                child: GestureDetector(
                    child: ListTile(
                        title: Text('Add a resource'),
                        leading: Icon(Icons.add)),
                        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddResourcePage())),
                        ),
              ))
            ],
          ),
        ));
  }
}
