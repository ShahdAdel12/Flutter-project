
import 'package:flutter/material.dart';

import 'NavBar.dart';

class  LoginPage extends StatefulWidget {
  const LoginPage ({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
   final _formKey = GlobalKey<FormState>();
   final TextEditingController emailController = TextEditingController();
    return Scaffold(  
      appBar:AppBar(backgroundColor:  const Color.fromARGB(255, 249, 249, 247),
        title: const Text("Member Login",style:TextStyle(fontSize:25, color:Colors.black)),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.exit_to_app_sharp), onPressed: () { 
          Navigator.of(context).pop();
         },),),
      body: SingleChildScrollView( 
          child:Container(
             height: 800,
            width: 450,
          decoration:  const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/blure.jpg"),
             fit: BoxFit.cover),
            
            ), 
        child: Form(
        key: _formKey,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [

        const Text(
        "Welcome Back, Please Login to your account.",
         style: TextStyle(fontSize:17),
        
      ),

      const SizedBox(
          height: 9,
        ),
        Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: emailController,
          decoration:  const InputDecoration(
          labelText:"Email",
          prefixIcon: Icon(Icons.email),
          labelStyle: TextStyle(fontSize: 20, color: Colors.black,fontStyle: FontStyle.italic),
          floatingLabelBehavior: FloatingLabelBehavior.always,
           enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),bottom: Radius.circular(40)
          )
          ),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),bottom: Radius.circular(40)
          )),
          ),
          validator: (value) {
            if(value!.contains("@gmail")){
              return null;
            }
            else{
              return"Not Valid Email";
            }
          },
          
          
        ),
      ),
        Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          decoration: const InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelText:"Password",
          labelStyle: TextStyle(fontSize: 20, color: Colors.black,fontStyle: FontStyle.italic),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),bottom: Radius.circular(40)
          )
          ),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),bottom: Radius.circular(40)
          )),
          ),
          validator: (value) {
            if(value!.length > 7){
              return null;
            }
            else{
              return"Password should contain 8 characters or more";
            }
          },
          
          
        ),
      ),
      
      const SizedBox(
          height: 9,
        ),
       ElevatedButton(
          onPressed: () { 
            if(_formKey.currentState!.validate()){
           Navigator.push(
           context,
           MaterialPageRoute
           (builder: (context) =>  NavBarPage(
             email: emailController.text,
           )),
          );
            };

          },
          
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 249, 249, 247),
            elevation:5,
            
            minimumSize: const Size(200.0,50.0),
          ),
          child: const Text("Login",style:TextStyle(fontSize:25, color:Colors.black)),
          
        ),
      
        const SizedBox(
          height: 9,
        ),
        const Text(
        "Forget Password?",
         style: TextStyle(fontSize:17),
      ),
      
      

        ],
      ),
    ),
    ),
      ),
    );
    
  }

  
}
