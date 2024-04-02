import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SwitchPage> {
  Color container1Color = btnColor;
  Color container2Color = chtColor2;
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
                'Hilfe suchen',
                style: TextStyle(color: Colors.grey),
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
                'Hilfe anbieten',
                style: TextStyle(color: Colors.grey),
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
