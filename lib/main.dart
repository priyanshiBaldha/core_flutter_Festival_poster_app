import 'package:flutter/material.dart';
import 'package:stories_editor/stories_editor.dart';
import 'Screens/splash.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => Splash(),
        'HomePage': (context) => HomePage(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Festival Poster App",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            "Make Poster",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.w500),
          ),
          onPressed: () {
            Route route = MaterialPageRoute(
              builder: (context) => StoriesEditor(
                  giphyKey: "Ibp9lCYg0gnPko6HJQWCrC1tZwVC4XCD",
                  onDone: (val) {}),
            );
            Navigator.push(context, route);
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.black12),
            side: MaterialStateBorderSide.resolveWith((states) => BorderSide(width: 3))
          ),
        ),
      ),
      backgroundColor: const Color(0xffF5E8E4),
    );
  }
}
