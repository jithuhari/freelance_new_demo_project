import 'package:flutter/material.dart';
import 'package:freelance_project_ui/const/colors.dart';
import 'widgets/tab_bar_screen.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isFollowed = false;

  void _toggleFollow() {
    setState(() {
      _isFollowed = !_isFollowed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            height: 150,
                            child: Image.asset(
                              "assets/appbarbg.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Container(
                          //   child: Image.asset("assets/"),
                          // )
                        ],
                      ),
                      Container(
                        height: 300,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Center(
                        child: CircleAvatar(
                          radius: 85,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 75,
                            backgroundImage: AssetImage('assets/dp.jpg'),
                          ),
                        ),
                      ),
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: mainColor
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.cake,color: mainColor,),
                          SizedBox(
                            width: 12,
                          ),
                          Text('10 - 10 - 1998',
                          style: TextStyle(color: mainColor),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.male,color: mainColor,),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Male',style: TextStyle(color: mainColor),)
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.location_on_outlined),
                          SizedBox(
                            width: 12,
                          ),
                          Text('London , '),
                          SizedBox(
                            width: 10,
                          ),
                          Text('United Kingdom')
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          followButton(),
                          const SizedBox(width: 10),
                          shareButton(),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(image: AssetImage('assets/fb.png')),
                          SizedBox(
                            width: 40,
                          ),
                          Image(image: AssetImage('assets/insta.png')),
                          SizedBox(
                            width: 40,
                          ),
                          Image(image: AssetImage('assets/linkedin.png')),
                          SizedBox(
                            width: 40,
                          ),
                          Image(image: AssetImage('assets/youtube.png')),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        '120',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold,color:mainColor),
                      ),
                      Text('Posts',
                      style: TextStyle(color:mainColor),),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 1.0,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Column(
                    children: const [
                      Text(
                        '240',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold,color:mainColor),
                      ),
                      Text('Followers',style: TextStyle(color:mainColor),),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 1.0,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Column(
                    children: const [
                      Text(
                        '360',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold,color:mainColor),
                      ),
                      Text('Following',style: TextStyle(color:mainColor),),
                    ],
                  ),
                ],
              ),

              const TabBarScreen(),
            ],
          ),
        ),
      ),
    );
  }

  // Share Button

  ElevatedButton shareButton() {
    return ElevatedButton(
      onPressed:(){},
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: buttonColor,
          ),
        ),
      ),
      child: const Icon(
        Icons.share_outlined,
        color: buttonColor,
      ),
    );
  }

  // Follow Button
  ElevatedButton followButton() {
    return ElevatedButton(
      onPressed: _toggleFollow,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Text(
            _isFollowed ? 'Following' : 'Follow',
            style: TextStyle(
              color: _isFollowed ? Colors.white : Colors.white,
            ),
          ),
          _isFollowed ? const Icon(Icons.check) : const Icon(Icons.add)
        ],
      ),
    );
  }
}

