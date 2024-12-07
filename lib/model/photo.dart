class Photo {
  String? id;
  String? altDescription;
  Urls? urls;
  int? likes;
  String? likedByUser;
  User? user;
  ProfileImage? profileImage;


  Photo({
    required this.id, 
    required this.altDescription, 
    required this.urls,
    required this.likes,
    required this.likedByUser,
    required this.user,
    required this.profileImage
    });

  Photo.fromJson(Map<String, dynamic>json){
    id = json ['id'];
    altDescription = json ['alt_description'];
    urls = json ['urls'];
    likes = json ['likes'];
    likedByUser = json ['liked_by_user'];
    user = json ['user'];
    profileImage = json ['profile_image'];
  }   

  Map<String, dynamic>toJson(){
    final Map<String, dynamic>data=<String,dynamic>{};
    data['id'] = id;
    data['altDescription'] = altDescription;
    data['urls'] = urls;
    data['likes'] = likes;
    data['likedByUser'] = likedByUser;
    data['user'] = user;
    data['profileImage'] = profileImage;
    return data;
  } 
}

class Urls {
  String? regular;

  Urls({
    required this.regular
    });

  Urls.fromJson(Map<String, dynamic>json){
    regular = json ['regular'];
  }   

  Map<String, dynamic>toJson(){
    final Map<String, dynamic>data=<String,dynamic>{};
    data['regular'] = regular;
    return data;
  } 
}

class User {
  String? id;
  String? username;
  String? name;
  String? firstname;
  String? lastname; 
  String? twitterUsername; 

  User({
    required this.id, 
    required this.username, 
    required this.name, 
    required this.firstname,
    required this.lastname,
    required this.twitterUsername,
    });

  User.fromJson(Map<String, dynamic>json){
    id = json ['id'];
    username = json ['username'];
    name = json ['name'];
    firstname = json ['firstname'];
    lastname = json ['lastname'];
    twitterUsername = json ['twitter_username'];
  }   

  Map<String, dynamic>toJson(){
    final Map<String, dynamic>data=<String,dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['name'] = name;
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['twitterUsername'] = twitterUsername;
    return data;
  } 
}

class ProfileImage{
  String? small;

  ProfileImage({
    required this.small
    });

  ProfileImage.fromJson(Map<String, dynamic>json){
    small = json ['small'];
  }   

  Map<String, dynamic>toJson(){
    final Map<String, dynamic>data=<String,dynamic>{};
    data['small'] = small;
    return data;
  } 
}