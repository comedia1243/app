import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ASAAS Group Code

class AsaasGroup {
  static String getBaseUrl() => 'https://api.asaas.com/v3';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'access_token':
        '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0MzkyNzg6OiRhYWNoX2RkZjI5NjQ3LTEyMDctNGU4ZC1iYWU4LWM1YmM3MTk5NGEyZA==',
    'Access-Control-Allow-Origin': '*',
  };
  static NovaCobrancaCartaoCall novaCobrancaCartaoCall =
      NovaCobrancaCartaoCall();
  static NovaCobracaPixCall novaCobracaPixCall = NovaCobracaPixCall();
  static NovoClienteCall novoClienteCall = NovoClienteCall();
  static QrCodePIXCall qrCodePIXCall = QrCodePIXCall();
  static SaldoDaContaCall saldoDaContaCall = SaldoDaContaCall();
}

class NovaCobrancaCartaoCall {
  Future<ApiCallResponse> call({
    String? cartaoNome = '',
    String? cartaoNumero = '',
    String? cartaoMes = '',
    String? cartaoAno = '',
    String? ccv = '',
    String? titularNome = '',
    String? titularEmail = '',
    String? titularCPF = '',
    String? cep = '',
    String? enderecoNumero = '',
    String? telefone = '',
    String? customerASAAS = '',
    String? dataVencimento = '',
    double? valor,
    String? descricao = '',
    String? referenciaExterna = '',
  }) async {
    final baseUrl = AsaasGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "billingType": "CREDIT_CARD",
  "creditCard": {
    "holderName": "${cartaoNome}",
    "number": "${cartaoNumero}",
    "expiryMonth": "${cartaoMes}",
    "expiryYear": "${cartaoAno}",
    "ccv": "${ccv}"
  },
  "creditCardHolderInfo": {
    "name": "${titularNome}",
    "email": "${titularEmail}",
    "cpfCnpj": "${titularCPF}",
    "postalCode": "${cep}",
	   "addressNumber": "${enderecoNumero}",
    "addressComplement": null,
    "phone": "${telefone}"
  },
  "customer": "${customerASAAS}",
  "dueDate": "${dataVencimento}",
  "value": ${valor},
  "description": "${descricao}",
  "externalReference": "${referenciaExterna}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Nova Cobranca Cartao',
      apiUrl: '${baseUrl}/payments',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0MzkyNzg6OiRhYWNoX2RkZjI5NjQ3LTEyMDctNGU4ZC1iYWU4LWM1YmM3MTk5NGEyZA==',
        'Access-Control-Allow-Origin': '*',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? valorBruto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.value''',
      ));
  double? valorLiquido(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.netValue''',
      ));
  String? idpay(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class NovaCobracaPixCall {
  Future<ApiCallResponse> call({
    String? customerASAAS = '',
    String? dataVencimento = '',
    double? valor,
    String? descricao = '',
    String? referenciaExterna = '',
  }) async {
    final baseUrl = AsaasGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "billingType": "PIX",
  "customer": "${customerASAAS}",
  "dueDate": "${dataVencimento}",
  "value": ${valor},
  "description": "${descricao}",
  "postalService": false,
  "externalReference": "${referenciaExterna}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Nova Cobraca Pix',
      apiUrl: '${baseUrl}/payments',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0MzkyNzg6OiRhYWNoX2RkZjI5NjQ3LTEyMDctNGU4ZC1iYWU4LWM1YmM3MTk5NGEyZA==',
        'Access-Control-Allow-Origin': '*',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? idPay(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  double? valorBruto(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value''',
      ));
  double? valorLiquido(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.netValue''',
      ));
  String? tipoPagamento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billingType''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class NovoClienteCall {
  Future<ApiCallResponse> call({
    String? clienteNome = '',
    String? clienteEmail = '',
    String? clienteTelefone = '',
    String? cpf = '',
    String? cep = '',
    String? enderecoNumero = '',
    String? referenciaexterna = '',
    String? observacoes = '',
  }) async {
    final baseUrl = AsaasGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
    	"name": "${clienteNome}",
    	"email": "${clienteEmail}",
    	"mobilePhone": "${clienteTelefone}",
    	"cpfCnpj": "${cpf}",
    	"postalCode": "${cep}",
    	"addressNumber": "${enderecoNumero}",
    	"externalReference": "${referenciaexterna}",
    	"observations": "${observacoes}",
     "notificationDisabled": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Novo Cliente',
      apiUrl: '${baseUrl}/customers',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0MzkyNzg6OiRhYWNoX2RkZjI5NjQ3LTEyMDctNGU4ZC1iYWU4LWM1YmM3MTk5NGEyZA==',
        'Access-Control-Allow-Origin': '*',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? idCustomer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class QrCodePIXCall {
  Future<ApiCallResponse> call({
    String? idpay = '',
  }) async {
    final baseUrl = AsaasGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'QrCode PIX',
      apiUrl: '${baseUrl}/payments/${idpay}/pixQrCode',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0MzkyNzg6OiRhYWNoX2RkZjI5NjQ3LTEyMDctNGU4ZC1iYWU4LWM1YmM3MTk5NGEyZA==',
        'Access-Control-Allow-Origin': '*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? qrCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.encodedImage''',
      ));
  String? copiaCola(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payload''',
      ));
}

class SaldoDaContaCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AsaasGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Saldo da Conta',
      apiUrl: '${baseUrl}/finance/balance',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0MzkyNzg6OiRhYWNoX2RkZjI5NjQ3LTEyMDctNGU4ZC1iYWU4LWM1YmM3MTk5NGEyZA==',
        'Access-Control-Allow-Origin': '*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? saldo(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.balance''',
      ));
}

/// End ASAAS Group Code

/// Start ZAPI Group Code

class ZapiGroup {
  static String getBaseUrl() =>
      'https://api.z-api.io/instances/3D3C99166D889064DD66D6CF9D87E76F/token/46BF7C3F9E9CA241F1849836';
  static Map<String, String> headers = {
    'client-token': 'F03e5fe6851f94089ba553f9386994588S',
    'Content-Type': 'application/json',
    'accept': '*/*',
  };
  static QrCodeCall qrCodeCall = QrCodeCall();
  static DesconectarCall desconectarCall = DesconectarCall();
  static StatusCall statusCall = StatusCall();
  static EnviarTextoCall enviarTextoCall = EnviarTextoCall();
}

class QrCodeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ZapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'QrCode',
      apiUrl: '${baseUrl}/qr-code',
      callType: ApiCallType.GET,
      headers: {
        'client-token': 'F03e5fe6851f94089ba553f9386994588S',
        'Content-Type': 'application/json',
        'accept': '*/*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? qrcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value''',
      ));
}

class DesconectarCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ZapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Desconectar',
      apiUrl: '${baseUrl}/disconnect',
      callType: ApiCallType.GET,
      headers: {
        'client-token': 'F03e5fe6851f94089ba553f9386994588S',
        'Content-Type': 'application/json',
        'accept': '*/*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? desconectado(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.value''',
      ));
}

class StatusCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ZapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Status',
      apiUrl: '${baseUrl}/status',
      callType: ApiCallType.GET,
      headers: {
        'client-token': 'F03e5fe6851f94089ba553f9386994588S',
        'Content-Type': 'application/json',
        'accept': '*/*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? conectado(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.connected''',
      ));
}

class EnviarTextoCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? message = '',
  }) async {
    final baseUrl = ZapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "phone": "${phone}",
  "message": "${message}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar Texto',
      apiUrl: '${baseUrl}/send-text',
      callType: ApiCallType.POST,
      headers: {
        'client-token': 'F03e5fe6851f94089ba553f9386994588S',
        'Content-Type': 'application/json',
        'accept': '*/*',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ZAPI Group Code

class FluxoDePagamentoCall {
  static Future<ApiCallResponse> call({
    String? metodo = '',
    String? dataVencimento = '',
    double? valor,
    String? cartaoNome = '',
    String? cartaoNumero = '',
    String? cartaoMes = '',
    String? cartaoAno = '',
    String? ccv = '',
    String? titularNome = '',
    String? titularEmail = '',
    String? titularCPF = '',
    String? cep = '',
    String? enderecoNumero = '',
    String? telefone = '',
    String? descricao = '',
    String? referenciaExterna = '',
    String? clienteNome = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fluxo de Pagamento',
      apiUrl: 'https://hook.us1.make.com/ks7j8cu0ifkkbpqheoc3nuof8jpgorzk',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'metodo': metodo,
        'dataVencimento': dataVencimento,
        'valor': valor,
        'cartaoNome': cartaoNome,
        'cartaoNumero': cartaoNumero,
        'cartaoMes': cartaoMes,
        'cartaAno': cartaoAno,
        'ccv': ccv,
        'titularNome': titularNome,
        'titularEmail': titularEmail,
        'titularCPF': titularCPF,
        'cep': cep,
        'enderecoNumero': enderecoNumero,
        'telefone': telefone,
        'descricao': descricao,
        'referenciaExterna': referenciaExterna,
        'clienteNome': clienteNome,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? customID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customID''',
      ));
  static String? idPay(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.idPay''',
      ));
  static String? valorBruto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.valorBruto''',
      ));
  static String? valorLiquido(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.valorLiquido''',
      ));
  static String? tipoPagamento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tipoPagamento''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? qrcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imgpix''',
      ));
  static String? copiacola(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.copiacola''',
      ));
}

class FluxoDePagamentoCopyCall {
  static Future<ApiCallResponse> call({
    String? metodo = '',
    String? dataVencimento = '',
    double? valor,
    String? cartaoNome = '',
    String? cartaoNumero = '',
    String? cartaoMes = '',
    String? cartaoAno = '',
    String? ccv = '',
    String? titularNome = '',
    String? titularEmail = '',
    String? titularCPF = '',
    String? cep = '',
    String? enderecoNumero = '',
    String? telefone = '',
    String? descricao = '',
    String? referenciaExterna = '',
    String? clienteNome = '',
    String? numeroParcelas = '',
    String? valorCadaParcela = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fluxo de Pagamento Copy',
      apiUrl: 'https://hook.us1.make.com/2aw9l15q9hzwkswvxmmvp9lwrsrmwg46',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'metodo': metodo,
        'dataVencimento': dataVencimento,
        'valor': valor,
        'cartaoNome': cartaoNome,
        'cartaoNumero': cartaoNumero,
        'cartaoMes': cartaoMes,
        'cartaAno': cartaoAno,
        'ccv': ccv,
        'titularNome': titularNome,
        'titularEmail': titularEmail,
        'titularCPF': titularCPF,
        'cep': cep,
        'enderecoNumero': enderecoNumero,
        'telefone': telefone,
        'descricao': descricao,
        'referenciaExterna': referenciaExterna,
        'clienteNome': clienteNome,
        'numeroParcelas': numeroParcelas,
        'valorCadaParcela': valorCadaParcela,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? customID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customID''',
      ));
  static String? idPay(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.idPay''',
      ));
  static String? valorBruto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.valorBruto''',
      ));
  static String? valorLiquido(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.valorLiquido''',
      ));
  static String? tipoPagamento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tipoPagamento''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? dataLiquidacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.DataLiquidacao''',
      ));
}

class AgendarCancelamentoCall {
  static Future<ApiCallResponse> call({
    String? data = '',
    String? identificador = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Agendar Cancelamento',
      apiUrl:
          'https://traz-express.bubbleapps.io/version-test/api/1.1/wf/agenda-comedia/initialize',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'data': data,
        'identificador': identificador,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObterShowsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Obter Shows',
      apiUrl:
          'https://firestore.googleapis.com/v1/projects/comedia-ingressos-9aekof/databases/(default)/documents/shows',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ya29.a0AeDClZCzXoQVa1pbNV3qPvye6g9Zvzu2YlXAeXfLt0LqWUc3hHTGlkTRcBzbNZgmlmrawI97-yNGEFOFrviSgdwKZhOppZHfBfP7r6NGIXNvb1pR4R-lafsuCr0hZgCvb-irW-HQY0TyxdSlcgiVA5Xj1PjjchVqzgRY9NG-YQaCgYKAZwSARMSFQHGX2MizmDLFq-y3mluFchoYUrAxw0177',
        'Content-Type': 'application/json',
      },
      params: {
        'pageSize': "2",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? proximaPagina(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nextPageToken''',
      ));
}

class EstornarPagamentoCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    double? valor,
    String? motivo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "value": ${valor},
  "description": "${escapeStringForJson(motivo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Estornar Pagamento',
      apiUrl: 'https://asaas.com/api/v3/payments/${id}/refund',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDA0MzkyNzg6OiRhYWNoX2RkZjI5NjQ3LTEyMDctNGU4ZC1iYWU4LWM1YmM3MTk5NGEyZA==',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListaCobracaCall {
  static Future<ApiCallResponse> call({
    int? inicial,
    int? finalm,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Lista Cobraca',
      apiUrl: 'https://hook.us1.make.com/3bgtj1r3mddsyeo5cw3q5mleils9k6uc',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'inicial': inicial,
        'finalm': finalm,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? dados(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<double>? valorTotal(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? valorLiquido(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].netValue''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class SaldoCopyCall {
  static Future<ApiCallResponse> call({
    String? dataInicial = '',
    String? dataFinal = '',
    String? status = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Saldo Copy',
      apiUrl: 'https://hook.us1.make.com/nm8dyixxv4ohbwaxuo6jf6yw4kestjxa',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'dataInicial': dataInicial,
        'dataFinal': dataFinal,
        'Status': status,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? saldo(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.saldo''',
      ));
  static int? quantdd(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.quantdd''',
      ));
  static double? valorBrutoRe(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.valorBrutoRe''',
      ));
  static double? valorLiquidoRe(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.valorLiquidoRe''',
      ));
  static double? valorBrutoCon(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.valorBrutoCon''',
      ));
  static double? valorLiquidoCon(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.valorLiquidoCon''',
      ));
}

class DetalhesDoShowCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'detalhes do show',
      apiUrl:
          'https://us-central1-comedia-ingressos-9aekof.cloudfunctions.net/getShowData',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CountCall {
  static Future<ApiCallResponse> call({
    String? showId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'count',
      apiUrl:
          'https://us-central1-comedia-ingressos-9aekof.cloudfunctions.net/getSelectIngressoCount',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'showId': showId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic resposta(dynamic response) => getJsonField(
        response,
        r'''$.resposta''',
      );
}

class TesteCall {
  static Future<ApiCallResponse> call({
    int? primeiro,
    int? segundo,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'teste',
      apiUrl: 'https://hook.us1.make.com/n7emtq1hyoekat5qfrs7wnsv8kjtx8ov',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'primeiro': primeiro,
        'segundo': segundo,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
