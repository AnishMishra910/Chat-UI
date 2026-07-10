import 'package:flutter/material.dart';
import 'package:guffgarum/widgets/uihelper.dart';

class Statusscreen extends StatelessWidget {
  final List<Map<String, String>> callContent = [
    {
      "img":
          "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTA4L3Jhd3BpeGVsX29mZmljZV8yN19wb3J0cmFpdF9vZl9hX3lvdW5nX2luZGlhbl9tYW5fc21pbGluZ193ZWFyaV8yN2M3M2NhZC1jMjM2LTQ0YmQtYWYxMi01OTgxZGE2NzNkODMucG5n.png",
      "name": "John",
      "calltime": "15 min ago ",
    },
    {
      "img":
          "https://img.magnific.com/free-photo/handsome-young-cheerful-man-with-arms-crossed_171337-1073.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "John",
      "calltime": "20 min ago ",
    },
    {
      "img":
          "https://cdn.create.vista.com/api/media/small/301299872/stock-photo-young-indian-man-wearing-denim-shirt-standing-isolated-yellow-background",
      "name": "Mohit",
      "calltime": "15 min ago ",
    },
    {
      "img":
          "https://images.peopleimages.com/picture/202308/2895048-tablet-happy-and-business-with-portrait-of-black-woman-on-png-for-web-design-creative-and-social-media.-search-technology-and-online-with-person-isolated-on-transparent-background-for-networking-fit_400_400.jpg",
      "name": "Cindrella",
      "calltime": "30 min ago ",
    },
    {
      "img":
          "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTA4L3Jhd3BpeGVsX29mZmljZV8yN19wb3J0cmFpdF9vZl9hX3lvdW5nX2luZGlhbl9tYW5fc21pbGluZ193ZWFyaV8yN2M3M2NhZC1jMjM2LTQ0YmQtYWYxMi01OTgxZGE2NzNkODMucG5n.png",
      "name": "Roman",
      "calltime": "35 min ago ",
    },
    {
      "img":
          "https://img.magnific.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Rameis",
      "calltime": "2 days ago ",
    },
    {
      "img":
          "https://img.magnific.com/free-photo/handsome-young-cheerful-man-with-arms-crossed_171337-1073.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "John",
      "calltime": "20 min ago ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "call", height: 20),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/2151669184/vector/vector-flat-illustration-in-grayscale-avatar-user-profile-person-icon-gender-neutral.jpg?s=612x612&w=0&k=20&c=UEa7oHoOL30ynvmJzSCIPrwwopJdfqzBs0q69ezQoM8=",
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 90, 49, 236),
                      radius: 10,
                      child: Icon(Icons.add, color: Colors.white, size: 15),
                    ),
                  ),
                ],
              ),
            ),
            title: UiHelper.CustomText(text: "My call", height: 20),
            subtitle: UiHelper.CustomText(
              text: "Tap to add call update",
              height: 15,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(text: "Recent updates", height: 15),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      callContent[index]["img"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: callContent[index]["name"].toString(),
                    height: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: callContent[index]["calltime"].toString(),
                    height: 14,
                  ),
                );
              },
              itemCount: callContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
