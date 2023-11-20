import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'YouTube Clone',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {
                print('click');
              },
              icon: const Icon(Icons.featured_video_outlined),
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {
                print('click');
              },
              icon: const Icon(Icons.search),
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {
                print('click');
              },
              icon: const Icon(Icons.more_vert_sharp),
            ),
            const SizedBox(width: 20),
          ],
        ),
        body: Container(
          color: Colors.black,
          child: MovieTiles(),
        ));
  }
}

class MovieTiles extends StatelessWidget {
  final List<Map> entries = <Map<String, String>>[
    {
      'path': 'https://i.ytimg.com/vi/m0GwHNBxvHw/maxresdefault.jpg',
      'title': 'What is happening with Flutter',
    },
    {
      'path': 'https://i.ytimg.com/vi/oi6zk7cVHUw/maxresdefault.jpg',
      'title': 'Introducing the Flutter Casual Games Toolkit',
    },
    {
      'path': 'https://i.ytimg.com/vi/yopCfhepAsM/maxresdefault.jpg',
      'title':
          'Build UI for Flutter in Minutes: Introducing FlutterFlow UI package',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Image.network(entries[index]['path'], fit: BoxFit.cover),
                const SizedBox(width: 12),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entries[index]['title'],
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                      maxLines: 3,
                    ),
                    const Text(
                      '1000回再生・1日前',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    )
                  ],
                )),
              ],
            ),
          );
        });
  }
}
