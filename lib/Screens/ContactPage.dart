import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:mathewnew/MailService/SendGrid.dart';


class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  double get imgHeight => MediaQuery.of(context).size.height;

  double get imageWidth => MediaQuery.of(context).size.width;


  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String _selectedLocation;

  final namecontroller = TextEditingController();
  final companycontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final locationcontroller = TextEditingController();
  final howdidcontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final contentcontroller = TextEditingController();




  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    namecontroller.dispose();
    companycontroller.dispose();
    phonecontroller.dispose();
    locationcontroller.dispose();
    howdidcontroller.dispose();
    emailcontroller.dispose();
    contentcontroller.dispose();
    super.dispose();
  }

  sendmain(String name,String company,String phone,String location,String howdid,String email,String content) async {


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: imgHeight,
          width: imageWidth,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Lets work together',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Trajan Pro',
                      color: Colors.white,
                      letterSpacing: 5.0),
                ),
                SizedBox(
                  height: 30.0,
                  width: imageWidth,
                ),
                Text(
                  'START A PROJECT,SCHEDULE A TALK OR JUST SAY HELLO',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Trajan Pro',
                      color: Colors.white,
                      letterSpacing: 5.0),
                ),
                SizedBox(
                  height: 50.0,
                  width: imageWidth,
                ),
                SizedBox(
                  height: 50.0,
                  width: imageWidth,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: imageWidth / 3,
                      child: TextField(
                        controller: namecontroller,
                        autofocus: false,
                        style:
                            TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Full Name',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: imageWidth / 3,
                      child: TextField(
                        controller:companycontroller ,
                        autofocus: false,
                        style:
                            TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Company or organization',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                  width: imageWidth,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: imageWidth / 3,
                      child: TextField(
                        controller: emailcontroller,
                        autofocus: false,
                        style:
                            TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email Address',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: imageWidth / 3,
                      child: TextField(
                        controller: phonecontroller,
                        autofocus: false,
                        style:
                            TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Phone number',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                  width: imageWidth,
                ),
                Container(
                  height: imgHeight / 3,
                  width: imageWidth / 1.5,
                  // hack textfield height
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: TextField(
                    maxLines: 99,
                    autofocus: false,
                    style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText:
                          'Tell us about your timeline,project and budget',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: imgHeight / 8,
                  width: imageWidth / 6,
                  color: Colors.red,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        /*final snackBar = SnackBar(
                          content: Text('Thank you for the submission.We will contact you'),
                          action: SnackBarAction(
                            label: 'Undo',
                          ),);
                        Scaffold.of(context).showSnackBar(snackBar);*//*final snackBar = SnackBar(
                          content: Text('Thank you for the submission.We will contact you'),
                          action: SnackBarAction(
                            label: 'Undo',
                          ),);
                        Scaffold.of(context).showSnackBar(snackBar);*/
                        SystemNavigator.pop();
                        /*setState(() {
                          print(namecontroller.text);

                          SystemNavigator.pop();
                          //SendGridUtil.sendRegistrationNotification('mail.jyothisarun@gmail.com');
                        //  sendmain(namecontroller.text.toString(),companycontroller.text.toString(),emailcontroller.text.toString(),phonecontroller.text.toString(),locationcontroller.text.toString(),howdidcontroller.text.toString(),contentcontroller.text.toString());
                        });*/
                      },
                      child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
