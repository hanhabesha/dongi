// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class GroupModel {
  final String? id;
  final String title;
  final String? description;
  final String? image;
  final String creatorId;
  final List<Member> members;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  GroupModel({
    this.id,
    required this.title,
    this.description,
    this.image,
    required this.creatorId,
    required this.members,
    this.createdAt,
    this.updatedAt,
  });

  GroupModel copyWith({
    String? title,
    String? description,
    String? image,
    String? creatorId,
    List<Member>? members,
  }) {
    return GroupModel(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      creatorId: creatorId ?? this.creatorId,
      members: members ?? this.members,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'image': image,
      'creatorId': creatorId,
      'members': members.map((x) => x.toMap()).toList(),
    };
  }

  factory GroupModel.fromMap(Map<String, dynamic> map) {
    return GroupModel(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] as String,
      description:
          map['description'] != null ? map['description'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      creatorId: map['creatorId'] as String,
      members: List<Member>.from(
        (map['members'] as List<int>).map<Member>(
          (x) => Member.fromMap(x as Map<String, dynamic>),
        ),
      ),
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int)
          : null,
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory GroupModel.fromJson(String source) =>
      GroupModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GroupModel(id: $id, title: $title, description: $description, image: $image, creatorId: $creatorId, members: $members, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant GroupModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.image == image &&
        other.creatorId == creatorId &&
        listEquals(other.members, members) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        image.hashCode ^
        creatorId.hashCode ^
        members.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}

class Member {
  final String? id;
  final String name;
  final String? image;
  final String? userId;
  Member({
    this.id,
    required this.name,
    this.image,
    this.userId,
  });

  Member copyWith({
    String? id,
    String? name,
    String? image,
    String? userId,
  }) {
    return Member(
      name: name ?? this.name,
      image: image ?? this.image,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
      'userId': userId,
    };
  }

  factory Member.fromMap(Map<String, dynamic> map) {
    return Member(
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      userId: map['userId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Member.fromJson(String source) =>
      Member.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Member(id: $id, name: $name, image: $image, userId: $userId)';
  }

  @override
  bool operator ==(covariant Member other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.image == image &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ image.hashCode ^ userId.hashCode;
  }
}
