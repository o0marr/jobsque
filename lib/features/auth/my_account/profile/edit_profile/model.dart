class EditProfileData {

  late final bool status;
  late final EditProfileModel data;

  EditProfileData.fromJson(Map<String, dynamic> json){
    status = json['status'];
    data = EditProfileModel.fromJson(json['data']);
  }


}

class EditProfileModel {

  late final String bio;
  late final String address;
  late final String mobile;
  late final String language;
  late final String interestedWork;
  late final String offlinePlace;
  late final String remotePlace;
  late final String experience;
  late final String personalDetailed;
  late final String education;

  EditProfileModel.fromJson(Map<String, dynamic> json){
    bio = json['bio'];
    address = json['address'];
    mobile = json['mobile'];
    language = json['language'];
    interestedWork = json['interested_work'];
    offlinePlace = json['offline_place'];
    remotePlace = json['remote_place'];
    experience = json['experience'];
    personalDetailed = json['personal_detailed'];
    education = json['education'];
  }


}