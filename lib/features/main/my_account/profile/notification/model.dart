class Notification {

  late final bool status;
  late final NotificationData list;

  Notification.fromJson(Map<String, dynamic> json){
    status = json['status'];
    list = NotificationData.fromJson(json['data']??[]);
  }


}

class NotificationData {

  late final int id;
  late final String userId;
  late final String compId;
  late final String compName;
  late final String userName;
  late final String lastMassage;
  late final String createdAt;
  late final String updatedAt;

  NotificationData.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userId = json['user_id'];
    compId = json['comp_id'];
    compName = json['comp_name'];
    userName = json['user_name'];
    lastMassage = json['last_massage'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }


}