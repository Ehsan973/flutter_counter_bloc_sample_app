import 'package:counter_bloc_sample_app/bloc/counter_event.dart';
import 'package:counter_bloc_sample_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInit(0)) {
    on<DecreamentPressed>((event, emit) {
      emit(CounterUpdated(--counter));
    });

    on<IncreamentPressed>((event, emit) {
      emit(CounterUpdated(++counter));
    });

    on<ResetPressed>((event, emit) {
      counter = 0;
      emit(CounterUpdated(counter));
    });
  }
}
