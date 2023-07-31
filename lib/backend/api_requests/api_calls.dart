import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RPConsultaPontosCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
  }) {
    final body = '''
{
  "cpf": "${cpf}",
  "categoria": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RP Consulta Pontos',
      apiUrl: 'https://api.fidelimax.com.br/api/Integracao/ConsultaConsumidor',
      callType: ApiCallType.POST,
      headers: {
        'AuthToken': 'd83b56f2-96da-400d-b198-1e0d9b05d2ee-673',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic codResposta(dynamic response) => getJsonField(
        response,
        r'''$.CodigoResposta''',
      );
  static dynamic prodPontos(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].pontos''',
        true,
      );
  static dynamic identificador(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].identificador''',
        true,
      );
  static dynamic prodFotos(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].foto''',
        true,
      );
  static dynamic prodDescricao(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].descricao''',
        true,
      );
  static dynamic prodNomes(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].nome''',
        true,
      );
  static dynamic produtos(dynamic response) => getJsonField(
        response,
        r'''$.produtos''',
        true,
      );
  static dynamic clentSaldo(dynamic response) => getJsonField(
        response,
        r'''$.saldo''',
      );
  static dynamic clientNome(dynamic response) => getJsonField(
        response,
        r'''$.nome''',
      );
  static dynamic cliExistente(dynamic response) => getJsonField(
        response,
        r'''$.consumidor_existente''',
      );
  static dynamic cashback(dynamic response) => getJsonField(
        response,
        r'''$.cashback''',
      );
}

class RPConsultaClientesCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
  }) {
    final body = '''
{
  "cpf": "${cpf}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RP Consulta Clientes',
      apiUrl: 'https://api.fidelimax.com.br/api/Integracao/RetornaDadosCliente',
      callType: ApiCallType.POST,
      headers: {
        'AuthToken': 'd83b56f2-96da-400d-b198-1e0d9b05d2ee-673',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$.nome''',
      );
  static dynamic sexo(dynamic response) => getJsonField(
        response,
        r'''$.sexo''',
      );
  static dynamic documento(dynamic response) => getJsonField(
        response,
        r'''$.documento''',
      );
  static dynamic datanascimento(dynamic response) => getJsonField(
        response,
        r'''$.data_nascimento''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  static dynamic telefone(dynamic response) => getJsonField(
        response,
        r'''$.telefone''',
      );
  static dynamic datacadastro(dynamic response) => getJsonField(
        response,
        r'''$.data_cadastro''',
      );
  static dynamic dataultimacompra(dynamic response) => getJsonField(
        response,
        r'''$.data_ultima_compra''',
      );
  static dynamic codigoResposta(dynamic response) => getJsonField(
        response,
        r'''$.CodigoResposta''',
      );
  static dynamic mensagemErro(dynamic response) => getJsonField(
        response,
        r'''$.MensagemErro''',
      );
  static dynamic clientRetorno(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class RPListaDeBrindesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'RP Lista de Brindes',
      apiUrl: 'https://api.fidelimax.com.br/api/Integracao/ListaProdutos',
      callType: ApiCallType.GET,
      headers: {
        'AuthToken': 'd83b56f2-96da-400d-b198-1e0d9b05d2ee-673',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic produtos(dynamic response) => getJsonField(
        response,
        r'''$.produtos''',
        true,
      );
  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].nome''',
        true,
      );
  static dynamic descricao(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].descricao''',
        true,
      );
  static dynamic foto(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].foto''',
        true,
      );
  static dynamic identificador(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].identificador''',
        true,
      );
  static dynamic pontos(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].pontos''',
        true,
      );
  static dynamic qtdResgatados(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].qtd_resgatados''',
        true,
      );
  static dynamic qtdEstoque(dynamic response) => getJsonField(
        response,
        r'''$.produtos[:].qtd_estoque''',
        true,
      );
  static dynamic codResposta(dynamic response) => getJsonField(
        response,
        r'''$.CodigoResposta''',
      );
}

class RpAtualizarClienteCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? cpf = '',
    String? sexo = '',
    String? email = '',
    String? nascimento = '',
    String? telefone = '',
  }) {
    final body = '''
{
  "nome": "${nome}",
  "cpf": "${cpf}",
  "sexo": "${sexo}",
  "email": "${email}",
  "nascimento": "${nascimento}",
  "telefone": "${telefone}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Rp Atualizar Cliente',
      apiUrl: 'https://api.fidelimax.com.br/api/Integracao/AtualizarConsumidor',
      callType: ApiCallType.POST,
      headers: {
        'AuthToken': 'd83b56f2-96da-400d-b198-1e0d9b05d2ee-673',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic cartaoduplicado(dynamic response) => getJsonField(
        response,
        r'''$.cartao_duplicado''',
      );
  static dynamic codigoResposta(dynamic response) => getJsonField(
        response,
        r'''$.CodigoResposta''',
      );
}

class RPExtratoDePontuacaoCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
  }) {
    final body = '''
{
  "cpf": "${cpf}",
  "skip": 0,
  "take": 999
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RP Extrato de Pontuacao',
      apiUrl: 'https://api.fidelimax.com.br/api/Integracao/ExtratoConsumidor',
      callType: ApiCallType.POST,
      headers: {
        'AuthToken': 'd83b56f2-96da-400d-b198-1e0d9b05d2ee-673',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic saldo(dynamic response) => getJsonField(
        response,
        r'''$.saldo''',
      );
  static dynamic extrato(dynamic response) => getJsonField(
        response,
        r'''$.extrato''',
        true,
      );
  static dynamic credito(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].credito''',
        true,
      );
  static dynamic debito(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].debito''',
        true,
      );
  static dynamic premionome(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].premio_nome''',
        true,
      );
  static dynamic premioidentificador(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].premio_identificador''',
        true,
      );
  static dynamic voucher(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].voucher''',
        true,
      );
  static dynamic voucherresgatado(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].voucher_resgatado''',
        true,
      );
  static dynamic datapontuacao(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].data_pontuacao''',
        true,
      );
  static dynamic verificador(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].verificador''',
        true,
      );
  static dynamic tipocompra(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].tipo_compra''',
        true,
      );
  static dynamic loja(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].loja''',
        true,
      );
  static dynamic tipopontuacao(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].tipo_pontuacao''',
        true,
      );
  static dynamic registrodesfeito(dynamic response) => getJsonField(
        response,
        r'''$.extrato[:].registro_desfeito''',
        true,
      );
  static dynamic codigoResposta(dynamic response) => getJsonField(
        response,
        r'''$.CodigoResposta''',
      );
}

class RPResgatarPremioCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
    String? premioIdentificador = '',
    String? quantidade = '',
  }) {
    final body = '''
{
  "cpf": "${cpf}",
  "premio_identificador": "${premioIdentificador}",
  "quantidade": "${quantidade}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RP Resgatar Premio',
      apiUrl: 'https://api.fidelimax.com.br/api/Integracao/ResgataPremio',
      callType: ApiCallType.POST,
      headers: {
        'AuthToken': 'd83b56f2-96da-400d-b198-1e0d9b05d2ee-673',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic voucher(dynamic response) => getJsonField(
        response,
        r'''$.voucher''',
      );
  static dynamic codigoResposta(dynamic response) => getJsonField(
        response,
        r'''$.CodigoResposta''',
      );
  static dynamic mensagemErro(dynamic response) => getJsonField(
        response,
        r'''$.MensagemErro''',
      );
}

class RPStatusVoucherCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'RP Status Voucher',
      apiUrl:
          'https://api.fidelimax.com.br/api/Integracao/StatusVoucher/83E4E2CAB',
      callType: ApiCallType.GET,
      headers: {
        'AuthToken': 'd83b56f2-96da-400d-b198-1e0d9b05d2ee-673',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RPPontuarConsumidorCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
    double? pontuacaoReais,
    String? tipoCompra = '',
    String? verificador = '',
    bool? estorno,
  }) {
    final body = '''
{
  "cpf": "${cpf}",
  "pontuacao_reais": ${pontuacaoReais},
  "tipo_compra": "${tipoCompra}",
  "verificador": "${verificador}",
  "estorno": ${estorno}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RP Pontuar Consumidor',
      apiUrl: 'https://api.fidelimax.com.br/api/Integracao/PontuaConsumidor',
      callType: ApiCallType.POST,
      headers: {
        'AuthToken': 'd83b56f2-96da-400d-b198-1e0d9b05d2ee-673',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic saldo(dynamic response) => getJsonField(
        response,
        r'''$.saldo''',
      );
  static dynamic pontuacaoresgatar(dynamic response) => getJsonField(
        response,
        r'''$.pontuacao_resgatar''',
      );
  static dynamic pontosexpirar(dynamic response) => getJsonField(
        response,
        r'''$.pontos_expirar''',
      );
  static dynamic estorno(dynamic response) => getJsonField(
        response,
        r'''$.estorno''',
      );
  static dynamic cashback(dynamic response) => getJsonField(
        response,
        r'''$.cashback''',
      );
  static dynamic codigoResposta(dynamic response) => getJsonField(
        response,
        r'''$.CodigoResposta''',
      );
}

class APITinyConsultaProdutoCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'API Tiny Consulta Produto',
      apiUrl: 'https://api.tiny.com.br/api2/produto.obter.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': "c751506c6c5430b44b15a50620ba9504961ceaf1",
        'id': id,
        'formato': "JSON",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic retorno(dynamic response) => getJsonField(
        response,
        r'''$.retorno''',
      );
  static dynamic retornostatus(dynamic response) => getJsonField(
        response,
        r'''$.retorno.status''',
      );
  static dynamic retornoproduto(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produto''',
      );
  static dynamic retornoprodutoid(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produto.id''',
      );
  static dynamic retornoprodutonome(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produto.nome''',
      );
  static dynamic retornoprodutocodigo(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produto.codigo''',
      );
  static dynamic retornoprodutounidade(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produto.unidade''',
      );
  static dynamic retornoprodutopreco(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produto.preco''',
      );
  static dynamic retornoprodutoidfornecedor(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produto.id_fornecedor''',
      );
  static dynamic retornoprodutocodigopelofornecedor(dynamic response) =>
      getJsonField(
        response,
        r'''$.retorno.produto.codigo_pelo_fornecedor''',
      );
  static dynamic retornoprodutoprecocusto(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produto.preco_custo''',
      );
  static dynamic retornoprodutoprecocustomedio(dynamic response) =>
      getJsonField(
        response,
        r'''$.retorno.produto.preco_custo_medio''',
      );
  static dynamic retornoprodutomarca(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produto.marca''',
      );
  static dynamic retornoprodutocategoria(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produto.categoria''',
      );
  static dynamic retornoprodutoimagensexternas(dynamic response) =>
      getJsonField(
        response,
        r'''$.retorno.produto.imagens_externas[:].imagem_externa.url''',
      );
}

class APITinyListaProdutosCall {
  static Future<ApiCallResponse> call({
    String? pesquisa = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'API Tiny Lista Produtos',
      apiUrl: 'https://api.tiny.com.br/api2/produtos.pesquisa.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': "c751506c6c5430b44b15a50620ba9504961ceaf1",
        'formato': "JSON",
        'pesquisa': pesquisa,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic retornoprodutos(dynamic response) => getJsonField(
        response,
        r'''$.retorno.produtos''',
        true,
      );
  static dynamic retornostatus(dynamic response) => getJsonField(
        response,
        r'''$.retorno.status''',
      );
}

class RPDeletarConsumidorCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
  }) {
    final body = '''
{
  "cpf": "${cpf}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RP Deletar Consumidor',
      apiUrl: 'https://api.fidelimax.com.br/api/Integracao/DeletarConsumidor',
      callType: ApiCallType.POST,
      headers: {
        'AuthToken': 'd83b56f2-96da-400d-b198-1e0d9b05d2ee-673',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic codigoResposta(dynamic response) => getJsonField(
        response,
        r'''$.CodigoResposta''',
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
