import 'package:elecciones2023/providers/ui_provider.dart';
import 'package:elecciones2023/screens/candidatos_screen.dart';
import 'package:elecciones2023/screens/home_screen_2.dart';
import 'package:elecciones2023/widgets/custom_app_bar.dart';
import 'package:elecciones2023/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: _HomePageBody(),
      //floatingActionButton: const ScanButton(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    switch (currentIndex) {
      case 0:
        return const HomeScreen2();
      case 1:
        return const CandidatosScreen();
      case 2:
        return const HomeScreen2();
      default:
      return const HomeScreen2();
    }
  }
}