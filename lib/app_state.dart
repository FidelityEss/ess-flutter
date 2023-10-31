import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _tokenUpdateTime = prefs.containsKey('ff_tokenUpdateTime')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_tokenUpdateTime')!)
          : _tokenUpdateTime;
    });
    _safeInit(() {
      _searchItems = prefs.getStringList('ff_searchItems') ?? _searchItems;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }

  List<PayslipObjectStruct> _payslipsState = [];
  List<PayslipObjectStruct> get payslipsState => _payslipsState;
  set payslipsState(List<PayslipObjectStruct> _value) {
    _payslipsState = _value;
  }

  void addToPayslipsState(PayslipObjectStruct _value) {
    _payslipsState.add(_value);
  }

  void removeFromPayslipsState(PayslipObjectStruct _value) {
    _payslipsState.remove(_value);
  }

  void removeAtIndexFromPayslipsState(int _index) {
    _payslipsState.removeAt(_index);
  }

  void updatePayslipsStateAtIndex(
    int _index,
    PayslipObjectStruct Function(PayslipObjectStruct) updateFn,
  ) {
    _payslipsState[_index] = updateFn(_payslipsState[_index]);
  }

  void insertAtIndexInPayslipsState(int _index, PayslipObjectStruct _value) {
    _payslipsState.insert(_index, _value);
  }

  DateTime? _tokenUpdateTime;
  DateTime? get tokenUpdateTime => _tokenUpdateTime;
  set tokenUpdateTime(DateTime? _value) {
    _tokenUpdateTime = _value;
    _value != null
        ? prefs.setInt('ff_tokenUpdateTime', _value.millisecondsSinceEpoch)
        : prefs.remove('ff_tokenUpdateTime');
  }

  List<String> _searchItems = [
    'Payroll Services',
    'Fidelity Cares',
    'Report Fraud'
  ];
  List<String> get searchItems => _searchItems;
  set searchItems(List<String> _value) {
    _searchItems = _value;
    prefs.setStringList('ff_searchItems', _value);
  }

  void addToSearchItems(String _value) {
    _searchItems.add(_value);
    prefs.setStringList('ff_searchItems', _searchItems);
  }

  void removeFromSearchItems(String _value) {
    _searchItems.remove(_value);
    prefs.setStringList('ff_searchItems', _searchItems);
  }

  void removeAtIndexFromSearchItems(int _index) {
    _searchItems.removeAt(_index);
    prefs.setStringList('ff_searchItems', _searchItems);
  }

  void updateSearchItemsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _searchItems[_index] = updateFn(_searchItems[_index]);
    prefs.setStringList('ff_searchItems', _searchItems);
  }

  void insertAtIndexInSearchItems(int _index, String _value) {
    _searchItems.insert(_index, _value);
    prefs.setStringList('ff_searchItems', _searchItems);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
