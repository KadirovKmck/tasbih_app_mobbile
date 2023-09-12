part of 'tasbih_bloc.dart';

@immutable
sealed class TasbihState {
  final int? countBloc;

  TasbihState({this.countBloc});
}

final class TasbihInitial extends TasbihState {
  TasbihInitial({super.countBloc});
}

final class TasbihOzgort extends TasbihState {
  TasbihOzgort({super.countBloc});
}
