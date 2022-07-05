import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        height: double.infinity,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("Your Order has been placed successfully."),
              Text(
                "₹259",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text("Payment mode: Cash on Takeaway")
            ],
          ),
        ),
      ),
    );
  }
}
