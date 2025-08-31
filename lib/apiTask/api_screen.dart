import 'package:flutter/material.dart';
import 'package:razorpay_gateway/apiTask/api_service.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  @override
  void initState() {
    ApiService.fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: ApiService.infoMap.length,
        itemBuilder: (BuildContext context, int index) {
          final title = ApiService.infoMap.keys.elementAt(index);
          final body = ApiService.infoMap[title]!;

          return ListTile(
            title: Text(title),
            subtitle: Text(body),
          );
        },
      ),
    );
  }
}
