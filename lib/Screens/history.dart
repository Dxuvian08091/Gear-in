import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'campaign.dart';
import 'home.dart';
import 'more.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  _HistoryWidgetState createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  bool switchListTileValue = false;
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
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Text(
                      'History',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: SwitchListTile(
                      value: switchListTileValue,
                      onChanged: (newValue) =>
                          setState(() => switchListTileValue = newValue),
                      title: const Text(
                        'Show Cancelled Rides',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      tileColor: const Color(0xFFF5F5F5),
                      dense: true,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.72,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/book_a_ride.jpg',
                            width: 300,
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'Let\'s go on a trip!',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 7, 50, 7),
                          child: Text(
                            'It seems we don\'t have any history together, lets make some!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0x80000000),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeWidget(),
                              ),
                            );
                          },
                          child: const Text(
                            'Request a Ride',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  const Size(180, 40)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xFF2CA8E1)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: const BorderSide(
                                        width: 1,
                                        color: Colors.transparent,
                                      )))),
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
                              children: const [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      3, 3, 3, 3),
                                  child: FaIcon(
                                    FontAwesomeIcons.inbox,
                                    color: Color(0xFF303030),
                                    size: 24,
                                  ),
                                ),
                                Text(
                                  'Inbox',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF303030),
                                  ),
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
                                  FontAwesomeIcons.scroll,
                                  color: Color(0xFF2CA8E1),
                                  size: 24,
                                ),
                              ),
                              Text(
                                'History',
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
