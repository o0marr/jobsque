class Login {

  late final String massage;
  late final bool status;

  Login.fromJson(Map<String, dynamic> json){
    massage = json['massage'];
    status = json['status'];
  }


}