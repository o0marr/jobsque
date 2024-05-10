class ProfileData {

  late final List<ProfileDataModel> list;
  late final bool status;

  ProfileData.fromJson(Map<String, dynamic> json){
  list = List.from(json['data']??[]).map((e) => ProfileDataModel.fromJson(e)).toList();

    status = json['status'];
  }


}

class ProfileDataModel {

  late final int id;
  late final String name;
  late final String email;
  late final String createdAt;
  late final String updatedAt;

  ProfileDataModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

}