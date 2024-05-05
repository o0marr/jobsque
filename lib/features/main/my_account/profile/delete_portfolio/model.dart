class DeletePortfolio {

  late final String message;

  DeletePortfolio.fromJson(Map<String, dynamic> json){
    message = json['message'];
  }


}