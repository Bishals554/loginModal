import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/login.png'),fit: BoxFit.cover)),
       child: Scaffold(
         backgroundColor: Colors.transparent,
         body: Stack(
           children: [
             Container(
               padding: EdgeInsets.only(
                   left: 35,
                   top: 133
               ),
               child: Text(
                 'Welcome\nBack',
                 style: TextStyle(
                     color: Colors.white,
                     fontSize: 33
                 ),
               ),
             ),
             SingleChildScrollView(
               child: Container(
                 padding: EdgeInsets.only(
                     top: MediaQuery.of(context).size.height*0.5,
                     right: 35,
                     left: 35),
                 child: Column(
                   children: [
                     TextField(
                       style: TextStyle(color: Colors.white),
                       decoration: InputDecoration(
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(
                               color: Colors.white,
                             ),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(
                               color: Colors.black,
                             ),
                           ),
                           hintText: "Email",
                           hintStyle: TextStyle(color: Colors.white),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                           )),
                     ),
                     SizedBox(
                       height: 30,
                     ),
                     TextField(
                       style: TextStyle(color: Colors.white),
                       decoration: InputDecoration(
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(
                               color: Colors.white,
                             ),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(
                               color: Colors.black,
                             ),
                           ),
                           hintText: "Password",
                           hintStyle: TextStyle(color: Colors.white),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                           )),
                     ),
                     SizedBox(
                       height: 40,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           'Sign In',
                           style: TextStyle(
                             color: Colors.white,
                               fontSize: 27,
                               fontWeight: FontWeight.w700),
                         ),
                         CircleAvatar(
                           radius: 30,
                           backgroundColor: Colors.blueAccent,
                           child: IconButton(
                             color: Colors.white,
                             onPressed: (){},
                           icon: Icon(Icons.arrow_forward)
                           ),
                         )
                       ],
                     ),
                     SizedBox(
                       height: 40,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         TextButton(
                             onPressed: (){
                               Navigator.pushNamed(context, 'register');
                             },
                             child: Text(
                               'Sign Up',
                               style: TextStyle(
                                   decoration: TextDecoration.underline,
                                   fontSize: 18,
                                   color: Colors.white
                               ),
                             )
                          ),
                         TextButton(
                             onPressed: (){},
                             child: Text(
                               'Forgot Password?',
                               style: TextStyle(
                                   decoration: TextDecoration.underline,
                                   fontSize: 18,
                                   color: Colors.white
                               ),
                             )
                         )
                       ],
                     )
                   ],
                 ),
               ),
             )

           ],
         ),
       ),
    );
  }
}
