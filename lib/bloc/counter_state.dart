abstract class CounterState {}

class CounterInit extends CounterState {
  int counter;
  CounterInit(this.counter);
}

class CounterUpdated extends CounterState {
  int counter;
  CounterUpdated(this.counter);
}
