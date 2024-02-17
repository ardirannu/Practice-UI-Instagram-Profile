import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/counter_info.dart';
import 'package:instagram_ui/widgets/profile_picture.dart';
import 'package:instagram_ui/widgets/story_picture.dart';
import 'package:instagram_ui/widgets/tab_menu.dart';
import 'package:instagram_ui/widgets/bottom_nav_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //set bayangan
        title: Row(
          children: [
            Text("ardianto",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.arrow_drop_down),
          ]
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.add_box_outlined)
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.menu)
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            children: [
              ProfilePicture(),
              Expanded( //semacam container yg widthnya 100 %
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, //atur jarak antar row otomatis
                  children: [
                    CounterInfo("Posts", "123"),
                    CounterInfo("Follower", "999"),
                    CounterInfo("Following", "1"),
                  ]
                )
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Ardianto Rannu",
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Software Engineer",
                        style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit. ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "#hashtag",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ]
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0), // Atur radius sesuai keinginan Anda
                      ),
                  ), 
                  child: Text("Edit Profile"),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryPicture("Bali", "https://picsum.photos/id/13/2500/1667", Color.fromARGB(199, 255, 94, 0)),
                StoryPicture("Lombok", "https://picsum.photos/id/54/3264/2176", Color.fromARGB(198, 0, 255, 68)),
                StoryPicture("Makassar", "https://picsum.photos/id/57/2448/3264", Color.fromARGB(198, 0, 166, 255)),
                StoryPicture("Jakarta", "https://picsum.photos/id/88/367/267", Color.fromARGB(198, 255, 0, 247)),
                StoryPicture("Yogyakarta", "https://picsum.photos/id/78/1584/2376", Color.fromARGB(199, 255, 94, 0)),
                StoryPicture("Papua", "https://picsum.photos/id/17/2500/1667", Color.fromARGB(198, 255, 242, 0)),
                StoryPicture("Palembang", "https://picsum.photos/id/23/2500/1667", Color.fromARGB(198, 255, 0, 0)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabMenu(true, Icon(Icons.grid_on_outlined)),
              TabMenu(false, Icon(Icons.person_pin_outlined)),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            //matikan scroll, jika tidak tampilan jadi blank karna gridview bisa discroll
            // sedangkan gridview berada didalam listview yg mempunyai scroll juga, 
            // makanya harus dimatikan scroll gridviewnya supaya tidak blank
            physics: NeverScrollableScrollPhysics(),
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ), 
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${index + 50}/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    bottomNavigationBar: BottomNavBar(),
    );
  }
}

