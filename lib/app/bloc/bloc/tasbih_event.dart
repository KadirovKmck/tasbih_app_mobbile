part of 'tasbih_bloc.dart';

@immutable
sealed class TasbihEvent {}

final class CountKoshildi extends TasbihEvent {}

final class CountKemitildi extends TasbihEvent {}
