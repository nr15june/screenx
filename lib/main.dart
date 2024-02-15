import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ScreenX(),
      debugShowCheckedModeBanner: false,
    ));

class ScreenX extends StatefulWidget {
  const ScreenX({super.key});

  @override
  State<ScreenX> createState() => _ScreenXState();
}

class _ScreenXState extends State<ScreenX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.account_circle_rounded,
          size: 25,
          color: Colors.blue,
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'assets/twitter.png',
            color: Colors.blue,
            height: 10,
            width: 10,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.settings_outlined,
              size: 25,
              color: Colors.blue,
            ),
          )
        ],
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Welcome to your timeline\n',
                style: TextStyle(
                  fontSize: 25
                  ),
                children: [
                  TextSpan(
                    text: '\nIt is empty now, but it will not be for long. Start \nfollowing people and you will see Tweets show \nup here.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,), 
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Get Started',
              style: TextStyle(color: Colors.white
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
               
                ),
            ),
          ],
        ),
      ),
      

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        backgroundColor: Colors.blue,
      ),

      backgroundColor: Colors.white,

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home_filled),
                color: Colors.blue,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.blue,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.group_outlined),
                color: Colors.blue,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_alert),
                color: Colors.blue,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.email_outlined),
                color: Colors.blue,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
