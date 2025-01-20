import 'package:flutter_application_1/Architecture/MVC/Model/counter_moderl.dart';

class CounterController {
  final CounterModel _model;

  CounterController() : _model = CounterModel();

  int get count => _model.count;

  void increment() {
    _model.increment();
  }

  void decrement() {
    _model.decrement();
  }
}
