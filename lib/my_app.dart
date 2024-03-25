//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/common/app_provider/app_provider.dart';
import 'package:helfer_app/common/controller/auth_controller.dart';
import 'package:helfer_app/features/login/screens/anmelden_login_screen.dart';
import 'package:helfer_app/features/login/screens/login/auth_bloc.dart';
//import 'package:helfer_app/features/chat/chat_bloc/chat_bloc.dart';
import 'package:helfer_app/features/6/chat/chat_screen/chat_screen.dart';
import 'package:helfer_app/features/7/einstellungen/settings_screen.dart';
import 'package:helfer_app/features/3/home/home_screen.dart';
import 'package:helfer_app/features/8/profil/profile_page.dart';
import 'package:helfer_app/features/4/selections/selection_screen.dart';
import 'package:helfer_app/features/splash/splash/presentation/splash_screen.dart';
import 'package:helfer_app/features/5/startseite/start_screen.dart';
import 'package:helfer_app/features/9/suche/search_screen.dart';
import 'package:helfer_app/utils/theme.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  final AuthBloc authBloc = AuthBloc();

  var userId;

  MyApp({super.key});
  get otherUserId => null;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: authBloc.userStream,
        builder: (context, snapshot) {
          if (false) {
          } else {
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => AuthNotifier(),
                ),
                ChangeNotifierProvider(
                    create: (context) => NavigationProvider()),
                //ChangeNotifierProvider<AuthBloc>(create: (_) => AuthBloc()),
                //ChangeNotifierProvider<ChatBloc>(create: (_) => ChatBloc()),
                //ChangeNotifierProvider<SettingsBloc>(create: (_) => SettingsBloc()),
              ],
              child: MaterialApp(
                  theme: MyAppTheme.lightTheme(),
                  initialRoute: '/splash',
                  routes: {
                    '/splash': (context) => const SplashScreen(),
                    '/login': (context) => const AnmeldenLogin(),
                    '/home': (context) => const HomeScreen(),
                    '/selection': (context) => const SelectionScreen(),
                    '/start': (context) => const StartScreen(),
                    '/chat': (context) => ChatScreen(
                          userId: userId,
                          otherUserId: otherUserId,
                        ),
                    '/einstellungen': (context) => const SettingsScreen(),
                    '/profil': (context) => const ProfilePage(),
                    '/search': (context) => const HelpOfferSearchScreen(),
                  }),
            );
          }
        });
  }
}
/*@override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthBloc>(create: (_) => AuthBloc()),
        ChangeNotifierProvider<ChatBloc>(create: (_) => ChatBloc()),
        ChangeNotifierProvider<SettingsBloc>(create: (_) => SettingsBloc()),
      ],
      child: MaterialApp(
        title: 'Meine App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Consumer<AuthBloc>(
          builder: (context, authBloc, child) {
            return authBloc.user != null ? StartScreen() : LoginPage();
          },
        ),
      ),
    );
  }
  
  
*/
