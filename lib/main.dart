import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    // if width is less than 600, then it is a mobile device
    if (MediaQuery.of(context).size.width > 900) {
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("hugocastro.dev", style: TextStyle(fontFamily: GoogleFonts.jetBrainsMono().fontFamily)),
              floating: true,
              snap: true,
              actions: [
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextButton(onPressed: () {}, child: const Text("Sobre mí", style: TextStyle(fontSize: 16))),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextButton(onPressed: () {}, child: const Text("Contacto", style: TextStyle(fontSize: 16),)),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextButton(onPressed: () {}, child: const Text("Experiencia", style: TextStyle(fontSize: 16))),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }
    else{
      return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text("hugocastro.dev", style: TextStyle(fontFamily: GoogleFonts.jetBrainsMono().fontFamily, fontSize: 24)),
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                ),
              ),
              ListTile(
                title: Text("Sobre mí", style: TextStyle(fontSize: 16)),
                onTap: () {},
              ),
              ListTile(
                title: Text("Contacto", style: TextStyle(fontSize: 16)),
                onTap: () {},
              ),
              ListTile(
                title: Text("Experiencia", style: TextStyle(fontSize: 16)),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("hugocastro.dev", style: TextStyle(fontFamily: GoogleFonts.jetBrainsMono().fontFamily)),
              floating: true,
              snap: true,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    color: Colors.red,
                  ),
                  Container(
                    height: 200,
                    color: Colors.green,
                  ),
                  Container(
                    height: 200,
                    color: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
