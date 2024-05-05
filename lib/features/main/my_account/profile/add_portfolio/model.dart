import 'dart:core';

class AddPortfolio {

  late final String message;
  late final String exception;
  late final String file;
  late final int line;
  late final List<AddPortfolioData> list;

  AddPortfolio.fromJson(Map<String, dynamic> json){
    message = json['message'];
    exception = json['exception'];
    file = json['file'];
    line = json['line'];
    list = List.from(json['trace']??[]).map((e) => AddPortfolioData.fromJson(e)).toList();
  }


}

class AddPortfolioData {

  late final String file;
  late final int line;
  late final String function;
  late final String type;

  AddPortfolioData.fromJson(Map<String, dynamic> json){
  file = json['file'];
  line = json['line'];
  function = json['function'];
  type = json['type'];
  }

}