import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Exploring UI Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: Text("List of hackers",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              )),
        ),
        body: getListView1000(),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
          tooltip: 'Add one more Item',
        ),
        //getListView1000()),
      )));
}

Widget getListView() {
  var listview = Column(children: <Widget>[
    ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape tapped");
        }),
    ListTile(
      leading: Icon(Icons.laptop_chromebook),
      title: Text("Windows"),
      trailing: Icon(Icons.laptop_windows),
    ),
    ListTile(
      leading: Icon(Icons.phone),
      title: Text("Phone"),
      trailing: Icon(Icons.phone_iphone),
    ),
    ListTile(
      leading: Icon(Icons.map),
      title: Text("Navigation"),
      trailing: Icon(Icons.directions_run),
    ),
    Text("Yet Another element in the List"),
    Container(
        color: Colors.greenAccent,
        height: 50.0,
        width: 300.0,
        child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Connect your device",
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w300),
          ),
          elevation: 10.0,
        ))
  ]);
  return listview;
}

List<String> getListElements() {
  var items = List<String>.generate(20, (counter) => "Hacker $counter");
  return items;
}

getListView1000() {
  var listItems = getListElements();
  var listview = ListView.builder(
      itemBuilder: (Context, index) {
        return ListTile(
          title: Text(listItems[index]),
        );
      }
  );
  return listview;
}
