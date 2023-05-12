
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:snglobal/firebase_options.dart';
import 'package:snglobal/src/utils/theme/theme.dart';

import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.dark,

      home: appHome(title: 'flut  ter  sdftitle',),
    );
  }
}






class appHome extends StatefulWidget {
  const appHome({Key? key, required String title}) : super(key: key);

  @override
  State<appHome> createState() => _appHomeState();
}

class _appHomeState extends State<appHome> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test sdf title"),leading: Icon(Icons.ondemand_video),),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
      child: Icon(Icons.add),),
      body: Padding(
        padding: EdgeInsets.all(22.0),
        child: ListView(
          children: [
            Text("Heading", style: Theme.of(context).textTheme.headlineLarge,),
            Text("Sub-heading", style: Theme.of(context).textTheme.headlineMedium,),
            Text("Paragraph", style: Theme.of(context).textTheme.headlineSmall,),
            ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),
            OutlinedButton(onPressed: (){}, child: Text("Outlined Button")),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(Icons.book_online,)
            )
          ],
        ),
      ),
    );
  }
}




