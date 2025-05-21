import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'bio_auth_model.dart';
export 'bio_auth_model.dart';

class BioAuthWidget extends StatefulWidget {
  const BioAuthWidget({super.key});

  static String routeName = 'BioAuth';
  static String routePath = '/bioAuth';

  @override
  State<BioAuthWidget> createState() => _BioAuthWidgetState();
}

class _BioAuthWidgetState extends State<BioAuthWidget> {
  late BioAuthModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BioAuthModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      while (_model.auhtorNot == false) {
        final _localAuth = LocalAuthentication();
        bool _isBiometricSupported = await _localAuth.isDeviceSupported();

        if (_isBiometricSupported) {
          try {
            _model.auhtorNot = await _localAuth.authenticate(
                localizedReason: 'يجب التحقق من هويتك');
          } on PlatformException {
            _model.auhtorNot = false;
          }
          safeSetState(() {});
        }

        await Future.delayed(const Duration(milliseconds: 250));
      }

      context.pushNamed(HomePageWidget.routeName);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
      ),
    );
  }
}
