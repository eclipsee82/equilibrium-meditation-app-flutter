import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Case3Widget extends StatefulWidget {
  const Case3Widget({Key key}) : super(key: key);

  @override
  _Case3WidgetState createState() => _Case3WidgetState();
}

class _Case3WidgetState extends State<Case3Widget> {
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
            // Return an empty Container when the document does not exist.
            if (snapshot.data.isEmpty) {
              return Container();
            }
            final textMeditationPageRecord =
                textMeditationPageRecordList.isNotEmpty
                    ? textMeditationPageRecordList.first
                    : null;
            return Text(
              textMeditationPageRecord.name3,
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
                  'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/case3.png?alt=media&token=666127f4-b61e-4007-92db-5bb0bbe2f62d',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 5),
                child: Text(
                  'Самооценка',
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
                  'Уверенность в себе начинается с уверенности в собственных мыслях, эмоциях и ощущениях. В этой серии мы попробуем техники, повышающие уверенность в себе.',
                  textAlign: TextAlign.start,
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase3%2Fcase3_1.mp3?alt=media&token=1dc4e574-618c-48f3-9a1f-58b928a1f3ac',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase3%2Fcase3_1.mp3?alt=media&token=1dc4e574-618c-48f3-9a1f-58b928a1f3ac-b0c2jygu',
                      title: 'Хаос из мыслей',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase3%2Fcase3_2.mp3?alt=media&token=3c437bd3-b1e9-4de0-b2a5-75af357b7bec',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase3%2Fcase3_2.mp3?alt=media&token=3c437bd3-b1e9-4de0-b2a5-75af357b7bec-i5k2oc63',
                      title: 'Внутренний голос',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase3%2Fcase3_3.mp3?alt=media&token=fecd38dd-55d7-4216-b6d4-6fa31546bab5',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase3%2Fcase3_3.mp3?alt=media&token=fecd38dd-55d7-4216-b6d4-6fa31546bab5-haoc6pec',
                      title: 'Отпустить',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase3%2Fcase3_4.mp3?alt=media&token=f4228fd6-b3d1-4990-835f-8ce3151b412a',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase3%2Fcase3_4.mp3?alt=media&token=f4228fd6-b3d1-4990-835f-8ce3151b412a-zlifif26',
                      title: 'Всё хорошо',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase3%2Fcase3_5.mp3?alt=media&token=5aa2b284-2700-4b77-8e60-c38dbd83baf0',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase3%2Fcase3_5.mp3?alt=media&token=5aa2b284-2700-4b77-8e60-c38dbd83baf0-dbb8b97m',
                      title: '\nСравнение себя с другими',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase3%2Fcase3_6.mp3?alt=media&token=eef8a218-539f-4531-911f-a11934703589',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase3%2Fcase3_6.mp3?alt=media&token=eef8a218-539f-4531-911f-a11934703589-0w39fo10',
                      title: 'Жажда признанания',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase3%2Fcase3_7.mp3?alt=media&token=04d65626-703d-4a02-b042-2a0e97bf1771',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase3%2Fcase3_7.mp3?alt=media&token=04d65626-703d-4a02-b042-2a0e97bf1771-njoh1ae5',
                      title: 'Доверься себе',
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
