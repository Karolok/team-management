import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: MyCustomForm()),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.9), BlendMode.dstATop),
              image: AssetImage("assets/ey-background.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
            child: Image(
              image: AssetImage('assets/ey-logo.png'),
              width: 200.0,
              height: 200.0,
            ),
          ),
          Center(
            child: Text('Team Management',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color.fromARGB(255, 196, 196, 205),
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            child: TextField(
              cursorColor: Colors.yellow,
              style: TextStyle(color: Color.fromARGB(188, 188, 188, 188)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(207, 0, 0, 0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow, width: 1.0),
                ),
                hoverColor: Colors.black,
                hintStyle: TextStyle(color: Color.fromARGB(188, 188, 188, 188)),
                hintText: 'Login',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            child: TextField(
              obscureText: true,
              cursorColor: Colors.yellow,
              style: TextStyle(color: Color.fromARGB(188, 188, 188, 188)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(207, 0, 0, 0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow, width: 1.0),
                ),
                hintStyle: TextStyle(color: Color.fromARGB(188, 188, 188, 188)),
                hintText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            child: TextButton(
                child: Text('LOG IN'),
                style: TextButton.styleFrom(
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    minimumSize: Size(200.0, 50.0),
                    primary: Color.fromARGB(255, 46, 46, 38),
                    backgroundColor: Colors.yellow),
                onPressed: () {
                  print('Pressed');
                }),
          )
        ],
      ),
    );
  }
}
