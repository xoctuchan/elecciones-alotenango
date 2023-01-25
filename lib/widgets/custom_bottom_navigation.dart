import 'package:elecciones2023/providers/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex=uiProvider.selectedMenuOpt;
    
    return BottomNavigationBar(
      onTap: (int i) {
        uiProvider.selectedMenuOpt=i;
      },
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: 'Candidatos'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Eventos'
        )
      ],
    );
  }
}