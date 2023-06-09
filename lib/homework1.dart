import 'package:flutter/material.dart';

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});
  @override
  Widget build(BuildContext context) {
    int bottomindex = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: RichText(
          textDirection: TextDirection.rtl,
          text: const TextSpan(
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: 'Al-Azhar ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              ),
              TextSpan(
                text: 'University ',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text: 'in Gaza',
                style: TextStyle(
                    fontSize: 12, color: Colors.amber, letterSpacing: 4),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 25,
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('20191215'),
              accountEmail: Text('Sojod abu alqumboz'),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'S',
                    style: TextStyle(fontSize: 30),
                  )),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('sojodtalaat@gmail.com'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text('Inbox'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Contact Us'),
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Offers'),
            ),
          ],
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tableWidget('Subject', Colors.amber),
            tableWidget('Subject hours', Colors.amber)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tableWidget('Flutter', Colors.grey),
            tableWidget('3 hours', Colors.grey)
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          tableWidget('testing', Colors.grey),
          tableWidget('3 hours', Colors.grey)
        ])
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              height: 67,
              child: Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.home),
                      color: bottomindex == 0 ? Colors.white : Colors.grey,
                      onPressed: () {}),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: bottomindex == 0 ? Colors.white : Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 67,
              child: Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.settings),
                      color: bottomindex == 1
                          ? Colors.white
                          : const Color.fromARGB(255, 63, 62, 62),
                      onPressed: () {}),
                  Text(
                    'Settings',
                    style: TextStyle(
                      color: bottomindex == 1
                          ? Colors.white
                          : const Color.fromARGB(255, 63, 62, 62),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

tableWidget(String value, Color color) {
  return Container(
    width: 150,
    margin: const EdgeInsets.all(4),
    padding: const EdgeInsets.all(8),
    color: color,
    child: Text(value, style: const TextStyle(fontSize: 16)),
  );
}
