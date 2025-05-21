import '../database.dart';

class ProfileTable extends SupabaseTable<ProfileRow> {
  @override
  String get tableName => 'profile';

  @override
  ProfileRow createRow(Map<String, dynamic> data) => ProfileRow(data);
}

class ProfileRow extends SupabaseDataRow {
  ProfileRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfileTable();

  String get profileid => getField<String>('profileid')!;
  set profileid(String value) => setField<String>('profileid', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);

  String get role => getField<String>('role')!;
  set role(String value) => setField<String>('role', value);

  String get gender => getField<String>('gender')!;
  set gender(String value) => setField<String>('gender', value);

  DateTime get crteatedAt => getField<DateTime>('crteated_at')!;
  set crteatedAt(DateTime value) => setField<DateTime>('crteated_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get tid => getField<String>('tid')!;
  set tid(String value) => setField<String>('tid', value);

  String? get userGeneratedCode => getField<String>('user_generated_code');
  set userGeneratedCode(String? value) =>
      setField<String>('user_generated_code', value);

  String? get nfcCard => getField<String>('nfc_card');
  set nfcCard(String? value) => setField<String>('nfc_card', value);

  double get balance => getField<double>('balance')!;
  set balance(double value) => setField<double>('balance', value);

  String? get notificationId => getField<String>('notification_id');
  set notificationId(String? value) =>
      setField<String>('notification_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
