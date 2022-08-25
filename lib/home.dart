import 'package:flutter/material.dart';
import 'package:travel_app/widgets/most_popular.dart';
import 'package:travel_app/widgets/travel_blog.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
                top: 10.0, right: 15.0, left: 15.0, bottom: 0.0),
            child: Text(
              'Travel App',
              style: TextStyle(fontSize: 36),
            ),
          ),
          Expanded(flex: 2, child: TarvelBlog()),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, right: 15.0, left: 15.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Most Popular',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'View more',
                  style: TextStyle(fontSize: 16, color: Colors.deepOrange),
                ),
              ],
            ),
          ),
          Expanded(flex: 1, child: MostPopular()),
        ],
      ),
    );
  }
}
