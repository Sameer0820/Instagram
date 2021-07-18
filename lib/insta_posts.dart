import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/gradient_ring_widget.dart';

class Posts extends StatefulWidget {
  final picture;
  final pic;
  final name;
  final place; 
  final caption;
  Posts(
      {Key? key,
      @required this.picture,
      @required this.pic, 
      @required this.name,
      @required this.place,
      @required this.caption})
      : super(key: key);
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  bool isPressed = false;
  bool ispressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 42, 
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  WGradientRing(
                      child: Container(
                      height: 35,
                      width: 35,
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, 
                          image: DecorationImage(
                              image: widget.picture, fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.name,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              letterSpacing: 1)),
                      Text(
                        widget.place,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w200,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert_outlined, size: 20,)
            ],
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Image(
            image: widget.pic,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                        isPressed ? Icons.favorite : FontAwesomeIcons.heart),
                    color: isPressed ? Colors.red : Colors.black,
                    iconSize: 20,
                    onPressed: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                      if (isPressed == true) {
                        SnackBar mySnackbar = SnackBar(
                          content: Text(
                            "You Have Liked the Post",
                            style: TextStyle(color: Colors.blue),
                            textAlign: TextAlign.center,
                          ),
                          width: 300.0,
                          backgroundColor: Colors.white,
                          duration: Duration(milliseconds: 2000),
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(mySnackbar);
                      }
                    },
                  ),
                  Icon(FontAwesomeIcons.comment, size: 20,),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(FontAwesomeIcons.paperPlane, size: 20,),
                ],
              ),
              IconButton(
                icon: Icon(
                    ispressed ? Icons.bookmark : FontAwesomeIcons.bookmark),
                color: Colors.black,
                iconSize: 20,
                onPressed: () {
                  setState(() {
                    ispressed = !ispressed;
                  });
                  if (ispressed == true) {
                    SnackBar mySnackbar = SnackBar(
                      content: Text(
                        "Saved to Collection",
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.center,
                      ),
                      width: 300.0,
                      backgroundColor: Colors.white,
                      duration: Duration(milliseconds: 2000),
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(mySnackbar);
                  }
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 1),
          child: Row(
            children: [
              Text(
                "Liked by Sameer08, _raghav121 and 44,686 others",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
          child: Row(
            children: [
              Text(
                widget.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                widget.caption,
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 3),
          child: Row(
            children: [
              Text(
                "1 Day Ago",
                style: TextStyle(fontSize: 9, color: Colors.grey),
              ),
            ],
          ),
        )
      ],
    );
  }
}
