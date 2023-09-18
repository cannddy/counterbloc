import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CountState> {
  int count = 0;
  CounterBloc() : super(CountState(3)) {
    on<IncrementEvent>((event, emit) {
      count += 1;
      emit(CountState(count));
    });
    on<DecrementEvent>((event, emit) {
      count -= 1;
      emit(CountState(count));
    });
    on<ResetEvent>((event, emit) {
      count = 0;
      emit(CountState(count));
    });
  }
}
