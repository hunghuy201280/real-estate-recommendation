import 'package:equatable/equatable.dart';

abstract class StateStatus extends Equatable {
  const StateStatus();
}

class Idle extends StateStatus {
  const Idle();

  @override
  List<Object?> get props => [];
}

class Loading extends StateStatus {
  const Loading();

  @override
  List<Object?> get props => [];
}

class MoreLoading extends StateStatus {
  const MoreLoading();

  @override
  List<Object?> get props => [];
}

class Success extends StateStatus {
  const Success();

  @override
  List<Object?> get props => [];
}

class Error<T, V> extends StateStatus {
  final T? error;
  final V? causedBy;
  const Error({
    this.error,
    this.causedBy,
  });

  @override
  List<Object?> get props => [error, causedBy];
}

class LimitExceeded extends StateStatus {
  const LimitExceeded();

  @override
  List<Object?> get props => [];
}
