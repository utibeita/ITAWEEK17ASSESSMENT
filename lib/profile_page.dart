import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> info = [
    "Ita Utibeabasi Miracle",
    "Mobile App Developer",
    "Pharmacist"];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
        children:  <Widget>[
          Center(
              child: Icon(
                Icons.account_circle,

                semanticLabel: "My Profile",
                size: 200,
                color: Colors.black,
              )
          ),
          Column(
            children: [
              Card(
                  color: Colors.amber,
                shadowColor: Colors.black,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.circular(20)
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Ita Utibeabasi Miracle",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
              ),
              Card(
                color: Colors.amber,
                shadowColor: Colors.black,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Mobile App Developer",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
              Card(
                color: Colors.amber,
                shadowColor: Colors.black,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Pharmacist",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}
