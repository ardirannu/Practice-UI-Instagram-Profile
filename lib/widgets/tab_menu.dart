import 'package:flutter/material.dart';

class TabMenu extends StatelessWidget {
  const TabMenu(
    this.isActive,
    this.iconData,
  );

  final bool isActive;
  final iconData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive == true ? Colors.black : Colors.white,
              width: 1,
            )
          )
        ),
        child: iconData,
      ),
    );
  }
}

