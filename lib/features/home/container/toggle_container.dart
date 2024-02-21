import 'package:flutter/material.dart';

class ToggleColorApp extends StatefulWidget {
  @override
  _ToggleColorAppState createState() => _ToggleColorAppState();
}

class _ToggleColorAppState extends State<ToggleColorApp> {
  bool isFirstContainerSelected = false;
  bool isNewContainerSelected = false;

  void toggleContainers() {
    setState(() {
      isFirstContainerSelected = !isFirstContainerSelected;
      isNewContainerSelected = !isNewContainerSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                toggleContainers();
              },
              child: Container(
                width: 100,
                height: 100,
                color: isFirstContainerSelected
                    ? const Color.fromRGBO(
                        188,
                        22,
                        50,
                        1.0,
                      )
                    : const Color.fromRGBO(244, 208, 157, 1.0),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                toggleContainers();
              },
              child: Container(
                width: 100,
                height: 100,
                color: isNewContainerSelected ? Colors.red : Colors.blue,
                child: const Center(
                  child: Text(
                    '',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
