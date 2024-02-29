import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MipaginaInicialState();
}

class _MipaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Angel Gomez"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Usuario",
                icon: Icon(Icons.person),
              ),
              Tab(
                text: "Compra",
                icon: Icon(Icons.shopping_cart),
              ),
              Tab(
                text: "Fill",
                icon: Icon(Icons.fire_truck),
              ),
              Tab(
                text: "Jefe",
                icon: Icon(Icons.people_alt_outlined),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: const <Widget>[
            Center(
              child: Text("Opcion 1",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Text("Opcion 2",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Text("Opcion 3",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Text("Opcion 4",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
