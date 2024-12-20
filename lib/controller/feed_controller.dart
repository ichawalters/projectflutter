import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/feed.dart';
import 'package:flutter_application_1/model/feed_repository.dart';

class FeedController extends ChangeNotifier{
  List<Feed> feeds = FeedRepository().fetch();
    int get length => feeds.length;

    Feed feed(int index){
      return feeds[index];
    }

    like(Feed feed){
      feeds
        .firstWhere(
        (element) => element.id == feed.id,
        )
        .content.isLike = !feed.content.isLike;
      notifyListeners();
    }

    bookmark(Feed feed){
      feeds
        .firstWhere(
        (element) => element.id == feed.id,
        )
        .content.bookmark = !feed.content.bookmark;
      notifyListeners();
    }
    
    List<Feed> get bookmarkedFeeds => feeds.where((feed)=>feed.content.bookmark).toList();
    
    refresh(){
      feeds = FeedRepository().fetch();
      notifyListeners();
    }
}