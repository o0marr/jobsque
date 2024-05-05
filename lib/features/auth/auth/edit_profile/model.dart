class EditProfile {

  late final bool status;
  late final EditProfileData list;

  EditProfile.fromJson(Map<String, dynamic> json){
    status = json['status'];
    list = EditProfileData.fromJson(json['data']??[]);
  }


}

class EditProfileData {

  late final int id;
  late final String name;
  late final String otp;
  late final String email;
  late final String createdAt;
  late final String updatedAt;

  EditProfileData.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    otp = json['otp'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }


}