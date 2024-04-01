import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppbar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    double _value = 0.2;
    return AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Column(
        children: [
          const Spacer(
            flex: 4,
          ),
          const Text(
            '2/20',
            style: TextStyle(color: Colors.white),
          ),
          const Spacer(
            flex: 4,
          ),
          LinearProgressIndicator(
            value: _value,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ],
      ),
    );
  }
}
