import 'package:flutter/material.dart';
import 'home/account_tab.dart';
import 'home/cart_tab.dart';
import 'home/historical_tab.dart';
import 'home/home_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();

  // Page
  AccountTab accountTab;
  CartTab cartTab;
  HistoricalTab historicalTab;
  HomeTab homeTab;

  List<Widget> pageTabs;
  Widget currentPage;

  @override
  void initState() {
    accountTab = AccountTab();
    cartTab = CartTab();
    historicalTab = HistoricalTab();
    homeTab = HomeTab();

    pageTabs = [homeTab, cartTab, historicalTab, accountTab];

    currentPage = homeTab;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentPage,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() {
            currentTab = index;
            currentPage = pageTabs[index];
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Accueil'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), title: Text('Panier')),
          BottomNavigationBarItem(
              icon: Icon(Icons.clear_all), title: Text('Historique')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Compte')),
        ],
      ),
    );
  }
}
