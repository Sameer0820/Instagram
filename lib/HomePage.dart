import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/dm.dart';
import 'package:instagram/gradient_ring_widget.dart';
import 'package:instagram/insta_posts.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/search.dart';

void main() => runApp(MaterialApp(
    title: "Sign Up", home: HomePage(), debugShowCheckedModeBanner: false));

class HomePage extends StatelessWidget {
  final myList = [
    'Your Story',
    'Aditi_D',
    'Rohan39',
    'Vasu_34',
    'Shikha_Sr',
    'Unknown11',
    'Web_Ds',
    'Arbitrary',
    'Confession_page',
    '_neelesh_'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
            size: 28,
          ),
          title: SizedBox(
            child: Image.asset(
              'assets/logo.png',
              height: 40,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => DM()));
                },
                hoverColor: Colors.grey,
                child: Icon(
                  Icons.send_outlined,
                  color: Colors.black,
                  size: 28
                ),
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new WGradientRing(
                          child: Container(
                            width: 70,
                            height: 70,
                            margin: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/image$index.jpg",
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          myList[index],
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            Divider(
              height: 10,
            )
          ]),
        ),
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            Posts(
              picture: AssetImage('assets/image1.jpg'),
              pic: AssetImage('assets/pic1.jpeg'),
              name: ('Aditi_D'),
              caption:
                  ('It is such a beautiful place to enjoy your vacations.'),
              place: ('Milford Sound'),
            ),
            Posts(
              picture: AssetImage('assets/image2.jpg'),
              pic: AssetImage('assets/pic2.jpg'),
              name: ('Rohan39'),
              caption: ('One of my best pics. Clicked with Sony A7R Mark 3'),
              place: ('Plitvice Lakes'),
            ),
            Posts(
                picture: AssetImage('assets/image3.jpg'),
                pic: AssetImage('assets/pic3.jpeg'),
                name: ('Vasu_34'),
                caption: ('Eiffel Tower, named after engineer Gustave Eiffel'),
                place: ('New York')),
            Posts(
                picture: AssetImage('assets/image4.jpg'),
                pic: AssetImage('assets/pic4.jpg'),
                name: ('Shikha_Sr'),
                caption: ('Just a random click'),
                place: ('Home')),
            Posts(
                picture: AssetImage('assets/image5.jpg'),
                pic: AssetImage('assets/pic5.jpg'),
                name: ('Unknown11'),
                caption: ('Best place to enjoy your vacations.'),
                place: ('Angel Falls')),
            Posts(
                picture: AssetImage('assets/image6.jpg'),
                pic: AssetImage('assets/pic6.jpg'),
                name: ('Web_Ds'),
                caption: ('My office setup'),
                place: ('Banglore')),
            Posts(
                picture: AssetImage('assets/image7.jpg'),
                pic: AssetImage('assets/pic7.jpg'),
                name: ('Arbitrary'),
                caption: ('Enjoying Coffee'),
                place: ('CCD')),
            Posts(
                picture: AssetImage('assets/image8.jpg'),
                pic: AssetImage('assets/pic8.jpg'),
                name: ('Confession_page'),
                caption: ('Monsoon is here, YaY'),
                place: ('Delhi')),
            Posts(
                picture: AssetImage('assets/image9.jpg'),
                pic: AssetImage('assets/pic9.jpg'),
                name: ('_neelesh_'),
                caption: ('What a beautiful scenery. Always love this place.'),
                place: ('Nepal')),
            Posts(
                picture: AssetImage('assets/image10.jpg'),
                pic: AssetImage('assets/pic10.jpg'),
                name: ('Putin'),
                caption: ('Mississippi'),
                place: ('Chicago')),
          ]),
        ),
      ]),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50, 
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.home, size: 30,)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Search()));
                  },
                  icon: Icon(Icons.search, size: 30,)),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined, size: 30,)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border_outlined, size: 30,)),
              InkWell(
                child: Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/image0.jpg",
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}