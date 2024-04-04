import 'package:flutter/material.dart';
import 'package:sample1/features/loginPage/ui/loginPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});


  @override
  Widget build(BuildContext context) {
    TextEditingController passController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    var FormKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40),
          child: Form(
            key: FormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Text("Create an account,It's free"),
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
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Username",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (email){
                          if(email==null || email!.contains('@')){
                            return 'email is not valid';
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passController,
                        validator: (pass){
                          if(pass!.isEmpty||pass.length<6){
                            return "password must be validate";
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (confirmPass){
                          if(confirmPass != passController.text){
                            return "password must be same";
        
                          }else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Confirm Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: MaterialButton(
                        onPressed: () {
                          var validate = FormKey.currentState!.validate();
                        if(validate==true){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        }else{
                          return null;
                        }
                        },
                        child: Text("SignUp"),
                        minWidth: 150,
                        shape: StadiumBorder(),
                        color: Colors.deepPurpleAccent.withOpacity(0.4),
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("have an account?"),
                          TextButton(onPressed: (){
        
                          },
                              child: Text(
                                " Login",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),)
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Container(
                            height: 180,
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
