import 'package:flutter/material.dart';
//import 'package:helfer_app/common/database_repository.dart';
//import 'package:helfer_app/common/mock/mock_repository.dart';
//import 'package:helfer_app/common/mock/mock_service.dart';
import 'package:helfer_app/features/authentification/presentation/screens/anmelden_login_screen.dart';
import 'package:helfer_app/features/authentification/presentation/auth_model.dart';
//import 'package:helfer_app/features/authentification/presentation/login_page.dart';
//import 'package:helfer_app/features/base_screen.dart';
import 'package:helfer_app/features/splash/presentation/splash_screen.dart';
import 'package:helfer_app/utils/theme.dart';
import 'package:provider/provider.dart';

/*class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  // DatabaseRepository ist eine abstrakte Klasse,
  // die von MockRepository, JsonRepository und SharedPrefsRepository implementiert wird.
  //
  // je nachdem, welche Implementierung wir hier verwenden,
  // nutzt die App als Datenquelle entweder eine lokale Variablen, JSON-Datei oder
  // die SharedPreferences.
  //
  late MockService mockService;
  late DatabaseRepository databaseRepository;
  @override
  void initState() {
    super.initState();
    mockService = MockService();

    databaseRepository //= JsonRepository(JsonService());
        //               = SharedPrefsRepository(SharedPrefsService());
        = MockRepository(mockService);
  }}*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthModel()..checkAuthStatus(),
      child: MaterialApp(
        theme: MyAppTheme.lightTheme(),
        home: Consumer<AuthModel>(
          builder: (context, authModel, child) {
            return authModel.isAuthenticated ? SplashScreen() : AnmeldenLogin();
          },
        ),
      ),
    );
  }
}
