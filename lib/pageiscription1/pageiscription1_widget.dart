import '../auth/auth_util.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../pageconnexion/pageconnexion_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Pageiscription1Widget extends StatefulWidget {
  Pageiscription1Widget({
    Key key,
    this.connexion,
    this.path,
  }) : super(key: key);

  final dynamic connexion;
  final dynamic path;

  @override
  _Pageiscription1WidgetState createState() => _Pageiscription1WidgetState();
}

class _Pageiscription1WidgetState extends State<Pageiscription1Widget> {
  String uploadedFileUrl = '';
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController(text: 'phone_number');
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1087D6),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageconnexionWidget(),
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
            'Inscription',
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
        child: InkWell(
          onTap: () async {
            final user = await signInWithGoogle(context);
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
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, -0.31),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                  child: TextFormField(
                    controller: textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'email',
                      hintStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.tertiaryColor,
                          width: 200,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.tertiaryColor,
                          width: 200,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.15),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                  child: TextFormField(
                    controller: textController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'phone_number',
                      hintStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.tertiaryColor,
                          width: 200,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.tertiaryColor,
                          width: 200,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.01),
                child: TextFormField(
                  controller: textController3,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'photo_url',
                    hintStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.tertiaryColor,
                        width: 200,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.tertiaryColor,
                        width: 200,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  ),
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.url,
                ),
              ),
              Align(
                alignment: Alignment(0, -0.15),
                child: TextFormField(
                  controller: textController4,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'display_name',
                    hintStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.tertiaryColor,
                        width: 200,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.tertiaryColor,
                        width: 200,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  ),
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment(-0.09, 0.8),
                child: FFButtonWidget(
                  onPressed: () async {
                    final user = await signInAnonymously(context);
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
                  text: 'Suivant',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF1087D6),
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
              Align(
                alignment: Alignment(-0.19, -0.98),
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
              ),
              Align(
                alignment: Alignment(-2.08, -0.54),
                child: InkWell(
                  onTap: () async {
                    final user = await signInAnonymously(context);
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
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.12, -0.98),
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
              ),
              Align(
                alignment: Alignment(0.24, -0.71),
                child: IconButton(
                  onPressed: () async {
                    final selectedMedia = await selectMedia(
                      maxWidth: 10.00,
                      maxHeight: 15.00,
                    );
                    if (selectedMedia != null &&
                        validateFileFormat(
                            selectedMedia.storagePath, context)) {
                      showUploadMessage(context, 'Uploading file...',
                          showLoading: true);
                      final downloadUrl = await uploadData(
                          selectedMedia.storagePath, selectedMedia.bytes);
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      if (downloadUrl != null) {
                        setState(() => uploadedFileUrl = downloadUrl);
                        showUploadMessage(context, 'Success!');
                      } else {
                        showUploadMessage(context, 'Failed to upload media');
                      }
                    }
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.camera,
                    color: FlutterFlowTheme.tertiaryColor,
                    size: 30,
                  ),
                  iconSize: 30,
                ),
              ),
              Align(
                alignment: Alignment(-0.09, -0.98),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/flower-2197679_1920.jpg',
                    fit: BoxFit.fitHeight,
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
