import 'dart:convert';
import 'dart:io';

class InfoModel {
  String? id;
  String? image;
  String? description;
  String? seo_title;
  String? seo_keyword;
  String? slug;
  DateTime? createdAt;
  DateTime? updatedAt;
  InfoModel(
      {this.id,
      this.description,
      this.seo_keyword,
      this.seo_title,
      this.createdAt,
      this.updatedAt,
      this.slug,
      this.image});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'image': image,
      'seo_title': seo_title,
      'seo_keyword': seo_keyword,
      'slug': slug,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory InfoModel.fromMap(Map<String, dynamic> data) {
    return InfoModel(
        id: data['id'],
        description: data['description'],
        image: data['image'],
        seo_keyword: data['seo_keyword'],
        seo_title: data['seo_title'],
        slug: data['slug'],
        createdAt: data['createdAt'],
        updatedAt: data['updatedAt']);
  }

  InfoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    image = json['image'];
    seo_keyword = json['seo_keyword'];
    seo_title = json['seo_title'];
    slug = json['slug'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
}
