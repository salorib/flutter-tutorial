import 'package:flutter/material.dart';
import 'package:quizz_app/utilities/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: kBackgroundColor,
          bottomNavigationBar: getBottomAppBar(context, 'profile'),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey,
                  ),
              ),
              Expanded(
                flex: 1,
                  child: Column(
                    children: <Widget>[
                      Card(
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        child: ListTile(
                          leading: Icon(FontAwesomeIcons.solidCircleUser, size: 30.0,),
                          title: const Text('Name lastname'),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        child: ListTile(
                          leading: Icon(FontAwesomeIcons.solidEnvelope, size: 30.0,),
                          title: const Text('email'),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        child: ListTile(
                          leading: Icon(FontAwesomeIcons.phone, size: 30.0,),
                          title: const Text('+52-333-333-3333'),
                        ),
                      ),
                    ],
                  ),
              ),
              TextButton(
                onPressed: (){},
                child: const Text('Update'),
              ),


            ],
          ),

        ),
      ),
    );
  }
}
