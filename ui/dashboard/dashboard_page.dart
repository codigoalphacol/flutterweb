import 'dart:ui';
import 'package:appweb/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
    bootstrapGridParameters(
      gutterSize: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    //double valueFont = MediaQuery.of(context).size.height;

    AppScale _scale = AppScale(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          //decoration: BoxDecoration(color: Colors.blue),
          children: [
            BootstrapContainer(
              fluid: false,
              decoration: BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.only(top: 50),
              children: <Widget>[
                BootstrapRow(
                  height: 60,
                  children: <BootstrapCol>[
                    BootstrapCol(
                      sizes: 'col-3',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[350],
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: new LinearGradient(
                                colors: [
                                  const Color(0xFF3366FF),
                                  const Color(0xFF00CCFF),
                                ],
                                begin: const FractionalOffset(0.0, 0.0),
                                end: const FractionalOffset(1.0, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                          //color: Colors.brown,
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Total Sales",
                                        style: TextStyle(
                                            fontSize: _scale.labelDim),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "\$",
                                        style: TextStyle(
                                            fontSize: _scale.labelDim),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "7800",
                                        style: TextStyle(
                                            fontSize: _scale.labelDim),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    BootstrapCol(
                      sizes: 'col-3',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[350],
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Invoice",
                                      style:
                                          TextStyle(fontSize: _scale.labelDim),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "\$",
                                      style:
                                          TextStyle(fontSize: _scale.labelDim),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "700",
                                      style:
                                          TextStyle(fontSize: _scale.labelDim),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    BootstrapCol(
                      sizes: 'col-3',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: new LinearGradient(
                              colors: [
                                const Color(0xFF3366FF),
                                const Color(0xFF00CCFF),
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Total Pays",
                                      style:
                                          TextStyle(fontSize: _scale.labelDim),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: Icon(
                                    Icons.directions_car_sharp,
                                    size: 45,
                                  )),
                                  Expanded(
                                    child: Text(
                                      "\$989",
                                      style:
                                          TextStyle(fontSize: _scale.labelDim),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    BootstrapCol(
                      sizes: 'col-3',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[350],
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Credits",
                                        style: TextStyle(
                                            fontSize: _scale.labelDim),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Icon(
                                        Icons.edit_location_outlined,
                                        size: 45,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "5320",
                                        style: TextStyle(
                                            fontSize: _scale.labelDim),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                BootstrapRow(
                  height: 120,
                  children: <BootstrapCol>[
                    BootstrapCol(
                      sizes: 'col-12 col-md-12',
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Image(
                                image:
                                    AssetImage('assets/images/bar_chart.gif'),
                                fit: BoxFit.cover,
                                //height: 200,
                                //hidth: 300,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          SizedBox(),
                          Expanded(
                            child: Container(
                              child: Image(
                                image:
                                    AssetImage('assets/images/pie_chart_sample_2.gif'),
                                fit: BoxFit.cover,
                                //height: 200,
                                //hidth: 300,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          SizedBox(),
                          Expanded(
                            child: Container(
                              child: Image(
                                image:
                                    AssetImage('assets/images/line_chart_sample_2.gif'),
                                fit: BoxFit.cover,
                                //height: 200,
                                //hidth: 300,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(),
                BootstrapRow(
                  height: 60,
                  children: <BootstrapCol>[
                    BootstrapCol(
                      sizes: 'col-6',
                      child: BootstrapCol(
                        sizes: 'col-3',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[350],
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: new LinearGradient(
                                  colors: [
                                    const Color(0xFF3366FF),
                                    const Color(0xFF00CCFF),
                                  ],
                                  begin: const FractionalOffset(0.0, 0.0),
                                  end: const FractionalOffset(1.0, 0.0),
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp),
                            ),
                            //color: Colors.brown,
                            width: 100,
                            height: 100,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Graph",
                                          style: TextStyle(
                                              fontSize: _scale.labelDim),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "\$",
                                          style: TextStyle(
                                              fontSize: _scale.labelDim),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "7800",
                                          style: TextStyle(
                                              fontSize: _scale.labelDim),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    BootstrapCol(
                      sizes: 'col-6',
                      child: BootstrapCol(
                        sizes: 'col-3',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[350],
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: new LinearGradient(
                                  colors: [
                                    const Color(0xFF3366FF),
                                    const Color(0xFF00CCFF),
                                  ],
                                  begin: const FractionalOffset(0.0, 0.0),
                                  end: const FractionalOffset(1.0, 0.0),
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp),
                            ),
                            //color: Colors.brown,
                            width: 100,
                            height: 100,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Total Sales",
                                          style: TextStyle(
                                              fontSize: _scale.labelDim),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "\$",
                                          style: TextStyle(
                                              fontSize: _scale.labelDim),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "7800",
                                          style: TextStyle(
                                              fontSize: _scale.labelDim),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Divider(),
                BootstrapRow(
                  height: 200,
                  children: <BootstrapCol>[
                    BootstrapCol(
                      sizes: 'col-6 col-md-4',                      
                      child: Row(
                        children: [
                           Expanded(
                            child: Container(
                              child: Image(
                                image:
                                    AssetImage('assets/images/weekly_amount_chart.gif'),
                                fit: BoxFit.cover,
                                //height: 200,
                                //hidth: 300,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),                          
                        ],
                      )
                    ),
                    BootstrapCol(
                      //sizes: 'col-12 col-sm-12 col-md-6 col-lg-3 col-xl-3',
                      sizes: 'col-6 col-md-4', 
                      //orders: 'order-1 order-sm-1 order-md-2 order-lg-2 order-xl-2',
                      child: 
                          Expanded(
                            child: Container(
                              child: Image(
                                image:
                                    AssetImage('assets/images/weekly_time_chart.gif'),
                                fit: BoxFit.cover,
                                //height: 200,
                                //hidth: 300,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                    ),
                    BootstrapCol(
                      sizes: 'col-6 col-md-4', 
                      // sizes: 'col-12 col-sm-12 col-md-6 col-lg-3 col-xl-3',
                      // offsets: 'offset-0 offset-sm-0 offset-md-2 offset-lg-4 offset-xl-5',
                     // orders: 'order-3 order-sm-3 order-md-3 order-lg-3 order-xl-3',
                      child: Expanded(
                            child: Container(
                              child: Image(
                                image:
                                    AssetImage('assets/images/monthly_time_chart.gif'),
                                fit: BoxFit.cover,
                                //height: 200,
                                //hidth: 300,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                    ),
                    BootstrapCol(
                      sizes: 'col-12 col-sm-12 col-md-6 col-lg-3 col-xl-3',
                      orders:
                          'order-4 order-sm-4 order-md-4 order-lg-4 order-xl-4',
                      invisibleForSizes: 'sm xl',
                      child: ContentWidget(
                        text: 'invisible for sm and xl',
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key key,
    this.text,
    this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: color,
      child: Text(text),
    );
  }
}
