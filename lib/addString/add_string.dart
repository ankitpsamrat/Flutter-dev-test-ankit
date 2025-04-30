import 'package:flutter/material.dart';

class AddString extends StatefulWidget {
  const AddString({super.key});

  @override
  State<AddString> createState() => _AddStringState();
}

class _AddStringState extends State<AddString> {
  //
  final _textController = TextEditingController();
  List<String> text = ['Name', 'Add', 'Ankit', 'Rahul', 'Niraj'];

  ValueNotifier<bool> updateUI = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: updateUI,
            builder: (context, value, child) {
              return ListView.builder(
                itemCount: text.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  final info = text[index];
                  return Text(info);
                },
              );
            },
          ),
          TextField(
            controller: _textController,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                text.add(_textController.text);
                _textController.clear();
              });
              updateUI.value = true;
            },
            child: const Text('Add string'),
          )
        ],
      ),
    );
  }
}
