import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing State Management Flutter Bloc',
        style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body:  Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state){
            return Text('Count: $state',
            style: textTheme.displayMedium
            );
          }
          ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key:const Key('counterView_increment_floatingActionButton'),
            onPressed: ()=> context.read<CounterCubit>().increment(),
          child:const Icon( Icons.add),
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            key:const Key('counterView_decrement_floatingActionButton'),
            onPressed: ()=> context.read<CounterCubit>().decrement(),
          child:const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}