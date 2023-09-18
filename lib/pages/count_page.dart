import 'package:counterbloc/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter using Bloc"),
        ),
        body: Center(
          child: BlocBuilder<CounterBloc, CountState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Border radius
                    ),
                    padding: EdgeInsets.all(10.0), // Padding inside the box
                    child: Text(
                      state.data.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context, listen: false)
                              .add(IncrementEvent());
                        },
                        child: Text('Increment'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context, listen: false)
                              .add(DecrementEvent());
                        },
                        child: Text('Decrement'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context, listen: false)
                              .add(ResetEvent());
                        },
                        child: Text('Reset'),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ));
  }
}
