import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            floating: true,
            backgroundColor: Colors.white54,
            leading: Icon(Icons.menu),
            actions: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.search),
              )
            ],
            title: Center(
              child: Text(
                'KYLJ Cinema',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                    width: 380,
                    height: 25,
                    child: const Text(
                      'Now Showing',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(),
                SingleChildScrollView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
