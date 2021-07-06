import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pagecomputervision/pagecomputervision_widget.dart';
import '../pagedebutapplication/pagedebutapplication_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageauestionnaireWidget extends StatefulWidget {
  PageauestionnaireWidget({Key key}) : super(key: key);

  @override
  _PageauestionnaireWidgetState createState() =>
      _PageauestionnaireWidgetState();
}

class _PageauestionnaireWidgetState extends State<PageauestionnaireWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1087D6),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
          child: InkWell(
            onDoubleTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PagedebutapplicationWidget(),
                ),
              );
            },
            child: Icon(
              Icons.arrow_back_sharp,
              color: FlutterFlowTheme.tertiaryColor,
              size: 30,
            ),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            'Questions',
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
      ),
      backgroundColor: Color(0xFF1087D6),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-0.14, -0.54),
              child: Text(
                'Est -ce que votre corps chauffe?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.03, 0.11),
              child: Image.asset(
                'assets/images/MicrosoftTeams-image (4).png',
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(-0.76, 0.76),
              child: InkWell(
                onDoubleTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PagecomputervisionWidget(),
                    ),
                  );
                },
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Oui',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF004739),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 20,
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
            ),
            Align(
              alignment: Alignment(0.85, 0.77),
              child: InkWell(
                onDoubleTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PagecomputervisionWidget(),
                    ),
                  );
                },
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Non',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFFE60B0B),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 20,
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
    );
  }
}
