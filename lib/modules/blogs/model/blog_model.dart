import 'dart:convert';
import 'dart:io';

class BlogModel {
  String? id;
  String? title;
  String? image;
  String? description;
  String? seo_title;
  String? seo_keyword;
  String? status;
  String? slug;
  DateTime? createdAt;
  DateTime? updatedAt;
  BlogModel(
      {this.id,
      this.title,
      this.description,
      this.seo_keyword,
      this.seo_title,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.slug,
      this.image});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'seo_title': seo_title,
      'seo_keyword': seo_keyword,
      'slug': slug,
      'status': status,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory BlogModel.fromMap(Map<String, dynamic> data) {
    return BlogModel(
        id: data['id'],
        title: data['title'],
        description: data['description'],
        image: data['image'],
        seo_keyword: data['seo_keyword'],
        seo_title: data['seo_title'],
        status: data['status'],
        slug: data['slug'],
        createdAt: data['createdAt'],
        updatedAt: data['updatedAt']);
  }

  BlogModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    seo_keyword = json['seo_keyword'];
    status = json['status'];
    seo_title = json['seo_title'];
    slug = json['slug'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
}
