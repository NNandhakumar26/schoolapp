import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "one",
        body: "jkhdhagfgah",
        footer: Text("abc"),
        image: Image.network(
            "https://www.success.com/wp-content/uploads/2016/07/waystotapintoyourcreativeself.jpg"),
      ),
      PageViewModel(
        image: Image.network(
            "https://www.hdwallpapers.in/thumbs/2020/moon_tree_starry_sky_night_stars_dark_4k_hd_creative-t1.jpg"),
        title: "two",
        body: "jkhdhagfgah",
        footer: Text("abc"),
      ),
      PageViewModel(
        image: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFwxyL1uA1Li4CbTc4OCJMzRUKBrGGRTfqoQ&usqp=CAU"),
        title: "threeee",
        body: "jkhdhagfgah",
        footer: Column(children: [
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              suffixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            // obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              suffixIcon: Icon(Icons.visibility_off),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Forget password?',
                  style: TextStyle(fontSize: 12.0),
                ),
                RaisedButton(
                  child: Text('Login'),
                  color: Color(0xffEE7B23),
                  onPressed: () {
                    print("welcome");
                  },
                ),
              ],
            ),
          ),
          Container(

              // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Colors.red,
              child: Placeholder(
                color: Colors.amber,
              )),
        ]),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: IntroductionScreen(
        done: Text(
          "click",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onDone: () {},
        pages: getPages(),

        //  globalBackgroundColor: Colors.lightGreen,
      ),
    ));
  }
}
