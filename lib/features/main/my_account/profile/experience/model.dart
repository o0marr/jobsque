class Experience {

  late final String message;

  Experience.fromJson(Map<String, dynamic> json){
    message = json['message'];
  }


}