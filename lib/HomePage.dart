import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  
  const Home({
    super.key,
     
    }
  );

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      // appBar:AppBar(backgroundColor:  const Color.fromARGB(255, 249, 249, 247),
      //   title: const Text("Home Page",style:TextStyle(fontSize:25, color:Colors.purple)),
      //   centerTitle: true,),

        body: SingleChildScrollView( 
          child:Container(
             height: 800,
            width: 450,
          decoration:  const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/p.jpg"),
             fit: BoxFit.cover),
            
            ), 
        child: Form(
        key: _formKey,
        child: const Column(
         children: [
          
          Text(
        "Home",
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