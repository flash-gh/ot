import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Padding(
                  padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/logo.png',
                      ),
                      Text(
                        'LOGO',
                        style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          fontSize: 26,
                          letterSpacing: .6,
                          fontWeight: FontWeight.bold,
                        )
                      )
                    ],
                  ),
                       SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  Text(
                        'Welcome',
                        style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          fontSize: 46,
                          color: Colors.redAccent,
                          letterSpacing: .6,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                       SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                  ),
                  FormCard(),
                  
        ] ,)
            )
          )
        ]
      ),
      
    );
  }
}


class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Container(
      width: MediaQuery.of(context).size.width*0.85,
      height:  MediaQuery.of(context).size.height*0.55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0,
          ),
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, -10.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: <Widget>[
            SizedBox(
                    height: MediaQuery.of(context).size.height*0.03,
            ),
            Text(
              'Username',
              style: TextStyle(
                fontFamily: 'Poppins-Medium',
                fontSize: 26,
              )
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'username',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0 )
              ),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.03,
            ),
            Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Poppins-Medium',
                fontSize: 26,
              )
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0 )
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  onTap: (){},
                  child:Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontFamily: 'Poppins-Medium',
                    fontSize: 15,
                  )
                  ),
                )
              ],
            ),
                 SizedBox(
                    height: MediaQuery.of(context).size.height*0.02,
                  ),
              Center(
                child: SizedBox(
                  height: 35,
                  width: 150,
                  child: FlatButton(
                 onPressed: () {},
                 
                 color: Colors.redAccent,
                 splashColor: Colors.red,
             shape: RoundedRectangleBorder(
             borderRadius: new BorderRadius.circular(18.0),
             side: BorderSide(color: Colors.red)
                          ),
                 child: const Text(
                  'Login',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 25)
          ),
        ),
                ),
                
              ),
               SizedBox(
                    height: MediaQuery.of(context).size.height*0.04,
                  ),
                  Center(
                    child: InkWell(
                    onTap: (){},
                    child:Text(
                    'Dont have an account? Sign Up',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Poppins-Medium',
                      fontSize: 13,
                    )
                    ),
                ),
                  )

          ],
          
        ),
      )
    );
  }
}