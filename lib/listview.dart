import 'package:customlistviewflutter/second.dart';
import 'package:customlistviewflutter/user.dart';
import 'package:flutter/material.dart';


class MyCustomListView extends StatefulWidget {
  const MyCustomListView({super.key});

  @override
  State<MyCustomListView> createState() => _MyCustomListViewState();
}

class User{
  final String name;
  final String image;
  final String position;
  User(this.name, this.position, this.image);
}

List<DataModel> users =[
  DataModel(name: 'Bobby',position: 'Android Developer',image: 'assets/bobby.jpg'),
  DataModel(name: 'Rahul',position: 'App Developer',image: 'assets/bobby.jpg'),
  DataModel(name: 'Ankit', position: 'Android Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Abhinav', position: 'Flutter Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Yogesh', position: 'Php Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Saurav', position: 'Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Krishna', position: 'Flutter Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Pallavi', position: 'Web Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Nagendar', position: 'Web Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Chandan', position: 'Web Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Kamlesh', position: 'Web Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Mohan', position: 'Web Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Sohan', position: 'Web Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Raju', position: 'Web Developer', image: 'assets/bobby.jpg'),
  DataModel(name: 'Nandu', position: 'Web Developer', image: 'assets/bobby.jpg'),
];

class _MyCustomListViewState extends State<MyCustomListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom List View"),
      ),
      body: Center(
        child: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
            return ListTile(
              onTap: (){
                Navigator.push(
                    context,    MaterialPageRoute(
                  builder: (context) => DetailsPage(data: users[index]),    ));
              },
              leading: CircleAvatar(
                backgroundImage: AssetImage(users[index].image,
                ),
              ),
              title: Text(users[index].name),
              subtitle: Text(users[index].position),
            );
          },
          childCount: users.length,
        ),
        ),
      ),
    );
  }
}