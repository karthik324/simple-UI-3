import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  Widget text;
  IconData icon;
  Widget trailText;
  CustomListTile(
      {Key? key,
      required this.text,
      required this.trailText,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      title: text,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [trailText, SizedBox(width: 5), Icon(icon)],
      ),
    );
  }
}

class CustomCards extends StatelessWidget {
  final Color color;
  final String text;
  final String amount;
  CustomCards(
      {Key? key, required this.color, required this.text, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 160,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              amount,
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  void onpressed() {}
  final Widget text;
  MaterialStateProperty<Color>? color;

  CustomElevatedButton({Key? key, required this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        child: text,
        style: ButtonStyle(
            backgroundColor: color,
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ))));
  }
}

class DisplayTile extends StatelessWidget {
  String orderId;
  String timeNdate;
  String amount;
  String imageLink;
  DisplayTile(
      {Key? key,
      required this.imageLink,
      required this.orderId,
      required this.amount,
      required this.timeNdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 85,
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: .6, color: Colors.grey))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 5),
                  child: Card(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        '$imageLink',
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "Order #$orderId",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      timeNdate,
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
                SizedBox(
                  width: 55,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "₹$amount",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 5,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Successful")
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                "₹$amount depostied to 588602000000138",
                style: TextStyle(fontSize: 10, color: Colors.grey[800]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
