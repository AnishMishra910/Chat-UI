import 'package:flutter/material.dart';
import 'package:guffgarum/screens/OTP/otpscreen.dart';
import 'package:guffgarum/widgets/uihelper.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phone = TextEditingController();
  String selectedcountry = 'Nepal';

  List<String> countries = ['Nepal', 'India', 'USA', 'UK', 'Canada'];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body:Column(
    children:[
      SizedBox(height: 80),
      Center(child: UiHelper.CustomText(
        text: 'Enter your mobile number',
        height: 20,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurpleAccent,
      ),
      ),
      SizedBox(height: 30),
      Center(child: 
      UiHelper.CustomText(
        text: 'Guff Garum will need to verify your mobile ',
        height: 16,),
      ),
      SizedBox(height: 5),

        UiHelper.CustomText(
        text: 'number. Carrier charges may apply.',
        height: 16,),

      SizedBox(height: 5),

        UiHelper.CustomText(
        text: "What's my mobile number?",
        height: 16,
        color: Colors.blue,),

        SizedBox(height: 5),

        Padding(
          padding: const EdgeInsets.only(left: 60, right: 60  ),
          child: DropdownButtonFormField(items: countries.map((String country){
          return DropdownMenuItem(
            value: country,
            child: Text(country.toString()),
          );
          }).toList(), onChanged: (value) {
            setState((){
              selectedcountry = value!;
            });
          },initialValue: selectedcountry,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurpleAccent),
            ),
          ),
          
          
              ),
        ),

        SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width:50,
              child: Padding(
                padding: const EdgeInsets.only(top:5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '+977',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purpleAccent),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurpleAccent),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  
                ),
              ),
            ),
            ),
            SizedBox(width: 10),
            SizedBox(
             width: 225,
              child: TextField(
               keyboardType: TextInputType.number,
               controller: phone,
               decoration: InputDecoration(
                 hintText: 'Mobile Number',
                 border: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.purpleAccent),
                 ),
                 focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.deepPurpleAccent),
                 ),
                 enabledBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.redAccent),
                 ),
               ),
                          ),
            )
          ],
        )
    ]
    ),
     floatingActionButton: UiHelper.CustomButton(callback: (){
    login(phone.text.toString());
     }, buttonname: "Next"),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


   );
  }

login(String phoneNumber){
  if(phoneNumber==""){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Please enter your Mobile number',), backgroundColor: const Color.fromARGB(255, 92, 73, 134),),
    );}
    else{
      Navigator.push(context, MaterialPageRoute(builder:(context) => OTPScreen(phoneNumber: phoneNumber),)); 
  }

}


}