import 'package:contactapp/contact_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Product",
      home: MainPage(),
    );
    ;
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List contactdetail = [
    {'Name': 'Roshan Gurung', 'photo': 'Images/roshan.jpg','num':'9803030303'},
    {'Name': 'Aishawarya Adhikari', 'photo': 'Images/aish.jpg','num':'9803030303'},
    {'Name': 'Dipsan Kadariya', 'photo': 'Images/dipson.png','num':'9803030303'},
    {'Name': 'Manish Shrestha', 'photo': 'Images/manis.jpg','num':'9803030303'},
    {'Name': 'Prabesh Nepal', 'photo': 'Images/prabesh.jpeg','num':'9803030303'},
    {'Name': 'Richa Adhikari', 'photo': 'Images/richa.jpg','num':'9803030303'},
    {'Name': 'Tiks Chimariya', 'photo': 'Images/tiks.jpg','num':'9803030303'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "phone",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
          ),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                )),
          ],
        ),
        //**************** */
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: contactdetail.length,
                    itemBuilder: (context, index) {
                      final contact = contactdetail[index];
                      return Padding(
                        padding: const EdgeInsets.all(9),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          leading: Container(
                            padding: EdgeInsets.only(right: 3.0),
                            child: CircleAvatar(
                              radius: 60, // Adjust the radius as needed
                              backgroundImage: AssetImage('${contact['photo']}'),
                            ),
                          ),
                          
                          title: Text("${contact['Name']}",style: TextStyle(fontSize: 20,color: Colors.white),),
                          tileColor: Color.fromARGB(118, 128, 125, 125),
                          onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => ContactDetailPage(
                            name: contact['Name'],
                            photo: contact['photo'],
                            num: contact['num'],
                          )));
                          },
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contact",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    decorationThickness: 2),
              ),
            ],
          ),
        ));
  }
}
