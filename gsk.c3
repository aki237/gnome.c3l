
///START MODULE gsk
module gsk;

import glib;

import gobject;

import cairo;

import pango;

import gdk;

import graphene;


typedef PathForeachFlags = int;
const PathForeachFlags PATH_FOREACH_FLAGS_CONIC = 4;
const PathForeachFlags PATH_FOREACH_FLAGS_CUBIC = 2;
const PathForeachFlags PATH_FOREACH_FLAGS_ONLY_LINES = 0;
const PathForeachFlags PATH_FOREACH_FLAGS_QUAD = 1;

typedef BlendMode = int;
const BlendMode BLEND_MODE_COLOR = 12;
const BlendMode BLEND_MODE_COLOR_BURN = 7;
const BlendMode BLEND_MODE_COLOR_DODGE = 6;
const BlendMode BLEND_MODE_DARKEN = 4;
const BlendMode BLEND_MODE_DEFAULT = 0;
const BlendMode BLEND_MODE_DIFFERENCE = 10;
const BlendMode BLEND_MODE_EXCLUSION = 11;
const BlendMode BLEND_MODE_HARD_LIGHT = 8;
const BlendMode BLEND_MODE_HUE = 13;
const BlendMode BLEND_MODE_LIGHTEN = 5;
const BlendMode BLEND_MODE_LUMINOSITY = 15;
const BlendMode BLEND_MODE_MULTIPLY = 1;
const BlendMode BLEND_MODE_OVERLAY = 3;
const BlendMode BLEND_MODE_SATURATION = 14;
const BlendMode BLEND_MODE_SCREEN = 2;
const BlendMode BLEND_MODE_SOFT_LIGHT = 9;

typedef Corner = int;
const Corner CORNER_BOTTOM_LEFT = 3;
const Corner CORNER_BOTTOM_RIGHT = 2;
const Corner CORNER_TOP_LEFT = 0;
const Corner CORNER_TOP_RIGHT = 1;

typedef FillRule = int;
const FillRule FILL_RULE_EVEN_ODD = 1;
const FillRule FILL_RULE_WINDING = 0;

typedef GLUniformType = int;
const GLUniformType GL_UNIFORM_TYPE_BOOL = 4;
const GLUniformType GL_UNIFORM_TYPE_FLOAT = 1;
const GLUniformType GL_UNIFORM_TYPE_INT = 2;
const GLUniformType GL_UNIFORM_TYPE_NONE = 0;
const GLUniformType GL_UNIFORM_TYPE_UINT = 3;
const GLUniformType GL_UNIFORM_TYPE_VEC2 = 5;
const GLUniformType GL_UNIFORM_TYPE_VEC3 = 6;
const GLUniformType GL_UNIFORM_TYPE_VEC4 = 7;

typedef LineCap = int;
const LineCap LINE_CAP_BUTT = 0;
const LineCap LINE_CAP_ROUND = 1;
const LineCap LINE_CAP_SQUARE = 2;

typedef LineJoin = int;
const LineJoin LINE_JOIN_BEVEL = 2;
const LineJoin LINE_JOIN_MITER = 0;
const LineJoin LINE_JOIN_ROUND = 1;

typedef MaskMode = int;
const MaskMode MASK_MODE_ALPHA = 0;
const MaskMode MASK_MODE_INVERTED_ALPHA = 1;
const MaskMode MASK_MODE_INVERTED_LUMINANCE = 3;
const MaskMode MASK_MODE_LUMINANCE = 2;

typedef PathDirection = int;
const PathDirection PATH_DIRECTION_FROM_END = 3;
const PathDirection PATH_DIRECTION_FROM_START = 0;
const PathDirection PATH_DIRECTION_TO_END = 2;
const PathDirection PATH_DIRECTION_TO_START = 1;

typedef PathOperation = int;
const PathOperation PATH_OPERATION_CLOSE = 1;
const PathOperation PATH_OPERATION_CONIC = 5;
const PathOperation PATH_OPERATION_CUBIC = 4;
const PathOperation PATH_OPERATION_LINE = 2;
const PathOperation PATH_OPERATION_MOVE = 0;
const PathOperation PATH_OPERATION_QUAD = 3;

typedef RenderNodeType = int;
const RenderNodeType RENDER_NODE_TYPE_BLEND_NODE = 20;
const RenderNodeType RENDER_NODE_TYPE_BLUR_NODE = 23;
const RenderNodeType RENDER_NODE_TYPE_BORDER_NODE = 9;
const RenderNodeType RENDER_NODE_TYPE_CAIRO_NODE = 2;
const RenderNodeType RENDER_NODE_TYPE_CLIP_NODE = 17;
const RenderNodeType RENDER_NODE_TYPE_COLOR_MATRIX_NODE = 15;
const RenderNodeType RENDER_NODE_TYPE_COLOR_NODE = 3;
const RenderNodeType RENDER_NODE_TYPE_CONIC_GRADIENT_NODE = 8;
const RenderNodeType RENDER_NODE_TYPE_CONTAINER_NODE = 1;
const RenderNodeType RENDER_NODE_TYPE_CROSS_FADE_NODE = 21;
const RenderNodeType RENDER_NODE_TYPE_DEBUG_NODE = 24;
const RenderNodeType RENDER_NODE_TYPE_FILL_NODE = 28;
const RenderNodeType RENDER_NODE_TYPE_GL_SHADER_NODE = 25;
const RenderNodeType RENDER_NODE_TYPE_INSET_SHADOW_NODE = 11;
const RenderNodeType RENDER_NODE_TYPE_LINEAR_GRADIENT_NODE = 4;
const RenderNodeType RENDER_NODE_TYPE_MASK_NODE = 27;
const RenderNodeType RENDER_NODE_TYPE_NOT_A_RENDER_NODE = 0;
const RenderNodeType RENDER_NODE_TYPE_OPACITY_NODE = 14;
const RenderNodeType RENDER_NODE_TYPE_OUTSET_SHADOW_NODE = 12;
const RenderNodeType RENDER_NODE_TYPE_RADIAL_GRADIENT_NODE = 6;
const RenderNodeType RENDER_NODE_TYPE_REPEATING_LINEAR_GRADIENT_NODE = 5;
const RenderNodeType RENDER_NODE_TYPE_REPEATING_RADIAL_GRADIENT_NODE = 7;
const RenderNodeType RENDER_NODE_TYPE_REPEAT_NODE = 16;
const RenderNodeType RENDER_NODE_TYPE_ROUNDED_CLIP_NODE = 18;
const RenderNodeType RENDER_NODE_TYPE_SHADOW_NODE = 19;
const RenderNodeType RENDER_NODE_TYPE_STROKE_NODE = 29;
const RenderNodeType RENDER_NODE_TYPE_SUBSURFACE_NODE = 30;
const RenderNodeType RENDER_NODE_TYPE_TEXTURE_NODE = 10;
const RenderNodeType RENDER_NODE_TYPE_TEXTURE_SCALE_NODE = 26;
const RenderNodeType RENDER_NODE_TYPE_TEXT_NODE = 22;
const RenderNodeType RENDER_NODE_TYPE_TRANSFORM_NODE = 13;

typedef ScalingFilter = int;
const ScalingFilter SCALING_FILTER_LINEAR = 0;
const ScalingFilter SCALING_FILTER_NEAREST = 1;
const ScalingFilter SCALING_FILTER_TRILINEAR = 2;

typedef SerializationError = int;
const SerializationError SERIALIZATION_ERROR_INVALID_DATA = 2;
const SerializationError SERIALIZATION_ERROR_UNSUPPORTED_FORMAT = 0;
const SerializationError SERIALIZATION_ERROR_UNSUPPORTED_VERSION = 1;

typedef TransformCategory = int;
const TransformCategory TRANSFORM_CATEGORY_ANY = 1;
const TransformCategory TRANSFORM_CATEGORY_IDENTITY = 6;
const TransformCategory TRANSFORM_CATEGORY_TRANSFORM_CATEGORY_2D = 3;
const TransformCategory TRANSFORM_CATEGORY_TRANSFORM_CATEGORY_2D_AFFINE = 4;
const TransformCategory TRANSFORM_CATEGORY_TRANSFORM_CATEGORY_2D_TRANSLATE = 5;
const TransformCategory TRANSFORM_CATEGORY_TRANSFORM_CATEGORY_3D = 2;
const TransformCategory TRANSFORM_CATEGORY_UNKNOWN = 0;



typedef BroadwayRendererClass = void*;

typedef CairoRendererClass = void*;

typedef ColorStop = void*;

typedef GLRendererClass = void*;

typedef GLShaderClass = void*;

typedef ParseLocation = void*;

typedef Path = void*;

typedef PathBuilder = void*;

typedef PathMeasure = void*;

typedef PathPoint = void*;

typedef RendererClass = void*;

typedef RoundedRect = void*;

typedef ShaderArgsBuilder = void*;

typedef Shadow = void*;

typedef Stroke = void*;

typedef Transform = void*;

typedef VulkanRendererClass = void*;


alias ParseErrorFunc = fn void(ParseLocation* start, ParseLocation* end, glib::Error* error, void* user_data);

alias PathForeachFunc = fn bool(PathOperation op, graphene::Point* pts, usz n_pts, float weight, void* user_data);


<* Maps to GskBlendNode *>
typedef BlendNode = void*;

// Class to parent cast.
fn RenderNode* BlendNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of BlendNode *>
extern fn BlendNode* blend_node_new(RenderNode* bottom, RenderNode* top, BlendMode blend_mode) @extern("gsk_blend_node_new");



// Class Methods

<* Maps to BlendNode::get_blend_mode *>
extern fn BlendMode BlendNode.get_blend_mode(&self, ) @extern("gsk_blend_node_get_blend_mode");

<* Maps to BlendNode::get_bottom_child *>
extern fn RenderNode* BlendNode.get_bottom_child(&self, ) @extern("gsk_blend_node_get_bottom_child");

<* Maps to BlendNode::get_top_child *>
extern fn RenderNode* BlendNode.get_top_child(&self, ) @extern("gsk_blend_node_get_top_child");


// Class Functions



<* Maps to GskBlurNode *>
typedef BlurNode = void*;

// Class to parent cast.
fn RenderNode* BlurNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of BlurNode *>
extern fn BlurNode* blur_node_new(RenderNode* child, float radius) @extern("gsk_blur_node_new");



// Class Methods

<* Maps to BlurNode::get_child *>
extern fn RenderNode* BlurNode.get_child(&self, ) @extern("gsk_blur_node_get_child");

<* Maps to BlurNode::get_radius *>
extern fn float BlurNode.get_radius(&self, ) @extern("gsk_blur_node_get_radius");


// Class Functions



<* Maps to GskBorderNode *>
typedef BorderNode = void*;

// Class to parent cast.
fn RenderNode* BorderNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of BorderNode *>
extern fn BorderNode* border_node_new(RoundedRect* outline, float border_width, gdk::Rgba border_color) @extern("gsk_border_node_new");



// Class Methods

<* Maps to BorderNode::get_colors *>
extern fn gdk::Rgba* BorderNode.get_colors(&self, ) @extern("gsk_border_node_get_colors");

<* Maps to BorderNode::get_outline *>
extern fn RoundedRect* BorderNode.get_outline(&self, ) @extern("gsk_border_node_get_outline");

<* Maps to BorderNode::get_widths *>
extern fn float BorderNode.get_widths(&self, ) @extern("gsk_border_node_get_widths");


// Class Functions



<* Maps to GskBroadwayRenderer *>
typedef BroadwayRenderer = void*;

// Class to parent cast.
fn Renderer* BroadwayRenderer.as_Renderer(&self) => (Renderer*)(self);

// Class Constructors

<* Maps to new of BroadwayRenderer *>
extern fn Renderer* broadway_renderer_new() @extern("gsk_broadway_renderer_new");



// Class Methods


// Class Functions



<* Maps to GskCairoNode *>
typedef CairoNode = void*;

// Class to parent cast.
fn RenderNode* CairoNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of CairoNode *>
extern fn CairoNode* cairo_node_new(graphene::Rect* bounds) @extern("gsk_cairo_node_new");



// Class Methods

<* Maps to CairoNode::get_draw_context *>
extern fn cairo::Context* CairoNode.get_draw_context(&self, ) @extern("gsk_cairo_node_get_draw_context");

<* Maps to CairoNode::get_surface *>
extern fn cairo::Surface* CairoNode.get_surface(&self, ) @extern("gsk_cairo_node_get_surface");


// Class Functions



<* Maps to GskCairoRenderer *>
typedef CairoRenderer = void*;

// Class to parent cast.
fn Renderer* CairoRenderer.as_Renderer(&self) => (Renderer*)(self);

// Class Constructors

<* Maps to new of CairoRenderer *>
extern fn Renderer* cairo_renderer_new() @extern("gsk_cairo_renderer_new");



// Class Methods


// Class Functions



<* Maps to GskClipNode *>
typedef ClipNode = void*;

// Class to parent cast.
fn RenderNode* ClipNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of ClipNode *>
extern fn ClipNode* clip_node_new(RenderNode* child, graphene::Rect* clip) @extern("gsk_clip_node_new");



// Class Methods

<* Maps to ClipNode::get_child *>
extern fn RenderNode* ClipNode.get_child(&self, ) @extern("gsk_clip_node_get_child");

<* Maps to ClipNode::get_clip *>
extern fn graphene::Rect* ClipNode.get_clip(&self, ) @extern("gsk_clip_node_get_clip");


// Class Functions



<* Maps to GskColorMatrixNode *>
typedef ColorMatrixNode = void*;

// Class to parent cast.
fn RenderNode* ColorMatrixNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of ColorMatrixNode *>
extern fn ColorMatrixNode* color_matrix_node_new(RenderNode* child, graphene::Matrix* color_matrix, graphene::Vec4* color_offset) @extern("gsk_color_matrix_node_new");



// Class Methods

<* Maps to ColorMatrixNode::get_child *>
extern fn RenderNode* ColorMatrixNode.get_child(&self, ) @extern("gsk_color_matrix_node_get_child");

<* Maps to ColorMatrixNode::get_color_matrix *>
extern fn graphene::Matrix* ColorMatrixNode.get_color_matrix(&self, ) @extern("gsk_color_matrix_node_get_color_matrix");

<* Maps to ColorMatrixNode::get_color_offset *>
extern fn graphene::Vec4* ColorMatrixNode.get_color_offset(&self, ) @extern("gsk_color_matrix_node_get_color_offset");


// Class Functions



<* Maps to GskColorNode *>
typedef ColorNode = void*;

// Class to parent cast.
fn RenderNode* ColorNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of ColorNode *>
extern fn ColorNode* color_node_new(gdk::Rgba* rgba, graphene::Rect* bounds) @extern("gsk_color_node_new");



// Class Methods

<* Maps to ColorNode::get_color *>
extern fn gdk::Rgba* ColorNode.get_color(&self, ) @extern("gsk_color_node_get_color");


// Class Functions



<* Maps to GskConicGradientNode *>
typedef ConicGradientNode = void*;

// Class to parent cast.
fn RenderNode* ConicGradientNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of ConicGradientNode *>
extern fn ConicGradientNode* conic_gradient_node_new(graphene::Rect* bounds, graphene::Point* center, float rotation, ColorStop color_stops, usz n_color_stops) @extern("gsk_conic_gradient_node_new");



// Class Methods

<* Maps to ConicGradientNode::get_angle *>
extern fn float ConicGradientNode.get_angle(&self, ) @extern("gsk_conic_gradient_node_get_angle");

<* Maps to ConicGradientNode::get_center *>
extern fn graphene::Point* ConicGradientNode.get_center(&self, ) @extern("gsk_conic_gradient_node_get_center");

<* Maps to ConicGradientNode::get_color_stops *>
extern fn ColorStop ConicGradientNode.get_color_stops(&self, usz* n_stops) @extern("gsk_conic_gradient_node_get_color_stops");

<* Maps to ConicGradientNode::get_n_color_stops *>
extern fn usz ConicGradientNode.get_n_color_stops(&self, ) @extern("gsk_conic_gradient_node_get_n_color_stops");

<* Maps to ConicGradientNode::get_rotation *>
extern fn float ConicGradientNode.get_rotation(&self, ) @extern("gsk_conic_gradient_node_get_rotation");


// Class Functions



<* Maps to GskContainerNode *>
typedef ContainerNode = void*;

// Class to parent cast.
fn RenderNode* ContainerNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of ContainerNode *>
extern fn ContainerNode* container_node_new(RenderNode* children, uint n_children) @extern("gsk_container_node_new");



// Class Methods

<* Maps to ContainerNode::get_child *>
extern fn RenderNode* ContainerNode.get_child(&self, uint idx) @extern("gsk_container_node_get_child");

<* Maps to ContainerNode::get_n_children *>
extern fn uint ContainerNode.get_n_children(&self, ) @extern("gsk_container_node_get_n_children");


// Class Functions



<* Maps to GskCrossFadeNode *>
typedef CrossFadeNode = void*;

// Class to parent cast.
fn RenderNode* CrossFadeNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of CrossFadeNode *>
extern fn CrossFadeNode* cross_fade_node_new(RenderNode* start, RenderNode* end, float progress) @extern("gsk_cross_fade_node_new");



// Class Methods

<* Maps to CrossFadeNode::get_end_child *>
extern fn RenderNode* CrossFadeNode.get_end_child(&self, ) @extern("gsk_cross_fade_node_get_end_child");

<* Maps to CrossFadeNode::get_progress *>
extern fn float CrossFadeNode.get_progress(&self, ) @extern("gsk_cross_fade_node_get_progress");

<* Maps to CrossFadeNode::get_start_child *>
extern fn RenderNode* CrossFadeNode.get_start_child(&self, ) @extern("gsk_cross_fade_node_get_start_child");


// Class Functions



<* Maps to GskDebugNode *>
typedef DebugNode = void*;

// Class to parent cast.
fn RenderNode* DebugNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of DebugNode *>
extern fn DebugNode* debug_node_new(RenderNode* child, ZString* message) @extern("gsk_debug_node_new");



// Class Methods

<* Maps to DebugNode::get_child *>
extern fn RenderNode* DebugNode.get_child(&self, ) @extern("gsk_debug_node_get_child");

<* Maps to DebugNode::get_message *>
extern fn ZString DebugNode.get_message(&self, ) @extern("gsk_debug_node_get_message");


// Class Functions



<* Maps to GskFillNode *>
typedef FillNode = void*;

// Class to parent cast.
fn RenderNode* FillNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of FillNode *>
extern fn FillNode* fill_node_new(RenderNode* child, Path* path, FillRule fill_rule) @extern("gsk_fill_node_new");



// Class Methods

<* Maps to FillNode::get_child *>
extern fn RenderNode* FillNode.get_child(&self, ) @extern("gsk_fill_node_get_child");

<* Maps to FillNode::get_fill_rule *>
extern fn FillRule FillNode.get_fill_rule(&self, ) @extern("gsk_fill_node_get_fill_rule");

<* Maps to FillNode::get_path *>
extern fn Path* FillNode.get_path(&self, ) @extern("gsk_fill_node_get_path");


// Class Functions



<* Maps to GskGLRenderer *>
typedef GLRenderer = void*;

// Class to parent cast.
fn Renderer* GLRenderer.as_Renderer(&self) => (Renderer*)(self);

// Class Constructors

<* Maps to new of GLRenderer *>
extern fn Renderer* gl_renderer_new() @extern("gsk_gl_renderer_new");



// Class Methods


// Class Functions



<* Maps to GskGLShader *>
typedef GLShader = void*;

// Class to parent cast.
fn gobject::Object* GLShader.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_from_bytes of GLShader *>
extern fn GLShader* gl_shader_new_from_bytes(glib::Bytes* sourcecode) @extern("gsk_gl_shader_new_from_bytes");

<* Maps to new_from_resource of GLShader *>
extern fn GLShader* gl_shader_new_from_resource(ZString resource_path) @extern("gsk_gl_shader_new_from_resource");



// Class Methods

<* Maps to GLShader::compile *>
extern fn bool GLShader.compile(&self, Renderer* renderer) @extern("gsk_gl_shader_compile");

<* Maps to GLShader::find_uniform_by_name *>
extern fn int GLShader.find_uniform_by_name(&self, ZString name) @extern("gsk_gl_shader_find_uniform_by_name");

<* Maps to GLShader::format_args *>
extern fn glib::Bytes* GLShader.format_args(&self, any rest) @extern("gsk_gl_shader_format_args");

<* Maps to GLShader::format_args_va *>
extern fn glib::Bytes* GLShader.format_args_va(&self, ZString uniforms) @extern("gsk_gl_shader_format_args_va");

<* Maps to GLShader::get_arg_bool *>
extern fn bool GLShader.get_arg_bool(&self, glib::Bytes* args, int idx) @extern("gsk_gl_shader_get_arg_bool");

<* Maps to GLShader::get_arg_float *>
extern fn float GLShader.get_arg_float(&self, glib::Bytes* args, int idx) @extern("gsk_gl_shader_get_arg_float");

<* Maps to GLShader::get_arg_int *>
extern fn int GLShader.get_arg_int(&self, glib::Bytes* args, int idx) @extern("gsk_gl_shader_get_arg_int");

<* Maps to GLShader::get_arg_uint *>
extern fn uint GLShader.get_arg_uint(&self, glib::Bytes* args, int idx) @extern("gsk_gl_shader_get_arg_uint");

<* Maps to GLShader::get_arg_vec2 *>
extern fn void GLShader.get_arg_vec2(&self, glib::Bytes* args, int idx, graphene::Vec2* out_value) @extern("gsk_gl_shader_get_arg_vec2");

<* Maps to GLShader::get_arg_vec3 *>
extern fn void GLShader.get_arg_vec3(&self, glib::Bytes* args, int idx, graphene::Vec3* out_value) @extern("gsk_gl_shader_get_arg_vec3");

<* Maps to GLShader::get_arg_vec4 *>
extern fn void GLShader.get_arg_vec4(&self, glib::Bytes* args, int idx, graphene::Vec4* out_value) @extern("gsk_gl_shader_get_arg_vec4");

<* Maps to GLShader::get_args_size *>
extern fn usz GLShader.get_args_size(&self, ) @extern("gsk_gl_shader_get_args_size");

<* Maps to GLShader::get_n_textures *>
extern fn int GLShader.get_n_textures(&self, ) @extern("gsk_gl_shader_get_n_textures");

<* Maps to GLShader::get_n_uniforms *>
extern fn int GLShader.get_n_uniforms(&self, ) @extern("gsk_gl_shader_get_n_uniforms");

<* Maps to GLShader::get_resource *>
extern fn ZString GLShader.get_resource(&self, ) @extern("gsk_gl_shader_get_resource");

<* Maps to GLShader::get_source *>
extern fn glib::Bytes* GLShader.get_source(&self, ) @extern("gsk_gl_shader_get_source");

<* Maps to GLShader::get_uniform_name *>
extern fn ZString GLShader.get_uniform_name(&self, int idx) @extern("gsk_gl_shader_get_uniform_name");

<* Maps to GLShader::get_uniform_offset *>
extern fn int GLShader.get_uniform_offset(&self, int idx) @extern("gsk_gl_shader_get_uniform_offset");

<* Maps to GLShader::get_uniform_type *>
extern fn GLUniformType GLShader.get_uniform_type(&self, int idx) @extern("gsk_gl_shader_get_uniform_type");


// Class Functions



<* Maps to GskGLShaderNode *>
typedef GLShaderNode = void*;

// Class to parent cast.
fn RenderNode* GLShaderNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of GLShaderNode *>
extern fn GLShaderNode* gl_shader_node_new(GLShader* shader, graphene::Rect* bounds, glib::Bytes* args, RenderNode* children, uint n_children) @extern("gsk_gl_shader_node_new");



// Class Methods

<* Maps to GLShaderNode::get_args *>
extern fn glib::Bytes* GLShaderNode.get_args(&self, ) @extern("gsk_gl_shader_node_get_args");

<* Maps to GLShaderNode::get_child *>
extern fn RenderNode* GLShaderNode.get_child(&self, uint idx) @extern("gsk_gl_shader_node_get_child");

<* Maps to GLShaderNode::get_n_children *>
extern fn uint GLShaderNode.get_n_children(&self, ) @extern("gsk_gl_shader_node_get_n_children");

<* Maps to GLShaderNode::get_shader *>
extern fn GLShader* GLShaderNode.get_shader(&self, ) @extern("gsk_gl_shader_node_get_shader");


// Class Functions



<* Maps to GskInsetShadowNode *>
typedef InsetShadowNode = void*;

// Class to parent cast.
fn RenderNode* InsetShadowNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of InsetShadowNode *>
extern fn InsetShadowNode* inset_shadow_node_new(RoundedRect* outline, gdk::Rgba* color, float dx, float dy, float spread, float blur_radius) @extern("gsk_inset_shadow_node_new");



// Class Methods

<* Maps to InsetShadowNode::get_blur_radius *>
extern fn float InsetShadowNode.get_blur_radius(&self, ) @extern("gsk_inset_shadow_node_get_blur_radius");

<* Maps to InsetShadowNode::get_color *>
extern fn gdk::Rgba* InsetShadowNode.get_color(&self, ) @extern("gsk_inset_shadow_node_get_color");

<* Maps to InsetShadowNode::get_dx *>
extern fn float InsetShadowNode.get_dx(&self, ) @extern("gsk_inset_shadow_node_get_dx");

<* Maps to InsetShadowNode::get_dy *>
extern fn float InsetShadowNode.get_dy(&self, ) @extern("gsk_inset_shadow_node_get_dy");

<* Maps to InsetShadowNode::get_outline *>
extern fn RoundedRect* InsetShadowNode.get_outline(&self, ) @extern("gsk_inset_shadow_node_get_outline");

<* Maps to InsetShadowNode::get_spread *>
extern fn float InsetShadowNode.get_spread(&self, ) @extern("gsk_inset_shadow_node_get_spread");


// Class Functions



<* Maps to GskLinearGradientNode *>
typedef LinearGradientNode = void*;

// Class to parent cast.
fn RenderNode* LinearGradientNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of LinearGradientNode *>
extern fn LinearGradientNode* linear_gradient_node_new(graphene::Rect* bounds, graphene::Point* start, graphene::Point* end, ColorStop color_stops, usz n_color_stops) @extern("gsk_linear_gradient_node_new");



// Class Methods

<* Maps to LinearGradientNode::get_color_stops *>
extern fn ColorStop LinearGradientNode.get_color_stops(&self, usz* n_stops) @extern("gsk_linear_gradient_node_get_color_stops");

<* Maps to LinearGradientNode::get_end *>
extern fn graphene::Point* LinearGradientNode.get_end(&self, ) @extern("gsk_linear_gradient_node_get_end");

<* Maps to LinearGradientNode::get_n_color_stops *>
extern fn usz LinearGradientNode.get_n_color_stops(&self, ) @extern("gsk_linear_gradient_node_get_n_color_stops");

<* Maps to LinearGradientNode::get_start *>
extern fn graphene::Point* LinearGradientNode.get_start(&self, ) @extern("gsk_linear_gradient_node_get_start");


// Class Functions



<* Maps to GskMaskNode *>
typedef MaskNode = void*;

// Class to parent cast.
fn RenderNode* MaskNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of MaskNode *>
extern fn MaskNode* mask_node_new(RenderNode* source, RenderNode* mask, MaskMode mask_mode) @extern("gsk_mask_node_new");



// Class Methods

<* Maps to MaskNode::get_mask *>
extern fn RenderNode* MaskNode.get_mask(&self, ) @extern("gsk_mask_node_get_mask");

<* Maps to MaskNode::get_mask_mode *>
extern fn MaskMode MaskNode.get_mask_mode(&self, ) @extern("gsk_mask_node_get_mask_mode");

<* Maps to MaskNode::get_source *>
extern fn RenderNode* MaskNode.get_source(&self, ) @extern("gsk_mask_node_get_source");


// Class Functions



<* Maps to  *>
typedef NglRenderer = void*;

// Class to parent cast.
fn Renderer* NglRenderer.as_Renderer(&self) => (Renderer*)(self);

// Class Constructors

<* Maps to new of NglRenderer *>
extern fn Renderer* ngl_renderer_new() @extern("gsk_ngl_renderer_new");



// Class Methods


// Class Functions



<* Maps to GskOpacityNode *>
typedef OpacityNode = void*;

// Class to parent cast.
fn RenderNode* OpacityNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of OpacityNode *>
extern fn OpacityNode* opacity_node_new(RenderNode* child, float opacity) @extern("gsk_opacity_node_new");



// Class Methods

<* Maps to OpacityNode::get_child *>
extern fn RenderNode* OpacityNode.get_child(&self, ) @extern("gsk_opacity_node_get_child");

<* Maps to OpacityNode::get_opacity *>
extern fn float OpacityNode.get_opacity(&self, ) @extern("gsk_opacity_node_get_opacity");


// Class Functions



<* Maps to GskOutsetShadowNode *>
typedef OutsetShadowNode = void*;

// Class to parent cast.
fn RenderNode* OutsetShadowNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of OutsetShadowNode *>
extern fn OutsetShadowNode* outset_shadow_node_new(RoundedRect* outline, gdk::Rgba* color, float dx, float dy, float spread, float blur_radius) @extern("gsk_outset_shadow_node_new");



// Class Methods

<* Maps to OutsetShadowNode::get_blur_radius *>
extern fn float OutsetShadowNode.get_blur_radius(&self, ) @extern("gsk_outset_shadow_node_get_blur_radius");

<* Maps to OutsetShadowNode::get_color *>
extern fn gdk::Rgba* OutsetShadowNode.get_color(&self, ) @extern("gsk_outset_shadow_node_get_color");

<* Maps to OutsetShadowNode::get_dx *>
extern fn float OutsetShadowNode.get_dx(&self, ) @extern("gsk_outset_shadow_node_get_dx");

<* Maps to OutsetShadowNode::get_dy *>
extern fn float OutsetShadowNode.get_dy(&self, ) @extern("gsk_outset_shadow_node_get_dy");

<* Maps to OutsetShadowNode::get_outline *>
extern fn RoundedRect* OutsetShadowNode.get_outline(&self, ) @extern("gsk_outset_shadow_node_get_outline");

<* Maps to OutsetShadowNode::get_spread *>
extern fn float OutsetShadowNode.get_spread(&self, ) @extern("gsk_outset_shadow_node_get_spread");


// Class Functions



<* Maps to GskRadialGradientNode *>
typedef RadialGradientNode = void*;

// Class to parent cast.
fn RenderNode* RadialGradientNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of RadialGradientNode *>
extern fn RadialGradientNode* radial_gradient_node_new(graphene::Rect* bounds, graphene::Point* center, float hradius, float vradius, float start, float end, ColorStop color_stops, usz n_color_stops) @extern("gsk_radial_gradient_node_new");



// Class Methods

<* Maps to RadialGradientNode::get_center *>
extern fn graphene::Point* RadialGradientNode.get_center(&self, ) @extern("gsk_radial_gradient_node_get_center");

<* Maps to RadialGradientNode::get_color_stops *>
extern fn ColorStop RadialGradientNode.get_color_stops(&self, usz* n_stops) @extern("gsk_radial_gradient_node_get_color_stops");

<* Maps to RadialGradientNode::get_end *>
extern fn float RadialGradientNode.get_end(&self, ) @extern("gsk_radial_gradient_node_get_end");

<* Maps to RadialGradientNode::get_hradius *>
extern fn float RadialGradientNode.get_hradius(&self, ) @extern("gsk_radial_gradient_node_get_hradius");

<* Maps to RadialGradientNode::get_n_color_stops *>
extern fn usz RadialGradientNode.get_n_color_stops(&self, ) @extern("gsk_radial_gradient_node_get_n_color_stops");

<* Maps to RadialGradientNode::get_start *>
extern fn float RadialGradientNode.get_start(&self, ) @extern("gsk_radial_gradient_node_get_start");

<* Maps to RadialGradientNode::get_vradius *>
extern fn float RadialGradientNode.get_vradius(&self, ) @extern("gsk_radial_gradient_node_get_vradius");


// Class Functions



<* Maps to GskRenderNode *>
typedef RenderNode = void*;

// Class to parent cast.


// Class Constructors



// Class Methods

<* Maps to RenderNode::draw *>
extern fn void RenderNode.draw(&self, cairo::Context* cr) @extern("gsk_render_node_draw");

<* Maps to RenderNode::get_bounds *>
extern fn void RenderNode.get_bounds(&self, graphene::Rect* bounds) @extern("gsk_render_node_get_bounds");

<* Maps to RenderNode::get_node_type *>
extern fn RenderNodeType RenderNode.get_node_type(&self, ) @extern("gsk_render_node_get_node_type");

<* Maps to RenderNode::get_opaque_rect *>
extern fn bool RenderNode.get_opaque_rect(&self, graphene::Rect* out_opaque) @extern("gsk_render_node_get_opaque_rect");

<* Maps to RenderNode::ref *>
extern fn RenderNode* RenderNode.ref(&self, ) @extern("gsk_render_node_ref");

<* Maps to RenderNode::serialize *>
extern fn glib::Bytes* RenderNode.serialize(&self, ) @extern("gsk_render_node_serialize");

<* Maps to RenderNode::unref *>
extern fn void RenderNode.unref(&self, ) @extern("gsk_render_node_unref");

<* Maps to RenderNode::write_to_file *>
extern fn bool RenderNode.write_to_file(&self, ZString filename) @extern("gsk_render_node_write_to_file");


// Class Functions

<* Maps to deserialize of RenderNode *>
extern fn RenderNode* render_node_deserialize(glib::Bytes* bytes, ParseErrorFunc error_func, void* user_data) @extern("gsk_render_node_deserialize");



<* Maps to GskRenderer *>
typedef Renderer = void*;

// Class to parent cast.
fn gobject::Object* Renderer.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_for_surface of Renderer *>
extern fn Renderer* renderer_new_for_surface(gdk::Surface* surface) @extern("gsk_renderer_new_for_surface");



// Class Methods

<* Maps to Renderer::get_surface *>
extern fn gdk::Surface* Renderer.get_surface(&self, ) @extern("gsk_renderer_get_surface");

<* Maps to Renderer::is_realized *>
extern fn bool Renderer.is_realized(&self, ) @extern("gsk_renderer_is_realized");

<* Maps to Renderer::realize *>
extern fn bool Renderer.realize(&self, gdk::Surface* surface) @extern("gsk_renderer_realize");

<* Maps to Renderer::realize_for_display *>
extern fn bool Renderer.realize_for_display(&self, gdk::Display* display) @extern("gsk_renderer_realize_for_display");

<* Maps to Renderer::render *>
extern fn void Renderer.render(&self, RenderNode* root, cairo::Region* region) @extern("gsk_renderer_render");

<* Maps to Renderer::render_texture *>
extern fn gdk::Texture* Renderer.render_texture(&self, RenderNode* root, graphene::Rect* viewport) @extern("gsk_renderer_render_texture");

<* Maps to Renderer::unrealize *>
extern fn void Renderer.unrealize(&self, ) @extern("gsk_renderer_unrealize");


// Class Functions



<* Maps to GskRepeatNode *>
typedef RepeatNode = void*;

// Class to parent cast.
fn RenderNode* RepeatNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of RepeatNode *>
extern fn RepeatNode* repeat_node_new(graphene::Rect* bounds, RenderNode* child, graphene::Rect* child_bounds) @extern("gsk_repeat_node_new");



// Class Methods

<* Maps to RepeatNode::get_child *>
extern fn RenderNode* RepeatNode.get_child(&self, ) @extern("gsk_repeat_node_get_child");

<* Maps to RepeatNode::get_child_bounds *>
extern fn graphene::Rect* RepeatNode.get_child_bounds(&self, ) @extern("gsk_repeat_node_get_child_bounds");


// Class Functions



<* Maps to GskRepeatingLinearGradientNode *>
typedef RepeatingLinearGradientNode = void*;

// Class to parent cast.
fn RenderNode* RepeatingLinearGradientNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of RepeatingLinearGradientNode *>
extern fn RepeatingLinearGradientNode* repeating_linear_gradient_node_new(graphene::Rect* bounds, graphene::Point* start, graphene::Point* end, ColorStop color_stops, usz n_color_stops) @extern("gsk_repeating_linear_gradient_node_new");



// Class Methods


// Class Functions



<* Maps to GskRepeatingRadialGradientNode *>
typedef RepeatingRadialGradientNode = void*;

// Class to parent cast.
fn RenderNode* RepeatingRadialGradientNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of RepeatingRadialGradientNode *>
extern fn RepeatingRadialGradientNode* repeating_radial_gradient_node_new(graphene::Rect* bounds, graphene::Point* center, float hradius, float vradius, float start, float end, ColorStop color_stops, usz n_color_stops) @extern("gsk_repeating_radial_gradient_node_new");



// Class Methods


// Class Functions



<* Maps to GskRoundedClipNode *>
typedef RoundedClipNode = void*;

// Class to parent cast.
fn RenderNode* RoundedClipNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of RoundedClipNode *>
extern fn RoundedClipNode* rounded_clip_node_new(RenderNode* child, RoundedRect* clip) @extern("gsk_rounded_clip_node_new");



// Class Methods

<* Maps to RoundedClipNode::get_child *>
extern fn RenderNode* RoundedClipNode.get_child(&self, ) @extern("gsk_rounded_clip_node_get_child");

<* Maps to RoundedClipNode::get_clip *>
extern fn RoundedRect* RoundedClipNode.get_clip(&self, ) @extern("gsk_rounded_clip_node_get_clip");


// Class Functions



<* Maps to GskShadowNode *>
typedef ShadowNode = void*;

// Class to parent cast.
fn RenderNode* ShadowNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of ShadowNode *>
extern fn ShadowNode* shadow_node_new(RenderNode* child, Shadow shadows, usz n_shadows) @extern("gsk_shadow_node_new");



// Class Methods

<* Maps to ShadowNode::get_child *>
extern fn RenderNode* ShadowNode.get_child(&self, ) @extern("gsk_shadow_node_get_child");

<* Maps to ShadowNode::get_n_shadows *>
extern fn usz ShadowNode.get_n_shadows(&self, ) @extern("gsk_shadow_node_get_n_shadows");

<* Maps to ShadowNode::get_shadow *>
extern fn Shadow* ShadowNode.get_shadow(&self, usz i) @extern("gsk_shadow_node_get_shadow");


// Class Functions



<* Maps to GskStrokeNode *>
typedef StrokeNode = void*;

// Class to parent cast.
fn RenderNode* StrokeNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of StrokeNode *>
extern fn StrokeNode* stroke_node_new(RenderNode* child, Path* path, Stroke* stroke) @extern("gsk_stroke_node_new");



// Class Methods

<* Maps to StrokeNode::get_child *>
extern fn RenderNode* StrokeNode.get_child(&self, ) @extern("gsk_stroke_node_get_child");

<* Maps to StrokeNode::get_path *>
extern fn Path* StrokeNode.get_path(&self, ) @extern("gsk_stroke_node_get_path");

<* Maps to StrokeNode::get_stroke *>
extern fn Stroke* StrokeNode.get_stroke(&self, ) @extern("gsk_stroke_node_get_stroke");


// Class Functions



<* Maps to GskSubsurfaceNode *>
typedef SubsurfaceNode = void*;

// Class to parent cast.
fn RenderNode* SubsurfaceNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of SubsurfaceNode *>
extern fn SubsurfaceNode* subsurface_node_new(RenderNode* child, void* subsurface) @extern("gsk_subsurface_node_new");



// Class Methods

<* Maps to SubsurfaceNode::get_child *>
extern fn RenderNode* SubsurfaceNode.get_child(&self, ) @extern("gsk_subsurface_node_get_child");


// Class Functions

<* Maps to get_subsurface of SubsurfaceNode *>
extern fn void* subsurface_node_get_subsurface(DebugNode* node) @extern("gsk_subsurface_node_get_subsurface");



<* Maps to GskTextNode *>
typedef TextNode = void*;

// Class to parent cast.
fn RenderNode* TextNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of TextNode *>
extern fn TextNode* text_node_new(pango::Font* font, pango::GlyphString* glyphs, gdk::Rgba* color, graphene::Point* offset) @extern("gsk_text_node_new");



// Class Methods

<* Maps to TextNode::get_color *>
extern fn gdk::Rgba* TextNode.get_color(&self, ) @extern("gsk_text_node_get_color");

<* Maps to TextNode::get_font *>
extern fn pango::Font* TextNode.get_font(&self, ) @extern("gsk_text_node_get_font");

<* Maps to TextNode::get_glyphs *>
extern fn pango::GlyphInfo TextNode.get_glyphs(&self, uint* n_glyphs) @extern("gsk_text_node_get_glyphs");

<* Maps to TextNode::get_num_glyphs *>
extern fn uint TextNode.get_num_glyphs(&self, ) @extern("gsk_text_node_get_num_glyphs");

<* Maps to TextNode::get_offset *>
extern fn graphene::Point* TextNode.get_offset(&self, ) @extern("gsk_text_node_get_offset");

<* Maps to TextNode::has_color_glyphs *>
extern fn bool TextNode.has_color_glyphs(&self, ) @extern("gsk_text_node_has_color_glyphs");


// Class Functions



<* Maps to GskTextureNode *>
typedef TextureNode = void*;

// Class to parent cast.
fn RenderNode* TextureNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of TextureNode *>
extern fn TextureNode* texture_node_new(gdk::Texture* texture, graphene::Rect* bounds) @extern("gsk_texture_node_new");



// Class Methods

<* Maps to TextureNode::get_texture *>
extern fn gdk::Texture* TextureNode.get_texture(&self, ) @extern("gsk_texture_node_get_texture");


// Class Functions



<* Maps to GskTextureScaleNode *>
typedef TextureScaleNode = void*;

// Class to parent cast.
fn RenderNode* TextureScaleNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of TextureScaleNode *>
extern fn TextureScaleNode* texture_scale_node_new(gdk::Texture* texture, graphene::Rect* bounds, ScalingFilter filter) @extern("gsk_texture_scale_node_new");



// Class Methods

<* Maps to TextureScaleNode::get_filter *>
extern fn ScalingFilter TextureScaleNode.get_filter(&self, ) @extern("gsk_texture_scale_node_get_filter");

<* Maps to TextureScaleNode::get_texture *>
extern fn gdk::Texture* TextureScaleNode.get_texture(&self, ) @extern("gsk_texture_scale_node_get_texture");


// Class Functions



<* Maps to GskTransformNode *>
typedef TransformNode = void*;

// Class to parent cast.
fn RenderNode* TransformNode.as_RenderNode(&self) => (RenderNode*)(self);

// Class Constructors

<* Maps to new of TransformNode *>
extern fn TransformNode* transform_node_new(RenderNode* child, Transform* transform) @extern("gsk_transform_node_new");



// Class Methods

<* Maps to TransformNode::get_child *>
extern fn RenderNode* TransformNode.get_child(&self, ) @extern("gsk_transform_node_get_child");

<* Maps to TransformNode::get_transform *>
extern fn Transform* TransformNode.get_transform(&self, ) @extern("gsk_transform_node_get_transform");


// Class Functions



<* Maps to GskVulkanRenderer *>
typedef VulkanRenderer = void*;

// Class to parent cast.
fn Renderer* VulkanRenderer.as_Renderer(&self) => (Renderer*)(self);

// Class Constructors

<* Maps to new of VulkanRenderer *>
extern fn Renderer* vulkan_renderer_new() @extern("gsk_vulkan_renderer_new");



// Class Methods


// Class Functions






<* Maps to path_parse *>
extern fn Path* path_parse(ZString string) @extern("gsk_path_parse");

<* Maps to serialization_error_quark *>
extern fn glib::Quark serialization_error_quark() @extern("gsk_serialization_error_quark");

<* Maps to stroke_equal *>
extern fn bool stroke_equal(void* stroke1, void* stroke2) @extern("gsk_stroke_equal");

<* Maps to transform_parse *>
extern fn bool transform_parse(ZString string, Transform* out_transform) @extern("gsk_transform_parse");

<* Maps to value_dup_render_node *>
extern fn RenderNode* value_dup_render_node(gobject::Value* value) @extern("gsk_value_dup_render_node");

<* Maps to value_get_render_node *>
extern fn RenderNode* value_get_render_node(gobject::Value* value) @extern("gsk_value_get_render_node");

<* Maps to value_set_render_node *>
extern fn void value_set_render_node(gobject::Value* value, RenderNode* node) @extern("gsk_value_set_render_node");

<* Maps to value_take_render_node *>
extern fn void value_take_render_node(gobject::Value* value, RenderNode* node) @extern("gsk_value_take_render_node");

///END MODULE gsk
