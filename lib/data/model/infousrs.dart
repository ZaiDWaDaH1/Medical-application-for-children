// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

class Users {
  int? usersId;
  String? usersName;
  String? usersEmail;
  String? usersPassword;
  String? usersPhone;
  String? usersVerfycode;
  int? usersApprove;
  String? usersSex;
  int? usersAge;
  String? usresAddress;
  String? usersCreate;
  String? typeOfUser;

  Users(
      {this.usersId,
      this.usersName,
      this.usersEmail,
      this.usersPassword,
      this.usersPhone,
      this.usersVerfycode,
      this.usersApprove,
      this.usersSex,
      this.usersAge,
      this.usresAddress,
      this.usersCreate,
      this.typeOfUser});

  Users.fromJson(Map<String, dynamic> json) {
    usersId = json['users_id'];
    usersName = json['users_name'];
    usersEmail = json['users_email'];
    usersPassword = json['users_password'];
    usersPhone = json['users_phone'];
    usersVerfycode = json['users_verfycode'];
    usersApprove = json['users_approve'];
    usersSex = json['users_sex'];
    usersAge = json['users_age'];
    usresAddress = json['usres_address'];
    usersCreate = json['users_create'];
    typeOfUser = json['type_of_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['users_id'] = this.usersId;
    data['users_name'] = this.usersName;
    data['users_email'] = this.usersEmail;
    data['users_password'] = this.usersPassword;
    data['users_phone'] = this.usersPhone;
    data['users_verfycode'] = this.usersVerfycode;
    data['users_approve'] = this.usersApprove;
    data['users_sex'] = this.usersSex;
    data['users_age'] = this.usersAge;
    data['usres_address'] = this.usresAddress;
    data['users_create'] = this.usersCreate;
    data['type_of_user'] = this.typeOfUser;
    return data;
  }
}
