//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/common/app_provider/app_provider.dart';
import 'package:helfer_app/features/authentification/presentation/screens/anmelden_login_screen.dart';
import 'package:helfer_app/features/authentification/presentation/screens/login/auth_bloc.dart';
//import 'package:helfer_app/features/chat/chat_bloc/chat_bloc.dart';
import 'package:helfer_app/features/chat/chat_screen/chat_screen.dart';
import 'package:helfer_app/features/einstellungen/einstellungen.dart';
import 'package:helfer_app/features/home/home_screen.dart';
import 'package:helfer_app/features/profil/profile_page_state.dart';
import 'package:helfer_app/features/selections/selection_screen.dart';
import 'package:helfer_app/features/splash/presentation/splash_screen.dart';
import 'package:helfer_app/features/startseite/start_screen.dart';
import 'package:helfer_app/utils/theme.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  final AuthBloc authBloc = AuthBloc();

  var userId;
  get otherUserId => null;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: authBloc.userStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const MaterialApp(
              home: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          } else {
            return MultiProvider(
              providers: [
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
