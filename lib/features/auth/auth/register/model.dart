class RegisterData {

  late final bool status;
  late final RegisterData massege;

  RegisterData.fromJson(Map<String, dynamic> json){
    status = json['status'];
    massege = RegisterData.fromJson(json['massege']);
  }


}

class RegisterModel {
 
  late final List<String> email;

  RegisterModel.fromJson(Map<String, dynamic> json){
    email = List.castFrom<dynamic, String>(json['email']);
  }


}