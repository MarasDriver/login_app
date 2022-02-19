import 'package:flutter/material.dart';
import 'package:login_page/Settings/Feed_Page/feed_page.dart';
import 'package:login_page/social_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _isInitialValue = true;

class _LoginPageState extends State<LoginPage> {
  @override
  TextEditingController controller = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.green])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(children: [
                  CircleAvatar(
                    radius: 150.0,
                    backgroundImage:
                        AssetImage('assets/img/pexels-photo-220453.jpeg'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Peter Black",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Welcome back!",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    child: TextFormField(
                      onChanged: (r) {
                        setState(() {});
                      },
                      obscureText: _isInitialValue == true ? true : false,
                      minLines: 1,
                      maxLines: 1,
                      maxLength: 12,
                      controller: controller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                _isInitialValue = !_isInitialValue;
                              });
                            },
                            icon: Icon(Icons.visibility),
                          )),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  SizedBox(
                    width: 270.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: controller.text.length == 12
                          ? () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return SocialPage();
                              }));
                            }
                          : null,
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
