import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Case2Widget extends StatefulWidget {
  const Case2Widget({Key key}) : super(key: key);

  @override
  _Case2WidgetState createState() => _Case2WidgetState();
}

class _Case2WidgetState extends State<Case2Widget> {
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
              textMeditationPageRecord.name2,
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
                  'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/case2.png?alt=media&token=48b38121-5b5b-42c2-8e37-b8cb5e39fc99',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 5),
                child: Text(
                  'Снять стресс',
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
                  'Уменьшение и управление стрессом на самом деле в наших руках. Мы можем отпустить стресс через налаживание контакта с собой, наблюдая за ощущениями и успокаивая ум.',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase2%2Fcase2_1.mp3?alt=media&token=cc41ec32-dc1b-4335-aa18-1b558d0d98aa',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase2%2Fcase2_1.mp3?alt=media&token=cc41ec32-dc1b-4335-aa18-1b558d0d98aa-hd8n6dow',
                      title: 'Снятие стресса',
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
                            fontWeight: FontWeight.w600,
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase2%2Fcase2_2.mp3?alt=media&token=aa751e31-b441-4a04-9657-c005e8b4a935',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase2%2Fcase2_2.mp3?alt=media&token=aa751e31-b441-4a04-9657-c005e8b4a935-zvwgutqp',
                      title: 'Cила намерения',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase2%2Fcase2_3.mp3?alt=media&token=9ceb085f-ec05-4544-820a-72474dd2a625',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase2%2Fcase2_3.mp3?alt=media&token=9ceb085f-ec05-4544-820a-72474dd2a625-q4xfp06w',
                      title: 'Тело без стресса',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase2%2Fcase2_4.mp3?alt=media&token=1608d5d2-54a4-4eff-93ab-86b655f15df1',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase2%2Fcase2_4.mp3?alt=media&token=1608d5d2-54a4-4eff-93ab-86b655f15df1-1coyr9sp',
                      title: 'Находя свой внутренний ресурс',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase2%2Fcase2_5.mp3?alt=media&token=492d9d00-b76d-43bd-9524-10c25fd39152',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase2%2Fcase2_5.mp3?alt=media&token=492d9d00-b76d-43bd-9524-10c25fd39152-o83uuw8s',
                      title: 'Перестать накручивать себя',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase2%2Fcase2_6.mp3?alt=media&token=860d18bc-47be-434f-afe4-4d0362c8bc88',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase2%2Fcase2_6.mp3?alt=media&token=860d18bc-47be-434f-afe4-4d0362c8bc88-dw69fw09',
                      title: 'В здоровом теле',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase2%2Fcase2_7.mp3?alt=media&token=8459c635-65ff-418b-9933-b4e50de60ba3',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase2%2Fcase2_7.mp3?alt=media&token=8459c635-65ff-418b-9933-b4e50de60ba3-y8cm2zju',
                      title: 'Быть благодарным',
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
