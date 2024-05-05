part of 'bloc.dart';

class DeletePortfolioStates {}

class GetDeletePortfolioLoadingState extends DeletePortfolioStates {}

class GetDeletePortfolioSuccessState extends DeletePortfolioStates {
  final String msg;

  GetDeletePortfolioSuccessState({required this.msg});
}

class GetDeletePortfolioFailedState extends DeletePortfolioStates {
  final String msg;

  GetDeletePortfolioFailedState({required this.msg});
}
