import 'package:elecciones2023/providers/ui_provider.dart';
import 'package:elecciones2023/screens/candidatos_screen.dart';
import 'package:elecciones2023/screens/home_screen.dart';
import 'package:elecciones2023/widgets/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ( _ ) => new UiProvider()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': ( _ )=> const HomeScreen(),
          'candidatos': ( _ )=> const CandidatosScreen(),
        },
        theme: CustomThemeApp.lightTheme,
      )
    );
  }
}


