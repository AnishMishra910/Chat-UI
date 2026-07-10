import 'package:flutter/material.dart';
import 'package:guffgarum/widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  final List<Map<String, String>> callcontent = [
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
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: UiHelper.CustomText(text: "Recent", height: 20),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: callcontent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(callcontent[index]["img"].toString()),
                  ),
                  title: UiHelper.CustomText(
                    text: callcontent[index]["name"].toString(),
                    height: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: callcontent[index]["calltime"].toString(),
                    height: 16,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.call),
                    color: const Color.fromARGB(255, 87, 59, 164),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
