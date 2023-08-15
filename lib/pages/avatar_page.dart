

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        actions: [
          CircleAvatar(backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C4E03AQFYfdDjrC7D3Q/profile-displayphoto-shrink_800_800/0/1609606872055?e=1697673600&v=beta&t=QznX2i7-cHuzo9IIviny4I1utJab-73BeTGsw3CIwkw"),),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,),),
        ],
      ),
      body: Column(
         children: [
           FadeInImage(
               image: NetworkImage("https://media.licdn.com/dms/image/C4E03AQFYfdDjrC7D3Q/profile-displayphoto-shrink_800_800/0/1609606872055?e=1697673600&v=beta&t=QznX2i7-cHuzo9IIviny4I1utJab-73BeTGsw3CIwkw"),
               placeholder: AssetImage('assets/images/loading.gif'),
               //height: 500,
               fit:BoxFit.cover,
               fadeInDuration: Duration(milliseconds: 1000),
           ),
          // Image.network("https://media.licdn.com/dms/image/C4E03AQFYfdDjrC7D3Q/profile-displayphoto-shrink_800_800/0/1609606872055?e=1697673600&v=beta&t=QznX2i7-cHuzo9IIviny4I1utJab-73BeTGsw3CIwkw"),
          // Image.asset('assets/images/loading.gif'),
        ],
      ),
    );
  }
}
