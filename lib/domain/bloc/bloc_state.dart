import 'package:equatable/equatable.dart';

// Equatable is designed to only work with immutable objects so all member variables must be final

// All the variables that should be used for the comparation should be included on the props

abstract class AbstractConverterState extends Equatable {
  const AbstractConverterState();

  @override
  List<Object> get props => [];
}

class ConverterState extends AbstractConverterState {
  final String decimal;
  final String binary;

  ConverterState(this.decimal, this.binary);

  @override
  List<Object> get props => [decimal, binary];
}
