import 'package:flutter/scheduler.dart';

class Functions {
  static void afterInit(Function function) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      function();
    });
  }
}
