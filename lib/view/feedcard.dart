import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/feed.dart';

class FeedCard extends StatelessWidget {
  final Feed feed;

  const FeedCard({
    super.key, 
    required this.feed,
  });

  @override
  Widget build(BuildContext context) {
    const url =
        'https://images.pexels.com/photos/2168399/pexels-photo-2168399.jpeg?auto=compress&cs=tinysrgb&w=600';
    return Card(
      child: Column(
        children: [
          //header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(feed.user.avatar),
            ),
            title: Text(feed.user.name),
            subtitle: Text(feed.user.place),
            trailing: const Icon(Icons.more_vert),
          ),
          //content
          Image.network(
            feed.content.image,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.8,
            fit: BoxFit.cover,
          ),
          //footer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Row(children: const [
              Icon(Icons.favorite),
              SizedBox(width: 10),
              Icon(Icons.comment),
              SizedBox(width: 10),
              Icon(Icons.share),
              Spacer(
                flex: 1,
              ),
              Padding(padding: const EdgeInsets.only(right: 8.0)),
              Icon(Icons.bookmark)
            ]),
          ),
          ListTile(
            title: Text(feed.content.likes),
            subtitle: Text(feed.content.description),
          )
        ],
      ),
    );
  }
}
