
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s6_componentes/pages/avatar_page.dart';
import 'package:s6_componentes/pages/dialogs_page.dart';

class  HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: Colors.redAccent,
                  image: const DecorationImage(
                    image: NetworkImage("https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg"),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(5,5),
                      blurRadius: 12,
                    ),
                  ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  letterSpacing: 1,
                  ),
                ),
              const SizedBox(
                width: 160,
                child: Divider(),
              ),
              ItemComponentWidget(title: "Avatar", toPage: AvatarPage()),
              ItemComponentWidget(title: "Dialogs",toPage: DialogsPage()),
              ItemComponentWidget(title: "Alerts",toPage: AvatarPage()),
              ItemComponentWidget(title: "Otros",toPage: AvatarPage()),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {

  String title;
  Widget toPage;
  ItemComponentWidget({required this.title, required this.toPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 12,
            offset: Offset(4,4),
          ),
        ],
      ),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>toPage));
        },
        leading: Icon(
          Icons.check_circle_outline,
          color:Color(0xff14213d),
        ),
        title: Text(
            title,
            style: GoogleFonts.poppins()),
        subtitle: Text(
            "Ir al detalle del $title",
            style: GoogleFonts.poppins()
        ),
        trailing: Icon(
            Icons.chevron_right,

        ),
      ),
    );
  }
}



