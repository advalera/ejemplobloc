import 'package:calculadorabinariodecimalbloc/domain/use_case/converter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_events.dart';
import 'bloc_state.dart';

// the ui sends events, the bloc responds with states
// https://bloclibrary.dev/#/architecture

class ConvertionBloc extends Bloc<ConvertionEvent, AbstractConverterState> {
  String _decimal = "0", _binary = "0";

  ConvertionBloc() : super(ConverterState("0", "0"));

  String get decimal => _decimal;
  String get binary => _binary;

  @override
  Stream<AbstractConverterState> mapEventToState(ConvertionEvent event) async* {
    if (event is UpdateDecimalEvent) {
      // Implementa la respuesta al evento como un estado 
      //para convertir de decimal a binario
    }

    if (event is UpdateBinaryEvent) {
      // Implementa la respuesta al evento como un estado 
      //para convertir de binario a decimal
      
    }

    if (event is ResetEvent) {
      // Implementa la respuesta al evento como un estado 
      //para resetear la conversión
    
    }
  }
}
