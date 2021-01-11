import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController=TextEditingController();
  TextEditingController visitController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "name"
              ),
            ),
            TextField(
              controller: visitController,
              decoration: InputDecoration(
                hintText: "Purpose of visit"
              ),
            ),
            FlatButton(onPressed: (){

              print("name:${nameController.text} ");
              print("purpose of visit :${visitController.text} ");
              nameController.clear();
              visitController.clear();
            }, child: Text("Submit"),),
          ],
        ),
      ),
    );
  }
}
