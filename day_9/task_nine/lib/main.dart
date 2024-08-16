import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _progress = 0.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _progress += 0.1;
        if (_progress >= 1.0) {
          _progress = 0.0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress Bar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Progress Bar Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Progress: ${(_progress * 100).toInt()}%',
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 16.0),
              LinearProgressIndicator(
                value: _progress,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}