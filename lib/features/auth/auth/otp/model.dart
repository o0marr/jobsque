class Otp {

  late final String message;

  Otp.fromJson(Map<String, dynamic> json){
    message = json['message'];
  }


}