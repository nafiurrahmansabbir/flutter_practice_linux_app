import 'package:flutter/material.dart';

void main(){
  runApp(const LinuxApp());
}

class LinuxApp extends StatelessWidget{
  const LinuxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.red),
      // color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// creat snakeBar
void error(message,context){
  ScaffoldMessenger.of(context).showSnackBar(
   SnackBar(content: Text(message),
   ),
  );
}

void save(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(" Saved !"),
        content: Text("Saved Succesfully!"),
      );
    },
  );
}
void del(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(" Deleted !"),
        content: Text("delete Succesfully!"),
      );
    },
  );
}

//alertDualog
void showMyAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Confirmation Alert"),
        content: Text("Do you want to save information?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              save(context);

            },
            child: Text("Yes"),
          ),

          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              del(context);
            },
            child: Text("No"),
          ),
        ],
      );
    },
  );

  // child: ElevatedButton(child: Text("Click me"),
  //   onPressed: (){
  //     showMyAlertDialog(context);
  //   },),


}

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linux Home"),
        backgroundColor: Colors.teal,
        elevation: 7,

        actions: [
          IconButton(onPressed: (){error(("Search are not available"), context);}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){error(("Settings are not available"), context);}, icon: const Icon(Icons.settings)),
        ],

      ),


      floatingActionButton: FloatingActionButton(

        elevation:10,
        backgroundColor: Colors.teal,

        onPressed: () {  },
        child: const Icon(Icons.add),

      ),

      drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.black),
                currentAccountPicture: Image.network("https://assets.toptal.io/images?url=https%3A%2F%2Fbs-uploads.toptal.io%2Fblackfish-uploads%2Fcomponents%2Fblog_post_page%2Fcontent%2Fcover_image_file%2Fcover_image%2F1096554%2Fretina_500x200_cover-0408-FlutterMessangerDemo-Luke_Newsletter-30d5a65064b44f0ef56a801d4811964a.png"),
                accountName: const Text("Nafiur Rahman"),
                accountEmail: const Text("nafiurrahmansabbir@gmail.com"),
              )
          ),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: (){
              error("You are already Home Page", context);

          },
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text("Email"),
            onTap: (){
              error(("Email are not available"), context);

            },
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text("Contact"),
            onTap: (){
              error(("Contact are not available"), context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: (){
              error(("Settings are not available"), context);
            },
          ),
        ],
      ),
    ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],

        onTap:(int index){
          if(index==0){
            error(("Not available"), context);
          }
          if(index==1){
            error(("Not available"), context);
          }
          if(index==2){
            error(("Not available"), context);
          }
        },
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"),)),
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name"),)),
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "E-mail Name"),)),
          Padding(padding: EdgeInsets.all(20),child: ElevatedButton(child: Text("Save"),onPressed: (){showMyAlertDialog(context);},)),
        ],
      )





    );
  }

}