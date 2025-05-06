
///START MODULE graphene
module graphene;

import gobject;


typedef EulerOrder = int;
const EulerOrder EULER_ORDER_DEFAULT = -1;
const EulerOrder EULER_ORDER_RXYX = 19;
const EulerOrder EULER_ORDER_RXYZ = 28;
const EulerOrder EULER_ORDER_RXZX = 21;
const EulerOrder EULER_ORDER_RXZY = 22;
const EulerOrder EULER_ORDER_RYXY = 25;
const EulerOrder EULER_ORDER_RYXZ = 26;
const EulerOrder EULER_ORDER_RYZX = 20;
const EulerOrder EULER_ORDER_RYZY = 23;
const EulerOrder EULER_ORDER_RZXY = 24;
const EulerOrder EULER_ORDER_RZXZ = 27;
const EulerOrder EULER_ORDER_RZYX = 18;
const EulerOrder EULER_ORDER_RZYZ = 29;
const EulerOrder EULER_ORDER_SXYX = 7;
const EulerOrder EULER_ORDER_SXYZ = 6;
const EulerOrder EULER_ORDER_SXZX = 9;
const EulerOrder EULER_ORDER_SXZY = 8;
const EulerOrder EULER_ORDER_SYXY = 13;
const EulerOrder EULER_ORDER_SYXZ = 12;
const EulerOrder EULER_ORDER_SYZX = 10;
const EulerOrder EULER_ORDER_SYZY = 11;
const EulerOrder EULER_ORDER_SZXY = 14;
const EulerOrder EULER_ORDER_SZXZ = 15;
const EulerOrder EULER_ORDER_SZYX = 16;
const EulerOrder EULER_ORDER_SZYZ = 17;
const EulerOrder EULER_ORDER_XYZ = 0;
const EulerOrder EULER_ORDER_XZY = 3;
const EulerOrder EULER_ORDER_YXZ = 4;
const EulerOrder EULER_ORDER_YZX = 1;
const EulerOrder EULER_ORDER_ZXY = 2;
const EulerOrder EULER_ORDER_ZYX = 5;

typedef RayIntersectionKind = int;
const RayIntersectionKind RAY_INTERSECTION_KIND_ENTER = 1;
const RayIntersectionKind RAY_INTERSECTION_KIND_LEAVE = 2;
const RayIntersectionKind RAY_INTERSECTION_KIND_NONE = 0;



typedef Box = void*;

typedef Euler = void*;

typedef Frustum = void*;

typedef Matrix = void*;

typedef Plane = void*;

typedef Point = void*;

typedef Point3D = void*;

typedef Quad = void*;

typedef Quaternion = void*;

typedef Ray = void*;

typedef Rect = void*;

typedef Simd4F = void*;

typedef Simd4X4F = void*;

typedef Size = void*;

typedef Sphere = void*;

typedef Triangle = void*;

typedef Vec2 = void*;

typedef Vec3 = void*;

typedef Vec4 = void*;






<* Maps to box_empty *>
extern fn Box* box_empty() @extern("graphene_box_empty");

<* Maps to box_infinite *>
extern fn Box* box_infinite() @extern("graphene_box_infinite");

<* Maps to box_minus_one *>
extern fn Box* box_minus_one() @extern("graphene_box_minus_one");

<* Maps to box_one *>
extern fn Box* box_one() @extern("graphene_box_one");

<* Maps to box_one_minus_one *>
extern fn Box* box_one_minus_one() @extern("graphene_box_one_minus_one");

<* Maps to box_zero *>
extern fn Box* box_zero() @extern("graphene_box_zero");

<* Maps to point3d_zero *>
extern fn Point3D* point3d_zero() @extern("graphene_point3d_zero");

<* Maps to point_zero *>
extern fn Point* point_zero() @extern("graphene_point_zero");

<* Maps to rect_alloc *>
extern fn Rect* rect_alloc() @extern("graphene_rect_alloc");

<* Maps to rect_zero *>
extern fn Rect* rect_zero() @extern("graphene_rect_zero");

<* Maps to size_zero *>
extern fn Size* size_zero() @extern("graphene_size_zero");

<* Maps to vec2_one *>
extern fn Vec2* vec2_one() @extern("graphene_vec2_one");

<* Maps to vec2_x_axis *>
extern fn Vec2* vec2_x_axis() @extern("graphene_vec2_x_axis");

<* Maps to vec2_y_axis *>
extern fn Vec2* vec2_y_axis() @extern("graphene_vec2_y_axis");

<* Maps to vec2_zero *>
extern fn Vec2* vec2_zero() @extern("graphene_vec2_zero");

<* Maps to vec3_one *>
extern fn Vec3* vec3_one() @extern("graphene_vec3_one");

<* Maps to vec3_x_axis *>
extern fn Vec3* vec3_x_axis() @extern("graphene_vec3_x_axis");

<* Maps to vec3_y_axis *>
extern fn Vec3* vec3_y_axis() @extern("graphene_vec3_y_axis");

<* Maps to vec3_z_axis *>
extern fn Vec3* vec3_z_axis() @extern("graphene_vec3_z_axis");

<* Maps to vec3_zero *>
extern fn Vec3* vec3_zero() @extern("graphene_vec3_zero");

<* Maps to vec4_one *>
extern fn Vec4* vec4_one() @extern("graphene_vec4_one");

<* Maps to vec4_w_axis *>
extern fn Vec4* vec4_w_axis() @extern("graphene_vec4_w_axis");

<* Maps to vec4_x_axis *>
extern fn Vec4* vec4_x_axis() @extern("graphene_vec4_x_axis");

<* Maps to vec4_y_axis *>
extern fn Vec4* vec4_y_axis() @extern("graphene_vec4_y_axis");

<* Maps to vec4_z_axis *>
extern fn Vec4* vec4_z_axis() @extern("graphene_vec4_z_axis");

<* Maps to vec4_zero *>
extern fn Vec4* vec4_zero() @extern("graphene_vec4_zero");

///END MODULE graphene
