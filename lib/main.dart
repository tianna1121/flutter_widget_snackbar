import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Snapbar widget",
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Snapbar"),
        ),
        body: Builder(builder: (context) {
          return Container(
              child: Center(
                  child: FlatButton(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            color: Colors.deepOrange,
            textColor: Colors.white,
            onPressed: () {
              SnackBar mySnackbar = SnackBar(content: Text("Hello Snackbar"));
              Scaffold.of(context).showSnackBar(mySnackbar);
            },
            child: Text(
              "Snackbar",
              style: TextStyle(fontSize: 20.0),
            ),
          )));
        }));
  }
}
