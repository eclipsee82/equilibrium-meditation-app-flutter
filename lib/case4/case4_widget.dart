import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Case4Widget extends StatefulWidget {
  const Case4Widget({Key key}) : super(key: key);

  @override
  _Case4WidgetState createState() => _Case4WidgetState();
}

class _Case4WidgetState extends State<Case4Widget> {
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
            // Анимация прогрузки
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
            // Возвращает пустой контейнер, если объект отсутствует
            if (snapshot.data.isEmpty) {
              return Container();
            }
            final textMeditationPageRecord =
                textMeditationPageRecordList.isNotEmpty
                    ? textMeditationPageRecordList.first
                    : null;
            return Text(
              textMeditationPageRecord.name4,
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
                  'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/case4.png?alt=media&token=cbf2c08f-b077-4488-b390-9a3e55c1e8b6',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 5),
                child: Text(
                  'Быстрые медитации',
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
                  'Экспресс-медитация – прекрасный способ снятия стресса за считанные минуты. Такой вид упражнений рассчитан на людей с загруженным графиком. Данная практика занимает всего от 5 до 7 минут, и уже по окончанию можно ощутить приятное расслабление во всём теле.',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase4%2Fcase4_1.mp3?alt=media&token=645bcef3-3fc2-4bb8-b96e-78fd618aeed2',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase4%2Fcase4_1.mp3?alt=media&token=645bcef3-3fc2-4bb8-b96e-78fd618aeed2-15xv8kho',
                      title: 'Доброе утро',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase4%2Fcase4_2.mp3?alt=media&token=b4ca2187-e662-484b-9261-e6afb0a2bf69',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase4%2Fcase4_2.mp3?alt=media&token=b4ca2187-e662-484b-9261-e6afb0a2bf69-j7qjruli',
                      title: 'Небольшой перерыв',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase4%2Fcase4_3.mp3?alt=media&token=929aa761-ecb6-40cf-a40d-395ba1a80aca',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase4%2Fcase4_3.mp3?alt=media&token=929aa761-ecb6-40cf-a40d-395ba1a80aca-gb9dg9an',
                      title: 'Стрессовая ситуация',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase4%2Fcase4_4.mp3?alt=media&token=dac2e75b-04df-40a2-b69d-9c2b0094fd11',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase4%2Fcase4_4.mp3?alt=media&token=dac2e75b-04df-40a2-b69d-9c2b0094fd11-831o1wtx',
                      title: 'После трудового дня',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase4%2Fcase4_5.mp3?alt=media&token=791c6a12-2014-4319-8e4a-8d4f6b64f946',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase4%2Fcase4_5.mp3?alt=media&token=791c6a12-2014-4319-8e4a-8d4f6b64f946-wi37ybh9',
                      title: 'Одиночество',
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
                    'https://firebasestorage.googleapis.com/v0/b/meditation-86614.appspot.com/o/meditation_audio%2FmCase4%2Fcase4_6.mp3?alt=media&token=f60c2441-6160-4b93-9201-48cb496ed5c1',
                    metas: Metas(
                      id: 'meditation_audio%2FmCase4%2Fcase4_6.mp3?alt=media&token=f60c2441-6160-4b93-9201-48cb496ed5c1-0ttpxb7m',
                      title: 'Осознанность',
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
