import 'package:page_view_demo/Constant/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class HomeScreen extends StatelessWidget {
  static const length = 3;
  final pageIndexNotifier = ValueNotifier<int>(0);
  List<String> imageList = new List();

  HomeScreen();

  //String userName;

  @override
  Widget build(BuildContext context) {
    imageList.add("assets/images/iphone_xs_banner.png");
    imageList.add("assets/images/pixel_3_banner.png");
    imageList.add("assets/images/iphone_xs_banner.png");
    return new Scaffold(
        body: Container(
            color: Color(0xFFDCDCDC),
            child: Column(
              children: <Widget>[
                Container(
                  height: 270.0,
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: FractionalOffset.bottomCenter,
                    children: <Widget>[
                      PageView.builder(
                        onPageChanged: (index) =>
                            pageIndexNotifier.value = index,
                        itemCount: length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                //decoration: BoxDecoration(color: Colors.accents[index]),
                                child: new Image.asset(
                                  imageList[index],
                                  width: 200.0,
                                  height: 200.0,
                                ),
                              ));
                        },
                      ),
                       _buildExample1()
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.map),
                          title: Text('Map'),
                        ),
                        ListTile(
                          leading: Icon(Icons.photo_album),
                          title: Text('Album'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Phone'),
                        ),
                        ListTile(
                          leading: Icon(Icons.map),
                          title: Text('Map'),
                        ),
                        ListTile(
                          leading: Icon(Icons.photo_album),
                          title: Text('Album'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Phone'),
                        ),
                        ListTile(
                          leading: Icon(Icons.map),
                          title: Text('Map'),
                        ),
                        ListTile(
                          leading: Icon(Icons.photo_album),
                          title: Text('Album'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Phone'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )));
    // TODO: implement build
  }

  PageViewIndicator _buildExample1() {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController) => Circle(
            size: 8.0,
            color: Colors.black87,
          ),
      highlightedBuilder: (animationController) => ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.ease,
            ),
            child: Circle(
              size: 12.0,
              color: Colors.black45,
            ),
          ),
    );
  }
}
