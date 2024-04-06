import 'package:flutter/material.dart';
import 'package:sample1/features/homePage/ui/homePage.dart';
import 'package:sample1/utils/const.dart';
import 'package:sample1/utils/textTheme.dart';

import '../../signUpPage/ui/signUpPage.dart';

class LoginPage extends StatelessWidget {

  TextEditingController passController = TextEditingController();
  var formKey = GlobalKey<FormState>();

    String username = "Sreejith@";
    int pass = 123456;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 40),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  "Login",
                  style: MyTextThemes.textHeading,
                  // TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Text("Login to your account"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (email) {
                          if (email!.isEmpty || !email.contains('@')) {
                            return "email must be a valid email";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: passwordController,
                        validator: (pass) {
                          if (pass!.isEmpty && pass.length < 4) {
                            return "password is empty";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: MaterialButton(
                        onPressed: () {
                          var validate = formKey.currentState!.validate();
                          if (validate == true  && passController == passController) {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          }else{
                            errorSnackBar(context);
                          }
                          passwordController.clear();
                        },
                        minWidth: 150,
                        shape: const StadiumBorder(),
                        color: Colors.deepPurpleAccent.withOpacity(0.4),
                        child: const Text("Login"),
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Not a User?"),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpPage()));
                            },
                            child: const Text(" SignUp",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.deepPurple)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: SizedBox(
                            height: 350,
                            child: Image.network(
                                'https://cdni.iconscout.com/illustration/premium/thumb/login-3305943-2757111.png')),
                      )
                    ],
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
