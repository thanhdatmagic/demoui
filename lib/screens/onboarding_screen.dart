import 'package:fitness_app/screens/homepage_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({ Key? key }) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

// A list of three screens shown as a brief introduction

var pages = [
  PageViewModel(
  title: "Thân hình bốc lửa",
  body: "Tạo các đường nét cơ thể quyến rũ dựa vào các bài tập hướng dẫn",
  image: Center(
    child: Image.asset("assets/screen1nobg.png", height: 250.0),
  ),
  decoration: const PageDecoration(
    pageColor: Color(0xff192a56),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),    
    bodyTextStyle: TextStyle(color: Colors.white, fontSize: 18.0)

  )
),

PageViewModel(
  title: "Tập ngay",
  body: "Chúng tôi sẽ luôn đồng hành bên bạn trong những buổi tập cháy máy ",
  image: Center(
        child: Image.asset("assets/screen2nobg.png", height: 200.0),
  ),
  decoration: const PageDecoration(
    pageColor: Color(0xff192a56),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),    
    bodyTextStyle: TextStyle(color: Colors.white, fontSize: 18.0)

  )
),

PageViewModel(
  title: "Chiến ",
  body: "Đợi chờ gì nữa bồ zô",
  image: Center(
       child: Image.asset("assets/screen3nobg.png", height: 200.0),
  ),
  decoration: const PageDecoration(
    pageColor: Color(0xff192a56),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),    
    bodyTextStyle: TextStyle(color: Colors.white, fontSize: 18.0)

  )
)
];

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: IntroductionScreen(
        globalBackgroundColor: const Color(0xff192a56),
  pages: pages,
  onDone: () {
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(builder: (context) => HomePage()));
    // When done button is press
  },
  onSkip: () {
    // You can also override onSkip callback
  },
  showSkipButton: true,
  skip: const Icon(Icons.skip_next, color: Colors.white,),
  next: const Icon(Icons.arrow_right, color: Colors.white,),
  done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white,)),
  dotsDecorator: DotsDecorator(
    size: const Size.square(10.0),
    activeSize: const Size(20.0, 10.0),
    activeColor: Colors.amber,
    color: Colors.white,
    spacing: const EdgeInsets.symmetric(horizontal: 3.0),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0)
    )
  ),
),

      
    );
  }
}