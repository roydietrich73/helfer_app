import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color container1Color = Colors.red;
  Color container2Color = Colors.blue;
  bool isContainer1Visible = true;

  void toggleContainers() {
    setState(() {
      isContainer1Visible = !isContainer1Visible;

      // Farbwechsel
      Color tempColor = container1Color;
      container1Color = container2Color;
      container2Color = tempColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Toggle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: isContainer1Visible,
              child: Container(
                width: 200,
                height: 100,
                color: container1Color,
                alignment: Alignment.center,
                child: Text(
                  'Container 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Visibility(
              visible: !isContainer1Visible,
              child: Container(
                width: 200,
                height: 100,
                color: container2Color,
                alignment: Alignment.center,
                child: Text(
                  'Container 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleContainers,
              child: Text('Toggle'),
            ),
          ],
        ),
      ),
    );
  }
}
