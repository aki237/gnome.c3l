
///START MODULE gdkpixbuf
module gdkpixbuf;

import gobject;

import glib;

import gmodule;

import gio;


distinct PixbufFormatFlags = int;
const PixbufFormatFlags PIXBUF_FORMAT_FLAGS_SCALABLE = 2;
const PixbufFormatFlags PIXBUF_FORMAT_FLAGS_THREADSAFE = 4;
const PixbufFormatFlags PIXBUF_FORMAT_FLAGS_WRITABLE = 1;

distinct Colorspace = int;
const Colorspace COLORSPACE_RGB = 0;

distinct InterpType = int;
const InterpType INTERP_TYPE_BILINEAR = 2;
const InterpType INTERP_TYPE_HYPER = 3;
const InterpType INTERP_TYPE_NEAREST = 0;
const InterpType INTERP_TYPE_TILES = 1;

distinct PixbufAlphaMode = int;
const PixbufAlphaMode PIXBUF_ALPHA_MODE_BILEVEL = 0;
const PixbufAlphaMode PIXBUF_ALPHA_MODE_FULL = 1;

distinct PixbufError = int;
const PixbufError PIXBUF_ERROR_BAD_OPTION = 2;
const PixbufError PIXBUF_ERROR_CORRUPT_IMAGE = 0;
const PixbufError PIXBUF_ERROR_FAILED = 5;
const PixbufError PIXBUF_ERROR_INCOMPLETE_ANIMATION = 6;
const PixbufError PIXBUF_ERROR_INSUFFICIENT_MEMORY = 1;
const PixbufError PIXBUF_ERROR_UNKNOWN_TYPE = 3;
const PixbufError PIXBUF_ERROR_UNSUPPORTED_OPERATION = 4;

distinct PixbufRotation = int;
const PixbufRotation PIXBUF_ROTATION_CLOCKWISE = 270;
const PixbufRotation PIXBUF_ROTATION_COUNTERCLOCKWISE = 90;
const PixbufRotation PIXBUF_ROTATION_NONE = 0;
const PixbufRotation PIXBUF_ROTATION_UPSIDEDOWN = 180;



distinct PixbufAnimationClass = void*;

distinct PixbufAnimationIterClass = void*;

distinct PixbufFormat = void*;

distinct PixbufLoaderClass = void*;

distinct PixbufModule = void*;

distinct PixbufModulePattern = void*;

distinct PixbufSimpleAnimClass = void*;


def PixbufDestroyNotify = fn void(char pixels, void* data);

def PixbufModuleBeginLoadFunc = fn void*(PixbufModuleSizeFunc size_func, PixbufModulePreparedFunc prepared_func, PixbufModuleUpdatedFunc updated_func, void* user_data);

def PixbufModuleFillInfoFunc = fn void(PixbufFormat* info);

def PixbufModuleFillVtableFunc = fn void(PixbufModule* _module);

def PixbufModuleIncrementLoadFunc = fn bool(void* context, char buf, uint size);

def PixbufModuleLoadAnimationFunc = fn PixbufAnimation*(void* f);

def PixbufModuleLoadFunc = fn Pixbuf*(void* f);

def PixbufModuleLoadXpmDataFunc = fn Pixbuf*(ZString* data);

def PixbufModulePreparedFunc = fn void(Pixbuf* pixbuf, PixbufAnimation* anim, void* user_data);

def PixbufModuleSaveCallbackFunc = fn bool(PixbufSaveFunc save_func, void* user_data, Pixbuf* pixbuf, ZString* option_keys, ZString* option_values);

def PixbufModuleSaveFunc = fn bool(void* f, Pixbuf* pixbuf, ZString* param_keys, ZString* param_values);

def PixbufModuleSaveOptionSupportedFunc = fn bool(ZString option_key);

def PixbufModuleSizeFunc = fn void(int* width, int* height, void* user_data);

def PixbufModuleStopLoadFunc = fn bool(void* context);

def PixbufModuleUpdatedFunc = fn void(Pixbuf* pixbuf, int x, int y, int width, int height, void* user_data);

def PixbufSaveFunc = fn bool(char buf, usz count, glib::Error* error, void* data);


<* Maps to GdkPixbuf *>
distinct Pixbuf = void*;

// Class to parent cast.
fn gobject::Object* Pixbuf.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Pixbuf *>
extern fn Pixbuf* pixbuf_new(Colorspace colorspace, bool has_alpha, int bits_per_sample, int width, int height) @extern("gdk_pixbuf_new");

<* Maps to new_from_bytes of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_bytes(glib::Bytes* data, Colorspace colorspace, bool has_alpha, int bits_per_sample, int width, int height, int rowstride) @extern("gdk_pixbuf_new_from_bytes");

<* Maps to new_from_data of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_data(char data, Colorspace colorspace, bool has_alpha, int bits_per_sample, int width, int height, int rowstride, PixbufDestroyNotify destroy_fn, void* destroy_fn_data) @extern("gdk_pixbuf_new_from_data");

<* Maps to new_from_file of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_file(ZString filename) @extern("gdk_pixbuf_new_from_file");

<* Maps to new_from_file_at_scale of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_file_at_scale(ZString filename, int width, int height, bool preserve_aspect_ratio) @extern("gdk_pixbuf_new_from_file_at_scale");

<* Maps to new_from_file_at_size of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_file_at_size(ZString filename, int width, int height) @extern("gdk_pixbuf_new_from_file_at_size");

<* Maps to new_from_inline of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_inline(int data_length, char data, bool copy_pixels) @extern("gdk_pixbuf_new_from_inline");

<* Maps to new_from_resource of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_resource(ZString resource_path) @extern("gdk_pixbuf_new_from_resource");

<* Maps to new_from_resource_at_scale of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_resource_at_scale(ZString resource_path, int width, int height, bool preserve_aspect_ratio) @extern("gdk_pixbuf_new_from_resource_at_scale");

<* Maps to new_from_stream of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_stream(gio::InputStream* stream, gio::Cancellable* cancellable) @extern("gdk_pixbuf_new_from_stream");

<* Maps to new_from_stream_at_scale of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_stream_at_scale(gio::InputStream* stream, int width, int height, bool preserve_aspect_ratio, gio::Cancellable* cancellable) @extern("gdk_pixbuf_new_from_stream_at_scale");

<* Maps to new_from_stream_finish of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_stream_finish(gio::AsyncResult* async_result) @extern("gdk_pixbuf_new_from_stream_finish");

<* Maps to new_from_xpm_data of Pixbuf *>
extern fn Pixbuf* pixbuf_new_from_xpm_data(ZString* data) @extern("gdk_pixbuf_new_from_xpm_data");



// Class Methods

<* Maps to Pixbuf::add_alpha *>
extern fn Pixbuf* Pixbuf.add_alpha(&self, bool substitute_color, char r, char g, char b) @extern("gdk_pixbuf_add_alpha");

<* Maps to Pixbuf::apply_embedded_orientation *>
extern fn Pixbuf* Pixbuf.apply_embedded_orientation(&self, ) @extern("gdk_pixbuf_apply_embedded_orientation");

<* Maps to Pixbuf::composite *>
extern fn void Pixbuf.composite(&self, Pixbuf* dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type, int overall_alpha) @extern("gdk_pixbuf_composite");

<* Maps to Pixbuf::composite_color *>
extern fn void Pixbuf.composite_color(&self, Pixbuf* dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type, int overall_alpha, int check_x, int check_y, int check_size, uint color1, uint color2) @extern("gdk_pixbuf_composite_color");

<* Maps to Pixbuf::composite_color_simple *>
extern fn Pixbuf* Pixbuf.composite_color_simple(&self, int dest_width, int dest_height, InterpType interp_type, int overall_alpha, int check_size, uint color1, uint color2) @extern("gdk_pixbuf_composite_color_simple");

<* Maps to Pixbuf::copy *>
extern fn Pixbuf* Pixbuf.copy(&self, ) @extern("gdk_pixbuf_copy");

<* Maps to Pixbuf::copy_area *>
extern fn void Pixbuf.copy_area(&self, int src_x, int src_y, int width, int height, Pixbuf* dest_pixbuf, int dest_x, int dest_y) @extern("gdk_pixbuf_copy_area");

<* Maps to Pixbuf::copy_options *>
extern fn bool Pixbuf.copy_options(&self, Pixbuf* dest_pixbuf) @extern("gdk_pixbuf_copy_options");

<* Maps to Pixbuf::fill *>
extern fn void Pixbuf.fill(&self, uint pixel) @extern("gdk_pixbuf_fill");

<* Maps to Pixbuf::flip *>
extern fn Pixbuf* Pixbuf.flip(&self, bool horizontal) @extern("gdk_pixbuf_flip");

<* Maps to Pixbuf::get_bits_per_sample *>
extern fn int Pixbuf.get_bits_per_sample(&self, ) @extern("gdk_pixbuf_get_bits_per_sample");

<* Maps to Pixbuf::get_byte_length *>
extern fn usz Pixbuf.get_byte_length(&self, ) @extern("gdk_pixbuf_get_byte_length");

<* Maps to Pixbuf::get_colorspace *>
extern fn Colorspace Pixbuf.get_colorspace(&self, ) @extern("gdk_pixbuf_get_colorspace");

<* Maps to Pixbuf::get_has_alpha *>
extern fn bool Pixbuf.get_has_alpha(&self, ) @extern("gdk_pixbuf_get_has_alpha");

<* Maps to Pixbuf::get_height *>
extern fn int Pixbuf.get_height(&self, ) @extern("gdk_pixbuf_get_height");

<* Maps to Pixbuf::get_n_channels *>
extern fn int Pixbuf.get_n_channels(&self, ) @extern("gdk_pixbuf_get_n_channels");

<* Maps to Pixbuf::get_option *>
extern fn ZString Pixbuf.get_option(&self, ZString key) @extern("gdk_pixbuf_get_option");

<* Maps to Pixbuf::get_options *>
extern fn glib::HashTable* Pixbuf.get_options(&self, ) @extern("gdk_pixbuf_get_options");

<* Maps to Pixbuf::get_pixels *>
extern fn char Pixbuf.get_pixels(&self, ) @extern("gdk_pixbuf_get_pixels");

<* Maps to Pixbuf::get_pixels_with_length *>
extern fn char Pixbuf.get_pixels_with_length(&self, uint* length) @extern("gdk_pixbuf_get_pixels_with_length");

<* Maps to Pixbuf::get_rowstride *>
extern fn int Pixbuf.get_rowstride(&self, ) @extern("gdk_pixbuf_get_rowstride");

<* Maps to Pixbuf::get_width *>
extern fn int Pixbuf.get_width(&self, ) @extern("gdk_pixbuf_get_width");

<* Maps to Pixbuf::new_subpixbuf *>
extern fn Pixbuf* Pixbuf.new_subpixbuf(&self, int src_x, int src_y, int width, int height) @extern("gdk_pixbuf_new_subpixbuf");

<* Maps to Pixbuf::read_pixel_bytes *>
extern fn glib::Bytes* Pixbuf.read_pixel_bytes(&self, ) @extern("gdk_pixbuf_read_pixel_bytes");

<* Maps to Pixbuf::read_pixels *>
extern fn char* Pixbuf.read_pixels(&self, ) @extern("gdk_pixbuf_read_pixels");

<* Maps to Pixbuf::ref *>
extern fn Pixbuf* Pixbuf.ref(&self, ) @extern("gdk_pixbuf_ref");

<* Maps to Pixbuf::remove_option *>
extern fn bool Pixbuf.remove_option(&self, ZString key) @extern("gdk_pixbuf_remove_option");

<* Maps to Pixbuf::rotate_simple *>
extern fn Pixbuf* Pixbuf.rotate_simple(&self, PixbufRotation angle) @extern("gdk_pixbuf_rotate_simple");

<* Maps to Pixbuf::saturate_and_pixelate *>
extern fn void Pixbuf.saturate_and_pixelate(&self, Pixbuf* dest, float saturation, bool pixelate) @extern("gdk_pixbuf_saturate_and_pixelate");

<* Maps to Pixbuf::save *>
extern fn bool Pixbuf.save(&self, ZString filename, ZString type, glib::Error* error, any rest) @extern("gdk_pixbuf_save");

<* Maps to Pixbuf::save_to_buffer *>
extern fn bool Pixbuf.save_to_buffer(&self, char buffer, usz* buffer_size, ZString type, glib::Error* error, any rest) @extern("gdk_pixbuf_save_to_buffer");

<* Maps to Pixbuf::save_to_bufferv *>
extern fn bool Pixbuf.save_to_bufferv(&self, char buffer, usz* buffer_size, ZString type, ZString option_keys, ZString option_values) @extern("gdk_pixbuf_save_to_bufferv");

<* Maps to Pixbuf::save_to_callback *>
extern fn bool Pixbuf.save_to_callback(&self, PixbufSaveFunc save_func, void* user_data, ZString type, glib::Error* error, any rest) @extern("gdk_pixbuf_save_to_callback");

<* Maps to Pixbuf::save_to_callbackv *>
extern fn bool Pixbuf.save_to_callbackv(&self, PixbufSaveFunc save_func, void* user_data, ZString type, ZString option_keys, ZString option_values) @extern("gdk_pixbuf_save_to_callbackv");

<* Maps to Pixbuf::save_to_stream *>
extern fn bool Pixbuf.save_to_stream(&self, gio::OutputStream* stream, ZString type, gio::Cancellable* cancellable, glib::Error* error, any rest) @extern("gdk_pixbuf_save_to_stream");

<* Maps to Pixbuf::save_to_stream_async *>
extern fn void Pixbuf.save_to_stream_async(&self, gio::OutputStream* stream, ZString type, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data, any rest) @extern("gdk_pixbuf_save_to_stream_async");

<* Maps to Pixbuf::save_to_streamv *>
extern fn bool Pixbuf.save_to_streamv(&self, gio::OutputStream* stream, ZString type, ZString option_keys, ZString option_values, gio::Cancellable* cancellable) @extern("gdk_pixbuf_save_to_streamv");

<* Maps to Pixbuf::save_to_streamv_async *>
extern fn void Pixbuf.save_to_streamv_async(&self, gio::OutputStream* stream, ZString type, ZString option_keys, ZString option_values, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_pixbuf_save_to_streamv_async");

<* Maps to Pixbuf::savev *>
extern fn bool Pixbuf.savev(&self, ZString filename, ZString type, ZString option_keys, ZString option_values) @extern("gdk_pixbuf_savev");

<* Maps to Pixbuf::scale *>
extern fn void Pixbuf.scale(&self, Pixbuf* dest, int dest_x, int dest_y, int dest_width, int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type) @extern("gdk_pixbuf_scale");

<* Maps to Pixbuf::scale_simple *>
extern fn Pixbuf* Pixbuf.scale_simple(&self, int dest_width, int dest_height, InterpType interp_type) @extern("gdk_pixbuf_scale_simple");

<* Maps to Pixbuf::set_option *>
extern fn bool Pixbuf.set_option(&self, ZString key, ZString value) @extern("gdk_pixbuf_set_option");

<* Maps to Pixbuf::unref *>
extern fn void Pixbuf.unref(&self, ) @extern("gdk_pixbuf_unref");


// Class Functions

<* Maps to calculate_rowstride of Pixbuf *>
extern fn int pixbuf_calculate_rowstride(Colorspace colorspace, bool has_alpha, int bits_per_sample, int width, int height) @extern("gdk_pixbuf_calculate_rowstride");

<* Maps to get_file_info of Pixbuf *>
extern fn PixbufFormat* pixbuf_get_file_info(ZString filename, int* width, int* height) @extern("gdk_pixbuf_get_file_info");

<* Maps to get_file_info_async of Pixbuf *>
extern fn void pixbuf_get_file_info_async(ZString filename, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_pixbuf_get_file_info_async");

<* Maps to get_file_info_finish of Pixbuf *>
extern fn PixbufFormat* pixbuf_get_file_info_finish(gio::AsyncResult* async_result, int* width, int* height) @extern("gdk_pixbuf_get_file_info_finish");

<* Maps to get_formats of Pixbuf *>
extern fn glib::SList* pixbuf_get_formats() @extern("gdk_pixbuf_get_formats");

<* Maps to init_modules of Pixbuf *>
extern fn bool pixbuf_init_modules(ZString path) @extern("gdk_pixbuf_init_modules");

<* Maps to new_from_stream_async of Pixbuf *>
extern fn void pixbuf_new_from_stream_async(gio::InputStream* stream, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_pixbuf_new_from_stream_async");

<* Maps to new_from_stream_at_scale_async of Pixbuf *>
extern fn void pixbuf_new_from_stream_at_scale_async(gio::InputStream* stream, int width, int height, bool preserve_aspect_ratio, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_pixbuf_new_from_stream_at_scale_async");

<* Maps to save_to_stream_finish of Pixbuf *>
extern fn bool pixbuf_save_to_stream_finish(gio::AsyncResult* async_result) @extern("gdk_pixbuf_save_to_stream_finish");



<* Maps to GdkPixbufAnimation *>
distinct PixbufAnimation = void*;

// Class to parent cast.
fn gobject::Object* PixbufAnimation.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_from_file of PixbufAnimation *>
extern fn PixbufAnimation* pixbuf_animation_new_from_file(ZString filename) @extern("gdk_pixbuf_animation_new_from_file");

<* Maps to new_from_resource of PixbufAnimation *>
extern fn PixbufAnimation* pixbuf_animation_new_from_resource(ZString resource_path) @extern("gdk_pixbuf_animation_new_from_resource");

<* Maps to new_from_stream of PixbufAnimation *>
extern fn PixbufAnimation* pixbuf_animation_new_from_stream(gio::InputStream* stream, gio::Cancellable* cancellable) @extern("gdk_pixbuf_animation_new_from_stream");

<* Maps to new_from_stream_finish of PixbufAnimation *>
extern fn PixbufAnimation* pixbuf_animation_new_from_stream_finish(gio::AsyncResult* async_result) @extern("gdk_pixbuf_animation_new_from_stream_finish");



// Class Methods

<* Maps to PixbufAnimation::get_height *>
extern fn int PixbufAnimation.get_height(&self, ) @extern("gdk_pixbuf_animation_get_height");

<* Maps to PixbufAnimation::get_iter *>
extern fn PixbufAnimationIter* PixbufAnimation.get_iter(&self, glib::TimeVal* start_time) @extern("gdk_pixbuf_animation_get_iter");

<* Maps to PixbufAnimation::get_static_image *>
extern fn Pixbuf* PixbufAnimation.get_static_image(&self, ) @extern("gdk_pixbuf_animation_get_static_image");

<* Maps to PixbufAnimation::get_width *>
extern fn int PixbufAnimation.get_width(&self, ) @extern("gdk_pixbuf_animation_get_width");

<* Maps to PixbufAnimation::is_static_image *>
extern fn bool PixbufAnimation.is_static_image(&self, ) @extern("gdk_pixbuf_animation_is_static_image");

<* Maps to PixbufAnimation::ref *>
extern fn PixbufAnimation* PixbufAnimation.ref(&self, ) @extern("gdk_pixbuf_animation_ref");

<* Maps to PixbufAnimation::unref *>
extern fn void PixbufAnimation.unref(&self, ) @extern("gdk_pixbuf_animation_unref");


// Class Functions

<* Maps to new_from_stream_async of PixbufAnimation *>
extern fn void pixbuf_animation_new_from_stream_async(gio::InputStream* stream, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gdk_pixbuf_animation_new_from_stream_async");



<* Maps to GdkPixbufAnimationIter *>
distinct PixbufAnimationIter = void*;

// Class to parent cast.
fn gobject::Object* PixbufAnimationIter.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to PixbufAnimationIter::advance *>
extern fn bool PixbufAnimationIter.advance(&self, glib::TimeVal* current_time) @extern("gdk_pixbuf_animation_iter_advance");

<* Maps to PixbufAnimationIter::get_delay_time *>
extern fn int PixbufAnimationIter.get_delay_time(&self, ) @extern("gdk_pixbuf_animation_iter_get_delay_time");

<* Maps to PixbufAnimationIter::get_pixbuf *>
extern fn Pixbuf* PixbufAnimationIter.get_pixbuf(&self, ) @extern("gdk_pixbuf_animation_iter_get_pixbuf");

<* Maps to PixbufAnimationIter::on_currently_loading_frame *>
extern fn bool PixbufAnimationIter.on_currently_loading_frame(&self, ) @extern("gdk_pixbuf_animation_iter_on_currently_loading_frame");


// Class Functions



<* Maps to GdkPixbufLoader *>
distinct PixbufLoader = void*;

// Class to parent cast.
fn gobject::Object* PixbufLoader.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of PixbufLoader *>
extern fn PixbufLoader* pixbuf_loader_new() @extern("gdk_pixbuf_loader_new");

<* Maps to new_with_mime_type of PixbufLoader *>
extern fn PixbufLoader* pixbuf_loader_new_with_mime_type(ZString mime_type) @extern("gdk_pixbuf_loader_new_with_mime_type");

<* Maps to new_with_type of PixbufLoader *>
extern fn PixbufLoader* pixbuf_loader_new_with_type(ZString image_type) @extern("gdk_pixbuf_loader_new_with_type");



// Class Methods

<* Maps to PixbufLoader::close *>
extern fn bool PixbufLoader.close(&self, ) @extern("gdk_pixbuf_loader_close");

<* Maps to PixbufLoader::get_animation *>
extern fn PixbufAnimation* PixbufLoader.get_animation(&self, ) @extern("gdk_pixbuf_loader_get_animation");

<* Maps to PixbufLoader::get_format *>
extern fn PixbufFormat* PixbufLoader.get_format(&self, ) @extern("gdk_pixbuf_loader_get_format");

<* Maps to PixbufLoader::get_pixbuf *>
extern fn Pixbuf* PixbufLoader.get_pixbuf(&self, ) @extern("gdk_pixbuf_loader_get_pixbuf");

<* Maps to PixbufLoader::set_size *>
extern fn void PixbufLoader.set_size(&self, int width, int height) @extern("gdk_pixbuf_loader_set_size");

<* Maps to PixbufLoader::write *>
extern fn bool PixbufLoader.write(&self, char buf, usz count) @extern("gdk_pixbuf_loader_write");

<* Maps to PixbufLoader::write_bytes *>
extern fn bool PixbufLoader.write_bytes(&self, glib::Bytes* buffer) @extern("gdk_pixbuf_loader_write_bytes");


// Class Functions



<* Maps to  *>
distinct PixbufNonAnim = void*;

// Class to parent cast.
fn PixbufAnimation* PixbufNonAnim.as_PixbufAnimation(&self) => (PixbufAnimation*)(self);

// Class Constructors

<* Maps to new of PixbufNonAnim *>
extern fn PixbufAnimation* pixbuf_non_anim_new(Pixbuf* pixbuf) @extern("gdk_pixbuf_non_anim_new");



// Class Methods


// Class Functions



<* Maps to GdkPixbufSimpleAnim *>
distinct PixbufSimpleAnim = void*;

// Class to parent cast.
fn PixbufAnimation* PixbufSimpleAnim.as_PixbufAnimation(&self) => (PixbufAnimation*)(self);

// Class Constructors

<* Maps to new of PixbufSimpleAnim *>
extern fn PixbufSimpleAnim* pixbuf_simple_anim_new(int width, int height, float rate) @extern("gdk_pixbuf_simple_anim_new");



// Class Methods

<* Maps to PixbufSimpleAnim::add_frame *>
extern fn void PixbufSimpleAnim.add_frame(&self, Pixbuf* pixbuf) @extern("gdk_pixbuf_simple_anim_add_frame");

<* Maps to PixbufSimpleAnim::get_loop *>
extern fn bool PixbufSimpleAnim.get_loop(&self, ) @extern("gdk_pixbuf_simple_anim_get_loop");

<* Maps to PixbufSimpleAnim::set_loop *>
extern fn void PixbufSimpleAnim.set_loop(&self, bool loop) @extern("gdk_pixbuf_simple_anim_set_loop");


// Class Functions



<* Maps to  *>
distinct PixbufSimpleAnimIter = void*;

// Class to parent cast.
fn PixbufAnimationIter* PixbufSimpleAnimIter.as_PixbufAnimationIter(&self) => (PixbufAnimationIter*)(self);

// Class Constructors



// Class Methods


// Class Functions






<* Maps to pixbuf_error_quark *>
extern fn glib::Quark pixbuf_error_quark() @extern("gdk_pixbuf_error_quark");

///END MODULE gdkpixbuf
