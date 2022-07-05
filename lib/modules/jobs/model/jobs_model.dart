// import 'dart:convert';
// import 'dart:io';

// class JobsModel {
//   int? id;
//   String? slug;
//   String? job_title;
//   String? job_specification;
//   String? salary;
//   String? location;
//   String? experience;
//   String? education_level;
//   String? job_type;
//   String? faculty;
//   DateTime? expirydate;

//   JobsModel(
//       {this.id,
//       this.job_specification,
//       this.job_title,
//       this.job_type,
//       this.salary,
//       this.experience,
//       this.education_level,
//       this.location,
//       this.slug,
//       this.faculty,
//       this.expirydate});

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'slug': slug,
//       'job_title': job_title,
//       ' job_specification': job_specification,
//       'experience': experience,
//       'job_type': job_type,
//       'salary': salary,
//       'location': location,
//       'education_level': education_level,
//       'faculty': faculty
//     };
//   }

//   factory JobsModel.fromMap(Map<String, dynamic> data) {
//     return JobsModel(
//         id: data['id'],
//         slug: data['slug'],
//         job_specification: data['job_specification'],
//         job_title: data['job_title'],
//         job_type: data['job_type'],
//         salary: data['salary'],
//         education_level: data['education_level'],
//         experience: data['experience'],
//         faculty: data['faculty'],
//         location: data['location']);
//   }

//   JobsModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     slug = json['slug'];
//     job_specification = json['job_specification'];
//     job_title = json['job_title'];
//     job_type = json['job_type'];
//     salary:
//     json['salary'];
//     education_level:
//     json['education_level'];
//     experience:
//     json['experience'];
//     faculty:
//     json['faculty'];
//     location:
//     json['location'];
//   }
// }

// To parse this JSON data, do
//
//     final jobsModel = jobsModelFromJson(jsonString);

import 'dart:convert';

JobsModel jobsModelFromJson(String str) => JobsModel.fromJson(json.decode(str));

String jobsModelToJson(JobsModel data) => json.encode(data.toJson());

class JobsModel {
  JobsModel({
    this.id,
    this.companyId,
    this.jobTitle,
    this.slug,
    this.jobType,
    this.jobSpecification,
    this.salary,
    this.experience,
    this.expiryDate,
    this.educationLevel,
    this.faculty,
    this.location,
    this.jobDetail,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.company,
  });

  int? id;
  int? companyId;
  String? jobTitle;
  String? slug;
  String? jobType;
  String? jobSpecification;
  String? salary;
  String? experience;
  DateTime? expiryDate;
  String? educationLevel;
  String? faculty;
  String? location;
  String? jobDetail;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  Company? company;

  factory JobsModel.fromJson(Map<String, dynamic> json) => JobsModel(
        id: json["id"],
        companyId: json["company_id"],
        jobTitle: json["job_title"],
        slug: json["slug"],
        jobType: json["job_type"],
        jobSpecification: json["job_specification"],
        salary: json["salary"],
        experience: json["experience"],
        expiryDate: DateTime.parse(json["expiry_date"]),
        educationLevel: json["education_level"],
        faculty: json["faculty"],
        location: json["location"],
        jobDetail: json["job_detail"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        company: Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "company_id": companyId,
        "job_title": jobTitle,
        "slug": slug,
        "job_type": jobType,
        "job_specification": jobSpecification,
        "salary": salary,
        "experience": experience,
        "expiry_date":
            "${expiryDate?.year.toString().padLeft(4, '0')}-${expiryDate?.month.toString().padLeft(2, '0')}-${expiryDate?.day.toString().padLeft(2, '0')}",
        "education_level": educationLevel,
        "faculty": faculty,
        "location": location,
        "job_detail": jobDetail,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "company": company?.toJson(),
      };
}

class Company {
  Company({
    this.id,
    this.companyName,
    this.image,
    this.companyPhoneNo,
    this.companyMobileNo,
    this.companyEmail,
    this.companyPassword,
    this.companyType,
    this.companyAddress,
    this.companyDescription,
    this.slug,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? companyName;
  String? image;
  String? companyPhoneNo;
  String? companyMobileNo;
  String? companyEmail;
  String? companyPassword;
  String? companyType;
  String? companyAddress;
  String? companyDescription;
  String? slug;
  dynamic? createdAt;
  dynamic? updatedAt;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        id: json["id"],
        companyName: json["company_name"],
        image: json["image"],
        companyPhoneNo: json["company_phone_no"],
        companyMobileNo: json["company_mobile_no"],
        companyEmail: json["company_email"],
        companyPassword: json["company_password"],
        companyType: json["company_type"],
        companyAddress: json["company_address"],
        companyDescription: json["company_description"],
        slug: json["slug"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "company_name": companyName,
        "image": image,
        "company_phone_no": companyPhoneNo,
        "company_mobile_no": companyMobileNo,
        "company_email": companyEmail,
        "company_password": companyPassword,
        "company_type": companyType,
        "company_address": companyAddress,
        "company_description": companyDescription,
        "slug": slug,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
