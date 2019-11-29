import 'package:akount_books/Api/BusinessPage/create_customer.dart';
import 'package:akount_books/Api/BusinessPage/create_invoice.dart';
import 'package:akount_books/Screens/UserPage/dasboard.dart';
import 'package:akount_books/Widgets/buttons.dart';
import 'package:akount_books/utilities/svg_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localstorage/localstorage.dart';

final Widget svg = new SvgPicture.asset(
  SVGFiles.success_icon,
  semanticsLabel: 'Akount-book',
  allowDrawingOutsideViewBox: true,
);

class InvoiceSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LocalStorage storage = new LocalStorage('some_key');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          leading: InkWell(
            child: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pushNamed(context, "/user_dashboard");
            },
          ),
        ),
        body: new Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    svg,
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "You have successfully send",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                PrimaryButton(
                    buttonText: Text("SEND REMINDER",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddInvoice()),
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
                SecondaryButton(
                    buttonText: Text("SEND RECEIPT",
                        style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddCustomer()),
                      );
                    }),
                SizedBox(height: 30,),
                InkWell(
                  child: Text("BACK TO CUSTOMERS PAGE", style: TextStyle(color: Theme.of(context).primaryColor)),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}