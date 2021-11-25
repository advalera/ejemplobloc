import 'package:calculadorabinariodecimalbloc/domain/bloc/bloc.dart';
import 'package:calculadorabinariodecimalbloc/domain/bloc/bloc_events.dart';
import 'package:calculadorabinariodecimalbloc/domain/bloc/bloc_state.dart';
import 'package:calculadorabinariodecimalbloc/domain/bloc/bloc_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// BlocConsumer consumes the ConvertionBloc as the UI reacts to states
class Dec2Bin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: BlocConsumer<ConvertionBloc, AbstractConverterState>(
            listener: (context, state) {},
            builder: (context, state) {
              // with more complex apps it would be better to verify before casting
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.centerRight,
                      child: Text(
                        // here we get the binary value from the state
                        '${_state.binary}',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: MaterialButton(
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              // we raise a new event
                              onPressed: () => BlocUtils()
                                  .event(context, UpdateDecimalEvent(1)),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: MaterialButton(
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                "2",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              // we raise a new event
                              onPressed: () => BlocUtils()
                                  .event(context, UpdateDecimalEvent(2)),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: MaterialButton(
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                "3",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              // we raise a new event
                              onPressed: () => BlocUtils()
                                  .event(context, UpdateDecimalEvent(3)),
                            ),
                          )),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: MaterialButton(
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                "4",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () => BlocUtils()
                                  .event(context, UpdateDecimalEvent(4)),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: MaterialButton(
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                "5",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () => BlocUtils()
                                  .event(context, UpdateDecimalEvent(5)),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: MaterialButton(
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                "6",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () => BlocUtils()
                                  .event(context, UpdateDecimalEvent(6)),
                            ),
                          )),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: MaterialButton(
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                "7",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () => BlocUtils()
                                  .event(context, UpdateDecimalEvent(7)),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: MaterialButton(
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                "8",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () => BlocUtils()
                                  .event(context, UpdateDecimalEvent(8)),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: MaterialButton(
                              color: Theme.of(context).primaryColor,
                              child: Text(
                                "9",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () => BlocUtils()
                                  .event(context, UpdateDecimalEvent(9)),
                            ),
                          )),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              flex: 2,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: MaterialButton(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryVariant,
                                  onPressed: () =>
                                      BlocUtils().event(context, ResetEvent()),
                                  child: Text(
                                    "Reset",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: MaterialButton(
                                  color: Theme.of(context).primaryColor,
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () => BlocUtils()
                                      .event(context, UpdateDecimalEvent(0)),
                                ),
                              )),
                        ],
                      ),
                    )),
                  ]);
            }));
  }
}
