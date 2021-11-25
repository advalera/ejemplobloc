import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc.dart';
import 'bloc_events.dart';

//Thanks to Dart's factory constructors, it's easy to build a singleton:
class BlocUtils {
  static final BlocUtils _singleton = BlocUtils._internal();

  // Use the factory keyword when implementing a constructor that doesn’t always create a new instance of its class
  factory BlocUtils() {
    return _singleton;
  }

  BlocUtils._internal();

  // single point to gather events and send them to Bloc
  void event(BuildContext context, ConvertionEvent event) {
    BlocProvider.of<ConvertionBloc>(context).add(event);
  }
}
