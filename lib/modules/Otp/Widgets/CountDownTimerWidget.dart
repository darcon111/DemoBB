import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class CountDownTimerWidget extends StatefulWidget {
  final int timer;
  CountDownTimerWidget({required this.timer});
  @override
  _State createState() => _State(timer: timer);
}

class _State extends State<CountDownTimerWidget> {
  final int timer;
  final _isHours = true;
  StopWatchTimer _stopWatchTimer = StopWatchTimer();
  _State({required this.timer});
  @override
  void initState() {
    super.initState();
    _stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countDown,
      presetMillisecond: StopWatchTimer.getMilliSecFromMinute(timer),
    );
  }

  @override
  void dispose() async {
    super.dispose();
    await _stopWatchTimer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _stopWatchTimer.onStartTimer();
    return StreamBuilder<int>(
        stream: _stopWatchTimer.rawTime,
        initialData: _stopWatchTimer.rawTime.value,
        builder: (context, snap) {
          final value = snap.data!;
          final displayTime =
              StopWatchTimer.getDisplayTime(value, hours: _isHours);
          return Text(
         displayTime.substring(3, displayTime.length - 3),
          style: TextStyle(
            color: Color(0xFF212529),
            fontSize: 14,
            fontFamily: 'Lexend',
            fontWeight: FontWeight.w500,
            height: 1.50,
          ),
        );
        });
  }
}
