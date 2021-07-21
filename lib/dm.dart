import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/Listtile.dart';

void main() => runApp(MaterialApp(
    title: "Sign Up", home: DM(), debugShowCheckedModeBanner: false));

class DM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
            size: 24,
          ),
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                width: size.width - 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300]),
                height: 35,
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
                    prefixIcon: Icon(Icons.search, color: Colors.black38),
                  ),
                ),
              ),
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  Listtile(
                    text1: ('Aditi_D'),
                    text2: ('See you tomorrow, bye..'),
                    text3: ('.now'),
                    image: ("assets/image1.jpg"),
                  ),
                  Listtile(
                    text1: ('Rohan39'),
                    text2: ('Have a nice day, bro!'),
                    text3: ('.15 m'),
                    image: ('assets/image2.jpg'),
                  ),
                  Listtile(
                    text1: ('Vasu_34'),
                    text2: ('See you in the next meeting'),
                    text3: ('.30m'),
                    image: ('assets/image3.jpg'),
                  ),
                  Listtile(
                    text1: ('Shikha_Sr'),
                    text2: ('Please bring my project'),
                    text3: ('.2h'),
                    image: ('assets/image4.jpg'),
                  ),
                  Listtile(
                    text1: ('Unknown11'),
                    text2: ('This new design looks cool'),
                    text3: ('.5h'),
                    image: ('assets/image5.jpg'),
                  ),
                  Listtile(
                    text1: ('Web_Ds'),
                    text2: ('This was very funny'),
                    text3: ('.8h'),
                    image: ('assets/image6.jpg'),
                  ),
                  Listtile(
                    text1: ('Arbitrary'),
                    text2: ('Sounds good XD'),
                    text3: ('.12h'),
                    image: ('assets/image7.jpg'),
                  ),
                  Listtile(
                    text1: ('Confession_Page'),
                    text2: ('Who wrote this message?'),
                    text3: ('.15h'),
                    image: ('assets/image8.jpg'),
                  ),
                  Listtile(
                    text1: ('_neelesh_'),
                    text2: ('Yep, I am going to Manali tomorrow'),
                    text3: ('.22h'),
                    image: ('assets/image9.jpg'),
                  ),
                  Listtile(
                    text1: ('putin'),
                    text2: ('When will you destroy America?'),
                    text3: ('2d'),
                    image: ('assets/image10.jpg'),
                  ),
                ],
              )],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 40,
        child: BottomAppBar(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.camera_alt,
              color: Colors.blue,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Camera",
              style: TextStyle(color: Colors.blue),
            )
          ],
        )),
      ),
    );
  }
}
