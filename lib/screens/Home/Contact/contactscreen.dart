import 'package:flutter/material.dart';
import 'package:guffgarum/widgets/uihelper.dart';

class Contactscreen extends StatelessWidget{
  var contactContent=[
    {
    "images":"https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
    "name":"James",
    "status":"Busy"
   },
   {
    "images":"https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    "name":"John",
    "status":"Busy"
   },
   {
   "images":"https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
   "name":"Sakira",
    "status":"Busy"
   },
    {
    "images":"https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
    "name":"James",
    "status":"Busy"
   },
   {
    "images":"https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    "name":"John",
   "status":"Busy"
   },
   {
   "images":"https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
   "name":"Aruna",
    "status":"Busy"
   },
    {
    "images":"https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
    "name":"Shishir",
    "status":"Busy"
   },
   {
    "images":"https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    "name":"Kushal",
    "status":"Busy"
   },
   {
   "images":"https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
   "name":"Sakira",
   "status":"Busy"
   },
    {
    "images":"https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
    "name":"Abiral",
   "status":"Busy"
   },
   {
    "images":"https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    "name":"Shristi",
   "status":"Busy"
   },
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
  appBar: AppBar(
    title: UiHelper.CustomText(text: "Select Contact", height: 20, color: Colors.white),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.search)),
      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp)),

    ],
  ),
  body: ListView.builder(itemBuilder: (context,index){
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(contactContent[index]["images"].toString()),
      ),
      title: UiHelper.CustomText(text: contactContent[index]["name"].toString(), height: 16, fontWeight: FontWeight.bold ),
      subtitle: UiHelper.CustomText(text: contactContent[index]["status"].toString(), height: 14),
    );
  },itemCount: contactContent.length,
  ),
   );
  }

}