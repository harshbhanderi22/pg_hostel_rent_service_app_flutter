import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:real/Utils/Routes/route_name.dart';
import 'package:real/Utils/Routes/routes.dart';
import 'package:real/Viewmodel/auth_viewmodel.dart';
import 'package:real/firebase_options.dart';

import 'Utils/app_styles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthViewModel())],
      child: ScreenUtilInit(
        designSize: const Size(360, 740),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'popins',
            primaryColor: primary,
          ),
          initialRoute: RoutesName.introScreen,
          onGenerateRoute: Routes.generateRoutes,
        ),
      ),
    );
  }
}
