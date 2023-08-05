import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'power_home_model.dart';
export 'power_home_model.dart';

class PowerHomeWidget extends StatefulWidget {
  const PowerHomeWidget({Key? key}) : super(key: key);

  @override
  _PowerHomeWidgetState createState() => _PowerHomeWidgetState();
}

class _PowerHomeWidgetState extends State<PowerHomeWidget> {
  late PowerHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PowerHomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (_model.home == true)
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onLongPress: () async {
              setState(() {
                _model.home = false;
              });
            },
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20.0,
              buttonSize: 50.0,
              icon: FaIcon(
                FontAwesomeIcons.home,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 30.0,
              ),
              onPressed: () async {
                context.goNamed('Home');
              },
            ),
          ),
        if (_model.home == false)
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onLongPress: () async {
              setState(() {
                _model.home = true;
              });
            },
            child: FlutterFlowIconButton(
              borderRadius: 20.0,
              buttonSize: 50.0,
              icon: FaIcon(
                FontAwesomeIcons.powerOff,
                color: Theme.of(context).brightness == Brightness.light
                    ? Color(0xFF930000)
                    : Color(0xFFFF0000),
                size: 30.0,
              ),
              onPressed: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Logged out',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    duration: Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                  ),
                );
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                context.goNamedAuth('intro', context.mounted);
              },
            ),
          ),
      ],
    );
  }
}
