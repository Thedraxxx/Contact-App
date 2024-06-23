import 'package:flutter/material.dart';

class ContactDetailPage extends StatefulWidget {
  final String name;
  final String photo;
  final String num;
  const ContactDetailPage(
      {super.key, required this.name, required this.photo, required this.num});

  @override
  State<ContactDetailPage> createState() => _ContactDetailPageState();
}

class _ContactDetailPageState extends State<ContactDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(widget.photo),
                  ),
                  SizedBox(height: 15),
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Phone ',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      Text(widget.num,
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.green,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.phone, color: Colors.white),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blue,
                        child: IconButton(
                          onPressed: () {},
                          icon:
                              Icon(Icons.messenger_sharp, color: Colors.white),
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.orange,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.video_camera_back,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[700],
                    padding: EdgeInsets.all(15),
                  ),
                  onPressed: () {},
                  child: Text(
                    'History',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[700],
                    padding: EdgeInsets.all(15),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Storage locations',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        height: 100,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mode_edit_outlined,
                      size: 30,
                      color: Colors.white,
                    )),
                Text('edit',
                    style: TextStyle(
                      color: Colors.grey[700],
                    )),
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.share,
                      size: 30,
                      color: Colors.white,
                    )),
                Text('share',
                    style: TextStyle(
                      color: Colors.grey[700],
                    )),
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.more_vert_rounded,
                      size: 30,
                      color: Colors.white,
                    )),
                Text(
                  'more',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
