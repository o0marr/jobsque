
class EditProfileData {

  late final bool status;
  late final List<EditProfileModel> list;

  EditProfileData.fromJson(Map<String, dynamic> json){
    status = json['status'];
    list = List.from(json['data']??[]).map((e) => EditProfileModel.fromJson(e)).toList();
  }


}

class EditProfileModel {

  late final int id;
  late final String name;
  late final String otp;
  late final String email;
  late final String createdAt;
  late final String updatedAt;

  EditProfileModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    otp = json['otp'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }


}