import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "Debit Card",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),

          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CreditCardFront(),
              SizedBox(height: 20),
              CreditCardBack(),
            ],
          ),
        ),
      ),
    );
  }
}

class CreditCardFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 8,
      child: Container(
        width: 350,
        height: 200,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueGrey, Colors.blueAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  "AB Bank",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.credit_card,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
            Icon(
              Icons.sim_card,
              color: Colors.white,
              size: 30,
            ),
            Text(
              "1234 5420 9984 1437",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                letterSpacing: 4,
              ),
            ),



            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Card Holder",
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "Asma",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "VISA",
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "  Debit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}





class CreditCardBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 8,
      child: Container(
        width: 350,
        height: 200,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueGrey, Colors.blueAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.circular(15),
        ),




        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "24-Hour Call Center : 16257 or +8809666716374     www.abbd.com",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 9.5,
              ),
            ),

            Container(
              height: 40,
              color: Colors.black,
            ),
            SizedBox(height: 4),


            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Signature box
                Text(
                  "AUTHORIZED SIGNATURE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                Container(
                  color: Colors.grey,
                  width: 160,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:
                      Text(
                        "*******  ***  ***  091",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "NOT VALID UNLESS SIGNED",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),

              ],

            ),
            /*SizedBox(height: 10),*/

            // Address and Signature Text

            SizedBox(height: 4),
            Text(
              "This card is the property of AB Bank Limited,to whom it must be returend upon request or if found."
                  "The used of this card is convert by terms and conditions of the bank's agreement."
                  "If found,please return to AB Bank Limited.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 8.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}