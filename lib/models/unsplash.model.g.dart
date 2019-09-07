// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnsplashResponse _$UnsplashResponseFromJson(Map<String, dynamic> json) {
  return UnsplashResponse(
      total: json['total'] as int,
      totalPages: json['totalPages'] as int,
      results: (json['results'] as List)
          ?.map((e) =>
              e == null ? null : Result.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$UnsplashResponseToJson(UnsplashResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalPages': instance.totalPages,
      'results': instance.results?.map((e) => e?.toJson())?.toList()
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
      id: json['id'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      width: json['width'] as int,
      height: json['height'] as int,
      color: json['color'] as String,
      description: json['description'] as String,
      altDescription: json['altDescription'] as String,
      urls: json['urls'] == null
          ? null
          : Urls.fromJson(json['urls'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : ResultLinks.fromJson(json['links'] as Map<String, dynamic>),
      categories: json['categories'] as List,
      likes: json['likes'] as int,
      likedByUser: json['likedByUser'] as bool,
      currentUserCollections: json['currentUserCollections'] as List,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      tags: (json['tags'] as List)
          ?.map(
              (e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'urls': instance.urls?.toJson(),
      'links': instance.links?.toJson(),
      'categories': instance.categories,
      'likes': instance.likes,
      'likedByUser': instance.likedByUser,
      'currentUserCollections': instance.currentUserCollections,
      'user': instance.user?.toJson(),
      'tags': instance.tags?.map((e) => e?.toJson())?.toList()
    };

ResultLinks _$ResultLinksFromJson(Map<String, dynamic> json) {
  return ResultLinks(
      self: json['self'] as String,
      html: json['html'] as String,
      download: json['download'] as String,
      downloadLocation: json['downloadLocation'] as String);
}

Map<String, dynamic> _$ResultLinksToJson(ResultLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'download': instance.download,
      'downloadLocation': instance.downloadLocation
    };

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
      type: json['type'] as String,
      title: json['title'] as String,
      source: json['source'] == null
          ? null
          : Source.fromJson(json['source'] as Map<String, dynamic>));
}

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'source': instance.source?.toJson()
    };

Source _$SourceFromJson(Map<String, dynamic> json) {
  return Source(
      ancestry: json['ancestry'] == null
          ? null
          : Ancestry.fromJson(json['ancestry'] as Map<String, dynamic>),
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      description: json['description'] as String,
      metaTitle: json['metaTitle'] as String,
      metaDescription: json['metaDescription'] as String,
      coverPhoto: json['coverPhoto'] == null
          ? null
          : CoverPhoto.fromJson(json['coverPhoto'] as Map<String, dynamic>));
}

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'ancestry': instance.ancestry?.toJson(),
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'coverPhoto': instance.coverPhoto?.toJson()
    };

Ancestry _$AncestryFromJson(Map<String, dynamic> json) {
  return Ancestry(
      type: json['type'] == null
          ? null
          : Category.fromJson(json['type'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : Category.fromJson(json['subcategory'] as Map<String, dynamic>));
}

Map<String, dynamic> _$AncestryToJson(Ancestry instance) => <String, dynamic>{
      'type': instance.type?.toJson(),
      'category': instance.category?.toJson(),
      'subcategory': instance.subcategory?.toJson()
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
      slug: json['slug'] as String, prettySlug: json['prettySlug'] as String);
}

Map<String, dynamic> _$CategoryToJson(Category instance) =>
    <String, dynamic>{'slug': instance.slug, 'prettySlug': instance.prettySlug};

CoverPhoto _$CoverPhotoFromJson(Map<String, dynamic> json) {
  return CoverPhoto(
      id: json['id'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      width: json['width'] as int,
      height: json['height'] as int,
      color: json['color'] as String,
      description: json['description'] as String,
      altDescription: json['altDescription'] as String,
      urls: json['urls'] == null
          ? null
          : Urls.fromJson(json['urls'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : ResultLinks.fromJson(json['links'] as Map<String, dynamic>),
      categories: json['categories'] as List,
      likes: json['likes'] as int,
      likedByUser: json['likedByUser'] as bool,
      currentUserCollections: json['currentUserCollections'] as List,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>));
}

Map<String, dynamic> _$CoverPhotoToJson(CoverPhoto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'urls': instance.urls?.toJson(),
      'links': instance.links?.toJson(),
      'categories': instance.categories,
      'likes': instance.likes,
      'likedByUser': instance.likedByUser,
      'currentUserCollections': instance.currentUserCollections,
      'user': instance.user?.toJson()
    };

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return Urls(
      raw: json['raw'] as String,
      full: json['full'] as String,
      regular: json['regular'] as String,
      small: json['small'] as String,
      thumb: json['thumb'] as String);
}

Map<String, dynamic> _$UrlsToJson(Urls instance) => <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      id: json['id'] as String,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      username: json['username'] as String,
      name: json['name'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      twitterUsername: json['twitterUsername'] as String,
      portfolioUrl: json['portfolioUrl'] as String,
      bio: json['bio'] as String,
      location: json['location'] as String,
      links: json['links'] == null
          ? null
          : UserLinks.fromJson(json['links'] as Map<String, dynamic>),
      profileImage: json['profileImage'] == null
          ? null
          : ProfileImage.fromJson(json['profileImage'] as Map<String, dynamic>),
      instagramUsername: json['instagramUsername'] as String,
      totalCollections: json['totalCollections'] as int,
      totalLikes: json['totalLikes'] as int,
      totalPhotos: json['totalPhotos'] as int,
      acceptedTos: json['acceptedTos'] as bool);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'username': instance.username,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'twitterUsername': instance.twitterUsername,
      'portfolioUrl': instance.portfolioUrl,
      'bio': instance.bio,
      'location': instance.location,
      'links': instance.links?.toJson(),
      'profileImage': instance.profileImage?.toJson(),
      'instagramUsername': instance.instagramUsername,
      'totalCollections': instance.totalCollections,
      'totalLikes': instance.totalLikes,
      'totalPhotos': instance.totalPhotos,
      'acceptedTos': instance.acceptedTos
    };

UserLinks _$UserLinksFromJson(Map<String, dynamic> json) {
  return UserLinks(
      self: json['self'] as String,
      html: json['html'] as String,
      photos: json['photos'] as String,
      likes: json['likes'] as String,
      portfolio: json['portfolio'] as String,
      following: json['following'] as String,
      followers: json['followers'] as String);
}

Map<String, dynamic> _$UserLinksToJson(UserLinks instance) => <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'photos': instance.photos,
      'likes': instance.likes,
      'portfolio': instance.portfolio,
      'following': instance.following,
      'followers': instance.followers
    };

ProfileImage _$ProfileImageFromJson(Map<String, dynamic> json) {
  return ProfileImage(
      small: json['small'] as String,
      medium: json['medium'] as String,
      large: json['large'] as String);
}

Map<String, dynamic> _$ProfileImageToJson(ProfileImage instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large
    };
