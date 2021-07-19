import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../page4acceuil/page4acceuil_widget.dart';
import '../pageiscription1/pageiscription1_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageconnexionWidget extends StatefulWidget {
  PageconnexionWidget({Key key}) : super(key: key);

  @override
  _PageconnexionWidgetState createState() => _PageconnexionWidgetState();
}

class _PageconnexionWidgetState extends State<PageconnexionWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController(text: '0501010101');
    passwordTextController = TextEditingController(text: '222200');
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1087D6),
        iconTheme: IconThemeData(color: FlutterFlowTheme.tertiaryColor),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: InkWell(
            onDoubleTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page4acceuilWidget(),
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
            'DrPalu',
            textAlign: TextAlign.center,
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
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 30, 0, 0),
                      child: Text(
                        'Connexion',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 40,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 330,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF1087D6),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFE6E6E6),
                          ),
                        ),
                        child: TextFormField(
                          controller: emailTextController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '[Some hint text...]',
                            hintStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.tertiaryColor,
                              fontSize: 18,
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
                            color: FlutterFlowTheme.tertiaryColor,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 330,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF34A5F2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        controller: passwordTextController,
                        obscureText: !passwordVisibility,
                        decoration: InputDecoration(
                          hintText: '[Some hint text...]',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.tertiaryColor,
                            fontSize: 18,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 200,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 200,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            child: Icon(
                              passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 330,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFE6E6E6),
                          ),
                        ),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final user = await signInWithEmail(
                              context,
                              emailTextController.text,
                              passwordTextController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pageiscription1Widget(),
                              ),
                              (r) => false,
                            );
                          },
                          text: 'Connexion',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Colors.blue,
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20,
                            ),
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
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  width: 330,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF005289),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: InkWell(
                    onDoubleTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Pageiscription1Widget(),
                        ),
                      );
                    },
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Creer un compte',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFF023D64),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
