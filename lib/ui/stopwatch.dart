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
    _timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
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
      backgroundColor: const Color(0xff4793AF),
      appBar: AppBar(
        backgroundColor: const Color(0xff074173),
        title: const Text(
          'Stopwatch',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              formatTime(),
              style: const TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  _stopwatch.stop();
                  // _stopwatch.reset();
                  // _stopwatch.start();
                },
                child: const Icon(Icons.stop_circle),
              ),
              FloatingActionButton(
                onPressed: () {
                  // _stopwatch.stop();
                  _stopwatch.reset();
                  // _stopwatch.start();
                },
                child: const Icon(Icons.refresh),
              ),
              FloatingActionButton(
                onPressed: () {
                  // _stopwatch.stop();
                  // _stopwatch.reset();
                  _stopwatch.start();
                },
                child: const Icon(Icons.play_circle),
              ),
            ],
          )
        ],
      ),
    );
  }
}
