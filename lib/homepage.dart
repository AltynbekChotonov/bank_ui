import "package:flutter/material.dart";

import 'bottomNavigation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [Header(), Options(), Banner(), Recent()],
            ),
            Positioned(bottom: 0, right: 0, left: 0, child: BottomNavigation())
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: Color(0xff24675B), borderRadius: BorderRadius.circular(30)),
      padding: EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 160,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.brown[500],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/map.png"), fit: BoxFit.fill)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Капчык",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text("Баланс",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  SizedBox(height: 10),
                  Text("\сом 2100",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("KGPAY",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("салам достор",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("Бүгүн эмне кылгыңыз келет?",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/user.jpg"),
                            fit: BoxFit.fill)),
                  )
                ],
              ),
              SizedBox(
                height: 170,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: 70,
                child: Icon(Icons.call_made, color: Colors.brown, size: 40),
              ),
              SizedBox(
                height: 5,
              ),
              Text("kgPay", style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: 70,
                child: Icon(Icons.call_received, color: Colors.brown, size: 40),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Сураныч", style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: 70,
                child: Icon(Icons.add, color: Colors.brown, size: 40),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Акча кошуу", style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: 70,
                child: Icon(Icons.book, color: Colors.brown, size: 40),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Паспорт китепчеси",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }
}

class Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 160,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color(0xff24675B),
              borderRadius: BorderRadius.circular(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("тааныштыруу",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              Text("Виртуалдык банкинг",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text("Санариптик үнөмдөө\nАккаунтуңузду бүгүн\nбаштаңыз!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Positioned(
            right: 30,
            bottom: 0,
            top: 0,
            child: Image.asset("assets/banner.png"))
      ],
    );
  }
}

class Recent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Акыркылар", style: TextStyle(fontSize: 20)),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            /* children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 30,
                    width: 40,
                    child: Icon(Icons.food_bank, color: Colors.brown, size: 30),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("тамак", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 30,
                    width: 40,
                    child: Icon(Icons.receipt, color: Colors.brown, size: 30),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Чек", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 30,
                    width: 40,
                    child: Icon(Icons.attach_money_rounded,
                        color: Colors.brown, size: 30),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Кредит", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 30,
                    width: 40,
                    child: Icon(Icons.local_hospital,
                        color: Colors.brown, size: 30),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Оорукана",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )
            ],*/
          ),
        ),
      ],
    );
  }
}
