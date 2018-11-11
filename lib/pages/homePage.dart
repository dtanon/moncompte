import 'package:flutter/material.dart';
import '../utils/constantes.dart';
//import 'package:flutter_html_view/flutter_html_view.dart';  

import '../utils/menu.dart';

class HomePage extends StatelessWidget {

  final String html = '''
<h1>This is &nbsp;heading 1</h1>
<h2>This is heading 2</h2>
<h3>This is heading 3</h3>
<h4>This is heading 4</h4>
<h5>This is heading 5</h5>
<h6>This is heading 6</h6>
<img alt="Test Image" src="https://source.unsplash.com/random/300x200">
<!--<video src="https://www.sample-videos.com/video/mp4/720/big_buck_bunny_720p_5mb.mp4"></video>-->
<a data-id="1" href="https://google.com">Go Google</a>
<a href="mailto:ponnamkarthik3@gmail.com">Mail to me</a>

<video id="video1" >
    <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4">
 </video>
  
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.red,elevation: 0.0),
      body: Container(
        //padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                //color: Colors.red,
                /*gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.7),
                      Colors.white,
                    ],
                  stops: [0.0,1.0]
                ),*/
                image: new DecorationImage(
                  alignment: Alignment.topCenter,
                  //image: new AssetImage("home.jpeg"),
                  image: new NetworkImage('https://raw.githubusercontent.com/dtanon/moncompte/master/assets/images/home.jpeg'),
                  colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.2), BlendMode.dstATop),
                  
                  //fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 70.0)),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    alignment: Alignment.center,
                    decoration: new BoxDecoration(
                      color: Color(rougeLight),
                      shape: BoxShape.circle,
                    ),
                    child: Text("DT", style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 35.0),
                        child: Text("Bienvenue dans votre espace client", style: Theme.of(context).textTheme.title),
                      )
                    ],
                  ),

                ],
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("220", style: TextStyle(fontSize: 20.0)),
                            Text("Intervention"),
                            ],
                        )
                        
                    ),
                    Expanded(
                      child: 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("7", style: TextStyle(fontSize: 20.0)),
                            Text("En cours"),
                            ],
                        )
                        
                    ),
                    Expanded(
                      child: 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("2740", style: TextStyle(fontSize: 20.0)),
                            Text("Points InClub"),
                            ],
                        )
                        
                    ),                    
                  ],
                )
              ],

            ),
            //HtmlView(data: html),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(vert)
                  ),
                  child:
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'MISE EN CONFORMITÉ RGPD',
                        style: TextStyle(fontWeight: FontWeight.bold,),
                        children: <TextSpan>[
                          TextSpan(text: '\n'),
                          TextSpan(text: "\n Dans le cadre de la mise en place du règlement général sur la protection des données, nous mettons à votre disposition les fichiers de conditions générales de vente & mentions légales types à compléter et à intégrer sur votre site afin d'être en conformité avec les normes RGPD.\n", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: '\n'),
                          TextSpan(text: '\nRendez-vous sur le lien suivant :\n http://support.seocomm.fr/	'),
                          TextSpan(text: '\n'),
                          TextSpan(text: "\n Concernant les autres mises à jour à effectuer, celles-ci feront l'objet d'un devis. Pour cela, nous vous invitons à vous rapprocher de votre chargé de suivi clients ou à faire une demande d'intervention."),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text("Inclub"),
                ),
                Image(
                  image: new NetworkImage('https://moncompte.incomm.fr/gfx/offres_speciales/1539099039_footer-offres-speciales.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text("Site du mois"),
                ),
                Image(
                  //fit: BoxFit.cover,
                  image: new NetworkImage('https://moncompte.incomm.fr/gfx/cms_img/site.jpg', scale: 0.5),
                ),
              ],
            )
          ],
        ),
      ),
      drawer: MyDrawer()
    );
  }
}