import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchApp extends StatefulWidget {
  static const nameRoute = '/stop';
  @override
  _StopwatchAppState createState() => _StopwatchAppState();
}

class _StopwatchAppState extends State<StopwatchApp> {
  Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _stopwatch.start();
    _timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String formatTime() {
    Duration duration = _stopwatch.elapsed;
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff074173),
        title: const Text(
          'Stopwatch',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              formatTime(),
              style: TextStyle(fontSize: 48),
            ),
          ),
          Column(
            children: [
              FloatingActionButton(
                onPressed: () {
                  _stopwatch.stop();
                  // _stopwatch.reset();
                  // _stopwatch.start();
                },
                child: Icon(Icons.stop_circle),
              ),
              FloatingActionButton(
                onPressed: () {
                  // _stopwatch.stop();
                  _stopwatch.reset();
                  // _stopwatch.start();
                },
                child: Icon(Icons.refresh),
              ),
              FloatingActionButton(
                onPressed: () {
                  // _stopwatch.stop();
                  // _stopwatch.reset();
                  _stopwatch.start();
                },
                child: Icon(Icons.play_circle),
              ),
            ],
          )
        ],
      ),
    );
  }
}
