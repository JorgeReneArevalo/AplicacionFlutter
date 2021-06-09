import 'package:disenios_app/domain/bloc/slide_bloc.dart';
import 'package:disenios_app/ui/widgets/camera_widget.dart';
import 'package:disenios_app/ui/widgets/card_widget.dart';
import 'package:disenios_app/ui/widgets/city_list_widget.dart';
import 'package:disenios_app/ui/widgets/custom_appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final slideBloc = Provider.of<SlideBloc>(context);
    return Scaffold(
      body: Column(
        children: [
          CustomAppBAr(),
          CityListWidget(),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: slideBloc.tarjetas.length,
              itemBuilder: (BuildContext context, int index) {
                return CarWidget(
                  tarjeta: slideBloc.tarjetas[index],
                );
              },
            ),
          ),
          // Container(
          //   height: 100,
          //   color: Colors.amber,
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => CapturarFotoWidget()));
        },
        child: Icon(
          Icons.camera_alt_outlined,
          size: 30,
        ),
      ),
    );
  }
}
