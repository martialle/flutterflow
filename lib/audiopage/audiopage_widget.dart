import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudiopageWidget extends StatefulWidget {
  AudiopageWidget({Key key}) : super(key: key);

  @override
  _AudiopageWidgetState createState() => _AudiopageWidgetState();
}

class _AudiopageWidgetState extends State<AudiopageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: FlutterFlowAudioPlayer(
                audio: Audio.network(
                  '',
                  metas: Metas(
                    id: '-94wokdb8',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                playbackDurationTextStyle: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF9D9D9D),
                  fontSize: 12,
                ),
                fillColor: Color(0xFFEEEEEE),
                playbackButtonColor: FlutterFlowTheme.primaryColor,
                activeTrackColor: Color(0xFF57636C),
                elevation: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
