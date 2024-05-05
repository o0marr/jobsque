class GetPortfolio {

  late final bool status;
  late final PortofolioData list;

  GetPortfolio.fromJson(Map<String, dynamic> json){
    status = json['status'];
    list = PortofolioData.fromJson(json['data']??[]);
  }


}

class PortofolioData {

  late final List<Portofolio> list;
  late final Profile profile;

  PortofolioData.fromJson(Map<String, dynamic> json){
    list = List.from(json['portofolio']??[]).map((e)=>Portofolio.fromJson(e)).toList();
    profile = Profile.fromJson(json['profile']);
  }


}

class Portofolio {

  late final int id;
  late final String cvFile;
  late final String name;
  late final String image;
  late final int userId;
  late final String createdAt;
  late final String updatedAt;

  Portofolio.fromJson(Map<String, dynamic> json){
    id = json['id'];
    cvFile = json['cv_file'];
    name = json['name'];
    image = json['image'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

}

class Profile {

  late final int id;
  late final int userId;
  late final String name;
  late final String email;
  late final String mobile;
  late final String address;
  late final String language;
  late final String interestedWork;
  late final String offlinePlace;
  late final String remotePlace;
  late final String bio;
  late final String education;
  late final String experience;
  late final String personalDetailed;
  late final String createdAt;
  late final String updatedAt;

  Profile.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userId = json['user_id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    address = json['address'];
    language = json['language'];
    interestedWork = json['interested_work'];
    offlinePlace = json['offline_place'];
    remotePlace = json['remote_place'];
    bio = json['bio'];
    education = json['education'];
    experience = json['experience'];
    personalDetailed = json['personal_detailed'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

}