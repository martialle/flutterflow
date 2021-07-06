import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../page3acceuil/page3acceuil_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2acceuilWidget extends StatefulWidget {
  Page2acceuilWidget({Key key}) : super(key: key);

  @override
  _Page2acceuilWidgetState createState() => _Page2acceuilWidgetState();
}

class _Page2acceuilWidgetState extends State<Page2acceuilWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(4, 8, 0, 0),
                child: Text(
                  'DrPalu',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.primaryColor,
                    fontSize: 85,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                child: Text(
                  'Predit le paludisme en analysant votre visage.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.primaryColor,
                    fontSize: 20,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/600',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/MicrosoftTeams-image (1).png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/MicrosoftTeams-image (1).png',
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Image.asset(
                    'assets/images/MicrosoftTeams-image.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: InkWell(
                  onDoubleTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page3acceuilWidget(),
                      ),
                    );
                  },
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Suivant',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.primaryColor,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
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
      ),
    );
  }
}
