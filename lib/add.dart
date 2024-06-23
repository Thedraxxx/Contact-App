import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  final Function(String name,String phone,String email) onSave;
  const AddPage({super.key, required this.onSave,});
  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController Text1 =TextEditingController(text: '');
  TextEditingController Text2 =TextEditingController(text: '');
  TextEditingController Text3 =TextEditingController(text: '');
  void save(){
   
         widget.onSave(
          Text1.text,
          Text2.text,
          Text3.text,
         );
         Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Add Contact',style: TextStyle(color: Colors.white),),
      ),
      
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        
        child: Column(
          children: [
            //**** name halna thau */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[700],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white38,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        child: TextField(controller: Text1,
                          decoration: InputDecoration(
                              hintText: 'Name',
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.white38)),
                              keyboardType: TextInputType.name,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //***********************************Name halna htau */
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[700],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white38,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        child: TextField(controller: Text2,
                          decoration: InputDecoration(
                              hintText: 'Phone',
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.white38)),
                              keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            //////********************************* */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[700],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail_outline,
                      color: Colors.white38,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
            
                        child: TextField(
                          controller: Text3,
                          decoration: InputDecoration(
                              hintText: 'e-mail',
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.white38)),
                              keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            ElevatedButton(
                onPressed: save,
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
