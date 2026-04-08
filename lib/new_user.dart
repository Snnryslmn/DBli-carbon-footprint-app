import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'new_user.dart';

void main(){
  runApp(const MyApp());

}
class MyApp extends  StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context){
   return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: const NewUser(),
      );
}
}
class NewUser extends StatefulWidget{
  const NewUser({super.key});
  @override
  State<NewUser> createState() => _NewUserState();
}
class _NewUserState extends State<NewUser> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
final TextEditingController surnameController = TextEditingController();
@override
void dispose(){
  emailController.dispose();
  passwordController.dispose();
  nameController.dispose();
  surnameController.dispose();
  super.dispose();
  }

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
  
Text(
    "Yeni Kullanıcı Kaydı",
style:TextStyle(
color:Colors.white,
fontSize:20,
)
),
],
),
),


const SizedBox (height:20),
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
const Text("Yeni Kullanıcı Kaydı",
style:TextStyle(
fontSize:26,
fontWeight: FontWeight.w500,
),
),
const SizedBox(height:25),
Padding(
padding:const EdgeInsets.symmetric(horizontal: 24),
child:Form(
  key: _formKey,
  child:Column(
children:[
  TextFormField(
    controller: nameController,
    decoration: InputDecoration(
      hintText: "Ad",
      prefixIcon: const Icon(Icons.person_outline),
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color:Colors.grey.shade300),

      ),
     focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(8),
borderSide: BorderSide(color: greenColor),
), 
    ),
    validator: (value) {
  if(value== null || value.trim().isEmpty){
    return "Ad boş bırakılamaz";
  }
  return null;
    },
    
  ),
  const SizedBox(height: 12),
  TextFormField(
    controller: surnameController,
    decoration: InputDecoration(
      hintText:"Soyad",
      prefixIcon: const Icon(Icons.badge_outlined),
      filled:true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color:Colors.grey.shade300),

      ),
      focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(8),
borderSide: BorderSide(color: greenColor),
), 
    ),
    validator: (value) {
  if(value== null || value.trim().isEmpty){
    return "Soyad boş bırakılamaz";
  }
  return null;
    },
  ),
   const SizedBox(height: 12),
  TextFormField(
    controller: emailController,
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
errorBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide:  const BorderSide(color: Colors.red),
),
focusedErrorBorder: OutlineInputBorder(
   borderRadius: BorderRadius.circular(8),
  borderSide:  const BorderSide(color: Colors.red),
),
),
validator: (value) {
  if(value== null || value.trim().isEmpty){
    return "E-posta boş bırakılamaz";
  }
  if( !value.contains("@")){
    return "Geçerli bir e-posta giriniz";
  }
  return null;
},
),
const SizedBox(height:12),
TextFormField(
  controller: passwordController,
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
errorBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide:  const BorderSide(color: Colors.red),
),
focusedErrorBorder: OutlineInputBorder(
   borderRadius: BorderRadius.circular(8),
  borderSide:  const BorderSide(color: Colors.red),
),
),
validator: (value) {
  if(value== null || value.trim().isEmpty){
    return "Şifre boş bırakılamaz";
  }
  if(value.length < 8 ){
    return "Şifre en az 8 karakterli olmalı";
  }
  return null;
},
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
   if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ),
      );
   }
    },
child:const Text (
"Giriş Yap",
style:TextStyle(color:Colors.white),
),
),
),
TextButton(
  onPressed: (){
    Navigator.pop(context);
  },
  child: const Text("Zaten hesabın var mı?  Giriş Yap"),
   ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



