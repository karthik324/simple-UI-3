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
        padding: const EdgeInsets.all(9),
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
  String? imageLink;
  String? orderId;
  String? amount;
  String? dateNtime;
  DisplayTile(
      {Key? key,
      required this.imageLink,
      this.orderId,
      this.amount,
      this.dateNtime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 115,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 3),
                  child: Card(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset('$imageLink',
                          width: 50, height: 50, fit: BoxFit.fill),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5),
                  child: Text(
                    orderId!,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 83,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5),
                  child: Text(
                    amount!,
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text(dateNtime!),
                ),
                SizedBox(
                  width: 70,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 5,
                ),
                SizedBox(
                  width: 4,
                ),
                Text('Successful')
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("$amount deposited to 58860200000135"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
