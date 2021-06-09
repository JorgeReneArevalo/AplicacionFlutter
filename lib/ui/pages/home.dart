import 'package:disenios_app/models/ciudad_model.dart';
import 'package:disenios_app/ui/widgets/card_widget.dart';
import 'package:disenios_app/ui/widgets/city_list_widget.dart';
import 'package:disenios_app/ui/widgets/custom_appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBAr(),
          CityListWidget(),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: ListView(
              children: [
                CarWidget(),
                CarWidget(),
                CarWidget(),
              ],
            ),
          ),
          // Container(
          //   height: 100,
          //   color: Colors.amber,
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.camera_alt_outlined,
          size: 30,
        ),
      ),
    );
  }
}
