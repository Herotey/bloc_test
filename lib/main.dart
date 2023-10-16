import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/counter_app.dart';
import 'package:flutter_bloc_test/counter_bloc.dart';

void main() {
  Bloc.observer = CounterBloc();
  runApp( const CounterApp());
}


