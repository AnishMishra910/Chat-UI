import 'package:flutter/material.dart';
import 'package:guffgarum/screens/Home/Contact/contactscreen.dart';
import 'package:guffgarum/widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget{
  var arrContent = [
   {
    "images":"https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
    "name":"James",
    "lastmsg":"Hello",
    "time":"07:46 pm",
    "msg":"3",
   },
   {
    "images":"https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    "name":"John",
    "lastmsg":"Are you fine??",
    "time":"07:30 pm", 
    "msg":"2",
   },
   {
   "images":"https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
   "name":"Sakira",
    "lastmsg":"Solve that asap",
    "time":"07:23 pm", 
    "msg":"5",
   },
    {
    "images":"https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
    "name":"James",
    "lastmsg":"Hello",
    "time":"07:46 pm",
    "msg":"3",
   },
   {
    "images":"https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    "name":"John",
    "lastmsg":"Are you fine??",
    "time":"07:30 pm", 
    "msg":"2",
   },
   {
   "images":"https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
   "name":"Aruna",
    "lastmsg":"Solve that asap",
    "time":"07:23 pm", 
    "msg":"5",
   },
    {
    "images":"https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
    "name":"Shishir",
    "lastmsg":"Hello",
    "time":"07:46 pm",
    "msg":"3",
   },
   {
    "images":"https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    "name":"Kushal",
    "lastmsg":"Are you fine??",
    "time":"07:30 pm", 
    "msg":"2",
   },
   {
   "images":"https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
   "name":"Sakira",
    "lastmsg":"Solve that asap",
    "time":"07:23 pm", 
    "msg":"5",
   },
    {
    "images":"https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
    "name":"Abiral",
    "lastmsg":"Hello",
    "time":"07:46 pm",
    "msg":"3",
   },
   {
    "images":"https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    "name":"Shristi",
    "lastmsg":"Are you fine??",
    "time":"07:30 pm", 
    "msg":"2",
   },
   {
   "images":"https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
   "name":"Aditya",
    "lastmsg":"Solve that asap",
    "time":"07:23 pm", 
    "msg":"5",
   },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(arrContent[index]["images"].toString()),
                ),
                title: UiHelper.CustomText(text: arrContent[index]["name"].toString(), height: 16, fontWeight: FontWeight.bold),
                subtitle: UiHelper.CustomText(text: arrContent[index]["lastmsg"].toString(), height: 13, color: Colors.grey),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomText(text: arrContent[index]["time"].toString(), height: 12),
                    SizedBox(height: 4,),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: const Color.fromARGB(255, 87, 60, 161),
                      child: UiHelper.CustomText(text: arrContent[index]["msg"].toString(), height: 12, color: const Color.fromARGB(255, 217, 182, 182)),
                    ) 
                  ],
                ),
              );
            }, itemCount: arrContent.length,),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => Contactscreen())));
        },
        child: CircleAvatar(
        radius: 30,
        backgroundColor: const Color.fromARGB(255, 87, 60, 161),
        child: Icon(Icons.message),
        ),
      ),
  
      
    );
  }

}