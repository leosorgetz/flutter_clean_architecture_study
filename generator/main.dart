import 'dart:io';

const TEMPLATE = 'Template';
const RESULT_TYPE = 'ResultType';

const PROJECT_PATH = 'lib/src/domain';
const TESTS_PATH = 'test/src/domain';
const USE_CASE_PATH = '/use_cases';
const REPOSITORY_PATH = '/repositories';
const DATA_SOURCE_PATH = '/data_sources';

const REPOSITORY = './generator/files/_template_repository.dart';
const REPOSITORY_INTERFACE = './generator/files/_template_repository_interface.dart';
const DATA_SOURCE = './generator/files/_template_datasource.dart';
const DATA_SOURCE_INTERFACE = './generator/files/_template_datasource_interface.dart';
const USE_CASE = './generator/files/_template_usecase.dart';
const USE_CASE_INTERFACE = './generator/files/_template_usecase_interface.dart';
const USE_CASE_TEST = './generator/files/_template_use_case_test.dart';
const REPOSITORY_TEST = './generator/files/_template_repository_test.dart';
const DATA_SOURCE_TEST = './generator/files/_template_data_source_test.dart';

String templateValue;
String resultTypeValue;
String folderName;

main(List<String> args) async {
  final firstArg = args[0].toString() == '--template' || args[0].toString() == '-t';
  final secondArg = args[2].toString() == '--result-type' || args[2].toString() == '-rt';
  final thirdArg = args[4].toString() == '--folder-name' || args[4].toString() == '-fn';

  if (!firstArg || !secondArg || !thirdArg) {
    _print('Escreve direito seu arrombado.', withSpace: true);
    return;
  }

  _print('Criando essas porra seu vadio.', withSpace: true);

  templateValue = args[1].toString();
  resultTypeValue = args[3].toString();
  folderName = args[5].toString();

  final replacedUseCase = await replaceFile(fileName: USE_CASE);
  final replacedUseCaseInterface = await replaceFile(fileName: USE_CASE_INTERFACE);
  final replacedRepository = await replaceFile(fileName: REPOSITORY);
  final replacedRepositoryInterface = await replaceFile(fileName: REPOSITORY_INTERFACE);
  final replacedDataSource = await replaceFile(fileName: DATA_SOURCE);
  final replacedDataSourceInterface = await replaceFile(fileName: DATA_SOURCE_INTERFACE);
  final replacedUseCaseTest = await replaceFile(fileName: USE_CASE_TEST);
  final replacedRepositoryTest = await replaceFile(fileName: REPOSITORY_TEST);
  final replacedDataSourceTest = await replaceFile(fileName: DATA_SOURCE_TEST);

  await saveFile(
    path: '${PROJECT_PATH}${USE_CASE_PATH}',
    folderName: folderName,
    fileName: '${folderName}_use_case.dart',
    content: replacedUseCase,
  );

  await saveFile(
    path: '${PROJECT_PATH}${USE_CASE_PATH}',
    folderName: folderName,
    fileName: '${folderName}_use_case_interface.dart',
    content: replacedUseCaseInterface,
  );

  await saveFile(
    path: '${TESTS_PATH}${USE_CASE_PATH}',
    folderName: folderName,
    fileName: '${folderName}_use_case_test.dart',
    content: replacedUseCaseTest,
  );

  _print('UseCases / UseCases Interfaces / Test criadas', withSpace: true);

  await saveFile(
    path: '${PROJECT_PATH}${REPOSITORY_PATH}',
    folderName: folderName,
    fileName: '${folderName}_repository.dart',
    content: replacedRepository,
  );

  await saveFile(
    path: '${PROJECT_PATH}${REPOSITORY_PATH}',
    folderName: folderName,
    fileName: '${folderName}_repository_interface.dart',
    content: replacedRepositoryInterface,
  );

  await saveFile(
    path: '${TESTS_PATH}${REPOSITORY_PATH}',
    folderName: folderName,
    fileName: '${folderName}_repository_test.dart',
    content: replacedRepositoryTest,
  );

  _print('Repository / Repository Interfaces / Test criadas', withSpace: true);

  await saveFile(
    path: '${PROJECT_PATH}${DATA_SOURCE_PATH}',
    folderName: folderName,
    fileName: '${folderName}_data_source.dart',
    content: replacedDataSource,
  );

  await saveFile(
    path: '${PROJECT_PATH}${DATA_SOURCE_PATH}',
    folderName: folderName,
    fileName: '${folderName}_data_source_interface.dart',
    content: replacedDataSourceInterface,
  );

  await saveFile(
    path: '${TESTS_PATH}${DATA_SOURCE_PATH}',
    folderName: folderName,
    fileName: '${folderName}_data_source_test.dart',
    content: replacedDataSourceTest,
  );

  _print('DataSources / DataSources Interfaces / Test criadas', withSpace: true);

  _print('Tudo finalizado caboclo, vai codar.');
}

Future<String> replaceFile({String fileName}) async {
  final fileString = await File(fileName).readAsString();
  var replacedFileString = fileString.replaceAll(TEMPLATE, templateValue);
  replacedFileString = replacedFileString.replaceAll(RESULT_TYPE, resultTypeValue);
  return replacedFileString;
}

Future<void> saveFile({
  String path,
  String folderName,
  String fileName,
  String content,
}) async {
  final fileNameETBilu = '$path/$folderName/$fileName';
  final directoryName = '$path/$folderName';
  createDirectory(path: directoryName);
  File(fileNameETBilu).writeAsString(content);
  // _print(fileNameETBilu);
}

void createDirectory({String path}) {
  final directory = Directory(path);
  if (!directory.existsSync()) {
    directory.createSync();
  }
}

void _print(String message, {bool withSpace = false}) {
  if (withSpace) {
    print('[LOG] ' + message + '\n');
    return;
  }
  print('[LOG] ' + message);
}
