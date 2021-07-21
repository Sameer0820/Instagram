import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/HomePage.dart';
import 'package:instagram/gradient_ring_widget.dart';
import 'package:instagram/search.dart';

void main() => runApp(MaterialApp(
    title: "Sign Up", home: Profile(), debugShowCheckedModeBanner: false));

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_outline_sharp,
                  color: Colors.black,
                  size: 20,
                ),
                Text(
                  'Sameer0820',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.black,
                  size: 30,
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 7, 15, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WGradientRing(
                    child: Container(
                      width: 85,
                      height: 85,
                      margin: const EdgeInsets.all(4),
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
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "54",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "834",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "162",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sameer Raj',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'IIT Guwahati',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'MnC 2024',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "If you keep questioning your worthiness, you're never gonna become worthy.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                width: size.width - 30,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.5),),
                    borderRadius: BorderRadius.circular(5)),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Edit Profile', 
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Wrap(
              spacing: 1,
              runSpacing: 1,
              children: List.generate(
                12,
                (index) => Container(
                  width: (size.width - 3) / 3,
                  height: (size.width - 3) / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/picture$index.jpg'))),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Icon(Icons.home_outlined, size: 30)),
              IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) => Search()));
                },
                icon: Icon(Icons.search, size: 30,),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined, size: 30,)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border_outlined, size: 30,)),
              InkWell(
                child: WGradientRing(
                  child: Container( 
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(3),
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
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
