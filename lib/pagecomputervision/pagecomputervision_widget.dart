import '../audiopage/audiopage_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PagecomputervisionWidget extends StatefulWidget {
  PagecomputervisionWidget({Key key}) : super(key: key);

  @override
  _PagecomputervisionWidgetState createState() =>
      _PagecomputervisionWidgetState();
}

class _PagecomputervisionWidgetState extends State<PagecomputervisionWidget> {
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
          child: Icon(
            Icons.arrow_back_sharp,
            color: FlutterFlowTheme.tertiaryColor,
            size: 30,
          ),
        ),
        title: Text(
          'DrPalu',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
            color: FlutterFlowTheme.tertiaryColor,
            fontSize: 30,
            fontWeight: FontWeight.w800,
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
              alignment: Alignment(-0.15, -0.55),
              child: Text(
                'Assurer-vous d\'avoir retirer le cache-nez,les lunettes ;le rouge à lèvre',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 20,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.11, -0.79),
              child: Text(
                'Capture',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.03, 0.24),
              child: InkWell(
                onDoubleTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AudiopageWidget(),
                    ),
                  );
                },
                child: IconButton(
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                  icon: Icon(
                    Icons.camera_alt,
                    color: FlutterFlowTheme.tertiaryColor,
                    size: 80,
                  ),
                  iconSize: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
