import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            actions: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 10,),
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            value: '1',
                            child: Text('New Group')),
                        PopupMenuItem(
                            value: '2',
                            child: Text('New broadcast')),
                        PopupMenuItem(
                            value: '3',
                            child: Text('Linked devices')),
                        PopupMenuItem(
                            value: '4',
                            child: Text('Started message')),
                        PopupMenuItem(
                            value: '5',
                            child: Text('Settings')),
                      ]),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.people),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
               Text('Community'),
               ListView.builder(
               itemCount: 20,
                  itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLsupI89wVbXLRzxaiHG_rezqk3FrqDeMmog&usqp=CAUs'),
                  ),
                  title: Text('danish'),
                  subtitle: Text('where are you'),
                  trailing: Text('3:45 PM'),
                );
              }
              ),
                    //status portion
               ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3,
                          )
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLsupI89wVbXLRzxaiHG_rezqk3FrqDeMmog&usqp=CAUs'),
                        ),
                      ),
                      title: Text('danish'),
                      subtitle: Text('15min ago'),
                    );
                  }
              ),
                   //calls portion
               ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLsupI89wVbXLRzxaiHG_rezqk3FrqDeMmog&usqp=CAUs'),
                      ),
                      title: Text('danish'),
                      subtitle: Text(index /2 == 0? 'Today,Missed voice call' : 'you Missed video call'),
                      trailing: Icon(index /2 == 0? Icons.phone : Icons.video_call),
                    );
                  }
              ),
            ],
          ),
        ));
  }
}
