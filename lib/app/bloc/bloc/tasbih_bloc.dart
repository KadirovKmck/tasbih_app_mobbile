import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tasbih_event.dart';
part 'tasbih_state.dart';

class TasbihBloc extends Bloc<TasbihEvent, TasbihState> {
  TasbihBloc() : super(TasbihInitial(countBloc: 0)) {
    on<CountKoshildi>((event, emit) {
      emit(TasbihOzgort(countBloc: state.countBloc! + 1));
    });
    on<CountKemitildi>((event, emit) {
      emit(TasbihOzgort(countBloc: state.countBloc! - 1));
    });
  }
}
