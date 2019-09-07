// To parse this JSON data, do
//
//     final unsplashResponse = unsplashResponseFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

part 'unsplash.model.g.dart';


@JsonSerializable(explicitToJson: true)
class UnsplashResponse {
    String id;
    DateTime createdAt;
    DateTime updatedAt;
    int width;
    int height;
    String color;
    dynamic description;
    String altDescription;
    Urls urls;
    UnsplashResponseLinks links;
    List<dynamic> categories;
    int likes;
    bool likedByUser;
    List<dynamic> currentUserCollections;
    User user;
    Exif exif;
    Location location;
    int views;
    int downloads;

    UnsplashResponse({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.width,
        this.height,
        this.color,
        this.description,
        this.altDescription,
        this.urls,
        this.links,
        this.categories,
        this.likes,
        this.likedByUser,
        this.currentUserCollections,
        this.user,
        this.exif,
        this.location,
        this.views,
        this.downloads,
    });

    factory UnsplashResponse.fromJson(Map<String, dynamic> json) =>
        _$UnsplashResponseFromJson(json);

    Map<String, dynamic> toJson() => _$UnsplashResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Exif {
    String make;
    String model;
    String exposureTime;
    String aperture;
    String focalLength;
    int iso;

    Exif({
        this.make,
        this.model,
        this.exposureTime,
        this.aperture,
        this.focalLength,
        this.iso,
    });

    factory Exif.fromJson(Map<String, dynamic> json) =>
        _$ExifFromJson(json);

    Map<String, dynamic> toJson() => _$ExifToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UnsplashResponseLinks {
    String self;
    String html;
    String download;
    String downloadLocation;

    UnsplashResponseLinks({
        this.self,
        this.html,
        this.download,
        this.downloadLocation,
    });

    factory UnsplashResponseLinks.fromJson(Map<String, dynamic> json) =>
        _$UnsplashResponseLinksFromJson(json);

    Map<String, dynamic> toJson() => _$UnsplashResponseLinksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location {
    dynamic title;
    dynamic name;
    dynamic city;
    dynamic country;
    Position position;

    Location({
        this.title,
        this.name,
        this.city,
        this.country,
        this.position,
    });

    factory Location.fromJson(Map<String, dynamic> json) =>
        _$LocationFromJson(json);

    Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Position {
    dynamic latitude;
    dynamic longitude;

    Position({
        this.latitude,
        this.longitude,
    });

    factory Position.fromJson(Map<String, dynamic> json) =>
        _$PositionFromJson(json);

    Map<String, dynamic> toJson() => _$PositionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Urls {
    String raw;
    String full;
    String regular;
    String small;
    String thumb;

    Urls({
        this.raw,
        this.full,
        this.regular,
        this.small,
        this.thumb,
    });

    factory Urls.fromJson(Map<String, dynamic> json) =>
        _$UrlsFromJson(json);

    Map<String, dynamic> toJson() => _$UrlsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User {
    String id;
    DateTime updatedAt;
    String username;
    String name;
    String firstName;
    String lastName;
    dynamic twitterUsername;
    String portfolioUrl;
    String bio;
    String location;
    UserLinks links;
    ProfileImage profileImage;
    String instagramUsername;
    int totalCollections;
    int totalLikes;
    int totalPhotos;
    bool acceptedTos;

    User({
        this.id,
        this.updatedAt,
        this.username,
        this.name,
        this.firstName,
        this.lastName,
        this.twitterUsername,
        this.portfolioUrl,
        this.bio,
        this.location,
        this.links,
        this.profileImage,
        this.instagramUsername,
        this.totalCollections,
        this.totalLikes,
        this.totalPhotos,
        this.acceptedTos,
    });

    factory User.fromJson(Map<String, dynamic> json) =>
        _$UserFromJson(json);

    Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserLinks {
    String self;
    String html;
    String photos;
    String likes;
    String portfolio;
    String following;
    String followers;

    UserLinks({
        this.self,
        this.html,
        this.photos,
        this.likes,
        this.portfolio,
        this.following,
        this.followers,
    });

    factory UserLinks.fromJson(Map<String, dynamic> json) =>
        _$UserLinksFromJson(json);

    Map<String, dynamic> toJson() => _$UserLinksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProfileImage {
    String small;
    String medium;
    String large;

    ProfileImage({
        this.small,
        this.medium,
        this.large,
    });

    factory ProfileImage.fromJson(Map<String, dynamic> json) =>
        _$ProfileImageFromJson(json);

    Map<String, dynamic> toJson() => _$ProfileImageToJson(this);
}
