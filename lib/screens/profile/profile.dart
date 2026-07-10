import 'dart:io';

import 'package:flutter/material.dart';
import 'package:guffgarum/screens/Home/homescreen.dart';
import 'package:guffgarum/widgets/uihelper.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController nameController = TextEditingController();

  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.CustomText(
              text: "Profile Info",
              height: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
            ),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: "Please provide your name and original",
              height: 14,
            ),
            SizedBox(height: 5),
            UiHelper.CustomText(text: "profile photo", height: 14),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                _openBotton(context);
              },
              child: pickedImage==null? CircleAvatar(
                radius: 80,
                backgroundColor: const Color.fromARGB(255, 225, 222, 222),
                child: Image.asset(
                  'assets/images/cameralogo.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                ),
              ):CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedImage!),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 300,
              child: TextField(
                keyboardType: TextInputType.name,
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Type your name here",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 92, 91, 91),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurpleAccent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
        },
        buttonname: 'Finish',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBotton(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      size: 60,
                      color: const Color.fromARGB(255, 88, 62, 62),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 60, color: Colors.deepPurple),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) {
        // User cancelled
        return;
      }
      final tempimage = File(photo.path);
      setState(() {
        pickedImage = tempimage;
      });
      Navigator.pop(context); // Close bottom sheet after selection
    } catch (ex) {
      String errorMessage = ex.toString();
      
      // Handle specific camera unavailable errors
      if (ex.toString().contains('camera') || ex.toString().contains('not available')) {
        errorMessage = 'Camera is not available on this device. Please use gallery instead.';
      }
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 3),
          ),
        );
      }
    }
  }
}
