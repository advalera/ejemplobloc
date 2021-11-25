import 'package:equatable/equatable.dart';

// Equatable is designed to only work with immutable objects so all member variables must be final

// All the variables that should be used for the comparation should be included on the props

abstract class ConvertionEvent extends Equatable {
  const ConvertionEvent();
}

class UpdateDecimalEvent extends ConvertionEvent {
  final int digit;

  UpdateDecimalEvent(this.digit);

  @override
  List<Object> get props => [digit];
}

class UpdateBinaryEvent extends ConvertionEvent {
  final int digit;

  UpdateBinaryEvent(this.digit);

  @override
  List<Object> get props => [digit];
}

class ResetEvent extends ConvertionEvent {
  @override
  List<Object> get props => [];
}
