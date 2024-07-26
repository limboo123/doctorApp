
import 'package:batch_bhutan2/constant_file/constant.dart';
import 'package:flutter/material.dart';
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _phoneEmail = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool isObs=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Log In",style: myStyle(28,Colors.white,FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Color(0xff014f86),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                Center(child: Image(image: AssetImage("assets/images/facebook.png"))),
        Container(
          padding: EdgeInsets.all(10),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    maxLines: 2,
                    controller: _phoneEmail,
                    decoration: InputDecoration(
                      label: Text("Phone or Email"),
                      hintText: "Phone or Email",
                      // hintStyle: TextStyle(color: Colors.purple)
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      // suffix: Icon(Icons.search),
                      // suffixIcon: Icon(Icons.abc),
                      // prefix: Icon(Icons.abc),
                      // prefixIcon: Icon(Icons.abc)
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter Phone or Email";
                      }
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _password,
                    obscureText: isObs,
                    decoration: InputDecoration(
                      label: Text("Password"),
                      hintText: "Enter your password",
                      // hintStyle: TextStyle(color: Colors.purple)
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      suffix: IconButton(
                        onPressed: (){
                          isObs = !isObs;
                          setState(() {

                          });
                        },
                        icon: Icon(Icons.visibility),
                      ),
                      // suffixIcon: Icon(Icons.abc),
                      // prefix: Icon(Icons.abc),
                      // prefixIcon: Icon(Icons.abc)
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter password";
                      }
                      if(value.length < 8){
                        return "Password must be at least 8 digits/char";
                      }
                    },
                  ),
                ],
              )
          ),
        ),
        Text("Forget Password?",style: myStyle(18,primaryColor),),
        SizedBox(height: 20,),
        MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    minWidth: MediaQuery.of(context).size.width * 0.9,
    color:  Color(0xff014f86),
    onPressed: (){
    _formKey.currentState!.validate();
    },
    child: Text("Log In",style: myStyle(18,Colors.white),),
    )
    ],
    ),
    ),
    ),
    );
  }
}