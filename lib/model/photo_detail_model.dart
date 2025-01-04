// class Welcome {
//     String id;
//     String slug;
//     AlternativeSlugs alternativeSlugs;
//     DateTime createdAt;
//     DateTime updatedAt;
//     DateTime promotedAt;
//     int width;
//     int height;
//     String color;
//     String blurHash;
//     dynamic description;
//     String altDescription;
//     List<dynamic> breadcrumbs;
//     Urls urls;
//     WelcomeLinks links;
//     int likes;
//     bool likedByUser;
//     List<dynamic> currentUserCollections;
//     dynamic sponsorship;
//     TopicSubmissions topicSubmissions;
//     String assetType;
//     User user;
//     Exif exif;
//     Location location;
//     Meta meta;
//     bool publicDomain;
//     List<Tag> tags;
//     int views;
//     int downloads;
//     List<dynamic> topics;
//     RelatedCollections relatedCollections;

//     Welcome({
//         required this.id,
//         required this.slug,
//         required this.alternativeSlugs,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.promotedAt,
//         required this.width,
//         required this.height,
//         required this.color,
//         required this.blurHash,
//         required this.description,
//         required this.altDescription,
//         required this.breadcrumbs,
//         required this.urls,
//         required this.links,
//         required this.likes,
//         required this.likedByUser,
//         required this.currentUserCollections,
//         required this.sponsorship,
//         required this.topicSubmissions,
//         required this.assetType,
//         required this.user,
//         required this.exif,
//         required this.location,
//         required this.meta,
//         required this.publicDomain,
//         required this.tags,
//         required this.views,
//         required this.downloads,
//         required this.topics,
//         required this.relatedCollections,
//     });

   
// }


// class AlternativeSlugs {
//     String en;
//     String es;
//     String ja;
//     String fr;
//     String it;
//     String ko;
//     String de;
//     String pt;

//     AlternativeSlugs({
//         required this.en,
//         required this.es,
//         required this.ja,
//         required this.fr,
//         required this.it,
//         required this.ko,
//         required this.de,
//         required this.pt,
//     });
// factory AlternativeSlugs.fromMap(Map<String, dynamic> map) {
//     return AlternativeSlugs(
//       en: map['en'] ?? '',  
//       es: map['es'] ?? '',
//       ja: map['ja'] ?? '',
//       fr: map['fr'] ?? '',
//       it: map['it'] ?? '',
//       ko: map['ko'] ?? '',
//       de: map['de'] ?? '',
//       pt: map['pt'] ?? '',
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'en': en,
//       'es': es,
//       'ja': ja,
//       'fr': fr,
//       'it': it,
//       'ko': ko,
//       'de': de,
//       'pt': pt,
//     };
//   }
// }

// class Exif {
//     String make;
//     String model;
//     String name;
//     String exposureTime;
//     String aperture;
//     String focalLength;
//     int iso;

//     Exif({
//         required this.make,
//         required this.model,
//         required this.name,
//         required this.exposureTime,
//         required this.aperture,
//         required this.focalLength,
//         required this.iso,
//     });

//     factory Exif.fromMap(Map<String, dynamic> map) {
//     return Exif(
//       make: map['make'] ?? '',  
//       model: map['model'] ?? '',
//       name: map['name'] ?? '',
//       exposureTime: map['exposureTime'] ?? '',
//       aperture: map['aperture'] ?? '',
//       focalLength: map['focalLength'] ?? '',
//       iso: map['iso'] ?? 0,  
//     );
//   }

  
//   Map<String, dynamic> toMap() {
//     return {
//       'make': make,
//       'model': model,
//       'name': name,
//       'exposureTime': exposureTime,
//       'aperture': aperture,
//       'focalLength': focalLength,
//       'iso': iso,
//     };
//   }

// }

// class WelcomeLinks {
//     String self;
//     String html;
//     String download;
//     String downloadLocation;

//     WelcomeLinks({
//         required this.self,
//         required this.html,
//         required this.download,
//         required this.downloadLocation,
//     });
// factory WelcomeLinks.fromMap(Map<String, dynamic> map) {
//     return WelcomeLinks(
//       self: map['self'] ?? '',  
//       html: map['html'] ?? '',
//       download: map['download'] ?? '',
//       downloadLocation: map['downloadLocation'] ?? '',
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'self': self,
//       'html': html,
//       'download': download,
//       'downloadLocation': downloadLocation,
//     };
//   }

// }

// class Location {
//     dynamic name;
//     dynamic city;
//     dynamic country;
//     Position position;

//     Location({
//         required this.name,
//         required this.city,
//         required this.country,
//         required this.position,
//     });

//     factory Location.fromMap(Map<String, dynamic> map) {
//     return Location(
//       name: map['name'],  // Bisa null jika tidak ada
//       city: map['city'],  // Bisa null jika tidak ada
//       country: map['country'],  // Bisa null jika tidak ada
//       position: map['position'] != null
//           ? Position.fromMap(map['position'])  // Jika ada, konversikan ke objek Position
//           : Position(latitude: 0.0, longitude: 0.0),  // Objek Position default jika tidak ada
//     );
//   }

//   // toMap() method untuk mengonversi objek Location menjadi Map
//   Map<String, dynamic> toMap() {
//     return {
//       'name': name,
//       'city': city,
//       'country': country,
//       'position': position.toMap(),  // Konversi objek Position menjadi Map
//     };
//   }

// }

// class Position {
//     dynamic latitude;
//     dynamic longitude;

//     Position({
//         required this.latitude,
//         required this.longitude,
//     });

// }

// class Meta {
//     bool index;

//     Meta({
//         required this.index,
//     });

// }

// class RelatedCollections {
//     int total;
//     String type;
//     List<Result> results;

//     RelatedCollections({
//         required this.total,
//         required this.type,
//         required this.results,
//     });

// }

// class Result {
//     String id;
//     String title;
//     String? description;
//     DateTime publishedAt;
//     DateTime lastCollectedAt;
//     DateTime updatedAt;
//     bool featured;
//     int totalPhotos;
//     bool private;
//     String shareKey;
//     List<Tag> tags;
//     ResultLinks links;
//     User user;
//     CoverPhoto coverPhoto;
//     List<PreviewPhoto> previewPhotos;

//     Result({
//         required this.id,
//         required this.title,
//         required this.description,
//         required this.publishedAt,
//         required this.lastCollectedAt,
//         required this.updatedAt,
//         required this.featured,
//         required this.totalPhotos,
//         required this.private,
//         required this.shareKey,
//         required this.tags,
//         required this.links,
//         required this.user,
//         required this.coverPhoto,
//         required this.previewPhotos,
//     });

// }

// class CoverPhoto {
//     String id;
//     String slug;
//     AlternativeSlugs alternativeSlugs;
//     DateTime createdAt;
//     DateTime updatedAt;
//     DateTime promotedAt;
//     int width;
//     int height;
//     String color;
//     String blurHash;
//     String? description;
//     String altDescription;
//     List<dynamic> breadcrumbs;
//     Urls urls;
//     WelcomeLinks links;
//     int likes;
//     bool likedByUser;
//     List<dynamic> currentUserCollections;
//     dynamic sponsorship;
//     TopicSubmissions topicSubmissions;
//     String assetType;
//     User user;

//     CoverPhoto({
//         required this.id,
//         required this.slug,
//         required this.alternativeSlugs,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.promotedAt,
//         required this.width,
//         required this.height,
//         required this.color,
//         required this.blurHash,
//         required this.description,
//         required this.altDescription,
//         required this.breadcrumbs,
//         required this.urls,
//         required this.links,
//         required this.likes,
//         required this.likedByUser,
//         required this.currentUserCollections,
//         required this.sponsorship,
//         required this.topicSubmissions,
//         required this.assetType,
//         required this.user,
//     });

// }

// class TopicSubmissions {
//     TopicSubmissions();
// }

// class Urls {
//     String raw;
//     String full;
//     String regular;
//     String small;
//     String thumb;
//     String smallS3;

//     Urls({
//         required this.raw,
//         required this.full,
//         required this.regular,
//         required this.small,
//         required this.thumb,
//         required this.smallS3,
//     });

// }

// class User {
//     String id;
//     DateTime updatedAt;
//     String username;
//     String name;
//     String firstName;
//     String lastName;
//     String? twitterUsername;
//     String portfolioUrl;
//     String bio;
//     String location;
//     UserLinks links;
//     ProfileImage profileImage;
//     String? instagramUsername;
//     int totalCollections;
//     int totalLikes;
//     int totalPhotos;
//     int totalPromotedPhotos;
//     int totalIllustrations;
//     int totalPromotedIllustrations;
//     bool acceptedTos;
//     bool forHire;
//     Social social;

//     User({
//         required this.id,
//         required this.updatedAt,
//         required this.username,
//         required this.name,
//         required this.firstName,
//         required this.lastName,
//         required this.twitterUsername,
//         required this.portfolioUrl,
//         required this.bio,
//         required this.location,
//         required this.links,
//         required this.profileImage,
//         required this.instagramUsername,
//         required this.totalCollections,
//         required this.totalLikes,
//         required this.totalPhotos,
//         required this.totalPromotedPhotos,
//         required this.totalIllustrations,
//         required this.totalPromotedIllustrations,
//         required this.acceptedTos,
//         required this.forHire,
//         required this.social,
//     });

// }

// class UserLinks {
//     String self;
//     String html;
//     String photos;
//     String likes;
//     String portfolio;
//     String following;
//     String followers;

//     UserLinks({
//         required this.self,
//         required this.html,
//         required this.photos,
//         required this.likes,
//         required this.portfolio,
//         required this.following,
//         required this.followers,
//     });

// }

// class ProfileImage {
//     String small;
//     String medium;
//     String large;

//     ProfileImage({
//         required this.small,
//         required this.medium,
//         required this.large,
//     });

// }

// class Social {
//     String? instagramUsername;
//     String portfolioUrl;
//     String? twitterUsername;
//     dynamic paypalEmail;

//     Social({
//         required this.instagramUsername,
//         required this.portfolioUrl,
//         required this.twitterUsername,
//         required this.paypalEmail,
//     });

// }

// class ResultLinks {
//     String self;
//     String html;
//     String photos;
//     String related;

//     ResultLinks({
//         required this.self,
//         required this.html,
//         required this.photos,
//         required this.related,
//     });

// }

// class PreviewPhoto {
//     String id;
//     String slug;
//     DateTime createdAt;
//     DateTime updatedAt;
//     String blurHash;
//     String assetType;
//     Urls urls;

//     PreviewPhoto({
//         required this.id,
//         required this.slug,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.blurHash,
//         required this.assetType,
//         required this.urls,
//     });

// }

// class Tag {
//     Type type;
//     String title;

//     Tag({
//         required this.type,
//         required this.title,
//     });

// }

// enum Type {
//     SEARCH
// }
