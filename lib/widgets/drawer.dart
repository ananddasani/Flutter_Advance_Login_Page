import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var myUrl = "https://avatars.githubusercontent.com/u/74413402?v=4";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Anand Dasani"),
              accountEmail: Text("ananddasani0@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(myUrl),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  child: Text("A"),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("ananddasani0@gmail.com"),
            trailing: Icon(Icons.send),
          ),
          Divider(),
        ],
      ),
    );
  }
}
