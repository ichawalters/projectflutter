import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const url =
        'https://images.pexels.com/photos/2168399/pexels-photo-2168399.jpeg?auto=compress&cs=tinysrgb&w=600';
    return Card(
      child: Column(
        children: [
          //header
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(url),
            ),
            title: Text('Name'),
            subtitle: Text('Status'),
            trailing: Icon(Icons.arrow_right),
          ),
          //content
          Image.network(
            'https://images.pexels.com/photos/2168397/pexels-photo-2168397.jpeg?auto=compress&cs=tinysrgb&w=600',
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
            title: Text('25633 likes'),
            subtitle: Text('keren!'),
          )
        ],
      ),
    );
  }
}
