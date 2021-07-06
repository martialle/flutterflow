import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pageauestionnaire/pageauestionnaire_widget.dart';
import '../pagemopnprofil/pagemopnprofil_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PagedebutapplicationWidget extends StatefulWidget {
  PagedebutapplicationWidget({
    Key key,
    this.connexion,
    this.path,
  }) : super(key: key);

  final dynamic connexion;
  final dynamic path;

  @override
  _PagedebutapplicationWidgetState createState() =>
      _PagedebutapplicationWidgetState();
}

class _PagedebutapplicationWidgetState
    extends State<PagedebutapplicationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1087D6),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
          child: IconButton(
            onPressed: () {
              print('IconButton pressed ...');
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              color: FlutterFlowTheme.tertiaryColor,
              size: 30,
            ),
            iconSize: 30,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            'DrPalu',
            style: FlutterFlowTheme.bodyText1.override(
              fontFamily: 'Poppins',
              color: FlutterFlowTheme.tertiaryColor,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      endDrawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          elevation: 16,
          child: Stack(
            children: [
              Align(
                alignment: Alignment(-0.1, 0.18),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Langue',
                  options: FFButtonOptions(
                    width: 200,
                    height: 50,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    elevation: 5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.01, -0.29),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                  child: InkWell(
                    onDoubleTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PagemopnprofilWidget(),
                        ),
                      );
                    },
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Voir mon profil',
                      options: FFButtonOptions(
                        width: 200,
                        height: 50,
                        color: FlutterFlowTheme.primaryColor,
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.09, 0.53),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Deconnexion',
                  options: FFButtonOptions(
                    width: 200,
                    height: 50,
                    color: Color(0xFFE21313),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    elevation: 5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.02, -0.72),
                child: Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/attractive-1869761_1920.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.15, -0.44),
                child: Text(
                  'Monsieur Yao',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.1, 0.02),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Historique',
                  options: FFButtonOptions(
                    width: 200,
                    height: 50,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    elevation: 5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.01, 0.36),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'A propos',
                  options: FFButtonOptions(
                    width: 200,
                    height: 50,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    elevation: 5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.05, -0.73),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/attractive-1869761_1920.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment(0, 0),
          children: [
            Align(
              alignment: Alignment(-0.24, -0.05),
              child: Container(
                width: 500,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-1.83, -0.64),
              child: Image.network(
                'https://picsum.photos/seed/558/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Container(
                width: 500,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.13, -0.85),
              child: Image.asset(
                'assets/images/MicrosoftTeams-image (3).png',
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(0, 2.3),
              child: Container(
                width: 500,
                height: 480,
                decoration: BoxDecoration(
                  color: Color(0xFF34A5F2),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment(0.02, -0.42),
                      child: Text(
                        'Prèt pour une analyse?',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.04, -0.73),
                      child: Text(
                        'BIENVENUE',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.01, 0.14),
                      child: InkWell(
                        onDoubleTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageauestionnaireWidget(),
                            ),
                          );
                        },
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Débuter',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Color(0xFF09446C),
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            elevation: 5,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
