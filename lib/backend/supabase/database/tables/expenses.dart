import '../database.dart';

class ExpensesTable extends SupabaseTable<ExpensesRow> {
  @override
  String get tableName => 'expenses';

  @override
  ExpensesRow createRow(Map<String, dynamic> data) => ExpensesRow(data);
}

class ExpensesRow extends SupabaseDataRow {
  ExpensesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExpensesTable();

  String get expenseid => getField<String>('expenseid')!;
  set expenseid(String value) => setField<String>('expenseid', value);

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  double? get balance => getField<double>('balance');
  set balance(double? value) => setField<double>('balance', value);

  String? get paymentPlace => getField<String>('payment_place');
  set paymentPlace(String? value) => setField<String>('payment_place', value);

  String? get nfcCode => getField<String>('nfc_code');
  set nfcCode(String? value) => setField<String>('nfc_code', value);

  String? get type => getField<String>('Type');
  set type(String? value) => setField<String>('Type', value);
}
