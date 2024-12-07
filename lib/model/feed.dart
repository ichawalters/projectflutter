class Feed {
  final int id;
  final User user;
  final Content content;

  Feed({
    required this.id, 
    required this.user, 
    required this.content
    });
}

class Content {
  final String image;
  final String likes;
  final String description;
  bool isLike;
  bool bookmark;

  Content({
    required this.image, 
    required this.likes, 
    required this.description,
    required this.isLike,
    required this.bookmark
    });
}

class User {
final String name;
final String avatar;
final String place;

  User({
    required this.name, 
    required this.avatar, 
    required this.place
    });
}

// User.fromJson(Map<String, dynamic> json) {
//       name = json [''];
//       avatar = json [''];
//       place = json [''];
//     }

//      Map<String, dynamic> toJson(){
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data ['name'] = name;
//       data ['avatar'] = avatar;
//       data ['place'] = place;
//       return data;
//     }

//       Feed.fromJson(Map<String, dynamic> json) {
//       id = json ['id'];
//       user = json ['user'] !=null? User.fromJson(json['user']);
//       null; 
//     }

//      Map<String, dynamic> toJson(){
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data ['id'] = id;
//       if(user!=null) {
//         data['user'] = user.toJson();
//       }
//       return data;
//     }

