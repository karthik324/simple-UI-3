import 'package:flutter/material.dart';
import 'package:ui_page_app_3/custom_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI app 3',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_outlined),
          title: Text('Payments'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.5),
              child: Icon(Icons.info_outlined),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Transaction Limit',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 3),
                            child: Text(
                                '''A free limit up to which you will recieve
        the online payments directly in your bank.'''),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LinearProgressIndicator(
                              color: Colors.blue,
                              value: 0.3,
                              minHeight: 10,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('36,668 left of 50000'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Increase limit')),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              CustomListTile(
                  text: Text(
                    'Default Method',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  trailText: Text('Online Payments'),
                  icon: Icons.arrow_forward_ios_outlined),
              CustomListTile(
                  text: Text(
                    'Payment Profile',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  trailText: Text('Bank Account'),
                  icon: Icons.arrow_forward_ios_outlined),
              SizedBox(
                height: 3,
              ),
              const Divider(
                thickness: 2,
                indent: 17,
                endIndent: 25,
                color: Colors.grey, // The color to use when painting the line.
                height: 20, // The divider's height extent.
              ),
              CustomListTile(
                  text: Text(
                    'Payments Overview',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  trailText: Text('Life Time'),
                  icon: Icons.keyboard_arrow_down),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    CustomCards(
                      color: Colors.orange,
                      text: 'AMOUNT ON HOLD',
                      amount: '₹0',
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    CustomCards(
                      color: Colors.green,
                      text: 'AMOUNT RECEIVED',
                      amount: '₹13,332',
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Transactions',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 8),
                    child: Row(
                      children: [
                        CustomElevatedButton(
                          text: Text('On hold'),
                          color: MaterialStateProperty.all(Colors.grey),
                        ),
                        SizedBox(width: 10),
                        CustomElevatedButton(text: Text('Payouts (15)')),
                        SizedBox(width: 10),
                        CustomElevatedButton(
                          text: Text('Refunds'),
                          color: MaterialStateProperty.all(Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  DisplayTile(
                    imageLink: 'assets/images/image1.jpg',
                    orderId: 'Order #1688068',
                    amount: '₹799',
                    dateNtime: 'Jul 12, 02:06 PM',
                  ),
                  const Divider(
                    thickness: 2,
                    indent: 25,
                    endIndent: 20,
                    color:
                        Colors.grey, // The color to use when painting the line.
                    height: 20, // The divider's height extent.
                  ),
                  DisplayTile(
                    imageLink: 'assets/images/image2.jpg',
                    orderId: 'Order #1457741',
                    amount: '₹397.4',
                    dateNtime: 'Apr 26, 07:47 AM',
                  ),
                  const Divider(
                    thickness: 2,
                    indent: 25,
                    endIndent: 20,
                    color:
                        Colors.grey, // The color to use when painting the line.
                    height: 20, // The divider's height extent.
                  ),
                  DisplayTile(
                    imageLink: 'assets/images/image3.jpg',
                    orderId: 'Order #1408896',
                    amount: '₹686.42',
                    dateNtime: 'Apr 11, 10:54 AM',
                  ),
                  const Divider(
                    thickness: 2,
                    indent: 25,
                    endIndent: 20,
                    color:
                        Colors.grey, // The color to use when painting the line.
                    height: 20, // The divider's height extent.
                  ),
                  DisplayTile(
                    imageLink: 'assets/images/image4.jpeg',
                    orderId: 'Order #1369633',
                    amount: '₹1123.5',
                    dateNtime: 'Apr 2, 11:29 AM',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
