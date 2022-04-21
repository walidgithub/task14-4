import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'top_bar.dart';

final List<String> grouppath = [
  'images/flower1.jpg',
  'images/flower5.jpg',
  'images/flower3.jpg'
];

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> imageSliders = grouppath
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: Image.asset(item, fit: BoxFit.cover, width: 1000.0),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: TopBar(),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Sign In',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        // hintText: "Enter your mail",
                        // Or
                        labelText: "Enter your mail",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelStyle: new TextStyle(color: Colors.blue),
                        prefixIcon: Icon(Icons.email)),
                    //define the characters in the field or the type of field
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (String value) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Enter your Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (String value) {},
                    //make the password secured
                    obscureText: true,
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(50.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/flowers',
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //***************************************************************************************************
            Expanded(
              child: CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 500),
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: grouppath.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.blue)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    ));
  }
}
