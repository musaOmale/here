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

import 'dart:typed_data';
import 'package:here_sdk/src/_token_cache.dart' as __lib;
import 'package:here_sdk/src/_type_repository.dart' as __lib;
import 'package:here_sdk/src/builtin_types__conversion.dart';
import 'package:here_sdk/src/sdk/core/geo_coordinates.dart';
import 'package:here_sdk/src/sdk/core/point2_d.dart';
import 'package:here_sdk/src/sdk/gestures/gestures.dart';
import 'package:here_sdk/src/sdk/mapview/map_camera.dart';
import 'package:here_sdk/src/sdk/mapview/map_representable.dart';
import 'package:here_sdk/src/sdk/mapview/map_scene.dart';
import 'package:here_sdk/src/sdk/mapview/map_view_base.dart';
import 'package:here_sdk/src/sdk/mapview/watermark_placement.dart';

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'package:here_sdk/src/_library_context.dart' as __lib;

/// Internal implementation of the MapView class, which wraps around HARP's C++ API.
/// @nodoc
abstract class MapViewInternal implements MapViewBase {

  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release();

  /// Creates a screenshot of the map and passes it as byte buffer to a callback.
  /// [callback] Callback to receive the screenshot bytes.
  /// @nodoc
  internaltakeScreenshot(MapViewInternalTakeScreenshotCallback callback);
}

/// The method will be called on the main thread when takeScreenshot() has been completed.
/// @nodoc
typedef MapViewInternalTakeScreenshotCallback = void Function(Uint8List);

// MapViewInternalTakeScreenshotCallback "private" section, not exported.

final _sdk_mapview_MapViewInternal_TakeScreenshotCallback_copy_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_mapview_MapViewInternal_TakeScreenshotCallback_copy_handle'));
final _sdk_mapview_MapViewInternal_TakeScreenshotCallback_release_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_mapview_MapViewInternal_TakeScreenshotCallback_release_handle'));
final _sdk_mapview_MapViewInternal_TakeScreenshotCallback_create_proxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Pointer, Pointer),
    Pointer<Void> Function(int, int, Pointer, Pointer)
  >('here_sdk_sdk_mapview_MapViewInternal_TakeScreenshotCallback_create_proxy'));
final _sdk_mapview_MapViewInternal_TakeScreenshotCallback_get_raw_pointer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
      Pointer<Void> Function(Pointer<Void>),
      Pointer<Void> Function(Pointer<Void>)
    >('here_sdk_sdk_mapview_MapViewInternal_TakeScreenshotCallback_get_raw_pointer'));

class MapViewInternalTakeScreenshotCallback$Impl {
  Pointer<Void> get _handle => handle;
  final Pointer<Void> handle;
  MapViewInternalTakeScreenshotCallback$Impl(this.handle);

  void release() => _sdk_mapview_MapViewInternal_TakeScreenshotCallback_release_handle(handle);

  internalcall(Uint8List p0) {
    final _call_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32, Pointer<Void>), void Function(Pointer<Void>, int, Pointer<Void>)>('here_sdk_sdk_mapview_MapViewInternal_TakeScreenshotCallback_call__Blob'));
    final _p0_handle = Blob_toFfi_nullable(p0);
    final _handle = this.handle;
    final __result_handle = _call_ffi(_handle, __lib.LibraryContext.isolateId, _p0_handle);
    Blob_releaseFfiHandle_nullable(_p0_handle);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }

}

int _MapViewInternalTakeScreenshotCallback_call_static(int _token, Pointer<Void> p0) {
  
  try {
    (__lib.instanceCache[_token] as MapViewInternalTakeScreenshotCallback)(Blob_fromFfi_nullable(p0));
  } finally {
    Blob_releaseFfiHandle_nullable(p0);
  }
  return 0;
}

Pointer<Void> sdk_mapview_MapViewInternal_TakeScreenshotCallback_toFfi(MapViewInternalTakeScreenshotCallback value) {
  final result = _sdk_mapview_MapViewInternal_TakeScreenshotCallback_create_proxy(
    __lib.cacheObject(value),
    __lib.LibraryContext.isolateId,
    __lib.uncacheObjectFfi,
    Pointer.fromFunction<Int64 Function(Uint64, Pointer<Void>)>(_MapViewInternalTakeScreenshotCallback_call_static, __lib.unknownError)
  );

  return result;
}

MapViewInternalTakeScreenshotCallback sdk_mapview_MapViewInternal_TakeScreenshotCallback_fromFfi(Pointer<Void> handle) {
  final _impl = MapViewInternalTakeScreenshotCallback$Impl(_sdk_mapview_MapViewInternal_TakeScreenshotCallback_copy_handle(handle));
  return (Uint8List p0) {
    final _result =_impl.internalcall(p0);
    _impl.release();
    return _result;
  };
}

void sdk_mapview_MapViewInternal_TakeScreenshotCallback_releaseFfiHandle(Pointer<Void> handle) =>
  _sdk_mapview_MapViewInternal_TakeScreenshotCallback_release_handle(handle);

// Nullable MapViewInternalTakeScreenshotCallback

final _sdk_mapview_MapViewInternal_TakeScreenshotCallback_create_handle_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_mapview_MapViewInternal_TakeScreenshotCallback_create_handle_nullable'));
final _sdk_mapview_MapViewInternal_TakeScreenshotCallback_release_handle_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_mapview_MapViewInternal_TakeScreenshotCallback_release_handle_nullable'));
final _sdk_mapview_MapViewInternal_TakeScreenshotCallback_get_value_nullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_mapview_MapViewInternal_TakeScreenshotCallback_get_value_nullable'));

Pointer<Void> sdk_mapview_MapViewInternal_TakeScreenshotCallback_toFfi_nullable(MapViewInternalTakeScreenshotCallback value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = sdk_mapview_MapViewInternal_TakeScreenshotCallback_toFfi(value);
  final result = _sdk_mapview_MapViewInternal_TakeScreenshotCallback_create_handle_nullable(_handle);
  sdk_mapview_MapViewInternal_TakeScreenshotCallback_releaseFfiHandle(_handle);
  return result;
}

MapViewInternalTakeScreenshotCallback sdk_mapview_MapViewInternal_TakeScreenshotCallback_fromFfi_nullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _sdk_mapview_MapViewInternal_TakeScreenshotCallback_get_value_nullable(handle);
  final result = sdk_mapview_MapViewInternal_TakeScreenshotCallback_fromFfi(_handle);
  sdk_mapview_MapViewInternal_TakeScreenshotCallback_releaseFfiHandle(_handle);
  return result;
}

void sdk_mapview_MapViewInternal_TakeScreenshotCallback_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _sdk_mapview_MapViewInternal_TakeScreenshotCallback_release_handle_nullable(handle);

// End of MapViewInternalTakeScreenshotCallback "private" section.

// MapViewInternal "private" section, not exported.

final _sdk_mapview_MapViewInternal_copy_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_mapview_MapViewInternal_copy_handle'));
final _sdk_mapview_MapViewInternal_release_handle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_mapview_MapViewInternal_release_handle'));
final _sdk_mapview_MapViewInternal_get_raw_pointer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
      Pointer<Void> Function(Pointer<Void>),
      Pointer<Void> Function(Pointer<Void>)
    >('here_sdk_sdk_mapview_MapViewInternal_get_raw_pointer'));
final _sdk_mapview_MapViewInternal_get_type_id = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_mapview_MapViewInternal_get_type_id'));


class MapViewInternal$Impl implements MapViewInternal {
  @protected
  Pointer<Void> handle;

  MapViewInternal$Impl(this.handle);

  @override
  void release() {
    if (handle == null) return;
    __lib.reverseCache.remove(_sdk_mapview_MapViewInternal_get_raw_pointer(handle));
    _sdk_mapview_MapViewInternal_release_handle(handle);
    handle = null;
  }

  @override
  internaltakeScreenshot(MapViewInternalTakeScreenshotCallback callback) {
    final _takeScreenshot_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32, Pointer<Void>), void Function(Pointer<Void>, int, Pointer<Void>)>('here_sdk_sdk_mapview_MapViewInternal_takeScreenshot__TakeScreenshotCallback'));
    final _callback_handle = sdk_mapview_MapViewInternal_TakeScreenshotCallback_toFfi(callback);
    final _handle = this.handle;
    final __result_handle = _takeScreenshot_ffi(_handle, __lib.LibraryContext.isolateId, _callback_handle);
    sdk_mapview_MapViewInternal_TakeScreenshotCallback_releaseFfiHandle(_callback_handle);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }

  @override
  GeoCoordinates viewToGeoCoordinates(Point2D viewCoordinates) {
    final _viewToGeoCoordinates_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32, Pointer<Void>), Pointer<Void> Function(Pointer<Void>, int, Pointer<Void>)>('here_sdk_sdk_mapview_MapViewBase_viewToGeoCoordinates__Point2D'));
    final _viewCoordinates_handle = sdk_core_Point2D_toFfi(viewCoordinates);
    final _handle = this.handle;
    final __result_handle = _viewToGeoCoordinates_ffi(_handle, __lib.LibraryContext.isolateId, _viewCoordinates_handle);
    sdk_core_Point2D_releaseFfiHandle(_viewCoordinates_handle);
    try {
      return sdk_core_GeoCoordinates_fromFfi_nullable(__result_handle);
    } finally {
      sdk_core_GeoCoordinates_releaseFfiHandle_nullable(__result_handle);
    }
  }

  @override
  Point2D geoToViewCoordinates(GeoCoordinates geoCoordinates) {
    final _geoToViewCoordinates_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32, Pointer<Void>), Pointer<Void> Function(Pointer<Void>, int, Pointer<Void>)>('here_sdk_sdk_mapview_MapViewBase_geoToViewCoordinates__GeoCoordinates'));
    final _geoCoordinates_handle = sdk_core_GeoCoordinates_toFfi(geoCoordinates);
    final _handle = this.handle;
    final __result_handle = _geoToViewCoordinates_ffi(_handle, __lib.LibraryContext.isolateId, _geoCoordinates_handle);
    sdk_core_GeoCoordinates_releaseFfiHandle(_geoCoordinates_handle);
    try {
      return sdk_core_Point2D_fromFfi_nullable(__result_handle);
    } finally {
      sdk_core_Point2D_releaseFfiHandle_nullable(__result_handle);
    }
  }

  @override
  setWatermarkPosition(WatermarkPlacement placement, int bottomCenterMargin) {
    final _setWatermarkPosition_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32, Uint32, Uint32), void Function(Pointer<Void>, int, int, int)>('here_sdk_sdk_mapview_MapViewBase_setWatermarkPosition__WatermarkPlacement_UInt'));
    final _placement_handle = sdk_mapview_WatermarkPlacement_toFfi(placement);
    final _bottomCenterMargin_handle = (bottomCenterMargin);
    final _handle = this.handle;
    final __result_handle = _setWatermarkPosition_ffi(_handle, __lib.LibraryContext.isolateId, _placement_handle, _bottomCenterMargin_handle);
    sdk_mapview_WatermarkPlacement_releaseFfiHandle(_placement_handle);
    (_bottomCenterMargin_handle);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }

  @override
  addMapRepresentable(MapRepresentable mapRepresentable) {
    final _addMapRepresentable_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32, Pointer<Void>), void Function(Pointer<Void>, int, Pointer<Void>)>('here_sdk_sdk_mapview_MapViewBase_addMapRepresentable__MapRepresentable'));
    final _mapRepresentable_handle = sdk_mapview_MapRepresentable_toFfi(mapRepresentable);
    final _handle = this.handle;
    final __result_handle = _addMapRepresentable_ffi(_handle, __lib.LibraryContext.isolateId, _mapRepresentable_handle);
    sdk_mapview_MapRepresentable_releaseFfiHandle(_mapRepresentable_handle);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }

  @override
  removeMapRepresentable(MapRepresentable mapRepresentable) {
    final _removeMapRepresentable_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32, Pointer<Void>), void Function(Pointer<Void>, int, Pointer<Void>)>('here_sdk_sdk_mapview_MapViewBase_removeMapRepresentable__MapRepresentable'));
    final _mapRepresentable_handle = sdk_mapview_MapRepresentable_toFfi(mapRepresentable);
    final _handle = this.handle;
    final __result_handle = _removeMapRepresentable_ffi(_handle, __lib.LibraryContext.isolateId, _mapRepresentable_handle);
    sdk_mapview_MapRepresentable_releaseFfiHandle(_mapRepresentable_handle);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }

  @override
  pickMapItems(Point2D centerPoint, double radius, MapViewBasePickMapItemsCallback callback) {
    final _pickMapItems_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32, Pointer<Void>, Double, Pointer<Void>), void Function(Pointer<Void>, int, Pointer<Void>, double, Pointer<Void>)>('here_sdk_sdk_mapview_MapViewBase_pickMapItems__Point2D_Double_PickMapItemsCallback'));
    final _centerPoint_handle = sdk_core_Point2D_toFfi(centerPoint);
    final _radius_handle = (radius);
    final _callback_handle = sdk_mapview_MapViewBase_PickMapItemsCallback_toFfi(callback);
    final _handle = this.handle;
    final __result_handle = _pickMapItems_ffi(_handle, __lib.LibraryContext.isolateId, _centerPoint_handle, _radius_handle, _callback_handle);
    sdk_core_Point2D_releaseFfiHandle(_centerPoint_handle);
    (_radius_handle);
    sdk_mapview_MapViewBase_PickMapItemsCallback_releaseFfiHandle(_callback_handle);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }

  @override
  MapCamera get camera {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_mapview_MapViewBase_camera_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_mapview_MapCamera_fromFfi(__result_handle);
    } finally {
      sdk_mapview_MapCamera_releaseFfiHandle(__result_handle);
    }
  }


  @override
  Gestures get gestures {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_mapview_MapViewBase_gestures_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_gestures_Gestures_fromFfi(__result_handle);
    } finally {
      sdk_gestures_Gestures_releaseFfiHandle(__result_handle);
    }
  }


  @override
  MapScene get mapScene {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('here_sdk_sdk_mapview_MapViewBase_mapScene_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return sdk_mapview_MapScene_fromFfi(__result_handle);
    } finally {
      sdk_mapview_MapScene_releaseFfiHandle(__result_handle);
    }
  }


  @override
  double get pixelScale {
    final _get_ffi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Double Function(Pointer<Void>, Int32), double Function(Pointer<Void>, int)>('here_sdk_sdk_mapview_MapViewBase_pixelScale_get'));
    final _handle = this.handle;
    final __result_handle = _get_ffi(_handle, __lib.LibraryContext.isolateId);
    try {
      return (__result_handle);
    } finally {
      (__result_handle);
    }
  }



}

Pointer<Void> sdk_mapview_MapViewInternal_toFfi(MapViewInternal value) =>
  _sdk_mapview_MapViewInternal_copy_handle((value as MapViewInternal$Impl).handle);

MapViewInternal sdk_mapview_MapViewInternal_fromFfi(Pointer<Void> handle) {
  final raw_handle = _sdk_mapview_MapViewInternal_get_raw_pointer(handle);
  final instance = __lib.reverseCache[raw_handle];
  if (instance is MapViewInternal) return instance as MapViewInternal;

  final _type_id_handle = _sdk_mapview_MapViewInternal_get_type_id(handle);
  final factoryConstructor = __lib.typeRepository[String_fromFfi(_type_id_handle)];
  String_releaseFfiHandle(_type_id_handle);

  final _copied_handle = _sdk_mapview_MapViewInternal_copy_handle(handle);
  final result = factoryConstructor != null
    ? factoryConstructor(_copied_handle)
    : MapViewInternal$Impl(_copied_handle);
  __lib.reverseCache[raw_handle] = result;
  return result;
}

void sdk_mapview_MapViewInternal_releaseFfiHandle(Pointer<Void> handle) =>
  _sdk_mapview_MapViewInternal_release_handle(handle);

Pointer<Void> sdk_mapview_MapViewInternal_toFfi_nullable(MapViewInternal value) =>
  value != null ? sdk_mapview_MapViewInternal_toFfi(value) : Pointer<Void>.fromAddress(0);

MapViewInternal sdk_mapview_MapViewInternal_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? sdk_mapview_MapViewInternal_fromFfi(handle) : null;

void sdk_mapview_MapViewInternal_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _sdk_mapview_MapViewInternal_release_handle(handle);

// End of MapViewInternal "private" section.

