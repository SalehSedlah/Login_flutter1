import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}

// class login extends StatefulWidget {
//   const login({super.key});

//   @override
//   State<login> createState() => _loginState();
// }

// class _loginState extends State<login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('images/5.jpg',
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Container(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(padding: EdgeInsets.all(10)),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'login',
//                   style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: AutofillHints.creditCardMiddleName),
//                 ),
//               ),

//               // Image(image:Image.asset('images/2.jpg')),

//               TextFormField(
//                 decoration: InputDecoration(
//                   hoverColor: Colors.amberAccent,
//                   labelText: 'Username',
//                   icon: Icon(
//                     Icons.email,
//                     size: 20,
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.orangeAccent),
//                   ),
//                 ),
//               ),
//               // SizedBox(height: 2),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hoverColor: Color.fromARGB(255, 229, 105, 10),
//                   labelText: 'Password',
//                   prefixIcon: Icon(Icons.lock),
//                   icon: Icon(
//                     Icons.password,
//                     size: 20,
//                   ),
//                   focusColor: Color.fromARGB(255, 238, 71, 11),
//                 ),
//                 obscureText: true,
//               ),

//               Container(

//                 width: 300,
//                 padding: EdgeInsets.all(20),
//                 child: ElevatedButton(
//                   onPressed: () {

//                   },
//                   child: Text('Login'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color.fromARGB(255, 227, 67, 9),
//                   ),
//                 ),
//               ),

//               Align(
//                 alignment: Alignment.bottomLeft,
//                 child: Text("Don`t  have on account?SIGN UP"),
//               )
//             ],
//           ),
//         ),
//       ),

//     );
//   }
// }

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            "images/5.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          // Login form
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Login form fields

                Padding(padding: EdgeInsets.all(10)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: AutofillHints.creditCardMiddleName),
                  ),
                ),

                

                TextFormField(
                  decoration: InputDecoration(
                  

                    labelText: 'Username',
                    focusColor: Colors.red,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 227, 67, 9),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orangeAccent),
                    ),
                  ),
                  style: TextStyle(
                    color: Color.fromARGB(255, 227, 67, 9),
                  ),
                ),

                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 227, 67, 9),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orangeAccent,
                      ))),
                  obscureText: true,
                  style: TextStyle(
                    color: Color.fromARGB(255, 227, 67, 9),
                  ),
                ),

                Container(
                  width: 300,
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 67, 9),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Don`t  have on account?SIGN UP"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
