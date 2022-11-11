import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:goglobalschoolapp/GraphQLConfig.dart';
import 'package:http/http.dart' as http;
import 'package:goglobalschoolapp/home_screen.dart';
import 'package:goglobalschoolapp/main.dart';
import 'package:goglobalschoolapp/page/forget_pass.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' show json, base64, ascii;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

late String? finalEmail;

String mutation = """
 mutation Login(\$email: String!, \$password: String!) {
  login(email: \$email, password: \$password) {
    token
  }
}


"""
    .replaceAll('\n', '');

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final storage = const FlutterSecureStorage();

  final formKey = GlobalKey<FormState>();

  Future getvalidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainedEmail = sharedPreferences.getString('email');
    setState(() {
      finalEmail = obtainedEmail;
    });
    print(finalEmail);
  }

  @override
  void initState() {
    getvalidationData().whenComplete(() async {
      finalEmail;
    });
    super.initState();
  }

  void displayDialog(context, title, text) => showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(title: Text(title), content: Text(text)),
      );

  @override
  Widget build(BuildContext context) {
    return initwidget();
  }

  Widget initwidget() {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            key: formKey,
            height: 300,
            decoration: const BoxDecoration(
                color: Color(0x00000001),
                gradient: LinearGradient(
                  colors: [(Color(0x00000001)), (Color(0x00000001))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Image.asset(
                    "images/logo_app.png",
                    height: 200,
                  ),
                )
              ],
            )),
          ),
          Mutation(
            options: MutationOptions(
              document: gql(mutation),
              onCompleted: (dynamic resultData) async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));

                print('on completed $resultData');
              },
            ),
            builder: (
              RunMutation runMutation,
              QueryResult? result,
            ) {
              return Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 70),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE),
                          )
                        ],
                      ),
                      alignment: Alignment.center,
                      child: TextField(
                          controller: emailController,
                          cursorColor: const Color(0x00000001),
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Color(0xff0b82c3),
                              ),
                              hintText: "Email",
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintStyle:
                                  TextStyle(fontFamily: 'CenturyGothic'))),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE),
                          )
                        ],
                      ),
                      alignment: Alignment.center,
                      child: TextField(
                          controller: passController,
                          obscureText: true,
                          cursorColor: const Color(0x00000001),
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.key,
                                color: Color(0xFF1565C0),
                              ),
                              hintText: "Password",
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintStyle:
                                  TextStyle(fontFamily: 'CenturyGothic'))),
                    ),
                    GestureDetector(
                      onTap: () async {
                        if (emailController.text == 'loklundy@gmail.com' &&
                            passController.text == '123456789') {
                          //formKey.currentState!.reset();
                          final SharedPreferences sharedPreferences =
                              await SharedPreferences.getInstance();
                          sharedPreferences.setString(
                              'email', emailController.text);

                          runMutation({
                            'email': emailController.text,
                            'password': passController.text,
                          });
                          print(result?.data);
                        } else if (emailController.text.isEmpty &&
                            passController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Blank Field Not Allow')));
                        } else if (emailController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Email is still empty!')));
                        } else if (passController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Password is still empty!')));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Error occured!')));
                        }
                      },
                      child: Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        alignment: Alignment.center,
                        height: 54,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [(Color(0xff0b82c3)), (Color(0xff0b82c3))],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerLeft,
                          ),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Color(0xffEEEEEE),
                            )
                          ],
                        ),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'CenturyGothic',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 220),
                      child: GestureDetector(
                        onTap: (() => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetPass()))),
                        child: const Text(
                          'Forget password?',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'CenturyGothic',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      )),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      print(emailController.text);
      print(passController.text);
      form.save();
      return true;
    }
    return false;
  }
}
