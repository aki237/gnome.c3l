module pango;

import gobject;
import glib;

typedef Font = void*;

enum Direction {
  LTR,
  RTL,
  TTB_LTR,
  TTB_RTL,
  WEAK_LTR,
  WEAK_RTL,
  NEUTRAL
}

alias Glyph = uint;
alias GlyphUnit = int;

struct GlyphGeometry {
  GlyphUnit width;
  GlyphUnit x_offset;
  GlyphUnit y_offset;
}

struct GlyphVisAttr {
  bool is_cluster_start;
  bool is_color;
}

struct GlyphInfo {
  Glyph glyph;
  GlyphGeometry geometry;
  GlyphVisAttr attr;
}

typedef AttrList = void*;

typedef Context = void*;

fn gobject::Object* Context.as_gobject_Object(&self) => (gobject::Object*)(self);

enum EllipsizeMode: uint {
  NONE,
  START,
  MIDDLE,
  END
}

typedef FontDescription = void*;

typedef FontFace = void*;

fn gobject::Object* FontFace.as_gobject_Object(&self) => (gobject::Object*)(self);

typedef FontFamily = void*;

extern fn FontFace* FontFamily.get_face(&self, ZString name) @extern("pango_font_family_get_face");
extern fn ZString FontFamily.get_name(&self) @extern("pango_font_family_get_name");
extern fn bool FontFamily.is_monospace(&self) @extern("pango_font_family_is_monospace");
extern fn bool FontFamily.is_variable(&self) @extern("pango_font_family_is_variable");
fn gobject::Object* FontFamily.as_gobject_Object(&self) => (gobject::Object*)(self);

typedef FontMap = void*;

typedef Language = void*;

typedef Layout = void*;
fn gobject::Object* Layout.as_gobject_Object(&self) => (gobject::Object*)(self);

typedef TabArray = void*;

enum WrapMode {
  WORD,
  CHAR,
  WORD_CHAR,
  NONE
}

struct GlyphString {
  int num_glyphs;
  GlyphInfo[] glyphs;
  int* log_clusters;
}

struct LayoutLine {
  Layout* layout;
  int start_index;
  int length;
  glib::SList* runs;
  bool is_paragraph_start;
  bool resolved_dir_1;
  bool resolved_dir_2;
  bool resolved_dir_3;
}
