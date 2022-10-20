import "package:flutter/material.dart";

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.home_rounded, size: 35, color: Color(0xff24675B)),
            Text("Башы",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff24675B)))
          ],
        ),
        Column(
          children: [
            Icon(Icons.menu_book_outlined, size: 35),
            Text("Заказдар",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
          ],
        ),
        Column(
          children: [
            Icon(Icons.chat_bubble_outline, size: 35),
            Text("Чат",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
          ],
        ),
        Column(
          children: [
            Icon(Icons.mail_outline, size: 35),
            Text("кирүүчү куту",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
          ],
        )
      ],
    );
  }
}
