import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text('Elecciones Alotenango 2023'),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
