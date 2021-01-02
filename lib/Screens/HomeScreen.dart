import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'NavigationClass.dart';
import 'MainBig.dart';

class gkkey{
  static final contact = new GlobalKey();
  static final about = new GlobalKey();
  static final whatwedo = new GlobalKey();
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  _launchURL(var url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print( 'Could not launch $url');
    }
  }

   static List<String> imgList = [

    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];


  final List<Widget> imageSliders = imgList.map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.fill, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'No. ${imgList.indexOf(item)} image',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    ),
  )).toList();




  double get _imgHeight => MediaQuery.of(context).size.height;

  double get _imageWidth => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _imgHeight,
              width: _imageWidth,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Color(0xff1B2433)),
                    padding: EdgeInsets.all(10.0),
                    height: 60,
                    width: _imageWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: Image.asset('images/mages.png'),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: NavigationClass('Home'),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(child:  NavigationClass('What we do'),onTap: (){
                                  Scrollable.ensureVisible(gkkey.whatwedo.currentContext);
                                },
                                )),
                            SizedBox(
                              width: 40,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(child:  NavigationClass('About'),
                                onTap: (){
                                  Scrollable.ensureVisible(gkkey.about.currentContext);
                                },),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                child:  NavigationClass('Contact Us'),onTap: (){
                                Scrollable.ensureVisible(gkkey.contact.currentContext);
                              },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  MainBig(),
                ],
              ),
            ),
            Container(
              key: gkkey.whatwedo,
              color: Color(0xff1B2433),
              // Another fixed-height child.
              child: Column(children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders,
                ),
              ],),
            ),
            Container(
              // Another fixed-height child.
              child: Container(
                height: 520,
                decoration: BoxDecoration(
                  color: Color(0xff1B2433),
                ),
                padding: EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'We Help Business Grow, Asist Starup and Build Enduring Relationships with their Communities.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Trajan Pro',
                          fontSize: 25.0,
                          color: Colors.white,
                          letterSpacing: 5.0),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              key: gkkey.contact,
              height: 300.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        _launchURL('mailto:hello@mages.com?subject=News&body=Newclientmages');
                      },
                      child: HoverAnimatedContainer(
                        color: Color(0xffC4C4C4),
                        hoverColor: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.email,
                              size: 50.0,
                            ),
                            Text(
                              'Send an email',
                              style: TextStyle(
                                  fontFamily: 'Trajan Pro',
                                  fontSize: 15.0,
                                  color: Colors.black),
                            ),
                            Text('hello@mages.com'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                        onTap: (){
                          _launchURL("https://api.whatsapp.com/send?phone=+919988776655");
                        },
                      child: HoverAnimatedContainer(
                        color: Color(0xffC4C4C4),
                        hoverColor: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat,
                              size: 50.0,
                            ),
                            Text(
                              'Start chat',
                              style: TextStyle(
                                  fontFamily: 'Trajan Pro',
                                  fontSize: 15.0,
                                  color: Colors.black),
                            ),
                            Text('+91 99887 76655'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        _launchURL('tel:+919988776655');
                      },
                      child: HoverAnimatedContainer(
                        color: Color(0xffC4C4C4),
                        hoverColor: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.call,
                              size: 50.0,
                            ),
                            Text(
                              'Call Us',
                              style: TextStyle(
                                  fontFamily: 'Trajan Pro',
                                  fontSize: 15.0,
                                  color: Colors.black),
                            ),
                            Text('+91 99887 76655'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // Another fixed-height child.
              width: _imageWidth,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ready to talk ?",
                    style: TextStyle(
                        fontFamily: 'Trajan Pro',
                        fontSize: 20.0,
                        color: Colors.black,
                        letterSpacing: 5.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/second');
                        },
                        child: Container(
                          height: _imgHeight / 6,
                          width: _imageWidth / 6,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Text(
                              'Start a project',
                              style: TextStyle(
                                  fontFamily: 'Trajan Pro',
                                  fontSize: 20.0,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              height: 320.0,
            ),
            Container(
              key:gkkey.about,
              padding: EdgeInsets.fromLTRB(25.0, 55.0, 200.0, 75.0),
              height: 220.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/footer.png'), fit: BoxFit.fill),
              ),
              child: Text(
                "Kochi,India",
                style: TextStyle(
                    fontFamily: 'Trajan Pro',
                    fontSize: 20.0,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),

    );
  }
}


