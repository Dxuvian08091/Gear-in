import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gearin/bloc/stream_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class InboxCampaignWidget extends StatefulWidget {
  const InboxCampaignWidget({Key? key}) : super(key: key);

  @override
  _InboxCampaignWidgetState createState() => _InboxCampaignWidgetState();
}

class _InboxCampaignWidgetState extends State<InboxCampaignWidget> {
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
                                'Campaign',
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
                      InkWell(
                        onTap: () async {
                          BlocProvider.of<StreamBloc>(context)
                              .add(InboxNotification());
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color(0xFF2CA8E1),
                          ),
                          child: InkWell(
                            onTap: () async {
                              BlocProvider.of<StreamBloc>(context)
                                  .add(InboxNotification());
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: Text(
                                    'Notification',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    BlocProvider.of<StreamBloc>(context)
                                        .add(InboxNotification());
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 3,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF2CA8E1),
                                    ),
                                  ),
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
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          height: 196,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/images/share_with_friends.jpg',
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 0),
                                  child: Text(
                                    'Share Your First Promo Code with your firends and family',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 5, 5),
                                  child: Text(
                                    'Get Food Coupon and Discounts by sharing your promo code with your friends and family.',
                                    style: GoogleFonts.poppins(),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.9, 0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 5),
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        BlocProvider.of<StreamBloc>(context)
                                            .add(Home());
                                      },
                                      child: const Text(
                                        'Share Now',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      style: ButtonStyle(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  const Size(130, 40)),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  const Color(0xFF2CA8E1)),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  side: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1)))),
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
                              BlocProvider.of<StreamBloc>(context).add(Home());
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
                              BlocProvider.of<StreamBloc>(context)
                                  .add(History());
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
                              BlocProvider.of<StreamBloc>(context).add(More());
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
