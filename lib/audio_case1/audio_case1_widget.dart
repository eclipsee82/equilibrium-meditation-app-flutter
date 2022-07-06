import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioCase1Widget extends StatefulWidget {
  const AudioCase1Widget({Key key}) : super(key: key);

  @override
  _AudioCase1WidgetState createState() => _AudioCase1WidgetState();
}

class _AudioCase1WidgetState extends State<AudioCase1Widget> {
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
            // Customize what your widget looks like when it's loading.
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
            // Return an empty Container when the document does not exist.
            if (snapshot.data.isEmpty) {
              return Container();
            }
            final textMeditationPageRecord =
                textMeditationPageRecordList.isNotEmpty
                    ? textMeditationPageRecordList.first
                    : null;
            return Text(
              'Звуки природы',
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
        elevation: 4,
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
                  'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/audio_case1.png?alt=media&token=f1c6ab80-e411-4e0a-9e6a-990df8f15ffc',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 5),
                child: Text(
                  'Звуки природы',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat Ru',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                child: FlutterFlowAudioPlayer(
                  audio: Audio.network(
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/audio_audio%2Faudio_case1%2Faudio_case1.mp3?alt=media&token=32b21305-3106-4e32-be35-75f82baee767',
                    metas: Metas(
                      id: 'audio_audio%2Faudio_case1%2Faudio_case1.mp3?alt=media&token=32b21305-3106-4e32-be35-75f82baee767-axhc20hl',
                      title: 'Ласточки над рекой',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat Ru',
                            fontSize: 14,
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/audio_audio%2Faudio_case1%2Faudio_case2.mp3?alt=media&token=6fa6d8fd-6377-452c-9f04-67e84d6a3c0c',
                    metas: Metas(
                      id: 'audio_audio%2Faudio_case1%2Faudio_case2.mp3?alt=media&token=6fa6d8fd-6377-452c-9f04-67e84d6a3c0c-64yln5dd',
                      title: 'Пение птиц',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/audio_audio%2Faudio_case1%2Faudio_case3.mp3?alt=media&token=bc3bab17-1bce-4e81-b666-ce69eee79145',
                    metas: Metas(
                      id: 'audio_audio%2Faudio_case1%2Faudio_case3.mp3?alt=media&token=bc3bab17-1bce-4e81-b666-ce69eee79145-s8ihfhc7',
                      title: 'Вечер в лесу',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/audio_audio%2Faudio_case1%2Faudio_case4.mp3?alt=media&token=09c9cbda-0ef3-4cd7-8d85-7d7cc5d2a8eb',
                    metas: Metas(
                      id: 'audio_audio%2Faudio_case1%2Faudio_case4.mp3?alt=media&token=09c9cbda-0ef3-4cd7-8d85-7d7cc5d2a8eb-4igtjql0',
                      title: 'Звуки дождя ночью',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/audio_audio%2Faudio_case1%2Faudio_case5.mp3?alt=media&token=3dd9468b-9d9b-4c05-a54f-4665cbdca857',
                    metas: Metas(
                      id: 'audio_audio%2Faudio_case1%2Faudio_case5.mp3?alt=media&token=3dd9468b-9d9b-4c05-a54f-4665cbdca857-1kb45w7c',
                      title: 'Дождь и песнь ветра',
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
