class UserModel {
  User? user;
  String? accessToken;

  UserModel({this.user, this.accessToken});

 UserModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['access_token'] = this.accessToken;
    return data;
  }
}

class User {
  int? id;
  Null? name;
  Null? phoneNo;
  String? email;
  Null? image;
  Null? country;
  Null? location;
  Null? dob;
  Null? age;
  Null? gender;
  int? userStatus;
  int? isBanned;
  Null? maritalStatus;
  Null? height;
  Null? education;
  Null? language;
  Null? religion;
  Null? gothra;
  Null? caste;
  Null? employmentType;
  Null? annualIncome;
  Null? interest;
  Null? verificationCode;
  Null? slug;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.name,
      this.phoneNo,
      this.email,
      this.image,
      this.country,
      this.location,
      this.dob,
      this.age,
      this.gender,
      this.userStatus,
      this.isBanned,
      this.maritalStatus,
      this.height,
      this.education,
      this.language,
      this.religion,
      this.gothra,
      this.caste,
      this.employmentType,
      this.annualIncome,
      this.interest,
      this.verificationCode,
      this.slug,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNo = json['phone_no'];
    email = json['email'];
    image = json['image'];
    country = json['country'];
    location = json['location'];
    dob = json['dob'];
    age = json['age'];
    gender = json['gender'];
    userStatus = json['user_status'];
    isBanned = json['is_banned'];
    maritalStatus = json['marital_status'];
    height = json['height'];
    education = json['education'];
    language = json['language'];
    religion = json['religion'];
    gothra = json['gothra'];
    caste = json['caste'];
    employmentType = json['employment_type'];
    annualIncome = json['annual_income'];
    interest = json['interest'];
    verificationCode = json['verification_code'];
    slug = json['slug'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone_no'] = this.phoneNo;
    data['email'] = this.email;
    data['image'] = this.image;
    data['country'] = this.country;
    data['location'] = this.location;
    data['dob'] = this.dob;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['user_status'] = this.userStatus;
    data['is_banned'] = this.isBanned;
    data['marital_status'] = this.maritalStatus;
    data['height'] = this.height;
    data['education'] = this.education;
    data['language'] = this.language;
    data['religion'] = this.religion;
    data['gothra'] = this.gothra;
    data['caste'] = this.caste;
    data['employment_type'] = this.employmentType;
    data['annual_income'] = this.annualIncome;
    data['interest'] = this.interest;
    data['verification_code'] = this.verificationCode;
    data['slug'] = this.slug;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
