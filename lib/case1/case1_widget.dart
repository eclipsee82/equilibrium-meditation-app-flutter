import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Case1Widget extends StatefulWidget {
  const Case1Widget({Key key}) : super(key: key);

  @override
  _Case1WidgetState createState() => _Case1WidgetState();
}

class _Case1WidgetState extends State<Case1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1770FF),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: StreamBuilder<List<MeditationPageRecord>>(
          stream: queryMeditationPageRecord(
            singleRecord: true,
          ),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    color: Color(0xFF1770FF),
                  ),
                ),
              );
            }
            List<MeditationPageRecord> textMeditationPageRecordList =
                snapshot.data;

            if (snapshot.data.isEmpty) {
              return Container();
            }
            final textMeditationPageRecord =
                textMeditationPageRecordList.isNotEmpty
                    ? textMeditationPageRecordList.first
                    : null;
            return Text(
              textMeditationPageRecord.name,
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Montserrat Ru',
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
            );
          },
        ),
        actions: [],
        centerTitle: false,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: 100,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFF1770FF),
                ),
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/case1.png?alt=media&token=b3d26b3c-1b98-4c18-af59-764e4741bd2d',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 5),
                child: Text(
                  'Первые шаги',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat Ru',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Text(
                  'С помощью этих коротких практик ты можешь сделать первые шаги в медитации и исследовать новый для себя опыт.',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat Ru',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                child: FlutterFlowAudioPlayer(
                  audio: Audio.network(
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase1%2Fcase1_1.mp3?alt=media&token=8d0f5aac-bceb-406f-8c95-4f391772d9cb',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase1%2Fcase1_1.mp3?alt=media&token=8d0f5aac-bceb-406f-8c95-4f391772d9cb-2uwc829l',
                      title: 'Первые шаги',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat Ru',
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF9D9D9D),
                            fontSize: 12,
                          ),
                  fillColor: Color(0xFFEEEEEE),
                  playbackButtonColor: Color(0xFF1770FF),
                  activeTrackColor: Color(0xFF57636C),
                  elevation: 4,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                child: FlutterFlowAudioPlayer(
                  audio: Audio.network(
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase1%2Fcase1_2.mp3?alt=media&token=8d2fc266-257e-4ef8-a84a-431e742248e0',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase1%2Fcase1_2.mp3?alt=media&token=8d2fc266-257e-4ef8-a84a-431e742248e0-w27vnk4p',
                      title: 'Наблюдение за дыханием',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat Ru',
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF9D9D9D),
                            fontSize: 12,
                          ),
                  fillColor: Color(0xFFEEEEEE),
                  playbackButtonColor: Color(0xFF1770FF),
                  activeTrackColor: Color(0xFF57636C),
                  elevation: 4,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                child: FlutterFlowAudioPlayer(
                  audio: Audio.network(
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase1%2Fcase1_3.mp3?alt=media&token=8f62a9cc-e203-4c74-9a03-f8510e1f7495',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase1%2Fcase1_3.mp3?alt=media&token=8f62a9cc-e203-4c74-9a03-f8510e1f7495-d48wbt4m',
                      title: 'Ощущения',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat Ru',
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF9D9D9D),
                            fontSize: 12,
                          ),
                  fillColor: Color(0xFFEEEEEE),
                  playbackButtonColor: Color(0xFF1770FF),
                  activeTrackColor: Color(0xFF57636C),
                  elevation: 4,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                child: FlutterFlowAudioPlayer(
                  audio: Audio.network(
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase1%2Fcase1_4.mp3?alt=media&token=d013271f-805f-4f32-8232-c8721448f206',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase1%2Fcase1_4.mp3?alt=media&token=d013271f-805f-4f32-8232-c8721448f206-zj0ufdlb',
                      title: 'Успокоится и расслабиться',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat Ru',
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF9D9D9D),
                            fontSize: 12,
                          ),
                  fillColor: Color(0xFFEEEEEE),
                  playbackButtonColor: Color(0xFF1770FF),
                  activeTrackColor: Color(0xFF57636C),
                  elevation: 4,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
                child: FlutterFlowAudioPlayer(
                  audio: Audio.network(
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase1%2Fcase1_5.mp3?alt=media&token=dd267815-d80b-47f5-9567-c73ef743a51b',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase1%2Fcase1_5.mp3?alt=media&token=dd267815-d80b-47f5-9567-c73ef743a51b-hiix2ao8',
                      title: 'Ощущая тело',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat Ru',
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF9D9D9D),
                            fontSize: 12,
                          ),
                  fillColor: Color(0xFFEEEEEE),
                  playbackButtonColor: Color(0xFF1770FF),
                  activeTrackColor: Color(0xFF57636C),
                  elevation: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
