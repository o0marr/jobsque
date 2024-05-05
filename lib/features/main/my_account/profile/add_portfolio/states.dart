part of 'bloc.dart';

class AddPortfolioStates {}

class GetAddPortfolioLoadingState extends AddPortfolioStates {}

class GetAddPortfolioSuccessState extends AddPortfolioStates {
  final String msg;

  GetAddPortfolioSuccessState({required this.msg});
}

class GetAddPortfolioFailedState extends AddPortfolioStates {
  final String msg;

  GetAddPortfolioFailedState({required this.msg});
}
