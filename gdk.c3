
///START MODULE gdk
module gdk;

import glib;

import gobject;

import gdkpixbuf;

import gio;

import pango;

import pangocairo;

import cairo;


distinct AnchorHints = int;
const AnchorHints ANCHOR_HINTS_FLIP = 3;
const AnchorHints ANCHOR_HINTS_FLIP_X = 1;
const AnchorHints ANCHOR_HINTS_FLIP_Y = 2;
const AnchorHints ANCHOR_HINTS_RESIZE = 48;
const AnchorHints ANCHOR_HINTS_RESIZE_X = 16;
const AnchorHints ANCHOR_HINTS_RESIZE_Y = 32;
const AnchorHints ANCHOR_HINTS_SLIDE = 12;
const AnchorHints ANCHOR_HINTS_SLIDE_X = 4;
const AnchorHints ANCHOR_HINTS_SLIDE_Y = 8;

distinct AxisFlags = int;
const AxisFlags AXIS_FLAGS_DELTA_X = 8;
const AxisFlags AXIS_FLAGS_DELTA_Y = 16;
const AxisFlags AXIS_FLAGS_DISTANCE = 512;
const AxisFlags AXIS_FLAGS_PRESSURE = 32;
const AxisFlags AXIS_FLAGS_ROTATION = 1024;
const AxisFlags AXIS_FLAGS_SLIDER = 2048;
const AxisFlags AXIS_FLAGS_WHEEL = 256;
const AxisFlags AXIS_FLAGS_X = 2;
const AxisFlags AXIS_FLAGS_XTILT = 64;
const AxisFlags AXIS_FLAGS_Y = 4;
const AxisFlags AXIS_FLAGS_YTILT = 128;

distinct DragAction = int;
const DragAction DRAG_ACTION_ASK = 8;
const DragAction DRAG_ACTION_COPY = 1;
const DragAction DRAG_ACTION_LINK = 4;
const DragAction DRAG_ACTION_MOVE = 2;

distinct FrameClockPhase = int;
const FrameClockPhase FRAME_CLOCK_PHASE_AFTER_PAINT = 64;
const FrameClockPhase FRAME_CLOCK_PHASE_BEFORE_PAINT = 2;
const FrameClockPhase FRAME_CLOCK_PHASE_FLUSH_EVENTS = 1;
const FrameClockPhase FRAME_CLOCK_PHASE_LAYOUT = 8;
const FrameClockPhase FRAME_CLOCK_PHASE_NONE = 0;
const FrameClockPhase FRAME_CLOCK_PHASE_PAINT = 16;
const FrameClockPhase FRAME_CLOCK_PHASE_RESUME_EVENTS = 32;
const FrameClockPhase FRAME_CLOCK_PHASE_UPDATE = 4;

distinct Glapi = int;
const Glapi GLAPI_GL = 1;
const Glapi GLAPI_GLES = 2;

distinct ModifierType = int;
const ModifierType MODIFIER_TYPE_ALT_MASK = 8;
const ModifierType MODIFIER_TYPE_BUTTON1_MASK = 256;
const ModifierType MODIFIER_TYPE_BUTTON2_MASK = 512;
const ModifierType MODIFIER_TYPE_BUTTON3_MASK = 1024;
const ModifierType MODIFIER_TYPE_BUTTON4_MASK = 2048;
const ModifierType MODIFIER_TYPE_BUTTON5_MASK = 4096;
const ModifierType MODIFIER_TYPE_CONTROL_MASK = 4;
const ModifierType MODIFIER_TYPE_HYPER_MASK = 134217728;
const ModifierType MODIFIER_TYPE_LOCK_MASK = 2;
const ModifierType MODIFIER_TYPE_META_MASK = 268435456;
const ModifierType MODIFIER_TYPE_NO_MODIFIER_MASK = 0;
const ModifierType MODIFIER_TYPE_SHIFT_MASK = 1;
const ModifierType MODIFIER_TYPE_SUPER_MASK = 67108864;

distinct PaintableFlags = int;
const PaintableFlags PAINTABLE_FLAGS_CONTENTS = 2;
const PaintableFlags PAINTABLE_FLAGS_SIZE = 1;

distinct SeatCapabilities = int;
const SeatCapabilities SEAT_CAPABILITIES_ALL = 31;
const SeatCapabilities SEAT_CAPABILITIES_ALL_POINTING = 7;
const SeatCapabilities SEAT_CAPABILITIES_KEYBOARD = 8;
const SeatCapabilities SEAT_CAPABILITIES_NONE = 0;
const SeatCapabilities SEAT_CAPABILITIES_POINTER = 1;
const SeatCapabilities SEAT_CAPABILITIES_TABLET_PAD = 16;
const SeatCapabilities SEAT_CAPABILITIES_TABLET_STYLUS = 4;
const SeatCapabilities SEAT_CAPABILITIES_TOUCH = 2;

distinct ToplevelState = int;
const ToplevelState TOPLEVEL_STATE_ABOVE = 16;
const ToplevelState TOPLEVEL_STATE_BELOW = 32;
const ToplevelState TOPLEVEL_STATE_BOTTOM_RESIZABLE = 8192;
const ToplevelState TOPLEVEL_STATE_BOTTOM_TILED = 4096;
const ToplevelState TOPLEVEL_STATE_FOCUSED = 64;
const ToplevelState TOPLEVEL_STATE_FULLSCREEN = 8;
const ToplevelState TOPLEVEL_STATE_LEFT_RESIZABLE = 32768;
const ToplevelState TOPLEVEL_STATE_LEFT_TILED = 16384;
const ToplevelState TOPLEVEL_STATE_MAXIMIZED = 2;
const ToplevelState TOPLEVEL_STATE_MINIMIZED = 1;
const ToplevelState TOPLEVEL_STATE_RIGHT_RESIZABLE = 2048;
const ToplevelState TOPLEVEL_STATE_RIGHT_TILED = 1024;
const ToplevelState TOPLEVEL_STATE_STICKY = 4;
const ToplevelState TOPLEVEL_STATE_SUSPENDED = 65536;
const ToplevelState TOPLEVEL_STATE_TILED = 128;
const ToplevelState TOPLEVEL_STATE_TOP_RESIZABLE = 512;
const ToplevelState TOPLEVEL_STATE_TOP_TILED = 256;

distinct AxisUse = int;
const AxisUse AXIS_USE_DELTA_X = 3;
const AxisUse AXIS_USE_DELTA_Y = 4;
const AxisUse AXIS_USE_DISTANCE = 9;
const AxisUse AXIS_USE_IGNORE = 0;
const AxisUse AXIS_USE_LAST = 12;
const AxisUse AXIS_USE_PRESSURE = 5;
const AxisUse AXIS_USE_ROTATION = 10;
const AxisUse AXIS_USE_SLIDER = 11;
const AxisUse AXIS_USE_WHEEL = 8;
const AxisUse AXIS_USE_X = 1;
const AxisUse AXIS_USE_XTILT = 6;
const AxisUse AXIS_USE_Y = 2;
const AxisUse AXIS_USE_YTILT = 7;

distinct CicpRange = int;
const CicpRange CICP_RANGE_FULL = 1;
const CicpRange CICP_RANGE_NARROW = 0;

distinct CrossingMode = int;
const CrossingMode CROSSING_MODE_DEVICE_SWITCH = 8;
const CrossingMode CROSSING_MODE_GRAB = 1;
const CrossingMode CROSSING_MODE_GTK_GRAB = 3;
const CrossingMode CROSSING_MODE_GTK_UNGRAB = 4;
const CrossingMode CROSSING_MODE_NORMAL = 0;
const CrossingMode CROSSING_MODE_STATE_CHANGED = 5;
const CrossingMode CROSSING_MODE_TOUCH_BEGIN = 6;
const CrossingMode CROSSING_MODE_TOUCH_END = 7;
const CrossingMode CROSSING_MODE_UNGRAB = 2;

distinct DevicePadFeature = int;
const DevicePadFeature DEVICE_PAD_FEATURE_BUTTON = 0;
const DevicePadFeature DEVICE_PAD_FEATURE_RING = 1;
const DevicePadFeature DEVICE_PAD_FEATURE_STRIP = 2;

distinct DeviceToolType = int;
const DeviceToolType DEVICE_TOOL_TYPE_AIRBRUSH = 5;
const DeviceToolType DEVICE_TOOL_TYPE_BRUSH = 3;
const DeviceToolType DEVICE_TOOL_TYPE_ERASER = 2;
const DeviceToolType DEVICE_TOOL_TYPE_LENS = 7;
const DeviceToolType DEVICE_TOOL_TYPE_MOUSE = 6;
const DeviceToolType DEVICE_TOOL_TYPE_PEN = 1;
const DeviceToolType DEVICE_TOOL_TYPE_PENCIL = 4;
const DeviceToolType DEVICE_TOOL_TYPE_UNKNOWN = 0;

distinct DmabufError = int;
const DmabufError DMABUF_ERROR_CREATION_FAILED = 2;
const DmabufError DMABUF_ERROR_NOT_AVAILABLE = 0;
const DmabufError DMABUF_ERROR_UNSUPPORTED_FORMAT = 1;

distinct DragCancelReason = int;
const DragCancelReason DRAG_CANCEL_REASON_ERROR = 2;
const DragCancelReason DRAG_CANCEL_REASON_NO_TARGET = 0;
const DragCancelReason DRAG_CANCEL_REASON_USER_CANCELLED = 1;

distinct EventType = int;
const EventType EVENT_TYPE_BUTTON_PRESS = 2;
const EventType EVENT_TYPE_BUTTON_RELEASE = 3;
const EventType EVENT_TYPE_DELETE = 0;
const EventType EVENT_TYPE_DRAG_ENTER = 11;
const EventType EVENT_TYPE_DRAG_LEAVE = 12;
const EventType EVENT_TYPE_DRAG_MOTION = 13;
const EventType EVENT_TYPE_DROP_START = 14;
const EventType EVENT_TYPE_ENTER_NOTIFY = 6;
const EventType EVENT_TYPE_EVENT_LAST = 29;
const EventType EVENT_TYPE_FOCUS_CHANGE = 8;
const EventType EVENT_TYPE_GRAB_BROKEN = 16;
const EventType EVENT_TYPE_KEY_PRESS = 4;
const EventType EVENT_TYPE_KEY_RELEASE = 5;
const EventType EVENT_TYPE_LEAVE_NOTIFY = 7;
const EventType EVENT_TYPE_MOTION_NOTIFY = 1;
const EventType EVENT_TYPE_PAD_BUTTON_PRESS = 23;
const EventType EVENT_TYPE_PAD_BUTTON_RELEASE = 24;
const EventType EVENT_TYPE_PAD_GROUP_MODE = 27;
const EventType EVENT_TYPE_PAD_RING = 25;
const EventType EVENT_TYPE_PAD_STRIP = 26;
const EventType EVENT_TYPE_PROXIMITY_IN = 9;
const EventType EVENT_TYPE_PROXIMITY_OUT = 10;
const EventType EVENT_TYPE_SCROLL = 15;
const EventType EVENT_TYPE_TOUCHPAD_HOLD = 28;
const EventType EVENT_TYPE_TOUCHPAD_PINCH = 22;
const EventType EVENT_TYPE_TOUCHPAD_SWIPE = 21;
const EventType EVENT_TYPE_TOUCH_BEGIN = 17;
const EventType EVENT_TYPE_TOUCH_CANCEL = 20;
const EventType EVENT_TYPE_TOUCH_END = 19;
const EventType EVENT_TYPE_TOUCH_UPDATE = 18;

distinct FullscreenMode = int;
const FullscreenMode FULLSCREEN_MODE_ALL_MONITORS = 1;
const FullscreenMode FULLSCREEN_MODE_CURRENT_MONITOR = 0;

distinct GLError = int;
const GLError GL_ERROR_COMPILATION_FAILED = 3;
const GLError GL_ERROR_LINK_FAILED = 4;
const GLError GL_ERROR_NOT_AVAILABLE = 0;
const GLError GL_ERROR_UNSUPPORTED_FORMAT = 1;
const GLError GL_ERROR_UNSUPPORTED_PROFILE = 2;

distinct Gravity = int;
const Gravity GRAVITY_CENTER = 5;
const Gravity GRAVITY_EAST = 6;
const Gravity GRAVITY_NORTH = 2;
const Gravity GRAVITY_NORTH_EAST = 3;
const Gravity GRAVITY_NORTH_WEST = 1;
const Gravity GRAVITY_SOUTH = 8;
const Gravity GRAVITY_SOUTH_EAST = 9;
const Gravity GRAVITY_SOUTH_WEST = 7;
const Gravity GRAVITY_STATIC = 10;
const Gravity GRAVITY_WEST = 4;

distinct InputSource = int;
const InputSource INPUT_SOURCE_KEYBOARD = 2;
const InputSource INPUT_SOURCE_MOUSE = 0;
const InputSource INPUT_SOURCE_PEN = 1;
const InputSource INPUT_SOURCE_TABLET_PAD = 6;
const InputSource INPUT_SOURCE_TOUCHPAD = 4;
const InputSource INPUT_SOURCE_TOUCHSCREEN = 3;
const InputSource INPUT_SOURCE_TRACKPOINT = 5;

distinct KeyMatch = int;
const KeyMatch KEY_MATCH_EXACT = 2;
const KeyMatch KEY_MATCH_NONE = 0;
const KeyMatch KEY_MATCH_PARTIAL = 1;

distinct MemoryFormat = int;
const MemoryFormat MEMORY_FORMAT_A16 = 25;
const MemoryFormat MEMORY_FORMAT_A16_FLOAT = 26;
const MemoryFormat MEMORY_FORMAT_A32_FLOAT = 27;
const MemoryFormat MEMORY_FORMAT_A8 = 24;
const MemoryFormat MEMORY_FORMAT_A8B8G8R8 = 6;
const MemoryFormat MEMORY_FORMAT_A8B8G8R8_PREMULTIPLIED = 28;
const MemoryFormat MEMORY_FORMAT_A8R8G8B8 = 4;
const MemoryFormat MEMORY_FORMAT_A8R8G8B8_PREMULTIPLIED = 1;
const MemoryFormat MEMORY_FORMAT_B8G8R8 = 8;
const MemoryFormat MEMORY_FORMAT_B8G8R8A8 = 3;
const MemoryFormat MEMORY_FORMAT_B8G8R8A8_PREMULTIPLIED = 0;
const MemoryFormat MEMORY_FORMAT_B8G8R8X8 = 29;
const MemoryFormat MEMORY_FORMAT_G16 = 23;
const MemoryFormat MEMORY_FORMAT_G16A16 = 22;
const MemoryFormat MEMORY_FORMAT_G16A16_PREMULTIPLIED = 21;
const MemoryFormat MEMORY_FORMAT_G8 = 20;
const MemoryFormat MEMORY_FORMAT_G8A8 = 19;
const MemoryFormat MEMORY_FORMAT_G8A8_PREMULTIPLIED = 18;
const MemoryFormat MEMORY_FORMAT_N_FORMATS = 33;
const MemoryFormat MEMORY_FORMAT_R16G16B16 = 9;
const MemoryFormat MEMORY_FORMAT_R16G16B16A16 = 11;
const MemoryFormat MEMORY_FORMAT_R16G16B16A16_FLOAT = 14;
const MemoryFormat MEMORY_FORMAT_R16G16B16A16_FLOAT_PREMULTIPLIED = 13;
const MemoryFormat MEMORY_FORMAT_R16G16B16A16_PREMULTIPLIED = 10;
const MemoryFormat MEMORY_FORMAT_R16G16B16_FLOAT = 12;
const MemoryFormat MEMORY_FORMAT_R32G32B32A32_FLOAT = 17;
const MemoryFormat MEMORY_FORMAT_R32G32B32A32_FLOAT_PREMULTIPLIED = 16;
const MemoryFormat MEMORY_FORMAT_R32G32B32_FLOAT = 15;
const MemoryFormat MEMORY_FORMAT_R8G8B8 = 7;
const MemoryFormat MEMORY_FORMAT_R8G8B8A8 = 5;
const MemoryFormat MEMORY_FORMAT_R8G8B8A8_PREMULTIPLIED = 2;
const MemoryFormat MEMORY_FORMAT_R8G8B8X8 = 31;
const MemoryFormat MEMORY_FORMAT_X8B8G8R8 = 32;
const MemoryFormat MEMORY_FORMAT_X8R8G8B8 = 30;

distinct NotifyType = int;
const NotifyType NOTIFY_TYPE_ANCESTOR = 0;
const NotifyType NOTIFY_TYPE_INFERIOR = 2;
const NotifyType NOTIFY_TYPE_NONLINEAR = 3;
const NotifyType NOTIFY_TYPE_NONLINEAR_VIRTUAL = 4;
const NotifyType NOTIFY_TYPE_UNKNOWN = 5;
const NotifyType NOTIFY_TYPE_VIRTUAL = 1;

distinct ScrollDirection = int;
const ScrollDirection SCROLL_DIRECTION_DOWN = 1;
const ScrollDirection SCROLL_DIRECTION_LEFT = 2;
const ScrollDirection SCROLL_DIRECTION_RIGHT = 3;
const ScrollDirection SCROLL_DIRECTION_SMOOTH = 4;
const ScrollDirection SCROLL_DIRECTION_UP = 0;

distinct ScrollUnit = int;
const ScrollUnit SCROLL_UNIT_SURFACE = 1;
const ScrollUnit SCROLL_UNIT_WHEEL = 0;

distinct SubpixelLayout = int;
const SubpixelLayout SUBPIXEL_LAYOUT_HORIZONTAL_BGR = 3;
const SubpixelLayout SUBPIXEL_LAYOUT_HORIZONTAL_RGB = 2;
const SubpixelLayout SUBPIXEL_LAYOUT_NONE = 1;
const SubpixelLayout SUBPIXEL_LAYOUT_UNKNOWN = 0;
const SubpixelLayout SUBPIXEL_LAYOUT_VERTICAL_BGR = 5;
const SubpixelLayout SUBPIXEL_LAYOUT_VERTICAL_RGB = 4;

distinct SurfaceEdge = int;
const SurfaceEdge SURFACE_EDGE_EAST = 4;
const SurfaceEdge SURFACE_EDGE_NORTH = 1;
const SurfaceEdge SURFACE_EDGE_NORTH_EAST = 2;
const SurfaceEdge SURFACE_EDGE_NORTH_WEST = 0;
const SurfaceEdge SURFACE_EDGE_SOUTH = 6;
const SurfaceEdge SURFACE_EDGE_SOUTH_EAST = 7;
const SurfaceEdge SURFACE_EDGE_SOUTH_WEST = 5;
const SurfaceEdge SURFACE_EDGE_WEST = 3;

distinct TextureError = int;
const TextureError TEXTURE_ERROR_CORRUPT_IMAGE = 1;
const TextureError TEXTURE_ERROR_TOO_LARGE = 0;
const TextureError TEXTURE_ERROR_UNSUPPORTED_CONTENT = 2;
const TextureError TEXTURE_ERROR_UNSUPPORTED_FORMAT = 3;

distinct TitlebarGesture = int;
const TitlebarGesture TITLEBAR_GESTURE_DOUBLE_CLICK = 1;
const TitlebarGesture TITLEBAR_GESTURE_MIDDLE_CLICK = 3;
const TitlebarGesture TITLEBAR_GESTURE_RIGHT_CLICK = 2;

distinct TouchpadGesturePhase = int;
const TouchpadGesturePhase TOUCHPAD_GESTURE_PHASE_BEGIN = 0;
const TouchpadGesturePhase TOUCHPAD_GESTURE_PHASE_CANCEL = 3;
const TouchpadGesturePhase TOUCHPAD_GESTURE_PHASE_END = 2;
const TouchpadGesturePhase TOUCHPAD_GESTURE_PHASE_UPDATE = 1;

distinct VulkanError = int;
const VulkanError VULKAN_ERROR_NOT_AVAILABLE = 1;
const VulkanError VULKAN_ERROR_UNSUPPORTED = 0;



distinct CicpParamsClass = void*;

distinct ColorState = void*;

distinct ContentFormats = void*;

distinct ContentFormatsBuilder = void*;

distinct ContentProviderClass = void*;

distinct DevicePadInterface = void*;

distinct DmabufFormats = void*;

distinct DmabufTextureBuilderClass = void*;

distinct DmabufTextureClass = void*;

distinct DragSurfaceInterface = void*;

distinct DragSurfaceSize = void*;

distinct EventSequence = void*;

distinct FileList = void*;

distinct FrameClockClass = void*;

distinct FrameClockPrivate = void*;

distinct FrameTimings = void*;

distinct GLTextureBuilderClass = void*;

distinct GLTextureClass = void*;

distinct KeymapKey = void*;

distinct MemoryTextureBuilderClass = void*;

distinct MemoryTextureClass = void*;

distinct MonitorClass = void*;

distinct PaintableInterface = void*;

distinct PopupInterface = void*;

distinct PopupLayout = void*;

distinct Rgba = void*;

distinct Rectangle = void*;

distinct SnapshotClass = void*;

distinct SurfaceClass = void*;

distinct TextureClass = void*;

distinct TextureDownloader = void*;

distinct TimeCoord = void*;

distinct ToplevelInterface = void*;

distinct ToplevelLayout = void*;

distinct ToplevelSize = void*;


def ContentDeserializeFunc = fn void(ContentDeserializer* deserializer);

def ContentSerializeFunc = fn void(ContentSerializer* serializer);

def CursorGetTextureCallback = fn Texture*(Cursor* cursor, int cursor_size, double scale, int* width, int* height, int* hotspot_x, int* hotspot_y, void* data);


<* Maps to GdkAppLaunchContext *>
distinct AppLaunchContext = void*;

// Class to parent cast.
fn gio::AppLaunchContext* AppLaunchContext.as_gio_AppLaunchContext(&self) => (gio::AppLaunchContext*)(self);

// Class Constructors



// Class Methods

<* Maps to AppLaunchContext::get_display *>
extern fn Display* AppLaunchContext.get_display(&self, ) @extern("gdk_app_launch_context_get_display");

<* Maps to AppLaunchContext::set_desktop *>
extern fn void AppLaunchContext.set_desktop(&self, int desktop) @extern("gdk_app_launch_context_set_desktop");

<* Maps to AppLaunchContext::set_icon *>
extern fn void AppLaunchContext.set_icon(&self, gio::Icon* icon) @extern("gdk_app_launch_context_set_icon");

<* Maps to AppLaunchContext::set_icon_name *>
extern fn void AppLaunchContext.set_icon_name(&self, ZString icon_name) @extern("gdk_app_launch_context_set_icon_name");

<* Maps to AppLaunchContext::set_timestamp *>
extern fn void AppLaunchContext.set_timestamp(&self, uint timestamp) @extern("gdk_app_launch_context_set_timestamp");


// Class Functions



<* Maps to GdkButtonEvent *>
distinct ButtonEvent = void*;

// Class to parent cast.
fn Event* ButtonEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods

<* Maps to ButtonEvent::get_button *>
extern fn uint ButtonEvent.get_button(&self, ) @extern("gdk_button_event_get_button");


// Class Functions



<* Maps to GdkCairoContext *>
distinct CairoContext = void*;

// Class to parent cast.
fn DrawContext* CairoContext.as_DrawContext(&self) => (DrawContext*)(self);

// Class Constructors



// Class Methods

<* Maps to CairoContext::cairo_create *>
extern fn cairo::Context* CairoContext.cairo_create(&self, ) @extern("gdk_cairo_context_cairo_create");


// Class Functions



<* Maps to GdkCicpParams *>
distinct CicpParams = void*;

// Class to parent cast.
fn gobject::Object* CicpParams.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of CicpParams *>
extern fn CicpParams* cicp_params_new() @extern("gdk_cicp_params_new");



// Class Methods

<* Maps to CicpParams::build_color_state *>
extern fn ColorState* CicpParams.build_color_state(&self, ) @extern("gdk_cicp_params_build_color_state");

<* Maps to CicpParams::get_color_primaries *>
extern fn uint CicpParams.get_color_primaries(&self, ) @extern("gdk_cicp_params_get_color_primaries");

<* Maps to CicpParams::get_matrix_coefficients *>
extern fn uint CicpParams.get_matrix_coefficients(&self, ) @extern("gdk_cicp_params_get_matrix_coefficients");

<* Maps to CicpParams::get_range *>
extern fn CicpRange CicpParams.get_range(&self, ) @extern("gdk_cicp_params_get_range");

<* Maps to CicpParams::get_transfer_function *>
extern fn uint CicpParams.get_transfer_function(&self, ) @extern("gdk_cicp_params_get_transfer_function");

<* Maps to CicpParams::set_color_primaries *>
extern fn void CicpParams.set_color_primaries(&self, uint color_primaries) @extern("gdk_cicp_params_set_color_primaries");

<* Maps to CicpParams::set_matrix_coefficients *>
extern fn void CicpParams.set_matrix_coefficients(&self, uint matrix_coefficients) @extern("gdk_cicp_params_set_matrix_coefficients");

<* Maps to CicpParams::set_range *>
extern fn void CicpParams.set_range(&self, CicpRange range) @extern("gdk_cicp_params_set_range");

<* Maps to CicpParams::set_transfer_function *>
extern fn void CicpParams.set_transfer_function(&self, uint transfer_function) @extern("gdk_cicp_params_set_transfer_function");


// Class Functions



<* Maps to GdkClipboard *>
distinct Clipboard = void*;

// Class to parent cast.
fn gobject::Object* Clipboard.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Clipboard::get_content *>
extern fn ContentProvider* Clipboard.get_content(&self, ) @extern("gdk_clipboard_get_content");

<* Maps to Clipboard::get_display *>
extern fn Display* Clipboard.get_display(&self, ) @extern("gdk_clipboard_get_display");

<* Maps to Clipboard::get_formats *>
extern fn ContentFormats* Clipboard.get_formats(&self, ) @extern("gdk_clipboard_get_formats");

<* Maps to Clipboard::is_local *>
extern fn bool Clipboard.is_local(&self, ) @extern("gdk_clipboard_is_local");

<* Maps to Clipboard::read_async *>
extern fn void Clipboard.read_async(&self, ZString* mime_types, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_clipboard_read_async");

<* Maps to Clipboard::read_finish *>
extern fn gio::InputStream* Clipboard.read_finish(&self, gio::AsyncResult* result, ZString* out_mime_type) @extern("gdk_clipboard_read_finish");

<* Maps to Clipboard::read_text_async *>
extern fn void Clipboard.read_text_async(&self, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_clipboard_read_text_async");

<* Maps to Clipboard::read_text_finish *>
extern fn ZString* Clipboard.read_text_finish(&self, gio::AsyncResult* result) @extern("gdk_clipboard_read_text_finish");

<* Maps to Clipboard::read_texture_async *>
extern fn void Clipboard.read_texture_async(&self, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_clipboard_read_texture_async");

<* Maps to Clipboard::read_texture_finish *>
extern fn Texture* Clipboard.read_texture_finish(&self, gio::AsyncResult* result) @extern("gdk_clipboard_read_texture_finish");

<* Maps to Clipboard::read_value_async *>
extern fn void Clipboard.read_value_async(&self, usz type, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_clipboard_read_value_async");

<* Maps to Clipboard::read_value_finish *>
extern fn gobject::Value* Clipboard.read_value_finish(&self, gio::AsyncResult* result) @extern("gdk_clipboard_read_value_finish");

<* Maps to Clipboard::set *>
extern fn void Clipboard.set(&self, usz type, any rest) @extern("gdk_clipboard_set");

<* Maps to Clipboard::set_content *>
extern fn bool Clipboard.set_content(&self, ContentProvider* provider) @extern("gdk_clipboard_set_content");

<* Maps to Clipboard::set_text *>
extern fn void Clipboard.set_text(&self, ZString text) @extern("gdk_clipboard_set_text");

<* Maps to Clipboard::set_texture *>
extern fn void Clipboard.set_texture(&self, Texture* texture) @extern("gdk_clipboard_set_texture");

<* Maps to Clipboard::set_value *>
extern fn void Clipboard.set_value(&self, gobject::Value* value) @extern("gdk_clipboard_set_value");

<* Maps to Clipboard::store_async *>
extern fn void Clipboard.store_async(&self, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_clipboard_store_async");

<* Maps to Clipboard::store_finish *>
extern fn bool Clipboard.store_finish(&self, gio::AsyncResult* result) @extern("gdk_clipboard_store_finish");


// Class Functions



<* Maps to GdkContentDeserializer *>
distinct ContentDeserializer = void*;

// Class to parent cast.
fn gobject::Object* ContentDeserializer.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to ContentDeserializer::get_cancellable *>
extern fn gio::Cancellable* ContentDeserializer.get_cancellable(&self, ) @extern("gdk_content_deserializer_get_cancellable");

<* Maps to ContentDeserializer::get_gtype *>
extern fn usz ContentDeserializer.get_gtype(&self, ) @extern("gdk_content_deserializer_get_gtype");

<* Maps to ContentDeserializer::get_input_stream *>
extern fn gio::InputStream* ContentDeserializer.get_input_stream(&self, ) @extern("gdk_content_deserializer_get_input_stream");

<* Maps to ContentDeserializer::get_mime_type *>
extern fn ZString ContentDeserializer.get_mime_type(&self, ) @extern("gdk_content_deserializer_get_mime_type");

<* Maps to ContentDeserializer::get_priority *>
extern fn int ContentDeserializer.get_priority(&self, ) @extern("gdk_content_deserializer_get_priority");

<* Maps to ContentDeserializer::get_task_data *>
extern fn void* ContentDeserializer.get_task_data(&self, ) @extern("gdk_content_deserializer_get_task_data");

<* Maps to ContentDeserializer::get_user_data *>
extern fn void* ContentDeserializer.get_user_data(&self, ) @extern("gdk_content_deserializer_get_user_data");

<* Maps to ContentDeserializer::get_value *>
extern fn gobject::Value* ContentDeserializer.get_value(&self, ) @extern("gdk_content_deserializer_get_value");

<* Maps to ContentDeserializer::return_error *>
extern fn void ContentDeserializer.return_error(&self, glib::Error* error) @extern("gdk_content_deserializer_return_error");

<* Maps to ContentDeserializer::return_success *>
extern fn void ContentDeserializer.return_success(&self, ) @extern("gdk_content_deserializer_return_success");

<* Maps to ContentDeserializer::set_task_data *>
extern fn void ContentDeserializer.set_task_data(&self, void* data, glib::DestroyNotify notify) @extern("gdk_content_deserializer_set_task_data");


// Class Functions



<* Maps to GdkContentProvider *>
distinct ContentProvider = void*;

// Class to parent cast.
fn gobject::Object* ContentProvider.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_for_bytes of ContentProvider *>
extern fn ContentProvider* content_provider_new_for_bytes(ZString mime_type, glib::Bytes* bytes) @extern("gdk_content_provider_new_for_bytes");

<* Maps to new_for_value of ContentProvider *>
extern fn ContentProvider* content_provider_new_for_value(gobject::Value* value) @extern("gdk_content_provider_new_for_value");

<* Maps to new_typed of ContentProvider *>
extern fn ContentProvider* content_provider_new_typed(usz type, any rest) @extern("gdk_content_provider_new_typed");

<* Maps to new_union of ContentProvider *>
extern fn ContentProvider* content_provider_new_union(ContentProvider* providers, usz n_providers) @extern("gdk_content_provider_new_union");



// Class Methods

<* Maps to ContentProvider::content_changed *>
extern fn void ContentProvider.content_changed(&self, ) @extern("gdk_content_provider_content_changed");

<* Maps to ContentProvider::get_value *>
extern fn bool ContentProvider.get_value(&self, gobject::Value* value) @extern("gdk_content_provider_get_value");

<* Maps to ContentProvider::ref_formats *>
extern fn ContentFormats* ContentProvider.ref_formats(&self, ) @extern("gdk_content_provider_ref_formats");

<* Maps to ContentProvider::ref_storable_formats *>
extern fn ContentFormats* ContentProvider.ref_storable_formats(&self, ) @extern("gdk_content_provider_ref_storable_formats");

<* Maps to ContentProvider::write_mime_type_async *>
extern fn void ContentProvider.write_mime_type_async(&self, ZString mime_type, gio::OutputStream* stream, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_content_provider_write_mime_type_async");

<* Maps to ContentProvider::write_mime_type_finish *>
extern fn bool ContentProvider.write_mime_type_finish(&self, gio::AsyncResult* result) @extern("gdk_content_provider_write_mime_type_finish");


// Class Functions



<* Maps to GdkContentSerializer *>
distinct ContentSerializer = void*;

// Class to parent cast.
fn gobject::Object* ContentSerializer.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to ContentSerializer::get_cancellable *>
extern fn gio::Cancellable* ContentSerializer.get_cancellable(&self, ) @extern("gdk_content_serializer_get_cancellable");

<* Maps to ContentSerializer::get_gtype *>
extern fn usz ContentSerializer.get_gtype(&self, ) @extern("gdk_content_serializer_get_gtype");

<* Maps to ContentSerializer::get_mime_type *>
extern fn ZString ContentSerializer.get_mime_type(&self, ) @extern("gdk_content_serializer_get_mime_type");

<* Maps to ContentSerializer::get_output_stream *>
extern fn gio::OutputStream* ContentSerializer.get_output_stream(&self, ) @extern("gdk_content_serializer_get_output_stream");

<* Maps to ContentSerializer::get_priority *>
extern fn int ContentSerializer.get_priority(&self, ) @extern("gdk_content_serializer_get_priority");

<* Maps to ContentSerializer::get_task_data *>
extern fn void* ContentSerializer.get_task_data(&self, ) @extern("gdk_content_serializer_get_task_data");

<* Maps to ContentSerializer::get_user_data *>
extern fn void* ContentSerializer.get_user_data(&self, ) @extern("gdk_content_serializer_get_user_data");

<* Maps to ContentSerializer::get_value *>
extern fn gobject::Value* ContentSerializer.get_value(&self, ) @extern("gdk_content_serializer_get_value");

<* Maps to ContentSerializer::return_error *>
extern fn void ContentSerializer.return_error(&self, glib::Error* error) @extern("gdk_content_serializer_return_error");

<* Maps to ContentSerializer::return_success *>
extern fn void ContentSerializer.return_success(&self, ) @extern("gdk_content_serializer_return_success");

<* Maps to ContentSerializer::set_task_data *>
extern fn void ContentSerializer.set_task_data(&self, void* data, glib::DestroyNotify notify) @extern("gdk_content_serializer_set_task_data");


// Class Functions



<* Maps to GdkCrossingEvent *>
distinct CrossingEvent = void*;

// Class to parent cast.
fn Event* CrossingEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods

<* Maps to CrossingEvent::get_detail *>
extern fn NotifyType CrossingEvent.get_detail(&self, ) @extern("gdk_crossing_event_get_detail");

<* Maps to CrossingEvent::get_focus *>
extern fn bool CrossingEvent.get_focus(&self, ) @extern("gdk_crossing_event_get_focus");

<* Maps to CrossingEvent::get_mode *>
extern fn CrossingMode CrossingEvent.get_mode(&self, ) @extern("gdk_crossing_event_get_mode");


// Class Functions



<* Maps to GdkCursor *>
distinct Cursor = void*;

// Class to parent cast.
fn gobject::Object* Cursor.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_from_callback of Cursor *>
extern fn Cursor* cursor_new_from_callback(CursorGetTextureCallback callback, void* data, glib::DestroyNotify destroy, Cursor* fallback) @extern("gdk_cursor_new_from_callback");

<* Maps to new_from_name of Cursor *>
extern fn Cursor* cursor_new_from_name(ZString name, Cursor* fallback) @extern("gdk_cursor_new_from_name");

<* Maps to new_from_texture of Cursor *>
extern fn Cursor* cursor_new_from_texture(Texture* texture, int hotspot_x, int hotspot_y, Cursor* fallback) @extern("gdk_cursor_new_from_texture");



// Class Methods

<* Maps to Cursor::get_fallback *>
extern fn Cursor* Cursor.get_fallback(&self, ) @extern("gdk_cursor_get_fallback");

<* Maps to Cursor::get_hotspot_x *>
extern fn int Cursor.get_hotspot_x(&self, ) @extern("gdk_cursor_get_hotspot_x");

<* Maps to Cursor::get_hotspot_y *>
extern fn int Cursor.get_hotspot_y(&self, ) @extern("gdk_cursor_get_hotspot_y");

<* Maps to Cursor::get_name *>
extern fn ZString Cursor.get_name(&self, ) @extern("gdk_cursor_get_name");

<* Maps to Cursor::get_texture *>
extern fn Texture* Cursor.get_texture(&self, ) @extern("gdk_cursor_get_texture");


// Class Functions



<* Maps to GdkDNDEvent *>
distinct DNDEvent = void*;

// Class to parent cast.
fn Event* DNDEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods

<* Maps to DNDEvent::get_drop *>
extern fn Drop* DNDEvent.get_drop(&self, ) @extern("gdk_dnd_event_get_drop");


// Class Functions



<* Maps to GdkDeleteEvent *>
distinct DeleteEvent = void*;

// Class to parent cast.
fn Event* DeleteEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GdkDevice *>
distinct Device = void*;

// Class to parent cast.
fn gobject::Object* Device.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Device::get_caps_lock_state *>
extern fn bool Device.get_caps_lock_state(&self, ) @extern("gdk_device_get_caps_lock_state");

<* Maps to Device::get_device_tool *>
extern fn DeviceTool* Device.get_device_tool(&self, ) @extern("gdk_device_get_device_tool");

<* Maps to Device::get_direction *>
extern fn pango::Direction Device.get_direction(&self, ) @extern("gdk_device_get_direction");

<* Maps to Device::get_display *>
extern fn Display* Device.get_display(&self, ) @extern("gdk_device_get_display");

<* Maps to Device::get_has_cursor *>
extern fn bool Device.get_has_cursor(&self, ) @extern("gdk_device_get_has_cursor");

<* Maps to Device::get_modifier_state *>
extern fn ModifierType Device.get_modifier_state(&self, ) @extern("gdk_device_get_modifier_state");

<* Maps to Device::get_name *>
extern fn ZString Device.get_name(&self, ) @extern("gdk_device_get_name");

<* Maps to Device::get_num_lock_state *>
extern fn bool Device.get_num_lock_state(&self, ) @extern("gdk_device_get_num_lock_state");

<* Maps to Device::get_num_touches *>
extern fn uint Device.get_num_touches(&self, ) @extern("gdk_device_get_num_touches");

<* Maps to Device::get_product_id *>
extern fn ZString Device.get_product_id(&self, ) @extern("gdk_device_get_product_id");

<* Maps to Device::get_scroll_lock_state *>
extern fn bool Device.get_scroll_lock_state(&self, ) @extern("gdk_device_get_scroll_lock_state");

<* Maps to Device::get_seat *>
extern fn Seat* Device.get_seat(&self, ) @extern("gdk_device_get_seat");

<* Maps to Device::get_source *>
extern fn InputSource Device.get_source(&self, ) @extern("gdk_device_get_source");

<* Maps to Device::get_surface_at_position *>
extern fn Surface* Device.get_surface_at_position(&self, double* win_x, double* win_y) @extern("gdk_device_get_surface_at_position");

<* Maps to Device::get_timestamp *>
extern fn uint Device.get_timestamp(&self, ) @extern("gdk_device_get_timestamp");

<* Maps to Device::get_vendor_id *>
extern fn ZString Device.get_vendor_id(&self, ) @extern("gdk_device_get_vendor_id");

<* Maps to Device::has_bidi_layouts *>
extern fn bool Device.has_bidi_layouts(&self, ) @extern("gdk_device_has_bidi_layouts");


// Class Functions



<* Maps to GdkDeviceTool *>
distinct DeviceTool = void*;

// Class to parent cast.
fn gobject::Object* DeviceTool.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to DeviceTool::get_axes *>
extern fn AxisFlags DeviceTool.get_axes(&self, ) @extern("gdk_device_tool_get_axes");

<* Maps to DeviceTool::get_hardware_id *>
extern fn ulong DeviceTool.get_hardware_id(&self, ) @extern("gdk_device_tool_get_hardware_id");

<* Maps to DeviceTool::get_serial *>
extern fn ulong DeviceTool.get_serial(&self, ) @extern("gdk_device_tool_get_serial");

<* Maps to DeviceTool::get_tool_type *>
extern fn DeviceToolType DeviceTool.get_tool_type(&self, ) @extern("gdk_device_tool_get_tool_type");


// Class Functions



<* Maps to GdkDisplay *>
distinct Display = void*;

// Class to parent cast.
fn gobject::Object* Display.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Display::beep *>
extern fn void Display.beep(&self, ) @extern("gdk_display_beep");

<* Maps to Display::close *>
extern fn void Display.close(&self, ) @extern("gdk_display_close");

<* Maps to Display::create_gl_context *>
extern fn GLContext* Display.create_gl_context(&self, ) @extern("gdk_display_create_gl_context");

<* Maps to Display::device_is_grabbed *>
extern fn bool Display.device_is_grabbed(&self, Device* device) @extern("gdk_display_device_is_grabbed");

<* Maps to Display::flush *>
extern fn void Display.flush(&self, ) @extern("gdk_display_flush");

<* Maps to Display::get_app_launch_context *>
extern fn AppLaunchContext* Display.get_app_launch_context(&self, ) @extern("gdk_display_get_app_launch_context");

<* Maps to Display::get_clipboard *>
extern fn Clipboard* Display.get_clipboard(&self, ) @extern("gdk_display_get_clipboard");

<* Maps to Display::get_default_seat *>
extern fn Seat* Display.get_default_seat(&self, ) @extern("gdk_display_get_default_seat");

<* Maps to Display::get_dmabuf_formats *>
extern fn DmabufFormats* Display.get_dmabuf_formats(&self, ) @extern("gdk_display_get_dmabuf_formats");

<* Maps to Display::get_monitor_at_surface *>
extern fn Monitor* Display.get_monitor_at_surface(&self, Surface* surface) @extern("gdk_display_get_monitor_at_surface");

<* Maps to Display::get_monitors *>
extern fn gio::ListModel* Display.get_monitors(&self, ) @extern("gdk_display_get_monitors");

<* Maps to Display::get_name *>
extern fn ZString Display.get_name(&self, ) @extern("gdk_display_get_name");

<* Maps to Display::get_primary_clipboard *>
extern fn Clipboard* Display.get_primary_clipboard(&self, ) @extern("gdk_display_get_primary_clipboard");

<* Maps to Display::get_setting *>
extern fn bool Display.get_setting(&self, ZString name, gobject::Value* value) @extern("gdk_display_get_setting");

<* Maps to Display::get_startup_notification_id *>
extern fn ZString Display.get_startup_notification_id(&self, ) @extern("gdk_display_get_startup_notification_id");

<* Maps to Display::is_closed *>
extern fn bool Display.is_closed(&self, ) @extern("gdk_display_is_closed");

<* Maps to Display::is_composited *>
extern fn bool Display.is_composited(&self, ) @extern("gdk_display_is_composited");

<* Maps to Display::is_rgba *>
extern fn bool Display.is_rgba(&self, ) @extern("gdk_display_is_rgba");

<* Maps to Display::list_seats *>
extern fn glib::List* Display.list_seats(&self, ) @extern("gdk_display_list_seats");

<* Maps to Display::map_keycode *>
extern fn bool Display.map_keycode(&self, uint keycode, KeymapKey* keys, uint* keyvals, int* n_entries) @extern("gdk_display_map_keycode");

<* Maps to Display::map_keyval *>
extern fn bool Display.map_keyval(&self, uint keyval, KeymapKey* keys, int* n_keys) @extern("gdk_display_map_keyval");

<* Maps to Display::notify_startup_complete *>
extern fn void Display.notify_startup_complete(&self, ZString startup_id) @extern("gdk_display_notify_startup_complete");

<* Maps to Display::prepare_gl *>
extern fn bool Display.prepare_gl(&self, ) @extern("gdk_display_prepare_gl");

<* Maps to Display::put_event *>
extern fn void Display.put_event(&self, Event* event) @extern("gdk_display_put_event");

<* Maps to Display::supports_input_shapes *>
extern fn bool Display.supports_input_shapes(&self, ) @extern("gdk_display_supports_input_shapes");

<* Maps to Display::supports_shadow_width *>
extern fn bool Display.supports_shadow_width(&self, ) @extern("gdk_display_supports_shadow_width");

<* Maps to Display::sync *>
extern fn void Display.sync(&self, ) @extern("gdk_display_sync");

<* Maps to Display::translate_key *>
extern fn bool Display.translate_key(&self, uint keycode, ModifierType state, int group, uint* keyval, int* effective_group, int* level, ModifierType* consumed) @extern("gdk_display_translate_key");


// Class Functions

<* Maps to get_default of Display *>
extern fn Display* display_get_default() @extern("gdk_display_get_default");

<* Maps to open of Display *>
extern fn Display* display_open(ZString display_name) @extern("gdk_display_open");



<* Maps to GdkDisplayManager *>
distinct DisplayManager = void*;

// Class to parent cast.
fn gobject::Object* DisplayManager.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to DisplayManager::get_default_display *>
extern fn Display* DisplayManager.get_default_display(&self, ) @extern("gdk_display_manager_get_default_display");

<* Maps to DisplayManager::list_displays *>
extern fn glib::SList* DisplayManager.list_displays(&self, ) @extern("gdk_display_manager_list_displays");

<* Maps to DisplayManager::open_display *>
extern fn Display* DisplayManager.open_display(&self, ZString name) @extern("gdk_display_manager_open_display");

<* Maps to DisplayManager::set_default_display *>
extern fn void DisplayManager.set_default_display(&self, Display* display) @extern("gdk_display_manager_set_default_display");


// Class Functions

<* Maps to get of DisplayManager *>
extern fn DisplayManager* display_manager_get() @extern("gdk_display_manager_get");



<* Maps to GdkDmabufTexture *>
distinct DmabufTexture = void*;

// Class to parent cast.
fn Texture* DmabufTexture.as_Texture(&self) => (Texture*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GdkDmabufTextureBuilder *>
distinct DmabufTextureBuilder = void*;

// Class to parent cast.
fn gobject::Object* DmabufTextureBuilder.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of DmabufTextureBuilder *>
extern fn DmabufTextureBuilder* dmabuf_texture_builder_new() @extern("gdk_dmabuf_texture_builder_new");



// Class Methods

<* Maps to DmabufTextureBuilder::build *>
extern fn Texture* DmabufTextureBuilder.build(&self, glib::DestroyNotify destroy, void* data) @extern("gdk_dmabuf_texture_builder_build");

<* Maps to DmabufTextureBuilder::get_color_state *>
extern fn ColorState* DmabufTextureBuilder.get_color_state(&self, ) @extern("gdk_dmabuf_texture_builder_get_color_state");

<* Maps to DmabufTextureBuilder::get_display *>
extern fn Display* DmabufTextureBuilder.get_display(&self, ) @extern("gdk_dmabuf_texture_builder_get_display");

<* Maps to DmabufTextureBuilder::get_fd *>
extern fn int DmabufTextureBuilder.get_fd(&self, uint plane) @extern("gdk_dmabuf_texture_builder_get_fd");

<* Maps to DmabufTextureBuilder::get_fourcc *>
extern fn uint DmabufTextureBuilder.get_fourcc(&self, ) @extern("gdk_dmabuf_texture_builder_get_fourcc");

<* Maps to DmabufTextureBuilder::get_height *>
extern fn uint DmabufTextureBuilder.get_height(&self, ) @extern("gdk_dmabuf_texture_builder_get_height");

<* Maps to DmabufTextureBuilder::get_modifier *>
extern fn ulong DmabufTextureBuilder.get_modifier(&self, ) @extern("gdk_dmabuf_texture_builder_get_modifier");

<* Maps to DmabufTextureBuilder::get_n_planes *>
extern fn uint DmabufTextureBuilder.get_n_planes(&self, ) @extern("gdk_dmabuf_texture_builder_get_n_planes");

<* Maps to DmabufTextureBuilder::get_offset *>
extern fn uint DmabufTextureBuilder.get_offset(&self, uint plane) @extern("gdk_dmabuf_texture_builder_get_offset");

<* Maps to DmabufTextureBuilder::get_premultiplied *>
extern fn bool DmabufTextureBuilder.get_premultiplied(&self, ) @extern("gdk_dmabuf_texture_builder_get_premultiplied");

<* Maps to DmabufTextureBuilder::get_stride *>
extern fn uint DmabufTextureBuilder.get_stride(&self, uint plane) @extern("gdk_dmabuf_texture_builder_get_stride");

<* Maps to DmabufTextureBuilder::get_update_region *>
extern fn cairo::Region* DmabufTextureBuilder.get_update_region(&self, ) @extern("gdk_dmabuf_texture_builder_get_update_region");

<* Maps to DmabufTextureBuilder::get_update_texture *>
extern fn Texture* DmabufTextureBuilder.get_update_texture(&self, ) @extern("gdk_dmabuf_texture_builder_get_update_texture");

<* Maps to DmabufTextureBuilder::get_width *>
extern fn uint DmabufTextureBuilder.get_width(&self, ) @extern("gdk_dmabuf_texture_builder_get_width");

<* Maps to DmabufTextureBuilder::set_color_state *>
extern fn void DmabufTextureBuilder.set_color_state(&self, ColorState* color_state) @extern("gdk_dmabuf_texture_builder_set_color_state");

<* Maps to DmabufTextureBuilder::set_display *>
extern fn void DmabufTextureBuilder.set_display(&self, Display* display) @extern("gdk_dmabuf_texture_builder_set_display");

<* Maps to DmabufTextureBuilder::set_fd *>
extern fn void DmabufTextureBuilder.set_fd(&self, uint plane, int fd) @extern("gdk_dmabuf_texture_builder_set_fd");

<* Maps to DmabufTextureBuilder::set_fourcc *>
extern fn void DmabufTextureBuilder.set_fourcc(&self, uint fourcc) @extern("gdk_dmabuf_texture_builder_set_fourcc");

<* Maps to DmabufTextureBuilder::set_height *>
extern fn void DmabufTextureBuilder.set_height(&self, uint height) @extern("gdk_dmabuf_texture_builder_set_height");

<* Maps to DmabufTextureBuilder::set_modifier *>
extern fn void DmabufTextureBuilder.set_modifier(&self, ulong modifier) @extern("gdk_dmabuf_texture_builder_set_modifier");

<* Maps to DmabufTextureBuilder::set_n_planes *>
extern fn void DmabufTextureBuilder.set_n_planes(&self, uint n_planes) @extern("gdk_dmabuf_texture_builder_set_n_planes");

<* Maps to DmabufTextureBuilder::set_offset *>
extern fn void DmabufTextureBuilder.set_offset(&self, uint plane, uint offset) @extern("gdk_dmabuf_texture_builder_set_offset");

<* Maps to DmabufTextureBuilder::set_premultiplied *>
extern fn void DmabufTextureBuilder.set_premultiplied(&self, bool premultiplied) @extern("gdk_dmabuf_texture_builder_set_premultiplied");

<* Maps to DmabufTextureBuilder::set_stride *>
extern fn void DmabufTextureBuilder.set_stride(&self, uint plane, uint stride) @extern("gdk_dmabuf_texture_builder_set_stride");

<* Maps to DmabufTextureBuilder::set_update_region *>
extern fn void DmabufTextureBuilder.set_update_region(&self, cairo::Region* region) @extern("gdk_dmabuf_texture_builder_set_update_region");

<* Maps to DmabufTextureBuilder::set_update_texture *>
extern fn void DmabufTextureBuilder.set_update_texture(&self, Texture* texture) @extern("gdk_dmabuf_texture_builder_set_update_texture");

<* Maps to DmabufTextureBuilder::set_width *>
extern fn void DmabufTextureBuilder.set_width(&self, uint width) @extern("gdk_dmabuf_texture_builder_set_width");


// Class Functions



<* Maps to GdkDrag *>
distinct Drag = void*;

// Class to parent cast.
fn gobject::Object* Drag.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Drag::drop_done *>
extern fn void Drag.drop_done(&self, bool success) @extern("gdk_drag_drop_done");

<* Maps to Drag::get_actions *>
extern fn DragAction Drag.get_actions(&self, ) @extern("gdk_drag_get_actions");

<* Maps to Drag::get_content *>
extern fn ContentProvider* Drag.get_content(&self, ) @extern("gdk_drag_get_content");

<* Maps to Drag::get_device *>
extern fn Device* Drag.get_device(&self, ) @extern("gdk_drag_get_device");

<* Maps to Drag::get_display *>
extern fn Display* Drag.get_display(&self, ) @extern("gdk_drag_get_display");

<* Maps to Drag::get_drag_surface *>
extern fn Surface* Drag.get_drag_surface(&self, ) @extern("gdk_drag_get_drag_surface");

<* Maps to Drag::get_formats *>
extern fn ContentFormats* Drag.get_formats(&self, ) @extern("gdk_drag_get_formats");

<* Maps to Drag::get_selected_action *>
extern fn DragAction Drag.get_selected_action(&self, ) @extern("gdk_drag_get_selected_action");

<* Maps to Drag::get_surface *>
extern fn Surface* Drag.get_surface(&self, ) @extern("gdk_drag_get_surface");

<* Maps to Drag::set_hotspot *>
extern fn void Drag.set_hotspot(&self, int hot_x, int hot_y) @extern("gdk_drag_set_hotspot");


// Class Functions

<* Maps to begin of Drag *>
extern fn Drag* drag_begin(Surface* surface, Device* device, ContentProvider* content, DragAction actions, double dx, double dy) @extern("gdk_drag_begin");



<* Maps to GdkDrawContext *>
distinct DrawContext = void*;

// Class to parent cast.
fn gobject::Object* DrawContext.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to DrawContext::begin_frame *>
extern fn void DrawContext.begin_frame(&self, cairo::Region* region) @extern("gdk_draw_context_begin_frame");

<* Maps to DrawContext::end_frame *>
extern fn void DrawContext.end_frame(&self, ) @extern("gdk_draw_context_end_frame");

<* Maps to DrawContext::get_display *>
extern fn Display* DrawContext.get_display(&self, ) @extern("gdk_draw_context_get_display");

<* Maps to DrawContext::get_frame_region *>
extern fn cairo::Region* DrawContext.get_frame_region(&self, ) @extern("gdk_draw_context_get_frame_region");

<* Maps to DrawContext::get_surface *>
extern fn Surface* DrawContext.get_surface(&self, ) @extern("gdk_draw_context_get_surface");

<* Maps to DrawContext::is_in_frame *>
extern fn bool DrawContext.is_in_frame(&self, ) @extern("gdk_draw_context_is_in_frame");


// Class Functions



<* Maps to GdkDrop *>
distinct Drop = void*;

// Class to parent cast.
fn gobject::Object* Drop.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Drop::finish *>
extern fn void Drop.finish(&self, DragAction action) @extern("gdk_drop_finish");

<* Maps to Drop::get_actions *>
extern fn DragAction Drop.get_actions(&self, ) @extern("gdk_drop_get_actions");

<* Maps to Drop::get_device *>
extern fn Device* Drop.get_device(&self, ) @extern("gdk_drop_get_device");

<* Maps to Drop::get_display *>
extern fn Display* Drop.get_display(&self, ) @extern("gdk_drop_get_display");

<* Maps to Drop::get_drag *>
extern fn Drag* Drop.get_drag(&self, ) @extern("gdk_drop_get_drag");

<* Maps to Drop::get_formats *>
extern fn ContentFormats* Drop.get_formats(&self, ) @extern("gdk_drop_get_formats");

<* Maps to Drop::get_surface *>
extern fn Surface* Drop.get_surface(&self, ) @extern("gdk_drop_get_surface");

<* Maps to Drop::read_async *>
extern fn void Drop.read_async(&self, ZString mime_types, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_drop_read_async");

<* Maps to Drop::read_finish *>
extern fn gio::InputStream* Drop.read_finish(&self, gio::AsyncResult* result, ZString* out_mime_type) @extern("gdk_drop_read_finish");

<* Maps to Drop::read_value_async *>
extern fn void Drop.read_value_async(&self, usz type, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_drop_read_value_async");

<* Maps to Drop::read_value_finish *>
extern fn gobject::Value* Drop.read_value_finish(&self, gio::AsyncResult* result) @extern("gdk_drop_read_value_finish");

<* Maps to Drop::status *>
extern fn void Drop.status(&self, DragAction actions, DragAction preferred) @extern("gdk_drop_status");


// Class Functions



<* Maps to GdkEvent *>
distinct Event = void*;

// Class to parent cast.


// Class Constructors



// Class Methods

<* Maps to Event::_get_angle *>
extern fn bool Event._get_angle(&self, Event* event2, double* angle) @extern("gdk_events_get_angle");

<* Maps to Event::_get_center *>
extern fn bool Event._get_center(&self, Event* event2, double* x, double* y) @extern("gdk_events_get_center");

<* Maps to Event::_get_distance *>
extern fn bool Event._get_distance(&self, Event* event2, double* distance) @extern("gdk_events_get_distance");

<* Maps to Event::get_axes *>
extern fn bool Event.get_axes(&self, double* axes, uint* n_axes) @extern("gdk_event_get_axes");

<* Maps to Event::get_axis *>
extern fn bool Event.get_axis(&self, AxisUse axis_use, double* value) @extern("gdk_event_get_axis");

<* Maps to Event::get_device *>
extern fn Device* Event.get_device(&self, ) @extern("gdk_event_get_device");

<* Maps to Event::get_device_tool *>
extern fn DeviceTool* Event.get_device_tool(&self, ) @extern("gdk_event_get_device_tool");

<* Maps to Event::get_display *>
extern fn Display* Event.get_display(&self, ) @extern("gdk_event_get_display");

<* Maps to Event::get_event_sequence *>
extern fn EventSequence* Event.get_event_sequence(&self, ) @extern("gdk_event_get_event_sequence");

<* Maps to Event::get_event_type *>
extern fn EventType Event.get_event_type(&self, ) @extern("gdk_event_get_event_type");

<* Maps to Event::get_history *>
extern fn TimeCoord Event.get_history(&self, uint* out_n_coords) @extern("gdk_event_get_history");

<* Maps to Event::get_modifier_state *>
extern fn ModifierType Event.get_modifier_state(&self, ) @extern("gdk_event_get_modifier_state");

<* Maps to Event::get_pointer_emulated *>
extern fn bool Event.get_pointer_emulated(&self, ) @extern("gdk_event_get_pointer_emulated");

<* Maps to Event::get_position *>
extern fn bool Event.get_position(&self, double* x, double* y) @extern("gdk_event_get_position");

<* Maps to Event::get_seat *>
extern fn Seat* Event.get_seat(&self, ) @extern("gdk_event_get_seat");

<* Maps to Event::get_surface *>
extern fn Surface* Event.get_surface(&self, ) @extern("gdk_event_get_surface");

<* Maps to Event::get_time *>
extern fn uint Event.get_time(&self, ) @extern("gdk_event_get_time");

<* Maps to Event::ref *>
extern fn Event* Event.ref(&self, ) @extern("gdk_event_ref");

<* Maps to Event::triggers_context_menu *>
extern fn bool Event.triggers_context_menu(&self, ) @extern("gdk_event_triggers_context_menu");

<* Maps to Event::unref *>
extern fn void Event.unref(&self, ) @extern("gdk_event_unref");


// Class Functions



<* Maps to GdkFocusEvent *>
distinct FocusEvent = void*;

// Class to parent cast.
fn Event* FocusEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods

<* Maps to FocusEvent::get_in *>
extern fn bool FocusEvent.get_in(&self, ) @extern("gdk_focus_event_get_in");


// Class Functions



<* Maps to GdkFrameClock *>
distinct FrameClock = void*;

// Class to parent cast.
fn gobject::Object* FrameClock.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to FrameClock::begin_updating *>
extern fn void FrameClock.begin_updating(&self, ) @extern("gdk_frame_clock_begin_updating");

<* Maps to FrameClock::end_updating *>
extern fn void FrameClock.end_updating(&self, ) @extern("gdk_frame_clock_end_updating");

<* Maps to FrameClock::get_current_timings *>
extern fn FrameTimings* FrameClock.get_current_timings(&self, ) @extern("gdk_frame_clock_get_current_timings");

<* Maps to FrameClock::get_fps *>
extern fn double FrameClock.get_fps(&self, ) @extern("gdk_frame_clock_get_fps");

<* Maps to FrameClock::get_frame_counter *>
extern fn long FrameClock.get_frame_counter(&self, ) @extern("gdk_frame_clock_get_frame_counter");

<* Maps to FrameClock::get_frame_time *>
extern fn long FrameClock.get_frame_time(&self, ) @extern("gdk_frame_clock_get_frame_time");

<* Maps to FrameClock::get_history_start *>
extern fn long FrameClock.get_history_start(&self, ) @extern("gdk_frame_clock_get_history_start");

<* Maps to FrameClock::get_refresh_info *>
extern fn void FrameClock.get_refresh_info(&self, long base_time, long* refresh_interval_return, long* presentation_time_return) @extern("gdk_frame_clock_get_refresh_info");

<* Maps to FrameClock::get_timings *>
extern fn FrameTimings* FrameClock.get_timings(&self, long frame_counter) @extern("gdk_frame_clock_get_timings");

<* Maps to FrameClock::request_phase *>
extern fn void FrameClock.request_phase(&self, FrameClockPhase phase) @extern("gdk_frame_clock_request_phase");


// Class Functions



<* Maps to GdkGLContext *>
distinct GLContext = void*;

// Class to parent cast.
fn DrawContext* GLContext.as_DrawContext(&self) => (DrawContext*)(self);

// Class Constructors



// Class Methods

<* Maps to GLContext::get_allowed_apis *>
extern fn Glapi GLContext.get_allowed_apis(&self, ) @extern("gdk_gl_context_get_allowed_apis");

<* Maps to GLContext::get_api *>
extern fn Glapi GLContext.get_api(&self, ) @extern("gdk_gl_context_get_api");

<* Maps to GLContext::get_debug_enabled *>
extern fn bool GLContext.get_debug_enabled(&self, ) @extern("gdk_gl_context_get_debug_enabled");

<* Maps to GLContext::get_display *>
extern fn Display* GLContext.get_display(&self, ) @extern("gdk_gl_context_get_display");

<* Maps to GLContext::get_forward_compatible *>
extern fn bool GLContext.get_forward_compatible(&self, ) @extern("gdk_gl_context_get_forward_compatible");

<* Maps to GLContext::get_required_version *>
extern fn void GLContext.get_required_version(&self, int* major, int* minor) @extern("gdk_gl_context_get_required_version");

<* Maps to GLContext::get_shared_context *>
extern fn GLContext* GLContext.get_shared_context(&self, ) @extern("gdk_gl_context_get_shared_context");

<* Maps to GLContext::get_surface *>
extern fn Surface* GLContext.get_surface(&self, ) @extern("gdk_gl_context_get_surface");

<* Maps to GLContext::get_use_es *>
extern fn bool GLContext.get_use_es(&self, ) @extern("gdk_gl_context_get_use_es");

<* Maps to GLContext::get_version *>
extern fn void GLContext.get_version(&self, int* major, int* minor) @extern("gdk_gl_context_get_version");

<* Maps to GLContext::is_legacy *>
extern fn bool GLContext.is_legacy(&self, ) @extern("gdk_gl_context_is_legacy");

<* Maps to GLContext::is_shared *>
extern fn bool GLContext.is_shared(&self, GLContext* other) @extern("gdk_gl_context_is_shared");

<* Maps to GLContext::make_current *>
extern fn void GLContext.make_current(&self, ) @extern("gdk_gl_context_make_current");

<* Maps to GLContext::realize *>
extern fn bool GLContext.realize(&self, ) @extern("gdk_gl_context_realize");

<* Maps to GLContext::set_allowed_apis *>
extern fn void GLContext.set_allowed_apis(&self, Glapi apis) @extern("gdk_gl_context_set_allowed_apis");

<* Maps to GLContext::set_debug_enabled *>
extern fn void GLContext.set_debug_enabled(&self, bool enabled) @extern("gdk_gl_context_set_debug_enabled");

<* Maps to GLContext::set_forward_compatible *>
extern fn void GLContext.set_forward_compatible(&self, bool compatible) @extern("gdk_gl_context_set_forward_compatible");

<* Maps to GLContext::set_required_version *>
extern fn void GLContext.set_required_version(&self, int major, int minor) @extern("gdk_gl_context_set_required_version");

<* Maps to GLContext::set_use_es *>
extern fn void GLContext.set_use_es(&self, int use_es) @extern("gdk_gl_context_set_use_es");


// Class Functions

<* Maps to clear_current of GLContext *>
extern fn void gl_context_clear_current() @extern("gdk_gl_context_clear_current");

<* Maps to get_current of GLContext *>
extern fn GLContext* gl_context_get_current() @extern("gdk_gl_context_get_current");



<* Maps to GdkGLTexture *>
distinct GLTexture = void*;

// Class to parent cast.
fn Texture* GLTexture.as_Texture(&self) => (Texture*)(self);

// Class Constructors

<* Maps to new of GLTexture *>
extern fn GLTexture* gl_texture_new(GLContext* context, uint id, int width, int height, glib::DestroyNotify destroy, void* data) @extern("gdk_gl_texture_new");



// Class Methods

<* Maps to GLTexture::release *>
extern fn void GLTexture.release(&self, ) @extern("gdk_gl_texture_release");


// Class Functions



<* Maps to GdkGLTextureBuilder *>
distinct GLTextureBuilder = void*;

// Class to parent cast.
fn gobject::Object* GLTextureBuilder.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of GLTextureBuilder *>
extern fn GLTextureBuilder* gl_texture_builder_new() @extern("gdk_gl_texture_builder_new");



// Class Methods

<* Maps to GLTextureBuilder::build *>
extern fn Texture* GLTextureBuilder.build(&self, glib::DestroyNotify destroy, void* data) @extern("gdk_gl_texture_builder_build");

<* Maps to GLTextureBuilder::get_color_state *>
extern fn ColorState* GLTextureBuilder.get_color_state(&self, ) @extern("gdk_gl_texture_builder_get_color_state");

<* Maps to GLTextureBuilder::get_context *>
extern fn GLContext* GLTextureBuilder.get_context(&self, ) @extern("gdk_gl_texture_builder_get_context");

<* Maps to GLTextureBuilder::get_format *>
extern fn MemoryFormat GLTextureBuilder.get_format(&self, ) @extern("gdk_gl_texture_builder_get_format");

<* Maps to GLTextureBuilder::get_has_mipmap *>
extern fn bool GLTextureBuilder.get_has_mipmap(&self, ) @extern("gdk_gl_texture_builder_get_has_mipmap");

<* Maps to GLTextureBuilder::get_height *>
extern fn int GLTextureBuilder.get_height(&self, ) @extern("gdk_gl_texture_builder_get_height");

<* Maps to GLTextureBuilder::get_id *>
extern fn uint GLTextureBuilder.get_id(&self, ) @extern("gdk_gl_texture_builder_get_id");

<* Maps to GLTextureBuilder::get_sync *>
extern fn void* GLTextureBuilder.get_sync(&self, ) @extern("gdk_gl_texture_builder_get_sync");

<* Maps to GLTextureBuilder::get_update_region *>
extern fn cairo::Region* GLTextureBuilder.get_update_region(&self, ) @extern("gdk_gl_texture_builder_get_update_region");

<* Maps to GLTextureBuilder::get_update_texture *>
extern fn Texture* GLTextureBuilder.get_update_texture(&self, ) @extern("gdk_gl_texture_builder_get_update_texture");

<* Maps to GLTextureBuilder::get_width *>
extern fn int GLTextureBuilder.get_width(&self, ) @extern("gdk_gl_texture_builder_get_width");

<* Maps to GLTextureBuilder::set_color_state *>
extern fn void GLTextureBuilder.set_color_state(&self, ColorState* color_state) @extern("gdk_gl_texture_builder_set_color_state");

<* Maps to GLTextureBuilder::set_context *>
extern fn void GLTextureBuilder.set_context(&self, GLContext* context) @extern("gdk_gl_texture_builder_set_context");

<* Maps to GLTextureBuilder::set_format *>
extern fn void GLTextureBuilder.set_format(&self, MemoryFormat format) @extern("gdk_gl_texture_builder_set_format");

<* Maps to GLTextureBuilder::set_has_mipmap *>
extern fn void GLTextureBuilder.set_has_mipmap(&self, bool has_mipmap) @extern("gdk_gl_texture_builder_set_has_mipmap");

<* Maps to GLTextureBuilder::set_height *>
extern fn void GLTextureBuilder.set_height(&self, int height) @extern("gdk_gl_texture_builder_set_height");

<* Maps to GLTextureBuilder::set_id *>
extern fn void GLTextureBuilder.set_id(&self, uint id) @extern("gdk_gl_texture_builder_set_id");

<* Maps to GLTextureBuilder::set_sync *>
extern fn void GLTextureBuilder.set_sync(&self, void* sync) @extern("gdk_gl_texture_builder_set_sync");

<* Maps to GLTextureBuilder::set_update_region *>
extern fn void GLTextureBuilder.set_update_region(&self, cairo::Region* region) @extern("gdk_gl_texture_builder_set_update_region");

<* Maps to GLTextureBuilder::set_update_texture *>
extern fn void GLTextureBuilder.set_update_texture(&self, Texture* texture) @extern("gdk_gl_texture_builder_set_update_texture");

<* Maps to GLTextureBuilder::set_width *>
extern fn void GLTextureBuilder.set_width(&self, int width) @extern("gdk_gl_texture_builder_set_width");


// Class Functions



<* Maps to GdkGrabBrokenEvent *>
distinct GrabBrokenEvent = void*;

// Class to parent cast.
fn Event* GrabBrokenEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods

<* Maps to GrabBrokenEvent::get_grab_surface *>
extern fn Surface* GrabBrokenEvent.get_grab_surface(&self, ) @extern("gdk_grab_broken_event_get_grab_surface");

<* Maps to GrabBrokenEvent::get_implicit *>
extern fn bool GrabBrokenEvent.get_implicit(&self, ) @extern("gdk_grab_broken_event_get_implicit");


// Class Functions



<* Maps to GdkKeyEvent *>
distinct KeyEvent = void*;

// Class to parent cast.
fn Event* KeyEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods

<* Maps to KeyEvent::get_consumed_modifiers *>
extern fn ModifierType KeyEvent.get_consumed_modifiers(&self, ) @extern("gdk_key_event_get_consumed_modifiers");

<* Maps to KeyEvent::get_keycode *>
extern fn uint KeyEvent.get_keycode(&self, ) @extern("gdk_key_event_get_keycode");

<* Maps to KeyEvent::get_keyval *>
extern fn uint KeyEvent.get_keyval(&self, ) @extern("gdk_key_event_get_keyval");

<* Maps to KeyEvent::get_layout *>
extern fn uint KeyEvent.get_layout(&self, ) @extern("gdk_key_event_get_layout");

<* Maps to KeyEvent::get_level *>
extern fn uint KeyEvent.get_level(&self, ) @extern("gdk_key_event_get_level");

<* Maps to KeyEvent::get_match *>
extern fn bool KeyEvent.get_match(&self, uint* keyval, ModifierType* modifiers) @extern("gdk_key_event_get_match");

<* Maps to KeyEvent::is_modifier *>
extern fn bool KeyEvent.is_modifier(&self, ) @extern("gdk_key_event_is_modifier");

<* Maps to KeyEvent::matches *>
extern fn KeyMatch KeyEvent.matches(&self, uint keyval, ModifierType modifiers) @extern("gdk_key_event_matches");


// Class Functions



<* Maps to GdkMemoryTexture *>
distinct MemoryTexture = void*;

// Class to parent cast.
fn Texture* MemoryTexture.as_Texture(&self) => (Texture*)(self);

// Class Constructors

<* Maps to new of MemoryTexture *>
extern fn MemoryTexture* memory_texture_new(int width, int height, MemoryFormat format, glib::Bytes* bytes, usz stride) @extern("gdk_memory_texture_new");



// Class Methods


// Class Functions



<* Maps to GdkMemoryTextureBuilder *>
distinct MemoryTextureBuilder = void*;

// Class to parent cast.
fn gobject::Object* MemoryTextureBuilder.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of MemoryTextureBuilder *>
extern fn MemoryTextureBuilder* memory_texture_builder_new() @extern("gdk_memory_texture_builder_new");



// Class Methods

<* Maps to MemoryTextureBuilder::build *>
extern fn Texture* MemoryTextureBuilder.build(&self, ) @extern("gdk_memory_texture_builder_build");

<* Maps to MemoryTextureBuilder::get_bytes *>
extern fn glib::Bytes* MemoryTextureBuilder.get_bytes(&self, ) @extern("gdk_memory_texture_builder_get_bytes");

<* Maps to MemoryTextureBuilder::get_color_state *>
extern fn ColorState* MemoryTextureBuilder.get_color_state(&self, ) @extern("gdk_memory_texture_builder_get_color_state");

<* Maps to MemoryTextureBuilder::get_format *>
extern fn MemoryFormat MemoryTextureBuilder.get_format(&self, ) @extern("gdk_memory_texture_builder_get_format");

<* Maps to MemoryTextureBuilder::get_height *>
extern fn int MemoryTextureBuilder.get_height(&self, ) @extern("gdk_memory_texture_builder_get_height");

<* Maps to MemoryTextureBuilder::get_stride *>
extern fn usz MemoryTextureBuilder.get_stride(&self, ) @extern("gdk_memory_texture_builder_get_stride");

<* Maps to MemoryTextureBuilder::get_update_region *>
extern fn cairo::Region* MemoryTextureBuilder.get_update_region(&self, ) @extern("gdk_memory_texture_builder_get_update_region");

<* Maps to MemoryTextureBuilder::get_update_texture *>
extern fn Texture* MemoryTextureBuilder.get_update_texture(&self, ) @extern("gdk_memory_texture_builder_get_update_texture");

<* Maps to MemoryTextureBuilder::get_width *>
extern fn int MemoryTextureBuilder.get_width(&self, ) @extern("gdk_memory_texture_builder_get_width");

<* Maps to MemoryTextureBuilder::set_bytes *>
extern fn void MemoryTextureBuilder.set_bytes(&self, glib::Bytes* bytes) @extern("gdk_memory_texture_builder_set_bytes");

<* Maps to MemoryTextureBuilder::set_color_state *>
extern fn void MemoryTextureBuilder.set_color_state(&self, ColorState* color_state) @extern("gdk_memory_texture_builder_set_color_state");

<* Maps to MemoryTextureBuilder::set_format *>
extern fn void MemoryTextureBuilder.set_format(&self, MemoryFormat format) @extern("gdk_memory_texture_builder_set_format");

<* Maps to MemoryTextureBuilder::set_height *>
extern fn void MemoryTextureBuilder.set_height(&self, int height) @extern("gdk_memory_texture_builder_set_height");

<* Maps to MemoryTextureBuilder::set_stride *>
extern fn void MemoryTextureBuilder.set_stride(&self, usz stride) @extern("gdk_memory_texture_builder_set_stride");

<* Maps to MemoryTextureBuilder::set_update_region *>
extern fn void MemoryTextureBuilder.set_update_region(&self, cairo::Region* region) @extern("gdk_memory_texture_builder_set_update_region");

<* Maps to MemoryTextureBuilder::set_update_texture *>
extern fn void MemoryTextureBuilder.set_update_texture(&self, Texture* texture) @extern("gdk_memory_texture_builder_set_update_texture");

<* Maps to MemoryTextureBuilder::set_width *>
extern fn void MemoryTextureBuilder.set_width(&self, int width) @extern("gdk_memory_texture_builder_set_width");


// Class Functions



<* Maps to GdkMonitor *>
distinct Monitor = void*;

// Class to parent cast.
fn gobject::Object* Monitor.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Monitor::get_connector *>
extern fn ZString Monitor.get_connector(&self, ) @extern("gdk_monitor_get_connector");

<* Maps to Monitor::get_description *>
extern fn ZString Monitor.get_description(&self, ) @extern("gdk_monitor_get_description");

<* Maps to Monitor::get_display *>
extern fn Display* Monitor.get_display(&self, ) @extern("gdk_monitor_get_display");

<* Maps to Monitor::get_geometry *>
extern fn void Monitor.get_geometry(&self, Rectangle* geometry) @extern("gdk_monitor_get_geometry");

<* Maps to Monitor::get_height_mm *>
extern fn int Monitor.get_height_mm(&self, ) @extern("gdk_monitor_get_height_mm");

<* Maps to Monitor::get_manufacturer *>
extern fn ZString Monitor.get_manufacturer(&self, ) @extern("gdk_monitor_get_manufacturer");

<* Maps to Monitor::get_model *>
extern fn ZString Monitor.get_model(&self, ) @extern("gdk_monitor_get_model");

<* Maps to Monitor::get_refresh_rate *>
extern fn int Monitor.get_refresh_rate(&self, ) @extern("gdk_monitor_get_refresh_rate");

<* Maps to Monitor::get_scale *>
extern fn double Monitor.get_scale(&self, ) @extern("gdk_monitor_get_scale");

<* Maps to Monitor::get_scale_factor *>
extern fn int Monitor.get_scale_factor(&self, ) @extern("gdk_monitor_get_scale_factor");

<* Maps to Monitor::get_subpixel_layout *>
extern fn SubpixelLayout Monitor.get_subpixel_layout(&self, ) @extern("gdk_monitor_get_subpixel_layout");

<* Maps to Monitor::get_width_mm *>
extern fn int Monitor.get_width_mm(&self, ) @extern("gdk_monitor_get_width_mm");

<* Maps to Monitor::is_valid *>
extern fn bool Monitor.is_valid(&self, ) @extern("gdk_monitor_is_valid");


// Class Functions



<* Maps to GdkMotionEvent *>
distinct MotionEvent = void*;

// Class to parent cast.
fn Event* MotionEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GdkPadEvent *>
distinct PadEvent = void*;

// Class to parent cast.
fn Event* PadEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods

<* Maps to PadEvent::get_axis_value *>
extern fn void PadEvent.get_axis_value(&self, uint* index, double* value) @extern("gdk_pad_event_get_axis_value");

<* Maps to PadEvent::get_button *>
extern fn uint PadEvent.get_button(&self, ) @extern("gdk_pad_event_get_button");

<* Maps to PadEvent::get_group_mode *>
extern fn void PadEvent.get_group_mode(&self, uint* group, uint* mode) @extern("gdk_pad_event_get_group_mode");


// Class Functions



<* Maps to GdkProximityEvent *>
distinct ProximityEvent = void*;

// Class to parent cast.
fn Event* ProximityEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GdkScrollEvent *>
distinct ScrollEvent = void*;

// Class to parent cast.
fn Event* ScrollEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods

<* Maps to ScrollEvent::get_deltas *>
extern fn void ScrollEvent.get_deltas(&self, double* delta_x, double* delta_y) @extern("gdk_scroll_event_get_deltas");

<* Maps to ScrollEvent::get_direction *>
extern fn ScrollDirection ScrollEvent.get_direction(&self, ) @extern("gdk_scroll_event_get_direction");

<* Maps to ScrollEvent::get_unit *>
extern fn ScrollUnit ScrollEvent.get_unit(&self, ) @extern("gdk_scroll_event_get_unit");

<* Maps to ScrollEvent::is_stop *>
extern fn bool ScrollEvent.is_stop(&self, ) @extern("gdk_scroll_event_is_stop");


// Class Functions



<* Maps to GdkSeat *>
distinct Seat = void*;

// Class to parent cast.
fn gobject::Object* Seat.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Seat::get_capabilities *>
extern fn SeatCapabilities Seat.get_capabilities(&self, ) @extern("gdk_seat_get_capabilities");

<* Maps to Seat::get_devices *>
extern fn glib::List* Seat.get_devices(&self, SeatCapabilities capabilities) @extern("gdk_seat_get_devices");

<* Maps to Seat::get_display *>
extern fn Display* Seat.get_display(&self, ) @extern("gdk_seat_get_display");

<* Maps to Seat::get_keyboard *>
extern fn Device* Seat.get_keyboard(&self, ) @extern("gdk_seat_get_keyboard");

<* Maps to Seat::get_pointer *>
extern fn Device* Seat.get_pointer(&self, ) @extern("gdk_seat_get_pointer");

<* Maps to Seat::get_tools *>
extern fn glib::List* Seat.get_tools(&self, ) @extern("gdk_seat_get_tools");


// Class Functions



<* Maps to GdkSnapshot *>
distinct Snapshot = void*;

// Class to parent cast.
fn gobject::Object* Snapshot.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GdkSurface *>
distinct Surface = void*;

// Class to parent cast.
fn gobject::Object* Surface.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_popup of Surface *>
extern fn Surface* surface_new_popup(Surface* parent, bool autohide) @extern("gdk_surface_new_popup");

<* Maps to new_toplevel of Surface *>
extern fn Surface* surface_new_toplevel(Display* display) @extern("gdk_surface_new_toplevel");



// Class Methods

<* Maps to Surface::beep *>
extern fn void Surface.beep(&self, ) @extern("gdk_surface_beep");

<* Maps to Surface::create_cairo_context *>
extern fn CairoContext* Surface.create_cairo_context(&self, ) @extern("gdk_surface_create_cairo_context");

<* Maps to Surface::create_gl_context *>
extern fn GLContext* Surface.create_gl_context(&self, ) @extern("gdk_surface_create_gl_context");

<* Maps to Surface::create_vulkan_context *>
extern fn VulkanContext* Surface.create_vulkan_context(&self, ) @extern("gdk_surface_create_vulkan_context");

<* Maps to Surface::destroy *>
extern fn void Surface.destroy(&self, ) @extern("gdk_surface_destroy");

<* Maps to Surface::get_cursor *>
extern fn Cursor* Surface.get_cursor(&self, ) @extern("gdk_surface_get_cursor");

<* Maps to Surface::get_device_cursor *>
extern fn Cursor* Surface.get_device_cursor(&self, Device* device) @extern("gdk_surface_get_device_cursor");

<* Maps to Surface::get_device_position *>
extern fn bool Surface.get_device_position(&self, Device* device, double* x, double* y, ModifierType* mask) @extern("gdk_surface_get_device_position");

<* Maps to Surface::get_display *>
extern fn Display* Surface.get_display(&self, ) @extern("gdk_surface_get_display");

<* Maps to Surface::get_frame_clock *>
extern fn FrameClock* Surface.get_frame_clock(&self, ) @extern("gdk_surface_get_frame_clock");

<* Maps to Surface::get_height *>
extern fn int Surface.get_height(&self, ) @extern("gdk_surface_get_height");

<* Maps to Surface::get_mapped *>
extern fn bool Surface.get_mapped(&self, ) @extern("gdk_surface_get_mapped");

<* Maps to Surface::get_scale *>
extern fn double Surface.get_scale(&self, ) @extern("gdk_surface_get_scale");

<* Maps to Surface::get_scale_factor *>
extern fn int Surface.get_scale_factor(&self, ) @extern("gdk_surface_get_scale_factor");

<* Maps to Surface::get_width *>
extern fn int Surface.get_width(&self, ) @extern("gdk_surface_get_width");

<* Maps to Surface::hide *>
extern fn void Surface.hide(&self, ) @extern("gdk_surface_hide");

<* Maps to Surface::is_destroyed *>
extern fn bool Surface.is_destroyed(&self, ) @extern("gdk_surface_is_destroyed");

<* Maps to Surface::queue_render *>
extern fn void Surface.queue_render(&self, ) @extern("gdk_surface_queue_render");

<* Maps to Surface::request_layout *>
extern fn void Surface.request_layout(&self, ) @extern("gdk_surface_request_layout");

<* Maps to Surface::set_cursor *>
extern fn void Surface.set_cursor(&self, Cursor* cursor) @extern("gdk_surface_set_cursor");

<* Maps to Surface::set_device_cursor *>
extern fn void Surface.set_device_cursor(&self, Device* device, Cursor* cursor) @extern("gdk_surface_set_device_cursor");

<* Maps to Surface::set_input_region *>
extern fn void Surface.set_input_region(&self, cairo::Region* region) @extern("gdk_surface_set_input_region");

<* Maps to Surface::set_opaque_region *>
extern fn void Surface.set_opaque_region(&self, cairo::Region* region) @extern("gdk_surface_set_opaque_region");

<* Maps to Surface::translate_coordinates *>
extern fn bool Surface.translate_coordinates(&self, Surface* to, double* x, double* y) @extern("gdk_surface_translate_coordinates");


// Class Functions



<* Maps to GdkTexture *>
distinct Texture = void*;

// Class to parent cast.
fn gobject::Object* Texture.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_for_pixbuf of Texture *>
extern fn Texture* texture_new_for_pixbuf(gdkpixbuf::Pixbuf* pixbuf) @extern("gdk_texture_new_for_pixbuf");

<* Maps to new_from_bytes of Texture *>
extern fn Texture* texture_new_from_bytes(glib::Bytes* bytes) @extern("gdk_texture_new_from_bytes");

<* Maps to new_from_file of Texture *>
extern fn Texture* texture_new_from_file(gio::File* file) @extern("gdk_texture_new_from_file");

<* Maps to new_from_filename of Texture *>
extern fn Texture* texture_new_from_filename(ZString path) @extern("gdk_texture_new_from_filename");

<* Maps to new_from_resource of Texture *>
extern fn Texture* texture_new_from_resource(ZString resource_path) @extern("gdk_texture_new_from_resource");



// Class Methods

<* Maps to Texture::download *>
extern fn void Texture.download(&self, char data, usz stride) @extern("gdk_texture_download");

<* Maps to Texture::get_color_state *>
extern fn ColorState* Texture.get_color_state(&self, ) @extern("gdk_texture_get_color_state");

<* Maps to Texture::get_format *>
extern fn MemoryFormat Texture.get_format(&self, ) @extern("gdk_texture_get_format");

<* Maps to Texture::get_height *>
extern fn int Texture.get_height(&self, ) @extern("gdk_texture_get_height");

<* Maps to Texture::get_width *>
extern fn int Texture.get_width(&self, ) @extern("gdk_texture_get_width");

<* Maps to Texture::save_to_png *>
extern fn bool Texture.save_to_png(&self, ZString filename) @extern("gdk_texture_save_to_png");

<* Maps to Texture::save_to_png_bytes *>
extern fn glib::Bytes* Texture.save_to_png_bytes(&self, ) @extern("gdk_texture_save_to_png_bytes");

<* Maps to Texture::save_to_tiff *>
extern fn bool Texture.save_to_tiff(&self, ZString filename) @extern("gdk_texture_save_to_tiff");

<* Maps to Texture::save_to_tiff_bytes *>
extern fn glib::Bytes* Texture.save_to_tiff_bytes(&self, ) @extern("gdk_texture_save_to_tiff_bytes");


// Class Functions



<* Maps to GdkTouchEvent *>
distinct TouchEvent = void*;

// Class to parent cast.
fn Event* TouchEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods

<* Maps to TouchEvent::get_emulating_pointer *>
extern fn bool TouchEvent.get_emulating_pointer(&self, ) @extern("gdk_touch_event_get_emulating_pointer");


// Class Functions



<* Maps to GdkTouchpadEvent *>
distinct TouchpadEvent = void*;

// Class to parent cast.
fn Event* TouchpadEvent.as_Event(&self) => (Event*)(self);

// Class Constructors



// Class Methods

<* Maps to TouchpadEvent::get_deltas *>
extern fn void TouchpadEvent.get_deltas(&self, double* dx, double* dy) @extern("gdk_touchpad_event_get_deltas");

<* Maps to TouchpadEvent::get_gesture_phase *>
extern fn TouchpadGesturePhase TouchpadEvent.get_gesture_phase(&self, ) @extern("gdk_touchpad_event_get_gesture_phase");

<* Maps to TouchpadEvent::get_n_fingers *>
extern fn uint TouchpadEvent.get_n_fingers(&self, ) @extern("gdk_touchpad_event_get_n_fingers");

<* Maps to TouchpadEvent::get_pinch_angle_delta *>
extern fn double TouchpadEvent.get_pinch_angle_delta(&self, ) @extern("gdk_touchpad_event_get_pinch_angle_delta");

<* Maps to TouchpadEvent::get_pinch_scale *>
extern fn double TouchpadEvent.get_pinch_scale(&self, ) @extern("gdk_touchpad_event_get_pinch_scale");


// Class Functions



<* Maps to GdkVulkanContext *>
distinct VulkanContext = void*;

// Class to parent cast.
fn DrawContext* VulkanContext.as_DrawContext(&self) => (DrawContext*)(self);

// Class Constructors



// Class Methods


// Class Functions





<* Maps to GdkDevicePad *>
interface DevicePad {

  fn int get_feature_group(DevicePadFeature feature, int feature_idx);

  fn int get_group_n_modes(int group_idx);

  fn int get_n_features(DevicePadFeature feature);

  fn int get_n_groups();

}

<* Maps to GdkDragSurface *>
interface DragSurface {

  fn bool present(int width, int height);

}

<* Maps to GdkPaintable *>
interface Paintable {

  fn void compute_concrete_size(double specified_width, double specified_height, double default_width, double default_height, double* concrete_width, double* concrete_height);

  fn Paintable* get_current_image();

  fn PaintableFlags get_flags();

  fn double get_intrinsic_aspect_ratio();

  fn int get_intrinsic_height();

  fn int get_intrinsic_width();

  fn void invalidate_contents();

  fn void invalidate_size();

  fn void snapshot(Snapshot* snapshot, double width, double height);

}

<* Maps to GdkPopup *>
interface Popup {

  fn bool get_autohide();

  fn Surface* get_parent();

  fn int get_position_x();

  fn int get_position_y();

  fn Gravity get_rect_anchor();

  fn Gravity get_surface_anchor();

  fn bool present(int width, int height, PopupLayout* layout);

}

<* Maps to GdkToplevel *>
interface Toplevel {

  fn void begin_move(Device* device, int button, double x, double y, uint timestamp);

  fn void begin_resize(SurfaceEdge edge, Device* device, int button, double x, double y, uint timestamp);

  fn void focus(uint timestamp);

  fn ToplevelState get_state();

  fn void inhibit_system_shortcuts(Event* event);

  fn bool lower();

  fn bool minimize();

  fn void present(ToplevelLayout* layout);

  fn void restore_system_shortcuts();

  fn void set_decorated(bool decorated);

  fn void set_deletable(bool deletable);

  fn void set_icon_list(glib::List* surfaces);

  fn void set_modal(bool modal);

  fn void set_startup_id(ZString startup_id);

  fn void set_title(ZString title);

  fn void set_transient_for(Surface* parent);

  fn bool show_window_menu(Event* event);

  fn bool supports_edge_constraints();

  fn bool titlebar_gesture(TitlebarGesture gesture);

}


<* Maps to cairo_draw_from_gl *>
extern fn void cairo_draw_from_gl(cairo::Context* cr, Surface* surface, int source, int source_type, int buffer_scale, int x, int y, int width, int height) @extern("gdk_cairo_draw_from_gl");

<* Maps to cairo_rectangle *>
extern fn void cairo_rectangle(cairo::Context* cr, Rectangle* rectangle) @extern("gdk_cairo_rectangle");

<* Maps to cairo_region *>
extern fn void cairo_region(cairo::Context* cr, cairo::Region* region) @extern("gdk_cairo_region");

<* Maps to cairo_region_create_from_surface *>
extern fn cairo::Region* cairo_region_create_from_surface(cairo::Surface* surface) @extern("gdk_cairo_region_create_from_surface");

<* Maps to cairo_set_source_pixbuf *>
extern fn void cairo_set_source_pixbuf(cairo::Context* cr, gdkpixbuf::Pixbuf* pixbuf, double pixbuf_x, double pixbuf_y) @extern("gdk_cairo_set_source_pixbuf");

<* Maps to cairo_set_source_rgba *>
extern fn void cairo_set_source_rgba(cairo::Context* cr, Rgba* rgba) @extern("gdk_cairo_set_source_rgba");

<* Maps to color_state_get_rec2100_linear *>
extern fn ColorState* color_state_get_rec2100_linear() @extern("gdk_color_state_get_rec2100_linear");

<* Maps to color_state_get_rec2100_pq *>
extern fn ColorState* color_state_get_rec2100_pq() @extern("gdk_color_state_get_rec2100_pq");

<* Maps to color_state_get_srgb *>
extern fn ColorState* color_state_get_srgb() @extern("gdk_color_state_get_srgb");

<* Maps to color_state_get_srgb_linear *>
extern fn ColorState* color_state_get_srgb_linear() @extern("gdk_color_state_get_srgb_linear");

<* Maps to content_deserialize_async *>
extern fn void content_deserialize_async(gio::InputStream* stream, ZString mime_type, usz type, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_content_deserialize_async");

<* Maps to content_deserialize_finish *>
extern fn bool content_deserialize_finish(gio::AsyncResult* result, gobject::Value* value) @extern("gdk_content_deserialize_finish");

<* Maps to content_formats_parse *>
extern fn ContentFormats* content_formats_parse(ZString string) @extern("gdk_content_formats_parse");

<* Maps to content_register_deserializer *>
extern fn void content_register_deserializer(ZString mime_type, usz type, ContentDeserializeFunc deserialize, void* data, glib::DestroyNotify notify) @extern("gdk_content_register_deserializer");

<* Maps to content_register_serializer *>
extern fn void content_register_serializer(usz type, ZString mime_type, ContentSerializeFunc serialize, void* data, glib::DestroyNotify notify) @extern("gdk_content_register_serializer");

<* Maps to content_serialize_async *>
extern fn void content_serialize_async(gio::OutputStream* stream, ZString mime_type, gobject::Value* value, int io_priority, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_content_serialize_async");

<* Maps to content_serialize_finish *>
extern fn bool content_serialize_finish(gio::AsyncResult* result) @extern("gdk_content_serialize_finish");

<* Maps to dmabuf_error_quark *>
extern fn glib::Quark dmabuf_error_quark() @extern("gdk_dmabuf_error_quark");

<* Maps to drag_action_is_unique *>
extern fn bool drag_action_is_unique(DragAction action) @extern("gdk_drag_action_is_unique");

<* Maps to events_get_angle *>
extern fn bool events_get_angle(Event* event1, Event* event2, double* angle) @extern("gdk_events_get_angle");

<* Maps to events_get_center *>
extern fn bool events_get_center(Event* event1, Event* event2, double* x, double* y) @extern("gdk_events_get_center");

<* Maps to events_get_distance *>
extern fn bool events_get_distance(Event* event1, Event* event2, double* distance) @extern("gdk_events_get_distance");

<* Maps to gl_error_quark *>
extern fn glib::Quark gl_error_quark() @extern("gdk_gl_error_quark");

<* Maps to intern_mime_type *>
extern fn ZString intern_mime_type(ZString string) @extern("gdk_intern_mime_type");

<* Maps to keyval_convert_case *>
extern fn void keyval_convert_case(uint symbol, uint* lower, uint* upper) @extern("gdk_keyval_convert_case");

<* Maps to keyval_from_name *>
extern fn uint keyval_from_name(ZString keyval_name) @extern("gdk_keyval_from_name");

<* Maps to keyval_is_lower *>
extern fn bool keyval_is_lower(uint keyval) @extern("gdk_keyval_is_lower");

<* Maps to keyval_is_upper *>
extern fn bool keyval_is_upper(uint keyval) @extern("gdk_keyval_is_upper");

<* Maps to keyval_name *>
extern fn ZString keyval_name(uint keyval) @extern("gdk_keyval_name");

<* Maps to keyval_to_lower *>
extern fn uint keyval_to_lower(uint keyval) @extern("gdk_keyval_to_lower");

<* Maps to keyval_to_unicode *>
extern fn uint keyval_to_unicode(uint keyval) @extern("gdk_keyval_to_unicode");

<* Maps to keyval_to_upper *>
extern fn uint keyval_to_upper(uint keyval) @extern("gdk_keyval_to_upper");

<* Maps to paintable_new_empty *>
extern fn Paintable* paintable_new_empty(int intrinsic_width, int intrinsic_height) @extern("gdk_paintable_new_empty");

<* Maps to pango_layout_get_clip_region *>
extern fn cairo::Region* pango_layout_get_clip_region(pango::Layout* layout, int x_origin, int y_origin, int* index_ranges, int n_ranges) @extern("gdk_pango_layout_get_clip_region");

<* Maps to pango_layout_line_get_clip_region *>
extern fn cairo::Region* pango_layout_line_get_clip_region(pango::LayoutLine* line, int x_origin, int y_origin, int index_ranges, int n_ranges) @extern("gdk_pango_layout_line_get_clip_region");

<* Maps to pixbuf_get_from_surface *>
extern fn gdkpixbuf::Pixbuf* pixbuf_get_from_surface(cairo::Surface* surface, int src_x, int src_y, int width, int height) @extern("gdk_pixbuf_get_from_surface");

<* Maps to pixbuf_get_from_texture *>
extern fn gdkpixbuf::Pixbuf* pixbuf_get_from_texture(Texture* texture) @extern("gdk_pixbuf_get_from_texture");

<* Maps to set_allowed_backends *>
extern fn void set_allowed_backends(ZString backends) @extern("gdk_set_allowed_backends");

<* Maps to texture_error_quark *>
extern fn glib::Quark texture_error_quark() @extern("gdk_texture_error_quark");

<* Maps to unicode_to_keyval *>
extern fn uint unicode_to_keyval(uint wc) @extern("gdk_unicode_to_keyval");

<* Maps to vulkan_error_quark *>
extern fn glib::Quark vulkan_error_quark() @extern("gdk_vulkan_error_quark");

///END MODULE gdk
