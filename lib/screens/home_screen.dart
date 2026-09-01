import 'package:day7_practice/constants/app_color.dart';
import 'package:day7_practice/data/tasks_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        foregroundColor: AppColor.whiteColor,
        leading: Icon(Icons.menu),
        title: Text("Taskly", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Morining, Abdalalh 👋"),
                    Text("let's Go"),
                  ],
                ),
                Image.network(
                  "https://images-ext-1.discordapp.net/external/4dODXhCMjBLrA7RcSdRF-lGSytK70KENnYEBNYqjHA8/https/cdn.shopify.com/app-store/listing_images/cbf9debcaa4caaa36476c5d8e4fe4950/icon/CNb85Yba440DEAE%3D.png?format=webp&quality=lossless&width=2016&height=2016",
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            SizedBox(height: 24),
            Text("Categories", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Row(
              spacing:12 ,
              children: [
                // items
                categoryItem(
                  color: Colors.lightBlue,
                  icon: Icons.assignment,
                  mainText: "work",
                  width: width,
                  subText: "12 Tasks"
                ),
                categoryItem(
                  color: Colors.lightGreen,
                  icon: Icons.school,
                  mainText: "Studey",
                  width: width,
                  subText: "8 Tasks"
                ),
                categoryItem(
                  color: Colors.orangeAccent,
                  icon: Icons.favorite,
                  mainText: "work",
                  width: width,
                  subText: "12 Tasks"
                ),
              ],
            ),
            SizedBox(height: 24),
             Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text("Today's Tasks",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Sell all",style: TextStyle(fontWeight: FontWeight.bold,color: AppColor.mainColor),),
              ],
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(12),
                    child: ListTile(
                      minLeadingWidth: 44,
                      leading: Icon(Icons.book),
                      title: Text(tasks[index].title),
                      subtitle: Text(tasks[index].time),
                      trailing: Icon(Icons.square_outlined),
                    ),
                  );
                },
                shrinkWrap: true,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: AppColor.mainColor,
              height: 40,
              child: Row(
                children: [
                  Icon(Icons.abc_outlined),
                  Text("data")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget categoryItem({
  required Color color,
  required IconData icon,
  required String mainText,
  required String subText,
  required double width,
}) {
  return Container(
    width: width * 0.285,
    height: width * 0.285,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: color.withValues(alpha: 0.25),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: AppColor.whiteColor),
        ),
        Column(
          children: [
            Text(mainText, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(subText, style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      ],
    ),
  );
}
