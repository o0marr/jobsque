class BioData {

  late final bool status;
  late final List<BioDataModel> list;

  BioData.fromJson(Map<String, dynamic> json){
    status = json['status'];
    list = List.from(json['data']??[]).map((e) => BioDataModel.fromJson(e)).toList();
  }


}

class BioDataModel {

  late final String bio;
  late final String address;
  late final String mobile;


  BioDataModel.fromJson(Map<String, dynamic> json){
    bio = json['bio'];
    address = json['address'];
    mobile = json['mobile'];

  }


}