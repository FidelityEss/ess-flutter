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
