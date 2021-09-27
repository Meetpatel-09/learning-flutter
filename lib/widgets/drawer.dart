import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageURL =
        "https://scontent.fstv5-1.fna.fbcdn.net/v/t31.18172-8/20901332_120373241950185_5547729497764917044_o.jpg?_nc_cat=100&ccb=1-5&_nc_sid=973b4a&_nc_ohc=YAVS0frHQysAX_VuKgO&_nc_ht=scontent.fstv5-1.fna&oh=b6de084ebf57dd9bcb4dcd1c1ce0f3c2&oe=61791B4B";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: const Text("Meet Patel"),
                  accountEmail: const Text("meet@codingwithmeet.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageURL),
                  )),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Email",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
