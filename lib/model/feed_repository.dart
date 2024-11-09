import 'package:flutter_application_1/model/feed.dart';

class FeedRepository {
  fetch(){
    return [
    Feed(
      id: 1,
      user: User(
        name: 'Anabella', 
        avatar: 'https://images.pexels.com/photos/2168399/pexels-photo-2168399.jpeg?auto=compress&cs=tinysrgb&w=600', 
        place: 'Bandung, Indonesia'
        ), 
      content: Content(
        isLike: false,
        bookmark: false,
        image: 'https://images.pexels.com/photos/2168397/pexels-photo-2168397.jpeg?auto=compress&cs=tinysrgb&w=600', 
        likes:'25.973 likes', 
        description: 'aww gemayy'
        )),
    Feed(
      id: 2,
      user: User(
        name: 'Georgia', 
        avatar: 'https://images.pexels.com/photos/8384391/pexels-photo-8384391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
        place: 'Jakarta, Indonesia'
        ), 
      content: Content(
        isLike: false,
        bookmark: false,
        image: 'https://images.pexels.com/photos/36029/aroni-arsa-children-little.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
        likes:'25.973 likes', 
        description: 'lucu bgt plisss<3!!!'
        )),
    Feed(
      id: 3,
      user: User(
        name: 'Adzkia', 
        avatar: 'https://images.pexels.com/photos/27487151/pexels-photo-27487151/free-photo-of-a-little-girl-wearing-glasses-and-a-hat-sitting-on-a-chair.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', 
        place: 'Yogyakarta, Indonesia'
        ), 
      content: Content(
        isLike: false,
        bookmark: false,
        image: 'https://images.pexels.com/photos/27487167/pexels-photo-27487167/free-photo-of-a-little-girl-in-a-striped-dress-and-hat.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
        likes:'25.973 likes', 
        description: 'keren bgtt<3'
        ))    
  ];
  }
}