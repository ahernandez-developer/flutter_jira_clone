// I used a router file for keep the routing in Flutter more easy
import 'package:flutter/cupertino.dart';
import './pages/proyects/proyects_page.dart';

class Router {
  //this clase manage the routing
  static String proyects = "/home";

//here is all the routes 
  static Map<String, Widget Function(BuildContext context)> routes = {
    Router.proyects: (context) => ProyectsPage()
  };
}
