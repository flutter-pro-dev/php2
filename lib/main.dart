import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:society/firebase/void_call_back/void_parant.dart';
import 'package:society/forms/admin/admin_get_states.dart';
import 'package:society/main_page.dart';
import 'package:society/utils/constants/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    myTheme;
    return MaterialApp(
      theme:
          ThemeData(appBarTheme: const AppBarTheme(color: kblue, elevation: 2)),
      // theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      // home: AuthPage(),
      // home: MyHomePage(),
      // home: SelecteRole(),
      // home: const MainPage(),
      // home: SocietyAdmin(),
      // home: SocietyMembersLists(),
      // home: MembersDetailsScreen(),
      // home: SplashScreen(),
      // home: DynamicTextFieldPage(),
      // home: SocityRestitation(),
      // home: FlatExpension(),
      // home: ChooseCity(),
      // home: ChooseSociety(),
      // home: LogINScreen(),
      // home: MyTextFieldWidget(),
      // home: CreatePhases(),

      // home: TextFieldList(),
      // home: TextFieldListText(),
      // home: AdminChooseCity(),
      home: AdminGetStatePage(),
      // home: ParentWidgetPage(title: "voidCall Back"),
    );
  }
}
