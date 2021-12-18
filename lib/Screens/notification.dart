import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'campaign.dart';
import 'history.dart';
import 'home.dart';
import 'more.dart';

class InboxNotificationWidget extends StatefulWidget {
  const InboxNotificationWidget({Key? key}) : super(key: key);

  @override
  _InboxNotificationWidgetState createState() =>
      _InboxNotificationWidgetState();
}

class _InboxNotificationWidgetState extends State<InboxNotificationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2CA8E1),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InboxCampaignWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color(0xFF2CA8E1),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const InboxCampaignWidget(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: Text(
                                    'Campaign',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF303030),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height: 3,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF2CA8E1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xFF2CA8E1),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: Text(
                                'Notification',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFEEEEEE),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 3,
                              decoration: const BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.79,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/notification.jpg',
                            width: 300,
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'Your Notification will  appear here',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 7, 50, 0),
                          child: Text(
                            'We will notify you when something interesting happens',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0x80000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    border: Border.all(
                      color: const Color(0x4F000000),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeWidget(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      3, 3, 3, 3),
                                  child: FaIcon(
                                    FontAwesomeIcons.home,
                                    color: Color(0xFF303030),
                                    size: 24,
                                  ),
                                ),
                                Text(
                                  'Home',
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                child: FaIcon(
                                  FontAwesomeIcons.inbox,
                                  color: Color(0xFF2CA8E1),
                                  size: 24,
                                ),
                              ),
                              Text(
                                'Inbox',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF2CA8E1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HistoryWidget(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      3, 3, 3, 3),
                                  child: FaIcon(
                                    FontAwesomeIcons.scroll,
                                    color: Color(0xFF303030),
                                    size: 24,
                                  ),
                                ),
                                Text(
                                  'History',
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MoreWidget(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      3, 3, 3, 3),
                                  child: Icon(
                                    Icons.settings_outlined,
                                    color: Color(0xFF303030),
                                    size: 24,
                                  ),
                                ),
                                Text(
                                  'More',
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
