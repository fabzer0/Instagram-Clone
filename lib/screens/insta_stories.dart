import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Text(
        'Stories',
        style: new TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text(
            'Watch All',
            style: new TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )
    ]
  );

  final stories = new Expanded(
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => new Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          new Container(
            width: 60.0,
            height: 60.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage('https://media.gettyimages.com/photos/rihanna-attends-the-fenty-exclusive-preview-on-may-23-2019-in-paris-picture-id1151257263?s=2048x2048')
              )
            ),
            margin: EdgeInsets.symmetric(horizontal: 8.0),
          ),

          index == 0 ? Positioned(
            right: 10.0,
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 10.0,
              child: new Icon(Icons.add, size: 14.0, color: Colors.white),
            ),
          ) : new Container()
        ],
      ),
    ),
  );

  @override 
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}