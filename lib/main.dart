import 'package:flutter/material.dart';
import 'widgets/widgetlib.dart';
import 'secondpage.dart';
void main () => runApp(
   new MaterialApp(
     debugShowCheckedModeBanner: false,
  home: Home() ,
)
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
    void initState() {
      
      super.initState();
      controller = new TabController(vsync: this, length: 4);
    }

    @override
      void dispose() {
        controller.dispose();
        super.dispose();
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Discovery',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22.0
          ),

        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.camera_alt),
          color: Colors.grey,
          onPressed: (){},
          )
        ],
      ),

      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                HorizontalListItem('assets/images/model1.jpeg', 'assets/images/chanellogo.jpg'),
                SizedBox(width: 30,),
                HorizontalListItem('assets/images/model2.jpeg', 'assets/images/chloelogo.png'),
                SizedBox(width: 30,),
                HorizontalListItem('assets/images/model3.jpeg', 'assets/images/louisvuitton.jpg'),
                SizedBox(width: 30,),
                HorizontalListItem('assets/images/modelgrid1.jpeg', 'assets/images/chanellogo.jpg'),
                SizedBox(width: 30,),
                HorizontalListItem('assets/images/modelgrid2.jpeg', 'assets/images/louisvuitton.jpg'),
                
              
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        //circle image
                        Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          image: DecorationImage(
                          image: AssetImage('assets/images/modelgrid3.jpeg'),
                          fit: BoxFit.cover
                          )
                        ),
                      ),
                      //spacing betwween image and lines of text
                      SizedBox(width: 10.0,),
                      //this is the remaining part of the row after subtracting widths above
                      Container(
                        width: MediaQuery.of(context).size.width -120.0,
                        child: Row(
                          //space between sends one widget to the end
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              Text(
                                'Daisy',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            Text(
                                '35 mins ago',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey
                                ),
                              ),

                            ],
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.more_vert,
                                size: 20.0,
                                color: Colors.grey,
                              ),
                              onPressed: (){},
                            )
                          ],
                        ),
                      )


                      ],
                    ),

                    SizedBox(height: 20.0,),
                    Text('Make your way to this Irish bar on the weekend and see a lineup of students snaking around the building. While it may seem daunting, it\'s well worth the wait because when you enter, live music is blaring, drinks are flowing and everyone is there to have a grand \'ol time.\'',
                    style: TextStyle(
                      
                      wordSpacing: 1.0,
                      height: 1.5,
                      fontSize: 12.0,
                      color: Colors.grey

                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: <Widget>[
                        //Hero tag is used to create full screen click effect for imags
                        InkWell(
                          onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondPage(heroTag: 'assets/images/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'assets/images/modelgrid1.jpeg',
                            child: Container(
                              height: 200.0,
                              width: (MediaQuery.of(context).size.width - 50.0) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/model3.jpeg'),
                                  fit: BoxFit.cover
                                ),
                                
                                
                              ),
                              

                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Column(children: <Widget>[
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondPage(heroTag: 'assets/images/model1.jpeg')));
                
                            },
                              child: Hero(
                              tag: 'assets/images/model1.jpeg',
                              child: Container(
                                height: 95.0,
                                width: (MediaQuery.of(context).size.width - 100) / 2,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/model1.jpeg'),
                                  fit: BoxFit.cover
                                ),
                                
                              ),

                              ),
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondPage(heroTag: 'assets/images/model2.jpeg')));
                
                            },
                              child: Hero(
                              tag: 'assets/images/model2.jpeg',
                              child: Container(
                                height: 95.0,
                                width: (MediaQuery.of(context).size.width - 100) / 2,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/model2.jpeg'),
                                  fit: BoxFit.cover
                                ),
                                
                              ),

                              ),
                            ),
                          ),

                        ],)
                      ],
                    ),

                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Container(
                        height: 25.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.brown.withOpacity(0.2),
                          
                        ),
                        child: Center(
                          child: Text(
                            '#Louis Vuitton',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10.0,
                              color: Colors.brown
                            ),
                          ),
                        ),
                      ),
          SizedBox(width: 10.0,),
                      Container(
                        height: 25.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.brown.withOpacity(0.2),
                          
                        ),
                        child: Center(
                          child: Text(
                            '#Gucci',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10.0,
                              color: Colors.brown
                            ),
                          ),
                        ),
                      ),

                      
                    ],
                    ),

                    SizedBox(height: 10.0,),
                    Divider(),
                    Row(children: <Widget>[
                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.reply,
                          color: Colors.grey.withOpacity(0.4),
                          size: 20.0,
                        ),
                      ),
                      SizedBox(width: 1.0,),
                      Text('1.7K', style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10.0,
                        color: Colors.grey
                      ),),

                     SizedBox(width: 10.0,),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.comment,
                          color: Colors.grey.withOpacity(0.4),
                          size: 20.0,
                        ),
                      ),
                      SizedBox(width: 1.0,),
                      Text('300', style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10.0,
                        color: Colors.grey
                      ),),

                      //Heart icon section
                     Expanded(
                       
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Container(),
                           Row(children: <Widget>[
                              IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20.0,
                        ),
                      ),
                      
                      Text('30k', style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10.0,
                        color: Colors.grey
                      ),),
                           ],)
                           
                         ],
                       ),
                       )
                    ],
                    
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      ),

//custom buttom navigation bar
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 15.0,)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 15.0),),
            Tab(icon: Icon(Icons.navigation, color: Colors.grey, size: 15.0),),
            Tab(icon: Icon(Icons.supervised_user_circle, color: Colors.grey, size: 15.0),),
          ],
        ),
      ),
    );
  }

  

  
}