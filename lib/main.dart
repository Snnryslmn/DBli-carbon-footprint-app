import 'package:flutter/material.dart';
import 'welcome_screen.dart';

void main(){
  runApp(const MyApp());

}
class MyApp extends  StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context){
   return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: const LoginPage(),
      );
}
}
class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  @override
Widget build(BuildContext context){

const Color greenColor =Color (0xFF1B5E20);
  return Scaffold(
backgroundColor: const  Color(0xFFF7F7F7),
body:SafeArea(
child:Column(
children:[
  Container(
height:60,
width:double.infinity,
color:greenColor,
child:const Stack (
alignment:Alignment.center,
children:[
  Positioned(
left:12,
child: Icon(Icons.arrow_back, color: Colors.white),
),
Text(
    "Giriş",
style:TextStyle(
color:Colors.white,
fontSize:20,
)
),
],
),
),


const SizedBox (height:30),
CircleAvatar(
radius:28,
backgroundColor:const Color(0xFF1B5E20),
child: Icon(
Icons.eco,
color: Colors.white,
size:30,

),
),
const SizedBox(height:14),
const Text("Giriş",
style:TextStyle(
fontSize:26,
fontWeight: FontWeight.w500,
),
),
const SizedBox(height:25),
Padding(
padding:const EdgeInsets.symmetric(horizontal: 24),
child:Column(
children:[
  TextField(
decoration:InputDecoration(
hintText:"E-posta",
prefixIcon: const Icon(Icons.email_outlined),
filled: true,
fillColor:Colors.white,
enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(8),
borderSide: BorderSide(color: Colors.grey.shade300),
),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(8),
borderSide: BorderSide(color: greenColor),
),

),
),
const SizedBox(height:12),
TextField(
obscureText:true,
decoration:InputDecoration(
hintText:"Şifre",
prefixIcon: const Icon(Icons.lock_outline),
suffixIcon: const Icon(Icons.visibility_outlined),
filled: true,
fillColor:Colors.white,
enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(8),
borderSide: BorderSide(color: Colors.grey.shade300),
),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(8),
borderSide: BorderSide(color: greenColor),
),
),

),
const SizedBox(height:10),
 Align(
alignment :Alignment.centerLeft,
child:TextButton(
  onPressed:(){
    print("Şifremi unuttum tıklandı");
  },
  child:const Text(
"Şifremi Unuttum",
style:TextStyle(fontSize:13),
),
),
),
const SizedBox(height:30),
SizedBox(
width:double.infinity,
height:46,
child:ElevatedButton(
style:ElevatedButton.styleFrom(
backgroundColor:greenColor,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(8),
),
),
onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ),
      );
    },
child:const Text (
"Giriş Yap",
style:TextStyle(color:Colors.white),
),
),
),
const SizedBox(height:12),
SizedBox(
width:double.infinity,
height:46,
child:OutlinedButton(
style:OutlinedButton.styleFrom(
backgroundColor:Colors.white,
side: BorderSide(color: Colors.grey.shade300),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(8),
),
),
onPressed: () {},
child:const Text (
"Yeni Kullanıcı Kaydı",
style:TextStyle(color:Colors.black87),

),
),
),

],
),
),

],
),
),
);
}

  
}