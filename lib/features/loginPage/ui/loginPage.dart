import 'package:flutter/material.dart';

import '../../signUpPage/ui/signUpPage.dart';

class LoginPage extends StatelessWidget {


 TextEditingController passController = TextEditingController();
 var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40),
          child:  Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(child: Text("Login",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                ),)),
                const SizedBox(
                  height: 5,
                ),
                const Center(child: Text("Login to your account"),
                ),
                const SizedBox(height: 20,),
                Container(
                  margin: const EdgeInsets.all(20),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        validator: (email){
                          if(email!.isEmpty || !email.contains('@')){
                            return "email must be a valid email";

                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.person),
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),),


                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: passController,
                        validator: (pass){
                          if(pass!.isEmpty && pass!.length<4){
                            return "password is empty";
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Password",
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      ),),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(child: MaterialButton(onPressed: (){

                      },
                          child: Text("Login"),
                      minWidth: 150,
                        shape: StadiumBorder(),
                      color: Colors.deepPurpleAccent.withOpacity(0.4),)),
                      const SizedBox(height: 10,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Not a User?"),
                          TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            SignUpPage()));
                          },
                            child: const Text("SignUp",style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w600)),),
                        ],
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Container(
                            height:350,
                            child: Image.network('https://cdni.iconscout.com/illustration/premium/thumb/login-3305943-2757111.png')),
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
