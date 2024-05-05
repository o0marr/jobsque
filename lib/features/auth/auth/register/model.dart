class Register {

  late final bool status;
  late final RegisterData massege;

  Register.fromJson(Map<String, dynamic> json){
    status = json['status'];
    massege = RegisterData.fromJson(json['massege']);
  }


}

class RegisterData {
 
  late final List<String> email;

  RegisterData.fromJson(Map<String, dynamic> json){
    email = List.castFrom<dynamic, String>(json['email']);
  }


}