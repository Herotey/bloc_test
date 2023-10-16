
import 'package:bloc/bloc.dart';

class CounterBloc extends BlocObserver{
  const CounterBloc();
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic>change){
    super.onChange(bloc, change);
    print('${bloc.runtimeType}$change');
  }
}