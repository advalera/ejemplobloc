import 'package:calculadorabinariodecimalbloc/domain/bloc/bloc.dart';
import 'package:calculadorabinariodecimalbloc/domain/bloc/bloc_events.dart';
import 'package:calculadorabinariodecimalbloc/domain/bloc/bloc_state.dart';
import 'package:calculadorabinariodecimalbloc/domain/bloc/bloc_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// BlocConsumer consumes the ConvertionBloc as the UI reacts to states
class Bin2Dec extends StatelessWidget {
  const Bin2Dec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: BlocConsumer<ConvertionBloc, AbstractConverterState>(
            listener: (context, state) {},
            builder: (context, state) {
              ConverterState _state = state as ConverterState;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerRight,
                    child: Text(
                      // here we get the decimal value from the state
                      '${_state.decimal}',
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerRight,
                    child: Text(
                      // here we get the  binary value from the state
                      '${_state.binary}',
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          _key(1, context),
                          _key(0, context),
                        ]),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Theme.of(context).colorScheme.secondaryVariant,
                        onPressed: () =>
                            BlocUtils().event(context, ResetEvent()),
                        child: Text(
                          "Reset",
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }));
  }

  Widget _key(number, context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          color: Theme.of(context).primaryColor,
          child: Text(
            number.toString(),
            style: new TextStyle(
              color: Colors.white,
            ),
          ),
          // we raise a new event
          onPressed: () =>
              BlocUtils().event(context, UpdateBinaryEvent(number)),
        ),
      ),
    );
  }
}
