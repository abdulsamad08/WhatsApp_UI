import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff075e54),
          centerTitle: false,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(CupertinoIcons.group_solid),
              ),
              Tab(
                child: Text('CHATS'),
              ),
              Tab(
                child: Text('STATUS'),
              ),
              Tab(
                child: Text('CALLS'),
              ),
            ],
          ),
          actions: [
            const Icon(CupertinoIcons.switch_camera),
            const SizedBox(width: 15),
            const Icon(Icons.search),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: 1,
                  child: Text('New Group'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('New bradcast'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text('Linked devices'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text('Starred messages'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text('Settings'),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Text('Groups'),
            ListView.builder(
              itemCount: 7,
              itemBuilder: ((context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/4067765/pexels-photo-4067765.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Abdul Samad'),
                  subtitle: Text('hello world'),
                  trailing: Text('9:22 PM'),
                );
              }),
            ),
            ListView.builder(
              itemCount: 3,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2.5),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/4067765/pexels-photo-4067765.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                  ),
                  title: const Text('Abdul Samad'),
                  subtitle: const Text('5 mins ago'),
                );
              }),
            ),
            ListView.builder(
              itemCount: 7,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/4067765/pexels-photo-4067765.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: const Text('Abdul Samad'),
                  subtitle: Text(index / 2 == 0 || index / 2 == 3
                      ? 'you missed the call'
                      : 'call duration 4 min'),
                  trailing: Icon(index / 2 == 0 || index / 2 == 3
                      ? CupertinoIcons.phone_fill
                      : CupertinoIcons.video_camera_solid),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
