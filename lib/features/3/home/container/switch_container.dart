import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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
    return Center(
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
              child: const Text(
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
              child: const Text(
                'Container 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: toggleContainers,
            child: const Text('Toggle'),
          ),
        ],
      ),
    );
  }
}
