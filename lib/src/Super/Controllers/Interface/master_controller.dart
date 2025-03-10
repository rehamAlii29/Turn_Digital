import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/NetworkStructure/Resources/DataState/data_state.dart';

mixin MasterController<T> {
  void notify(DataState<T> value);

  DataState<T> state = DataInitial<T>();

  bool get stateReady => state is! DataLoading;

  bool get stateUnReady => state is DataLoading;

  bool get stateSuccess => state is DataSuccess;

  bool get stateNotSuccess => state is! DataSuccess;

  bool get stateError => state is DataFailed;

  @mustCallSuper
  void onInit() {}

  void onClose() {}

  /// Use onClose() instead
  @deprecated
  void dispose() {}
}
