part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CountState extends CounterState {
  int data;
  CountState(this.data);
}
