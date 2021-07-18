import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/HomePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/profile.dart';

void main() => runApp(MaterialApp(
    title: "Sign Up", home: Search(), debugShowCheckedModeBanner: false));

class Search extends StatelessWidget {
  final List searchItems = [
    "IGTV",
    "Shop",
    "Sports",
    "Auto",
    "Decor",
    "Travel",
    "Architechture",
    "Food",
    "Art",
    "Style",
    "TV & Movies",
    "Music",
    "DIY",
    "Comics"
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(
              child: SizedBox(
                height: 15,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: size.width - 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]),
                  height: 30,
                  child: TextField(
                    autocorrect: true,
                    enableSuggestions: true,
                    enabled: true,
                    textAlign: TextAlign.left,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                    ),
                  ),
                ),
                Icon(Icons.camera_enhance_outlined),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                    children: List.generate(searchItems.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Text(
                          searchItems[index],
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  );
                })),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 1,
              runSpacing: 1,
              children: List.generate(
                15,
                (index) => Container(
                  width: (size.width - 3) / 3,
                  height: (size.width - 3) / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('img$index.jpg'))),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 40,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Icon(Icons.home_outlined)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.search,
                    size: 20,
                  )),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
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
                        "image0.jpg",
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
