import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Essai1Widget extends StatefulWidget {
  Essai1Widget({Key key}) : super(key: key);

  @override
  _Essai1WidgetState createState() => _Essai1WidgetState();
}

class _Essai1WidgetState extends State<Essai1Widget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment(0, 0),
                  child: Container(
                    width: 300,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.2, -0.47),
                  child: Text(
                    'Hello World',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0),
                  child: TextFormField(
                    controller: textController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '[Some hint text...]',
                      hintStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
