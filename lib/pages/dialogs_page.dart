
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogsPage extends StatelessWidget {

  showAlert(BuildContext mandarina){
    showDialog(
        context: mandarina,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Tiutlo de la alerta"),
            backgroundColor: Colors.white,
            content: Text("Contenido de la alerta"),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
                //Navigator.pop(context);
              }, child: Text("Aceptar",),),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Cancelar",),),
            ],
          );
        }
    );
  }

  showAlert2(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            contentPadding: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            //title: Text("Tiutlo de la alerta"),
            //backgroundColor: Colors.white,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Titulo de la alerta",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                  color: Colors.black87,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.black87,
                  backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C4E03AQFYfdDjrC7D3Q/profile-displayphoto-shrink_800_800/0/1609606872055?e=1697673600&v=beta&t=QznX2i7-cHuzo9IIviny4I1utJab-73BeTGsw3CIwkw"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.star,color: Colors.amber),
                    Icon(Icons.star,color: Colors.amber),
                    Icon(Icons.star,color: Colors.amber),
                    Icon(Icons.star,color: Colors.amber),
                    Icon(Icons.star,color: Colors.amber),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Text("Contenido de la alerta",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                    fontSize: 13,
                  ),),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Aceptar",),),
                    SizedBox(
                      height: 4,
                    ),
                    TextButton(onPressed: (){}, child: Text("Cancelar",),),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialogs Page"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  showAlert(context);
                },
                child: Text(
                  "Alert 1"
                ),
            ),
            ElevatedButton(
              onPressed: (){
                showAlert2(context);
              },
              child: Text(
                  "Alert 2"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
