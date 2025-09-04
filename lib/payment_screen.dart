import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  //

  final _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _amountController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Amount',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                if (_amountController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter an amount'),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {
                  // Handle payment logic here
                }
              },
              child: const Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
