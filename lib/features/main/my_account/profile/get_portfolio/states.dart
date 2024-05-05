part of 'bloc.dart';

class GetPortfolioStates {}

class GetGetPortfolioLoadingState extends GetPortfolioStates {}

class GetGetPortfolioSuccessState extends GetPortfolioStates {
  final String msg;

  GetGetPortfolioSuccessState({required this.msg});
}

class GetGetPortfolioFailedState extends GetPortfolioStates {
  final String msg;

  GetGetPortfolioFailedState({required this.msg});
}
