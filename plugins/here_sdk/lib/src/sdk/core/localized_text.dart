// Copyright (c) 2018-2020 HERE Global B.V. and its affiliate(s).
// All rights reserved.
//
// This software and other materials contain proprietary information
// controlled by HERE and are protected by applicable copyright legislation.
// Any use and utilization of this software and other materials and
// disclosure to any third parties is conditional upon having a separate
// agreement with HERE for the access, use, utilization or disclosure of this
// software. In the absence of such agreement, the use of the software is not
// allowed.
//

import 'dart:collection';
import 'package:collection/collection.dart';
import 'package:here_sdk/src/builtin_types__conversion.dart';
import 'package:intl/locale.dart';

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'package:here_sdk/src/_library_context.dart' as __lib;

/// Used to represent text localized to specific language.

class LocalizedText {
  /// Text value.
  String text;

  /// Locale of text, in most cases contains only language code.
  /// If locale is not supported by the platform, `null` is returned.
  Locale locale;


  LocalizedText(this.text, this.locale);

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (other is! LocalizedText) return false;
    LocalizedText _other = other;
    return text == _other.text &&
        locale == _other.locale;
  }

  @override
  int get hashCode {
    int result = 7;
    result = 31 * result + text.hashCode;
    result = 31 * result + locale.hashCode;
    return result;
  }
}


// LocalizedText "private" section, not exported.

final _sdk_core_LocalizedText_create_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
  >('here_sdk_sdk_core_LocalizedText_create_handle'));
final _sdk_core_LocalizedText_release_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_core_LocalizedText_release_handle'));
final _sdk_core_LocalizedText_get_field_text = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_core_LocalizedText_get_field_text'));
final _sdk_core_LocalizedText_get_field_locale = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_core_LocalizedText_get_field_locale'));

Pointer<Void> sdk_core_LocalizedText_toFfi(LocalizedText value) {
  final _text_handle = String_toFfi(value.text);
  final _locale_handle = Locale_toFfi_nullable(value.locale);
  final _result = _sdk_core_LocalizedText_create_handle(_text_handle, _locale_handle);
  String_releaseFfiHandle(_text_handle);
  Locale_releaseFfiHandle_nullable(_locale_handle);
  return _result;
}

LocalizedText sdk_core_LocalizedText_fromFfi(Pointer<Void> handle) {
  final _text_handle = _sdk_core_LocalizedText_get_field_text(handle);
  final _locale_handle = _sdk_core_LocalizedText_get_field_locale(handle);
  try {
    return LocalizedText(
      String_fromFfi(_text_handle), 
    
      Locale_fromFfi_nullable(_locale_handle)
    );
  } finally {
    String_releaseFfiHandle(_text_handle);
    Locale_releaseFfiHandle_nullable(_locale_handle);
  }
}

void sdk_core_LocalizedText_releaseFfiHandle(Pointer<Void> handle) => _sdk_core_LocalizedText_release_handle(handle);

// Nullable LocalizedText

final _sdk_core_LocalizedText_create_handle_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_core_LocalizedText_create_handle_nullable'));
final _sdk_core_LocalizedText_release_handle_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_core_LocalizedText_release_handle_nullable'));
final _sdk_core_LocalizedText_get_value_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_core_LocalizedText_get_value_nullable'));

Pointer<Void> sdk_core_LocalizedText_toFfi_nullable(LocalizedText value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = sdk_core_LocalizedText_toFfi(value);
  final result = _sdk_core_LocalizedText_create_handle_nullable(_handle);
  sdk_core_LocalizedText_releaseFfiHandle(_handle);
  return result;
}

LocalizedText sdk_core_LocalizedText_fromFfi_nullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _sdk_core_LocalizedText_get_value_nullable(handle);
  final result = sdk_core_LocalizedText_fromFfi(_handle);
  sdk_core_LocalizedText_releaseFfiHandle(_handle);
  return result;
}

void sdk_core_LocalizedText_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _sdk_core_LocalizedText_release_handle_nullable(handle);

// End of LocalizedText "private" section.

