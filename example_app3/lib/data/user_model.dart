import 'dart:convert';

class UserModel {
    int? userId;
    int? id;
    String? title;
    bool? completed;

    UserModel({
        this.userId,
        this.id,
        this.title,
        this.completed,
    });

    UserModel copyWith({
        int? userId,
        int? id,
        String? title,
        bool? completed,
    }) => 
        UserModel(
            userId: userId ?? this.userId,
            id: id ?? this.id,
            title: title ?? this.title,
            completed: completed ?? this.completed,
        );

    factory UserModel.fromRawJson(String str) => UserModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}