import 'package:boilerplate/stores/example/ex_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  late ExStore exStore;

  @override
  void initState() {
    super.initState();

    exStore = Provider.of<ExStore>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: buildTextButton(
                onTap: () {
                  exStore.addDataList("en");
                },
                text: 'Add'),
          ),
          SizedBox(
            height: 10,
          ),
          Observer(
              builder: ((context) => Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      ...exStore.listData.map((element) => Text(
                            element.toString(),
                            style: TextStyle(fontSize: 25),
                          ))
                    ],
                  ))),
        ],
      ),
    );
  }

  InkWell buildTextButton({required onTap, required text}) {
    return InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(5)),
          child: Text(
            text,
            style: TextStyle(fontSize: 50),
          ),
        ));
  }
}
