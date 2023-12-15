import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mfanom Translator',
      theme: ThemeData(
       // useMaterial3: true,
        disabledColor: const Color(0xFF000000)
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
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
  int _counter = 0;
  String test = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF6E3),
      body: Center(
        child: Row (
          children: [
            const Padding(  padding: EdgeInsets.only(left:125)),

            Column (
              children: <Widget> [
                const Padding(  padding: EdgeInsets.only(top:150)),

                const Text(
                  'Mfanom',
                  style: TextStyle(color: Color(0xFF000000)),
                ),

                const Padding(  padding: EdgeInsets.only(top:20)),

                SizedBox(
                  height: 300,
                  width: 300,
                  child: 
                    TextField(
                      maxLines: 10,
                      onChanged: (text) {
                        setState(() {
                          test = text;
                        }); 
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),//, borderSide: const BorderSide(color: Color(0x88e1dbcb))),
                        hintText: 'Enter Text',
                        hintStyle: const TextStyle(color: Color(0x88000000)),
                      ),
                    ),
                ),
              ],
            ),

            const Spacer(),

            Column (
              children: <Widget> [
                const Padding(  padding: EdgeInsets.only(top:150)),

                const Text(
                  'English',
                  style: TextStyle(color: Color(0xFF000000)),
                ),

                const Padding(  padding: EdgeInsets.only(top:20)),

                SizedBox(
                  height: 300,
                  width: 300,
                  child: 
                    TextField(
                      maxLines: 10,
                      onChanged: (text) {
                        setState(() {
                          test = text;
                        }); 
                      },
                      enabled: false,
                      // enabl
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hintText: test,
                        hintStyle: const TextStyle(color: Color(0xFF000000), fontSize:17),
                      ),
                    ),
                ),

                // SizedBox(
                //   height: 275,
                //   width: 300,
                //   child: 
                //     Container (
                //       decoration: BoxDecoration(
                //         border: Border.all(),
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       child: 
                //         Text(
                //           test,
                //           style: const TextStyle(color: Color(0xFF000000)),
                //         ),
                //     )
                    
                    // TextField(
                    //   maxLines: 10,
                    //   controller: inputTextEditingController,
                    //   decoration: const InputDecoration(
                    //     border: OutlineInputBorder(),
                    //     hintText: 'Enter Text',
                    //     hintStyle: TextStyle(color: Color(0xFF000000)),
                    //   ),
                    // ),
                // ),

                // const Padding(  padding: EdgeInsets.only(top:20)),

                // const Text(
                // 'You have pushed the button this many times:',
                // style: TextStyle(color: Color(0xFF000000)),
                // ),

                // Text(
                //   '$_counter',
                //   style: const TextStyle(color: Color(0xFF000000), fontSize: 28)
                // ),
              ],
            ),

            const Padding(  padding: EdgeInsets.only(right:125)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFFFFFF),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
