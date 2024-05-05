class Profile {

  late final ProfileData list;
  late final bool status;

  Profile.fromJson(Map<String, dynamic> json){
    list = ProfileData.fromJson(json['data']??[]);
    status = json['status'];
  }


}

class ProfileData {

  late final int id;
  late final String name;
  late final String email;
  late final String createdAt;
  late final String updatedAt;

  ProfileData.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }


}