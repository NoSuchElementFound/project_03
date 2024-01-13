import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './dashboard.dart';

class homepage extends StatefulWidget
{
  const homepage({super.key});

  @override
  State<StatefulWidget> createState()=> _homepagestate();

}

class _homepagestate extends State<homepage> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      const Text("Homepage")
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });;
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Dashboard"),
          BottomNavigationBarItem(icon:Icon(Icons.account_circle),label: "Account"),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart")
        ],

    ),
      body: _switchOnIndex(),
    );
  }
  _switchOnIndex()
  {
    switch(_currentIndex)
        {
      case 0: const dashboard();
      case 1:
        return const Scaffold(
          body: Center(child: Text("AccountSection"),),
        );
      case 2:
        return const Scaffold(
          body: Center(child: Text("CartSection"),),
        );
      default:
        return const Scaffold(
          body: Center(child: Text("ErrorSection"),),
        );

    }
  }

}

