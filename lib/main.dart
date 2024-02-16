import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vibration App',
      home: VibrationPage(),
    );
  }
}

class VibrationPage extends StatefulWidget {
  @override
  _VibrationPageState createState() => _VibrationPageState();
}

class _VibrationPageState extends State<VibrationPage> {
  @override
  void initState() {
    super.initState();
    startVibration();
  }

  startVibration() async {
    while (true) {
      await Vibration.vibrate(duration: 1000); // Vibrate for 1 second
      await Future.delayed(Duration(seconds: 3)); // Wait for 3 seconds
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vibration App'),
      ),
      body: Center(
        child: Text(
          'Vibrating every 4 seconds for 1 second',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
