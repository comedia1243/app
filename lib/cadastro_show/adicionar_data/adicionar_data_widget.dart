import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'adicionar_data_model.dart';
export 'adicionar_data_model.dart';

class AdicionarDataWidget extends StatefulWidget {
  const AdicionarDataWidget({
    super.key,
    required this.show,
    required this.data,
  });

  final ShowsRecord? show;
  final DateTime? data;

  @override
  State<AdicionarDataWidget> createState() => _AdicionarDataWidgetState();
}

class _AdicionarDataWidgetState extends State<AdicionarDataWidget> {
  late AdicionarDataModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdicionarDataModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textFieldrrrTextController ??= TextEditingController();
    _model.textFieldrrrFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textFieldrrrTextController?.text = '1';
        }));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 760.0,
          maxHeight: _model.datacriada != null ? 700.0 : 535.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(22.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Adicione abaixo as informações do ingresso do dia ${valueOrDefault<String>(
                              dateTimeFormat(
                                "d/M/y, H:m",
                                widget.data,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              'd/M/y, H:m',
                            )}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'ADICIONAR_DATA_COMP_Icon_l29q5jxo_ON_TAP');
                            logFirebaseEvent('Icon_bottom_sheet');
                            Navigator.pop(context);
                          },
                          child: FaIcon(
                            FontAwesomeIcons.timesCircle,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 32.0,
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: _model.textController1,
                      focusNode: _model.textFieldFocusNode1,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nome / Tipo do Ingresso',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                      validator:
                          _model.textController1Validator.asValidator(context),
                    ),
                    TextFormField(
                      controller: _model.textController2,
                      focusNode: _model.textFieldFocusNode2,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Descrição (Opcional)',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                      keyboardType: TextInputType.multiline,
                      validator:
                          _model.textController2Validator.asValidator(context),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _model.textController3,
                            focusNode: _model.textFieldFocusNode3,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Valor na Bilheteria',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            validator: _model.textController3Validator
                                .asValidator(context),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: _model.textController4,
                            focusNode: _model.textFieldFocusNode4,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Valor Promocional',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            validator: _model.textController4Validator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 200.0,
                          ),
                          decoration: BoxDecoration(),
                          child: TextFormField(
                            controller: _model.textController5,
                            focusNode: _model.textFieldFocusNode5,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Quantidade de Ingressos',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            keyboardType: TextInputType.number,
                            validator: _model.textController5Validator
                                .asValidator(context),
                          ),
                        ),
                        Container(
                          width: 100.0,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              TextFormField(
                                controller: _model.textFieldrrrTextController,
                                focusNode: _model.textFieldrrrFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                validator: _model
                                    .textFieldrrrTextControllerValidator
                                    .asValidator(context),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 8.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADICIONAR_DATA_COMP_Icon_yjtrz8xp_ON_TAP');
                                      logFirebaseEvent('Icon_alert_dialog');
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                            child: AlertDialog(
                                              title: Text('Atenção'),
                                              content: Text(
                                                  'Para quantas pessoas esse ingresso é válido?'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: FaIcon(
                                      FontAwesomeIcons.questionCircle,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 17.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Checkbox(
                                value: _model.checkboxValue ??= false,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.checkboxValue = newValue!);

                                  if (!newValue!) {
                                    logFirebaseEvent(
                                        'ADICIONAR_DATA_Checkbox_2svfvrec_ON_TOGG');
                                    logFirebaseEvent(
                                        'Checkbox_update_component_state');
                                    _model.finalizacaoVenda = null;
                                    safeSetState(() {});
                                  }
                                },
                                side: BorderSide(
                                  width: 2,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                            Text(
                              'É venda por lote?',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                        if (_model.checkboxValue ?? true)
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADICIONAR_DATA_Container_3qff9zfi_ON_TAP');
                                logFirebaseEvent('Container_date_time_picker');
                                final _datePickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate:
                                      (getCurrentTimestamp ?? DateTime(1900)),
                                  lastDate: DateTime(2050),
                                  builder: (context, child) {
                                    return wrapInMaterialDatePickerTheme(
                                      context,
                                      child!,
                                      headerBackgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      headerForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      headerTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .headlineLarge
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .fontStyle,
                                            ),
                                            fontSize: 32.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .fontStyle,
                                          ),
                                      pickerBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      pickerForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      selectedDateTimeBackgroundColor:
                                          FlutterFlowTheme.of(context).corMenu,
                                      selectedDateTimeForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      actionButtonForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      iconSize: 24.0,
                                    );
                                  },
                                );

                                TimeOfDay? _datePickedTime;
                                if (_datePickedDate != null) {
                                  _datePickedTime = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.fromDateTime(
                                        getCurrentTimestamp),
                                    builder: (context, child) {
                                      return wrapInMaterialTimePickerTheme(
                                        context,
                                        child!,
                                        headerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        headerForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        headerTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .headlineLarge
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .fontStyle,
                                              ),
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .fontStyle,
                                            ),
                                        pickerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        pickerForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        selectedDateTimeBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .corMenu,
                                        selectedDateTimeForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        actionButtonForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        iconSize: 24.0,
                                      );
                                    },
                                  );
                                }

                                if (_datePickedDate != null &&
                                    _datePickedTime != null) {
                                  safeSetState(() {
                                    _model.datePicked = DateTime(
                                      _datePickedDate.year,
                                      _datePickedDate.month,
                                      _datePickedDate.day,
                                      _datePickedTime!.hour,
                                      _datePickedTime.minute,
                                    );
                                  });
                                } else if (_model.datePicked != null) {
                                  safeSetState(() {
                                    _model.datePicked = getCurrentTimestamp;
                                  });
                                }
                                logFirebaseEvent(
                                    'Container_update_component_state');
                                _model.finalizacaoVenda = _model.datePicked;
                                safeSetState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 12.0, 8.0, 12.0),
                                  child: Text(
                                    _model.finalizacaoVenda != null
                                        ? 'Data de Finalização da Venda: ${dateTimeFormat(
                                            "d/M/y, H:mm",
                                            _model.finalizacaoVenda,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )}'
                                        : 'Data de Finalização da Venda',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADICIONAR_DATA_MAIS_UM_INGRESSO_BTN_ON_T');
                              logFirebaseEvent('Button_firestore_query');
                              _model.dataexiste2 = await queryDataRecordOnce(
                                queryBuilder: (dataRecord) => dataRecord
                                    .where(
                                      'data',
                                      isGreaterThan: getCurrentTimestamp,
                                    )
                                    .where(
                                      'show',
                                      isEqualTo: widget.show?.reference,
                                    )
                                    .where(
                                      'status',
                                      isEqualTo: 'Ativo',
                                    ),
                                singleRecord: true,
                              ).then((s) => s.firstOrNull);
                              if (_model.datacriada != null) {
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.quantddTotal = (_model.quantddTotal!) +
                                    int.parse(_model.textController5.text);
                                safeSetState(() {});
                                logFirebaseEvent('Button_backend_call');

                                var ingressoRecordReference1 =
                                    IngressoRecord.collection.doc();
                                await ingressoRecordReference1
                                    .set(createIngressoRecordData(
                                  nome: _model.textController1.text,
                                  quantidade:
                                      int.tryParse(_model.textController5.text),
                                  valorSemTaxa: double.tryParse(
                                      _model.textController4.text),
                                  valorComTaxa: (FFAppState().TaxaPadrao *
                                          double.parse(
                                              _model.textController4.text)) +
                                      double.parse(_model.textController4.text),
                                  valorBilheteria: double.tryParse(
                                      _model.textController3.text),
                                  data: _model.datacriada,
                                  dataCriacao: getCurrentTimestamp,
                                  show: widget.show?.reference,
                                  valoTaxa: FFAppState().TaxaPadrao *
                                      double.parse(_model.textController4.text),
                                  valorDesconto: (double.parse(
                                              _model.textController4.text) /
                                          double.parse(
                                              _model.textController3.text)) *
                                      100,
                                  quantidadeRestante:
                                      int.tryParse(_model.textController5.text),
                                  descricao: _model.textController2.text,
                                  validoQuantasPessoas: int.tryParse(
                                      _model.textFieldrrrTextController.text),
                                  ocultar: false,
                                  finalizacaoVenda: _model.finalizacaoVenda,
                                ));
                                _model.criacaoingresso =
                                    IngressoRecord.getDocumentFromData(
                                        createIngressoRecordData(
                                          nome: _model.textController1.text,
                                          quantidade: int.tryParse(
                                              _model.textController5.text),
                                          valorSemTaxa: double.tryParse(
                                              _model.textController4.text),
                                          valorComTaxa: (FFAppState()
                                                      .TaxaPadrao *
                                                  double.parse(_model
                                                      .textController4.text)) +
                                              double.parse(
                                                  _model.textController4.text),
                                          valorBilheteria: double.tryParse(
                                              _model.textController3.text),
                                          data: _model.datacriada,
                                          dataCriacao: getCurrentTimestamp,
                                          show: widget.show?.reference,
                                          valoTaxa: FFAppState().TaxaPadrao *
                                              double.parse(
                                                  _model.textController4.text),
                                          valorDesconto: (double.parse(_model
                                                      .textController4.text) /
                                                  double.parse(_model
                                                      .textController3.text)) *
                                              100,
                                          quantidadeRestante: int.tryParse(
                                              _model.textController5.text),
                                          descricao:
                                              _model.textController2.text,
                                          validoQuantasPessoas: int.tryParse(
                                              _model.textFieldrrrTextController
                                                  .text),
                                          ocultar: false,
                                          finalizacaoVenda:
                                              _model.finalizacaoVenda,
                                        ),
                                        ingressoRecordReference1);
                                logFirebaseEvent('Button_backend_call');

                                await FFAppState()
                                    .cadastrandoShow!
                                    .update(createShowsRecordData(
                                      maiorDesconto:
                                          _model.criacaoingresso?.valorDesconto,
                                    ));
                                logFirebaseEvent('Button_backend_call');

                                await _model.datacriada!.update({
                                  ...createDataRecordData(
                                    totalIngressos: _model.quantddTotal,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'ingressos': FieldValue.arrayUnion(
                                          [_model.criacaoingresso?.reference]),
                                    },
                                  ),
                                });
                                logFirebaseEvent('Button_alert_dialog');
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return WebViewAware(
                                      child: AlertDialog(
                                        title: Text('Foi'),
                                        content: Text('Ingresso Adicionado'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                                logFirebaseEvent('Button_reset_form_fields');
                                safeSetState(() {
                                  _model.textController1?.clear();
                                  _model.textController2?.clear();
                                  _model.textController3?.clear();
                                  _model.textController4?.clear();
                                  _model.textController5?.clear();
                                  _model.textFieldrrrTextController?.text = '1';
                                });
                              } else {
                                logFirebaseEvent('Button_backend_call');

                                var dataRecordReference =
                                    DataRecord.collection.doc();
                                await dataRecordReference
                                    .set(createDataRecordData(
                                  show: widget.show?.reference,
                                  id: random_data.randomString(
                                    5,
                                    10,
                                    true,
                                    false,
                                    false,
                                  ),
                                  dataCriacao: getCurrentTimestamp,
                                  status: 'Ativo',
                                  totalIngressos:
                                      int.tryParse(_model.textController5.text),
                                  totalVendido: 0,
                                  pago: false,
                                  valorTotal: 0.0,
                                  valorReceber: 0.0,
                                  valorPlataforma: 0.0,
                                  estaOculto: false,
                                  local: widget.show?.local,
                                  data: widget.data,
                                ));
                                _model.adicionandoData =
                                    DataRecord.getDocumentFromData(
                                        createDataRecordData(
                                          show: widget.show?.reference,
                                          id: random_data.randomString(
                                            5,
                                            10,
                                            true,
                                            false,
                                            false,
                                          ),
                                          dataCriacao: getCurrentTimestamp,
                                          status: 'Ativo',
                                          totalIngressos: int.tryParse(
                                              _model.textController5.text),
                                          totalVendido: 0,
                                          pago: false,
                                          valorTotal: 0.0,
                                          valorReceber: 0.0,
                                          valorPlataforma: 0.0,
                                          estaOculto: false,
                                          local: widget.show?.local,
                                          data: widget.data,
                                        ),
                                        dataRecordReference);
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.datacriada =
                                    _model.adicionandoData?.reference;
                                _model.quantddTotal =
                                    int.tryParse(_model.textController5.text);
                                safeSetState(() {});
                                logFirebaseEvent('Button_backend_call');

                                var ingressoRecordReference2 =
                                    IngressoRecord.collection.doc();
                                await ingressoRecordReference2
                                    .set(createIngressoRecordData(
                                  nome: _model.textController1.text,
                                  quantidade:
                                      int.tryParse(_model.textController5.text),
                                  valorSemTaxa: double.tryParse(
                                      _model.textController4.text),
                                  valorComTaxa: (FFAppState().TaxaPadrao *
                                          double.parse(
                                              _model.textController4.text)) +
                                      double.parse(_model.textController4.text),
                                  valorBilheteria: double.tryParse(
                                      _model.textController3.text),
                                  data: _model.adicionandoData?.reference,
                                  dataCriacao: getCurrentTimestamp,
                                  show: widget.show?.reference,
                                  valoTaxa: FFAppState().TaxaPadrao *
                                      double.parse(_model.textController4.text),
                                  valorDesconto: (double.parse(
                                              _model.textController4.text) /
                                          double.parse(
                                              _model.textController3.text)) *
                                      100,
                                  quantidadeRestante:
                                      int.tryParse(_model.textController5.text),
                                  descricao: _model.textController2.text,
                                  validoQuantasPessoas: int.tryParse(
                                      _model.textFieldrrrTextController.text),
                                  ocultar: false,
                                  finalizacaoVenda: _model.finalizacaoVenda,
                                ));
                                _model.criareAddIngresso =
                                    IngressoRecord.getDocumentFromData(
                                        createIngressoRecordData(
                                          nome: _model.textController1.text,
                                          quantidade: int.tryParse(
                                              _model.textController5.text),
                                          valorSemTaxa: double.tryParse(
                                              _model.textController4.text),
                                          valorComTaxa: (FFAppState()
                                                      .TaxaPadrao *
                                                  double.parse(_model
                                                      .textController4.text)) +
                                              double.parse(
                                                  _model.textController4.text),
                                          valorBilheteria: double.tryParse(
                                              _model.textController3.text),
                                          data:
                                              _model.adicionandoData?.reference,
                                          dataCriacao: getCurrentTimestamp,
                                          show: widget.show?.reference,
                                          valoTaxa: FFAppState().TaxaPadrao *
                                              double.parse(
                                                  _model.textController4.text),
                                          valorDesconto: (double.parse(_model
                                                      .textController4.text) /
                                                  double.parse(_model
                                                      .textController3.text)) *
                                              100,
                                          quantidadeRestante: int.tryParse(
                                              _model.textController5.text),
                                          descricao:
                                              _model.textController2.text,
                                          validoQuantasPessoas: int.tryParse(
                                              _model.textFieldrrrTextController
                                                  .text),
                                          ocultar: false,
                                          finalizacaoVenda:
                                              _model.finalizacaoVenda,
                                        ),
                                        ingressoRecordReference2);
                                logFirebaseEvent('Button_backend_call');

                                await _model.adicionandoData!.reference.update({
                                  ...mapToFirestore(
                                    {
                                      'ingressos': FieldValue.arrayUnion([
                                        _model.criareAddIngresso?.reference
                                      ]),
                                    },
                                  ),
                                });
                                logFirebaseEvent('Button_backend_call');

                                await widget.show!.reference.update({
                                  ...createShowsRecordData(
                                    maiorDesconto:
                                        _model.criareAddIngresso?.valorDesconto,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'datasID': FieldValue.arrayUnion(
                                          [_model.adicionandoData?.id]),
                                      'datasText': FieldValue.arrayUnion([
                                        dateTimeFormat(
                                          "d/M/y",
                                          widget.data,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )
                                      ]),
                                    },
                                  ),
                                });
                                if (((_model.dataexiste2?.data != null) &&
                                        (_model.dataexiste2!.data! >
                                            _model.adicionandoDataConclui!
                                                .data!)) ||
                                    (_model.dataexiste2?.data == null)) {
                                  logFirebaseEvent('Button_backend_call');

                                  await widget.show!.reference.update({
                                    ...createShowsRecordData(
                                      maiorDesconto: _model
                                          .criareAddIngresso?.valorDesconto,
                                      proximaData: widget.data,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'datasID': FieldValue.arrayUnion(
                                            [_model.adicionandoData?.id]),
                                        'datasText': FieldValue.arrayUnion([
                                          dateTimeFormat(
                                            "d/M/y",
                                            widget.data,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )
                                        ]),
                                      },
                                    ),
                                  });
                                } else {
                                  logFirebaseEvent('Button_backend_call');

                                  await widget.show!.reference.update({
                                    ...createShowsRecordData(
                                      maiorDesconto: _model
                                          .criareAddIngresso?.valorDesconto,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'datasID': FieldValue.arrayUnion(
                                            [_model.adicionandoData?.id]),
                                        'datasText': FieldValue.arrayUnion([
                                          dateTimeFormat(
                                            "d/M/y",
                                            widget.data,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )
                                        ]),
                                      },
                                    ),
                                  });
                                }

                                logFirebaseEvent('Button_alert_dialog');
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return WebViewAware(
                                      child: AlertDialog(
                                        title: Text('Foi'),
                                        content: Text('Ingresso Adicionado'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                                logFirebaseEvent('Button_reset_form_fields');
                                safeSetState(() {
                                  _model.textController1?.clear();
                                  _model.textController2?.clear();
                                  _model.textController3?.clear();
                                  _model.textController4?.clear();
                                  _model.textController5?.clear();
                                  _model.textFieldrrrTextController?.text = '1';
                                });
                              }

                              safeSetState(() {});
                            },
                            text: 'Mais um Ingresso',
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADICIONAR_DATA_ADICIONAR_E_CONCLUIR_BTN_');
                              logFirebaseEvent('Button_firestore_query');
                              _model.dataexiste = await queryDataRecordOnce(
                                queryBuilder: (dataRecord) => dataRecord
                                    .where(
                                      'data',
                                      isGreaterThan: getCurrentTimestamp,
                                    )
                                    .where(
                                      'show',
                                      isEqualTo: widget.show?.reference,
                                    )
                                    .where(
                                      'status',
                                      isEqualTo: 'Ativo',
                                    ),
                                singleRecord: true,
                              ).then((s) => s.firstOrNull);
                              if (_model.datacriada != null) {
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.quantddTotal = (_model.quantddTotal!) +
                                    int.parse(_model.textController5.text);
                                safeSetState(() {});
                                logFirebaseEvent('Button_backend_call');

                                var ingressoRecordReference1 =
                                    IngressoRecord.collection.doc();
                                await ingressoRecordReference1
                                    .set(createIngressoRecordData(
                                  nome: _model.textController1.text,
                                  quantidade:
                                      int.tryParse(_model.textController5.text),
                                  valorSemTaxa: double.tryParse(
                                      _model.textController4.text),
                                  valorComTaxa: (FFAppState().TaxaPadrao *
                                          double.parse(
                                              _model.textController4.text)) +
                                      double.parse(_model.textController4.text),
                                  valorBilheteria: double.tryParse(
                                      _model.textController3.text),
                                  data: _model.datacriada,
                                  dataCriacao: getCurrentTimestamp,
                                  show: widget.show?.reference,
                                  valoTaxa: FFAppState().TaxaPadrao *
                                      double.parse(_model.textController4.text),
                                  valorDesconto: (double.parse(
                                              _model.textController4.text) /
                                          double.parse(
                                              _model.textController3.text)) *
                                      100,
                                  quantidadeRestante:
                                      int.tryParse(_model.textController5.text),
                                  descricao: _model.textController2.text,
                                  validoQuantasPessoas: int.tryParse(
                                      _model.textFieldrrrTextController.text),
                                  ocultar: false,
                                  finalizacaoVenda: _model.finalizacaoVenda,
                                ));
                                _model.criaIngressoConclui =
                                    IngressoRecord.getDocumentFromData(
                                        createIngressoRecordData(
                                          nome: _model.textController1.text,
                                          quantidade: int.tryParse(
                                              _model.textController5.text),
                                          valorSemTaxa: double.tryParse(
                                              _model.textController4.text),
                                          valorComTaxa: (FFAppState()
                                                      .TaxaPadrao *
                                                  double.parse(_model
                                                      .textController4.text)) +
                                              double.parse(
                                                  _model.textController4.text),
                                          valorBilheteria: double.tryParse(
                                              _model.textController3.text),
                                          data: _model.datacriada,
                                          dataCriacao: getCurrentTimestamp,
                                          show: widget.show?.reference,
                                          valoTaxa: FFAppState().TaxaPadrao *
                                              double.parse(
                                                  _model.textController4.text),
                                          valorDesconto: (double.parse(_model
                                                      .textController4.text) /
                                                  double.parse(_model
                                                      .textController3.text)) *
                                              100,
                                          quantidadeRestante: int.tryParse(
                                              _model.textController5.text),
                                          descricao:
                                              _model.textController2.text,
                                          validoQuantasPessoas: int.tryParse(
                                              _model.textFieldrrrTextController
                                                  .text),
                                          ocultar: false,
                                          finalizacaoVenda:
                                              _model.finalizacaoVenda,
                                        ),
                                        ingressoRecordReference1);
                                logFirebaseEvent('Button_backend_call');

                                await _model.datacriada!.update({
                                  ...createDataRecordData(
                                    totalIngressos: _model.quantddTotal,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'ingressos': FieldValue.arrayUnion([
                                        _model.criaIngressoConclui?.reference
                                      ]),
                                    },
                                  ),
                                });
                                if (widget.show!.maiorDesconto <
                                    _model.criaIngressoConclui!.valorDesconto) {
                                  logFirebaseEvent('Button_backend_call');

                                  await FFAppState()
                                      .cadastrandoShow!
                                      .update(createShowsRecordData(
                                        maiorDesconto: _model
                                            .criaIngressoConclui?.valorDesconto,
                                      ));
                                }
                              } else {
                                logFirebaseEvent('Button_backend_call');

                                var dataRecordReference =
                                    DataRecord.collection.doc();
                                await dataRecordReference
                                    .set(createDataRecordData(
                                  data: widget.data,
                                  show: widget.show?.reference,
                                  id: random_data.randomString(
                                    5,
                                    10,
                                    true,
                                    false,
                                    false,
                                  ),
                                  dataCriacao: getCurrentTimestamp,
                                  status: 'Ativo',
                                  totalIngressos:
                                      int.tryParse(_model.textController5.text),
                                  totalVendido: 0,
                                  pago: false,
                                  valorTotal: 0.0,
                                  valorReceber: 0.0,
                                  valorPlataforma: 0.0,
                                  estaOculto: false,
                                  local: widget.show?.local,
                                ));
                                _model.adicionandoDataConclui =
                                    DataRecord.getDocumentFromData(
                                        createDataRecordData(
                                          data: widget.data,
                                          show: widget.show?.reference,
                                          id: random_data.randomString(
                                            5,
                                            10,
                                            true,
                                            false,
                                            false,
                                          ),
                                          dataCriacao: getCurrentTimestamp,
                                          status: 'Ativo',
                                          totalIngressos: int.tryParse(
                                              _model.textController5.text),
                                          totalVendido: 0,
                                          pago: false,
                                          valorTotal: 0.0,
                                          valorReceber: 0.0,
                                          valorPlataforma: 0.0,
                                          estaOculto: false,
                                          local: widget.show?.local,
                                        ),
                                        dataRecordReference);
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.datacriada =
                                    _model.adicionandoDataConclui?.reference;
                                _model.quantddTotal =
                                    int.tryParse(_model.textController5.text);
                                safeSetState(() {});
                                logFirebaseEvent('Button_backend_call');

                                var ingressoRecordReference2 =
                                    IngressoRecord.collection.doc();
                                await ingressoRecordReference2
                                    .set(createIngressoRecordData(
                                  nome: _model.textController1.text,
                                  quantidade:
                                      int.tryParse(_model.textController5.text),
                                  valorSemTaxa: double.tryParse(
                                      _model.textController4.text),
                                  valorComTaxa: (FFAppState().TaxaPadrao *
                                          double.parse(
                                              _model.textController4.text)) +
                                      double.parse(_model.textController4.text),
                                  valorBilheteria: double.tryParse(
                                      _model.textController3.text),
                                  data:
                                      _model.adicionandoDataConclui?.reference,
                                  dataCriacao: getCurrentTimestamp,
                                  show: widget.show?.reference,
                                  valoTaxa: FFAppState().TaxaPadrao *
                                      double.parse(_model.textController4.text),
                                  valorDesconto: (double.parse(
                                              _model.textController4.text) /
                                          double.parse(
                                              _model.textController3.text)) *
                                      100,
                                  quantidadeRestante:
                                      int.tryParse(_model.textController5.text),
                                  descricao: _model.textController2.text,
                                  validoQuantasPessoas: int.tryParse(
                                      _model.textFieldrrrTextController.text),
                                  ocultar: false,
                                  finalizacaoVenda: _model.finalizacaoVenda,
                                ));
                                _model.criareAddIngressoCopy =
                                    IngressoRecord.getDocumentFromData(
                                        createIngressoRecordData(
                                          nome: _model.textController1.text,
                                          quantidade: int.tryParse(
                                              _model.textController5.text),
                                          valorSemTaxa: double.tryParse(
                                              _model.textController4.text),
                                          valorComTaxa: (FFAppState()
                                                      .TaxaPadrao *
                                                  double.parse(_model
                                                      .textController4.text)) +
                                              double.parse(
                                                  _model.textController4.text),
                                          valorBilheteria: double.tryParse(
                                              _model.textController3.text),
                                          data: _model.adicionandoDataConclui
                                              ?.reference,
                                          dataCriacao: getCurrentTimestamp,
                                          show: widget.show?.reference,
                                          valoTaxa: FFAppState().TaxaPadrao *
                                              double.parse(
                                                  _model.textController4.text),
                                          valorDesconto: (double.parse(_model
                                                      .textController4.text) /
                                                  double.parse(_model
                                                      .textController3.text)) *
                                              100,
                                          quantidadeRestante: int.tryParse(
                                              _model.textController5.text),
                                          descricao:
                                              _model.textController2.text,
                                          validoQuantasPessoas: int.tryParse(
                                              _model.textFieldrrrTextController
                                                  .text),
                                          ocultar: false,
                                          finalizacaoVenda:
                                              _model.finalizacaoVenda,
                                        ),
                                        ingressoRecordReference2);
                                logFirebaseEvent('Button_backend_call');

                                await _model.adicionandoDataConclui!.reference
                                    .update({
                                  ...mapToFirestore(
                                    {
                                      'ingressos': FieldValue.arrayUnion([
                                        _model.criareAddIngressoCopy?.reference
                                      ]),
                                    },
                                  ),
                                });
                                if (widget.show!.maiorDesconto <
                                    _model
                                        .criareAddIngressoCopy!.valorDesconto) {
                                  logFirebaseEvent('Button_backend_call');

                                  await widget.show!.reference.update({
                                    ...createShowsRecordData(
                                      maiorDesconto: _model
                                          .criareAddIngressoCopy?.valorDesconto,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'datasID': FieldValue.arrayUnion([
                                          _model.adicionandoDataConclui?.id
                                        ]),
                                        'datasText': FieldValue.arrayUnion([
                                          dateTimeFormat(
                                            "d/M/y",
                                            widget.data,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )
                                        ]),
                                      },
                                    ),
                                  });
                                } else {
                                  logFirebaseEvent('Button_backend_call');

                                  await widget.show!.reference.update({
                                    ...mapToFirestore(
                                      {
                                        'datasID': FieldValue.arrayUnion([
                                          _model.adicionandoDataConclui?.id
                                        ]),
                                        'datasText': FieldValue.arrayUnion([
                                          dateTimeFormat(
                                            "d/M/y",
                                            widget.data,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )
                                        ]),
                                      },
                                    ),
                                  });
                                }

                                if (((_model.dataexiste?.data != null) &&
                                        (_model.dataexiste!.data! >
                                            _model.adicionandoDataConclui!
                                                .data!)) ||
                                    (_model.dataexiste?.data == null)) {
                                  logFirebaseEvent('Button_backend_call');

                                  await widget.show!.reference
                                      .update(createShowsRecordData(
                                    proximaData:
                                        _model.adicionandoDataConclui?.data,
                                  ));
                                }
                              }

                              logFirebaseEvent('Button_bottom_sheet');
                              Navigator.pop(context);
                              logFirebaseEvent('Button_alert_dialog');
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Foi'),
                                      content: Text('Concluido com Sucesso'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );

                              safeSetState(() {});
                            },
                            text: 'Adicionar e Concluir',
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).corMenu,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
              if (_model.datacriada != null)
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: StreamBuilder<List<IngressoRecord>>(
                    stream: queryIngressoRecord(
                      queryBuilder: (ingressoRecord) => ingressoRecord.where(
                        'data',
                        isEqualTo: _model.datacriada,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<IngressoRecord> columnIngressoRecordList =
                          snapshot.data!;

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              columnIngressoRecordList.length, (columnIndex) {
                            final columnIngressoRecord =
                                columnIngressoRecordList[columnIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        columnIngressoRecord.nome,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'ADICIONAR_DATA_COMP_Icon_780gbpay_ON_TAP');
                                          logFirebaseEvent('Icon_backend_call');
                                          await columnIngressoRecord.reference
                                              .delete();
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.trashAlt,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
