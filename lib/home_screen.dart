import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> foods = ["RICE","BEANS","STEW", "YAM","POTATO",
  "SOUP", "SAUCE", "COCOYAM", "PLANTAIN"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
        itemCount: foods.length,
          itemBuilder: (context, index) {
            return Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      " I LOVE COOKING ${foods[index]}",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              color: Colors.amber,
              shadowColor: Colors.grey,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius:  BorderRadius.circular(20)
              ),
            );
          }
      ),
    );
  }
}
