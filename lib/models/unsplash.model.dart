import 'package:json_annotation/json_annotation.dart';

part 'unsplash.model.g.dart';


@JsonSerializable(explicitToJson: true)
class UnsplashResponse {
    int total;
    int totalPages;
    List<Result> results;

    UnsplashResponse({
        this.total,
        this.totalPages,
        this.results,
    });

    factory UnsplashResponse.fromJson(Map<String, dynamic> json) =>
        _$UnsplashResponseFromJson(json);

    Map<String, dynamic> toJson() => _$UnsplashResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Result {
    String id;
    DateTime createdAt;
    DateTime updatedAt;
    int width;
    int height;
    String color;
    String description;
    String altDescription;
    Urls urls;
    ResultLinks links;
    List<dynamic> categories;
    int likes;
    bool likedByUser;
    List<dynamic> currentUserCollections;
    User user;
    List<Tag> tags;

    Result({
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
        this.tags,
    });

    factory Result.fromJson(Map<String, dynamic> json) =>
        _$ResultFromJson(json);

    Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResultLinks {
    String self;
    String html;
    String download;
    String downloadLocation;

    ResultLinks({
        this.self,
        this.html,
        this.download,
        this.downloadLocation,
    });

    factory ResultLinks.fromJson(Map<String, dynamic> json) =>
        _$ResultLinksFromJson(json);

    Map<String, dynamic> toJson() => _$ResultLinksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Tag {
    String type;
    String title;
    Source source;

    Tag({
        this.type,
        this.title,
        this.source,
    });

    factory Tag.fromJson(Map<String, dynamic> json) =>
        _$TagFromJson(json);

    Map<String, dynamic> toJson() => _$TagToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Source {
    Ancestry ancestry;
    String title;
    String subtitle;
    String description;
    String metaTitle;
    String metaDescription;
    CoverPhoto coverPhoto;

    Source({
        this.ancestry,
        this.title,
        this.subtitle,
        this.description,
        this.metaTitle,
        this.metaDescription,
        this.coverPhoto,
    });

    factory Source.fromJson(Map<String, dynamic> json) =>
        _$SourceFromJson(json);

    Map<String, dynamic> toJson() => _$SourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ancestry {
    Category type;
    Category category;
    Category subcategory;

    Ancestry({
        this.type,
        this.category,
        this.subcategory,
    });

    factory Ancestry.fromJson(Map<String, dynamic> json) =>
        _$AncestryFromJson(json);

    Map<String, dynamic> toJson() => _$AncestryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Category {
    String slug;
    String prettySlug;

    Category({
        this.slug,
        this.prettySlug,
    });

    factory Category.fromJson(Map<String, dynamic> json) =>
        _$CategoryFromJson(json);

    Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverPhoto {
    String id;
    DateTime createdAt;
    DateTime updatedAt;
    int width;
    int height;
    String color;
    String description;
    String altDescription;
    Urls urls;
    ResultLinks links;
    List<dynamic> categories;
    int likes;
    bool likedByUser;
    List<dynamic> currentUserCollections;
    User user;

    CoverPhoto({
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
    });

    factory CoverPhoto.fromJson(Map<String, dynamic> json) =>
        _$CoverPhotoFromJson(json);

    Map<String, dynamic> toJson() => _$CoverPhotoToJson(this);
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
    String twitterUsername;
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
