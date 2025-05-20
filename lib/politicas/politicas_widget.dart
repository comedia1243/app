import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'politicas_model.dart';
export 'politicas_model.dart';

class PoliticasWidget extends StatefulWidget {
  const PoliticasWidget({super.key});

  static String routeName = 'politicas';
  static String routePath = 'politicas';

  @override
  State<PoliticasWidget> createState() => _PoliticasWidgetState();
}

class _PoliticasWidgetState extends State<PoliticasWidget> {
  late PoliticasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoliticasModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'politicas'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'politicas',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/comedia8png.png',
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              actions: [],
              centerTitle: false,
              toolbarHeight: 150.0,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 600.0,
                  ),
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Política de Privacidade e Termos de Uso\n\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                TextSpan(
                                  text:
                                      'Bem-vindo ao [Comédia Ingressos] A sua privacidade e segurança são muito importantes para nós. Este documento descreve os termos e condições de uso do nosso site e aplicativo, bem como a nossa política de privacidade. Ao acessar ou utilizar nossos serviços, você concorda com os termos descritos aqui.\n\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                TextSpan(
                                  text: 'Política de Privacidade\n\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                TextSpan(
                                  text: '1. Coleta de Informações:\n\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.italic,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.italic,
                                      ),
                                ),
                                TextSpan(
                                  text:
                                      'Coletamos informações pessoais fornecidas por você, como nome, e-mail, telefone e dados de pagamento, ao realizar uma compra ou se cadastrar em nosso site.\n\nUtilizamos cookies e tecnologias similares para melhorar a experiência do usuário e personalizar conteúdo.\n\n',
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                TextSpan(
                                  text: '2. Uso das Informações:\n\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.italic,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.italic,
                                      ),
                                ),
                                TextSpan(
                                  text:
                                      'As informações coletadas são usadas para processar compras, enviar confirmações de ingressos, oferecer suporte ao cliente e enviar comunicações promocionais, caso autorizado.\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text:
                                      '3. Compartilhamento de Informações:\n\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Não compartilhamos suas informações pessoais com terceiros, exceto quando necessário para o processamento de pagamentos, cumprimento legal ou quando você autorizar explicitamente.\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: '4. Segurança:\n\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Utilizamos medidas de segurança avançadas para proteger suas informações pessoais contra acesso não autorizado, alteração, divulgação ou destruição.\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: '\n5. Direitos dos Usuários:\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      '\nVocê tem o direito de acessar, corrigir ou excluir suas informações pessoais a qualquer momento. Para isso, entre em contato pelo nosso e-mail de suporte [suporte@comediaingressos.com.br].\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: '\nTermos de Uso\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '\n1. Uso do Serviço:\n\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Este site é destinado à compra de ingressos para eventos. Você concorda em usar os serviços apenas para fins legais e de acordo com os termos descritos aqui.\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: '2. Compra de Ingressos:\n\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Ao comprar um ingresso, você deve fornecer informações precisas e completas. Nós não nos responsabilizamos por ingressos não recebidos devido a dados incorretos fornecidos pelo usuário.\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: '3. Cancelamentos e Reembolsos:\n\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'O cancelamento e reembolso seguem as regras estabelecidas pelo organizador do evento. Verifique as políticas específicas na descrição do evento antes de finalizar a compra.\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: '4. Restrições:\n\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'É proibido usar o site para propósitos ilegais, explorar vulnerabilidades ou violar os direitos de propriedade intelectual do [Comédia Ingressos] ou de terceiros.\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: '5. Limitação de Responsabilidade:\n\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Nós não somos responsáveis por problemas decorrentes de erros de terceiros, como processadores de pagamento ou organizadores de eventos.\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: '6. Alterações nos Termos:\n\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Reservamo-nos o direito de alterar estes termos a qualquer momento. Notificaremos os usuários sobre alterações significativas por meio de nosso site ou por e-mail.\n\n',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: 'Contato\n\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Caso tenha dúvidas sobre esta política de privacidade ou termos de uso, entre em contato conosco pelo e-mail [suporte@comediaingressos.com.br].\n\n\n\n\n\n',
                                  style: TextStyle(),
                                )
                              ],
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
