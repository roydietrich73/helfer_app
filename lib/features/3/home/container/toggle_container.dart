import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';

class ToggleColorApp extends StatefulWidget {
  const ToggleColorApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
    return Center(
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
              color: isFirstContainerSelected ? chtColor2 : btnColor,
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
              color: isNewContainerSelected ? btnColor : chtColor2,
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
    );
  }
}
