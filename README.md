# flutter_practice_linux_app


Simple form:

body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"),)),
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name"),)),
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "E-mail Name"),)),
          Padding(padding: EdgeInsets.all(20),child: ElevatedButton(child: Text("Save"),onPressed: (){showMyAlertDialog(context);},)),
        ],
      )
      
      
Dialog:

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
