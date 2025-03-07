
///START MODULE gobject
module gobject;

import glib;


distinct BindingFlags = int;
const BindingFlags BINDING_FLAGS_BIDIRECTIONAL = 1;
const BindingFlags BINDING_FLAGS_DEFAULT = 0;
const BindingFlags BINDING_FLAGS_INVERT_BOOLEAN = 4;
const BindingFlags BINDING_FLAGS_SYNC_CREATE = 2;

distinct ConnectFlags = int;
const ConnectFlags CONNECT_FLAGS_AFTER = 1;
const ConnectFlags CONNECT_FLAGS_DEFAULT = 0;
const ConnectFlags CONNECT_FLAGS_SWAPPED = 2;

distinct IOCondition = int;
const IOCondition IO_CONDITION_ERR = 8;
const IOCondition IO_CONDITION_HUP = 16;
const IOCondition IO_CONDITION_IN = 1;
const IOCondition IO_CONDITION_NVAL = 32;
const IOCondition IO_CONDITION_OUT = 4;
const IOCondition IO_CONDITION_PRI = 2;

distinct ParamFlags = long;
const ParamFlags PARAM_FLAGS_CONSTRUCT = 4;
const ParamFlags PARAM_FLAGS_CONSTRUCT_ONLY = 8;
const ParamFlags PARAM_FLAGS_DEPRECATED = 2147483648;
const ParamFlags PARAM_FLAGS_EXPLICIT_NOTIFY = 1073741824;
const ParamFlags PARAM_FLAGS_LAX_VALIDATION = 16;
const ParamFlags PARAM_FLAGS_PRIVATE = 32;
const ParamFlags PARAM_FLAGS_READABLE = 1;
const ParamFlags PARAM_FLAGS_READWRITE = 3;
const ParamFlags PARAM_FLAGS_STATIC_BLURB = 128;
const ParamFlags PARAM_FLAGS_STATIC_NAME = 32;
const ParamFlags PARAM_FLAGS_STATIC_NICK = 64;
const ParamFlags PARAM_FLAGS_WRITABLE = 2;

distinct SignalFlags = int;
const SignalFlags SIGNAL_FLAGS_ACCUMULATOR_FIRST_RUN = 131072;
const SignalFlags SIGNAL_FLAGS_ACTION = 32;
const SignalFlags SIGNAL_FLAGS_DEPRECATED = 256;
const SignalFlags SIGNAL_FLAGS_DETAILED = 16;
const SignalFlags SIGNAL_FLAGS_MUST_COLLECT = 128;
const SignalFlags SIGNAL_FLAGS_NO_HOOKS = 64;
const SignalFlags SIGNAL_FLAGS_NO_RECURSE = 8;
const SignalFlags SIGNAL_FLAGS_RUN_CLEANUP = 4;
const SignalFlags SIGNAL_FLAGS_RUN_FIRST = 1;
const SignalFlags SIGNAL_FLAGS_RUN_LAST = 2;

distinct SignalMatchType = int;
const SignalMatchType SIGNAL_MATCH_TYPE_CLOSURE = 4;
const SignalMatchType SIGNAL_MATCH_TYPE_DATA = 16;
const SignalMatchType SIGNAL_MATCH_TYPE_DETAIL = 2;
const SignalMatchType SIGNAL_MATCH_TYPE_FUNC = 8;
const SignalMatchType SIGNAL_MATCH_TYPE_ID = 1;
const SignalMatchType SIGNAL_MATCH_TYPE_UNBLOCKED = 32;

distinct TypeDebugFlags = int;
const TypeDebugFlags TYPE_DEBUG_FLAGS_INSTANCE_COUNT = 4;
const TypeDebugFlags TYPE_DEBUG_FLAGS_MASK = 7;
const TypeDebugFlags TYPE_DEBUG_FLAGS_NONE = 0;
const TypeDebugFlags TYPE_DEBUG_FLAGS_OBJECTS = 1;
const TypeDebugFlags TYPE_DEBUG_FLAGS_SIGNALS = 2;

distinct TypeFlags = int;
const TypeFlags TYPE_FLAGS_ABSTRACT = 16;
const TypeFlags TYPE_FLAGS_DEPRECATED = 128;
const TypeFlags TYPE_FLAGS_FINAL = 64;
const TypeFlags TYPE_FLAGS_NONE = 0;
const TypeFlags TYPE_FLAGS_VALUE_ABSTRACT = 32;

distinct TypeFundamentalFlags = int;
const TypeFundamentalFlags TYPE_FUNDAMENTAL_FLAGS_CLASSED = 1;
const TypeFundamentalFlags TYPE_FUNDAMENTAL_FLAGS_DEEP_DERIVABLE = 8;
const TypeFundamentalFlags TYPE_FUNDAMENTAL_FLAGS_DERIVABLE = 4;
const TypeFundamentalFlags TYPE_FUNDAMENTAL_FLAGS_INSTANTIATABLE = 2;


union TypeCValue {
    int v_int;
    long v_long;
    long v_int64;
    double v_double;
    void** v_pointer;
}


distinct CClosure = void*;

distinct Closure = void*;

distinct ClosureNotifyData = void*;

distinct EnumClass = void*;

distinct EnumValue = void*;

distinct FlagsClass = void*;

distinct FlagsValue = void*;

distinct InitiallyUnownedClass = void*;

distinct InterfaceInfo = void*;

distinct ObjectClass = void*;

distinct ObjectConstructParam = void*;

distinct ParamSpecClass = void*;

distinct ParamSpecPool = void*;

distinct ParamSpecTypeInfo = void*;

distinct Parameter = void*;

distinct SignalInvocationHint = void*;

distinct SignalQuery = void*;

distinct TypeClass = void*;

distinct TypeFundamentalInfo = void*;

distinct TypeInfo = void*;

distinct TypeInstance = void*;

distinct TypeInterface = void*;

distinct TypeModuleClass = void*;

distinct TypePluginClass = void*;

distinct TypeQuery = void*;

distinct TypeValueTable = void*;

distinct Value = void*;

distinct ValueArray = void*;

distinct WeakRef = void*;


def BaseFinalizeFunc = fn void(TypeClass* g_class);

def BaseInitFunc = fn void(TypeClass* g_class);

def BindingTransformFunc = fn bool(Binding* binding, Value* from_value, Value* to_value, void* user_data);

def BoxedCopyFunc = fn void*(void* boxed);

def BoxedFreeFunc = fn void(void* boxed);

def Callback = fn void();

def ClassFinalizeFunc = fn void(TypeClass* g_class, void* class_data);

def ClassInitFunc = fn void(TypeClass* g_class, void* class_data);

def ClosureMarshal = fn void(Closure* closure, Value* return_value, uint n_param_values, Value param_values, void* invocation_hint, void* marshal_data);

def ClosureNotify = fn void(void* data, Closure* closure);

def InstanceInitFunc = fn void(TypeInstance* instance, TypeClass* g_class);

def InterfaceFinalizeFunc = fn void(TypeInterface* g_iface, void* iface_data);

def InterfaceInitFunc = fn void(TypeInterface* g_iface, void* iface_data);

def ObjectFinalizeFunc = fn void(Object* object);

def ObjectGetPropertyFunc = fn void(Object* object, uint property_id, Value* value, ParamSpec* pspec);

def ObjectSetPropertyFunc = fn void(Object* object, uint property_id, Value* value, ParamSpec* pspec);

def SignalAccumulator = fn bool(SignalInvocationHint* ihint, Value* return_accu, Value* handler_return, void* data);

def SignalEmissionHook = fn bool(SignalInvocationHint* ihint, uint n_param_values, Value param_values, void* data);

def ToggleNotify = fn void(void* data, Object* object, bool is_last_ref);

def TypeClassCacheFunc = fn bool(void* cache_data, TypeClass* g_class);

def TypeInterfaceCheckFunc = fn void(void* check_data, TypeInterface* g_iface);

def TypeValueCollectFunc = fn ZString*(Value* value, uint n_collect_values, TypeCValue collect_values, uint collect_flags);

def TypeValueCopyFunc = fn void(Value* src_value, Value* dest_value);

def TypeValueFreeFunc = fn void(Value* value);

def TypeValueInitFunc = fn void(Value* value);

def TypeValueLCopyFunc = fn ZString*(Value* value, uint n_collect_values, TypeCValue collect_values, uint collect_flags);

def TypeValuePeekPointerFunc = fn void*(Value* value);

def VaClosureMarshal = fn void(Closure* closure, Value* return_value, TypeInstance* instance, ZString args, void* marshal_data, int n_params, usz param_types);

def ValueTransform = fn void(Value* src_value, Value* dest_value);

def WeakNotify = fn void(void* data, Object* where_the_object_was);


<* Maps to GBinding *>
distinct Binding = void*;

// Class to parent cast.
fn Object* Binding.as_Object(&self) => (Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Binding::dup_source *>
extern fn Object* Binding.dup_source(&self, ) @extern("g_binding_dup_source");

<* Maps to Binding::dup_target *>
extern fn Object* Binding.dup_target(&self, ) @extern("g_binding_dup_target");

<* Maps to Binding::get_flags *>
extern fn BindingFlags Binding.get_flags(&self, ) @extern("g_binding_get_flags");

<* Maps to Binding::get_source *>
extern fn Object* Binding.get_source(&self, ) @extern("g_binding_get_source");

<* Maps to Binding::get_source_property *>
extern fn ZString Binding.get_source_property(&self, ) @extern("g_binding_get_source_property");

<* Maps to Binding::get_target *>
extern fn Object* Binding.get_target(&self, ) @extern("g_binding_get_target");

<* Maps to Binding::get_target_property *>
extern fn ZString Binding.get_target_property(&self, ) @extern("g_binding_get_target_property");

<* Maps to Binding::unbind *>
extern fn void Binding.unbind(&self, ) @extern("g_binding_unbind");


// Class Functions



<* Maps to GBindingGroup *>
distinct BindingGroup = void*;

// Class to parent cast.
fn Object* BindingGroup.as_Object(&self) => (Object*)(self);

// Class Constructors

<* Maps to new of BindingGroup *>
extern fn BindingGroup* binding_group_new() @extern("g_binding_group_new");



// Class Methods

<* Maps to BindingGroup::bind *>
extern fn void BindingGroup.bind(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags) @extern("g_binding_group_bind");

<* Maps to BindingGroup::bind_full *>
extern fn void BindingGroup.bind_full(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags, BindingTransformFunc transform_to, BindingTransformFunc transform_from, void* user_data, glib::DestroyNotify user_data_destroy) @extern("g_binding_group_bind_full");

<* Maps to BindingGroup::bind_with_closures *>
extern fn void BindingGroup.bind_with_closures(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags, Closure* transform_to, Closure* transform_from) @extern("g_binding_group_bind_with_closures");

<* Maps to BindingGroup::dup_source *>
extern fn Object* BindingGroup.dup_source(&self, ) @extern("g_binding_group_dup_source");

<* Maps to BindingGroup::set_source *>
extern fn void BindingGroup.set_source(&self, Object* source) @extern("g_binding_group_set_source");


// Class Functions



<* Maps to GInitiallyUnowned *>
distinct InitiallyUnowned = void*;

// Class to parent cast.
fn Object* InitiallyUnowned.as_Object(&self) => (Object*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GObject *>
distinct Object = void*;

// Class to parent cast.


// Class Constructors

<* Maps to new of Object *>
extern fn Object* object_new(usz object_type, ZString first_property_name, any rest) @extern("g_object_new");

<* Maps to new_valist of Object *>
extern fn Object* object_new_valist(usz object_type, ZString first_property_name, ZString var_args) @extern("g_object_new_valist");

<* Maps to new_with_properties of Object *>
extern fn Object* object_new_with_properties(usz object_type, uint n_properties, ZString* names, Value values) @extern("g_object_new_with_properties");

<* Maps to newv of Object *>
extern fn Object* object_newv(usz object_type, uint n_parameters, Parameter parameters) @extern("g_object_newv");



// Class Methods

<* Maps to Object::add_toggle_ref *>
extern fn void Object.add_toggle_ref(&self, ToggleNotify notify, void* data) @extern("g_object_add_toggle_ref");

<* Maps to Object::add_weak_pointer *>
extern fn void Object.add_weak_pointer(&self, void* weak_pointer_location) @extern("g_object_add_weak_pointer");

<* Maps to Object::bind_property *>
extern fn Binding* Object.bind_property(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags) @extern("g_object_bind_property");

<* Maps to Object::bind_property_full *>
extern fn Binding* Object.bind_property_full(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags, BindingTransformFunc transform_to, BindingTransformFunc transform_from, void* user_data, glib::DestroyNotify notify) @extern("g_object_bind_property_full");

<* Maps to Object::bind_property_with_closures *>
extern fn Binding* Object.bind_property_with_closures(&self, ZString source_property, Object* target, ZString target_property, BindingFlags flags, Closure* transform_to, Closure* transform_from) @extern("g_object_bind_property_with_closures");

<* Maps to Object::connect *>
extern fn Object* Object.connect(&self, ZString signal_spec, any rest) @extern("g_object_connect");

<* Maps to Object::disconnect *>
extern fn void Object.disconnect(&self, ZString signal_spec, any rest) @extern("g_object_disconnect");

<* Maps to Object::dup_data *>
extern fn void* Object.dup_data(&self, ZString key, glib::DuplicateFunc dup_func, void* user_data) @extern("g_object_dup_data");

<* Maps to Object::dup_qdata *>
extern fn void* Object.dup_qdata(&self, glib::Quark quark, glib::DuplicateFunc dup_func, void* user_data) @extern("g_object_dup_qdata");

<* Maps to Object::force_floating *>
extern fn void Object.force_floating(&self, ) @extern("g_object_force_floating");

<* Maps to Object::freeze_notify *>
extern fn void Object.freeze_notify(&self, ) @extern("g_object_freeze_notify");

<* Maps to Object::get *>
extern fn void Object.get(&self, ZString first_property_name, any rest) @extern("g_object_get");

<* Maps to Object::get_data *>
extern fn void* Object.get_data(&self, ZString key) @extern("g_object_get_data");

<* Maps to Object::get_property *>
extern fn void Object.get_property(&self, ZString property_name, Value* value) @extern("g_object_get_property");

<* Maps to Object::get_qdata *>
extern fn void* Object.get_qdata(&self, glib::Quark quark) @extern("g_object_get_qdata");

<* Maps to Object::get_valist *>
extern fn void Object.get_valist(&self, ZString first_property_name, ZString var_args) @extern("g_object_get_valist");

<* Maps to Object::getv *>
extern fn void Object.getv(&self, uint n_properties, ZString* names, Value values) @extern("g_object_getv");

<* Maps to Object::is_floating *>
extern fn bool Object.is_floating(&self, ) @extern("g_object_is_floating");

<* Maps to Object::notify *>
extern fn void Object.notify(&self, ZString property_name) @extern("g_object_notify");

<* Maps to Object::notify_by_pspec *>
extern fn void Object.notify_by_pspec(&self, ParamSpec* pspec) @extern("g_object_notify_by_pspec");

<* Maps to Object::ref *>
extern fn Object* Object.ref(&self, ) @extern("g_object_ref");

<* Maps to Object::ref_sink *>
extern fn Object* Object.ref_sink(&self, ) @extern("g_object_ref_sink");

<* Maps to Object::remove_toggle_ref *>
extern fn void Object.remove_toggle_ref(&self, ToggleNotify notify, void* data) @extern("g_object_remove_toggle_ref");

<* Maps to Object::remove_weak_pointer *>
extern fn void Object.remove_weak_pointer(&self, void* weak_pointer_location) @extern("g_object_remove_weak_pointer");

<* Maps to Object::replace_data *>
extern fn bool Object.replace_data(&self, ZString key, void* oldval, void* newval, glib::DestroyNotify destroy, glib::DestroyNotify* old_destroy) @extern("g_object_replace_data");

<* Maps to Object::replace_qdata *>
extern fn bool Object.replace_qdata(&self, glib::Quark quark, void* oldval, void* newval, glib::DestroyNotify destroy, glib::DestroyNotify* old_destroy) @extern("g_object_replace_qdata");

<* Maps to Object::run_dispose *>
extern fn void Object.run_dispose(&self, ) @extern("g_object_run_dispose");

<* Maps to Object::set *>
extern fn void Object.set(&self, ZString first_property_name, any rest) @extern("g_object_set");

<* Maps to Object::set_data *>
extern fn void Object.set_data(&self, ZString key, void* data) @extern("g_object_set_data");

<* Maps to Object::set_data_full *>
extern fn void Object.set_data_full(&self, ZString key, void* data, glib::DestroyNotify destroy) @extern("g_object_set_data_full");

<* Maps to Object::set_property *>
extern fn void Object.set_property(&self, ZString property_name, Value* value) @extern("g_object_set_property");

<* Maps to Object::set_qdata *>
extern fn void Object.set_qdata(&self, glib::Quark quark, void* data) @extern("g_object_set_qdata");

<* Maps to Object::set_qdata_full *>
extern fn void Object.set_qdata_full(&self, glib::Quark quark, void* data, glib::DestroyNotify destroy) @extern("g_object_set_qdata_full");

<* Maps to Object::set_valist *>
extern fn void Object.set_valist(&self, ZString first_property_name, ZString var_args) @extern("g_object_set_valist");

<* Maps to Object::setv *>
extern fn void Object.setv(&self, uint n_properties, ZString* names, Value values) @extern("g_object_setv");

<* Maps to Object::steal_data *>
extern fn void* Object.steal_data(&self, ZString key) @extern("g_object_steal_data");

<* Maps to Object::steal_qdata *>
extern fn void* Object.steal_qdata(&self, glib::Quark quark) @extern("g_object_steal_qdata");

<* Maps to Object::take_ref *>
extern fn Object* Object.take_ref(&self, ) @extern("g_object_take_ref");

<* Maps to Object::thaw_notify *>
extern fn void Object.thaw_notify(&self, ) @extern("g_object_thaw_notify");

<* Maps to Object::unref *>
extern fn void Object.unref(&self, ) @extern("g_object_unref");

<* Maps to Object::watch_closure *>
extern fn void Object.watch_closure(&self, Closure* closure) @extern("g_object_watch_closure");

<* Maps to Object::weak_ref *>
extern fn void Object.weak_ref(&self, WeakNotify notify, void* data) @extern("g_object_weak_ref");

<* Maps to Object::weak_unref *>
extern fn void Object.weak_unref(&self, WeakNotify notify, void* data) @extern("g_object_weak_unref");


// Class Functions

<* Maps to compat_control of Object *>
extern fn usz object_compat_control(usz what, void* data) @extern("g_object_compat_control");

<* Maps to interface_find_property of Object *>
extern fn ParamSpec* object_interface_find_property(TypeInterface* g_iface, ZString property_name) @extern("g_object_interface_find_property");

<* Maps to interface_install_property of Object *>
extern fn void object_interface_install_property(TypeInterface* g_iface, ParamSpec* pspec) @extern("g_object_interface_install_property");

<* Maps to interface_list_properties of Object *>
extern fn ParamSpec* object_interface_list_properties(TypeInterface* g_iface, uint* n_properties_p) @extern("g_object_interface_list_properties");



<* Maps to GParamSpec *>
distinct ParamSpec = void*;

// Class to parent cast.


// Class Constructors



// Class Methods

<* Maps to ParamSpec::get_blurb *>
extern fn ZString ParamSpec.get_blurb(&self, ) @extern("g_param_spec_get_blurb");

<* Maps to ParamSpec::get_default_value *>
extern fn Value* ParamSpec.get_default_value(&self, ) @extern("g_param_spec_get_default_value");

<* Maps to ParamSpec::get_name *>
extern fn ZString ParamSpec.get_name(&self, ) @extern("g_param_spec_get_name");

<* Maps to ParamSpec::get_name_quark *>
extern fn glib::Quark ParamSpec.get_name_quark(&self, ) @extern("g_param_spec_get_name_quark");

<* Maps to ParamSpec::get_nick *>
extern fn ZString ParamSpec.get_nick(&self, ) @extern("g_param_spec_get_nick");

<* Maps to ParamSpec::get_qdata *>
extern fn void* ParamSpec.get_qdata(&self, glib::Quark quark) @extern("g_param_spec_get_qdata");

<* Maps to ParamSpec::get_redirect_target *>
extern fn ParamSpec* ParamSpec.get_redirect_target(&self, ) @extern("g_param_spec_get_redirect_target");

<* Maps to ParamSpec::ref *>
extern fn ParamSpec* ParamSpec.ref(&self, ) @extern("g_param_spec_ref");

<* Maps to ParamSpec::ref_sink *>
extern fn ParamSpec* ParamSpec.ref_sink(&self, ) @extern("g_param_spec_ref_sink");

<* Maps to ParamSpec::set_qdata *>
extern fn void ParamSpec.set_qdata(&self, glib::Quark quark, void* data) @extern("g_param_spec_set_qdata");

<* Maps to ParamSpec::set_qdata_full *>
extern fn void ParamSpec.set_qdata_full(&self, glib::Quark quark, void* data, glib::DestroyNotify destroy) @extern("g_param_spec_set_qdata_full");

<* Maps to ParamSpec::sink *>
extern fn void ParamSpec.sink(&self, ) @extern("g_param_spec_sink");

<* Maps to ParamSpec::steal_qdata *>
extern fn void* ParamSpec.steal_qdata(&self, glib::Quark quark) @extern("g_param_spec_steal_qdata");

<* Maps to ParamSpec::unref *>
extern fn void ParamSpec.unref(&self, ) @extern("g_param_spec_unref");


// Class Functions

<* Maps to internal of ParamSpec *>
extern fn ParamSpec* param_spec_internal(usz param_type, ZString name, ZString nick, ZString blurb, ParamFlags flags) @extern("g_param_spec_internal");

<* Maps to is_valid_name of ParamSpec *>
extern fn bool param_spec_is_valid_name(ZString name) @extern("g_param_spec_is_valid_name");



<* Maps to GParamSpecBoolean *>
distinct ParamSpecBoolean = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecBoolean.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecBoxed *>
distinct ParamSpecBoxed = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecBoxed.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecChar *>
distinct ParamSpecChar = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecChar.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecDouble *>
distinct ParamSpecDouble = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecDouble.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecEnum *>
distinct ParamSpecEnum = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecEnum.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecFlags *>
distinct ParamSpecFlags = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecFlags.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecFloat *>
distinct ParamSpecFloat = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecFloat.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecGType *>
distinct ParamSpecGType = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecGType.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecInt *>
distinct ParamSpecInt = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecInt.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecInt64 *>
distinct ParamSpecInt64 = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecInt64.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecLong *>
distinct ParamSpecLong = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecLong.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecObject *>
distinct ParamSpecObject = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecObject.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecOverride *>
distinct ParamSpecOverride = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecOverride.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecParam *>
distinct ParamSpecParam = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecParam.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecPointer *>
distinct ParamSpecPointer = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecPointer.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecString *>
distinct ParamSpecString = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecString.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecUChar *>
distinct ParamSpecUChar = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecUChar.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecUInt *>
distinct ParamSpecUInt = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecUInt.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecUInt64 *>
distinct ParamSpecUInt64 = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecUInt64.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecULong *>
distinct ParamSpecULong = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecULong.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecUnichar *>
distinct ParamSpecUnichar = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecUnichar.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecValueArray *>
distinct ParamSpecValueArray = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecValueArray.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GParamSpecVariant *>
distinct ParamSpecVariant = void*;

// Class to parent cast.
fn ParamSpec* ParamSpecVariant.as_ParamSpec(&self) => (ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GSignalGroup *>
distinct SignalGroup = void*;

// Class to parent cast.
fn Object* SignalGroup.as_Object(&self) => (Object*)(self);

// Class Constructors

<* Maps to new of SignalGroup *>
extern fn SignalGroup* signal_group_new(usz target_type) @extern("g_signal_group_new");



// Class Methods

<* Maps to SignalGroup::block *>
extern fn void SignalGroup.block(&self, ) @extern("g_signal_group_block");

<* Maps to SignalGroup::connect *>
extern fn void SignalGroup.connect(&self, ZString detailed_signal, Callback c_handler, void* data) @extern("g_signal_group_connect");

<* Maps to SignalGroup::connect_after *>
extern fn void SignalGroup.connect_after(&self, ZString detailed_signal, Callback c_handler, void* data) @extern("g_signal_group_connect_after");

<* Maps to SignalGroup::connect_closure *>
extern fn void SignalGroup.connect_closure(&self, ZString detailed_signal, Closure* closure, bool after) @extern("g_signal_group_connect_closure");

<* Maps to SignalGroup::connect_data *>
extern fn void SignalGroup.connect_data(&self, ZString detailed_signal, Callback c_handler, void* data, ClosureNotify notify, ConnectFlags flags) @extern("g_signal_group_connect_data");

<* Maps to SignalGroup::connect_object *>
extern fn void SignalGroup.connect_object(&self, ZString detailed_signal, Callback c_handler, void* object, ConnectFlags flags) @extern("g_signal_group_connect_object");

<* Maps to SignalGroup::connect_swapped *>
extern fn void SignalGroup.connect_swapped(&self, ZString detailed_signal, Callback c_handler, void* data) @extern("g_signal_group_connect_swapped");

<* Maps to SignalGroup::dup_target *>
extern fn Object* SignalGroup.dup_target(&self, ) @extern("g_signal_group_dup_target");

<* Maps to SignalGroup::set_target *>
extern fn void SignalGroup.set_target(&self, Object* target) @extern("g_signal_group_set_target");

<* Maps to SignalGroup::unblock *>
extern fn void SignalGroup.unblock(&self, ) @extern("g_signal_group_unblock");


// Class Functions



<* Maps to GTypeModule *>
distinct TypeModule = void*;

// Class to parent cast.
fn Object* TypeModule.as_Object(&self) => (Object*)(self);

// Class Constructors



// Class Methods

<* Maps to TypeModule::add_interface *>
extern fn void TypeModule.add_interface(&self, usz instance_type, usz interface_type, InterfaceInfo* interface_info) @extern("g_type_module_add_interface");

<* Maps to TypeModule::register_enum *>
extern fn usz TypeModule.register_enum(&self, ZString name, EnumValue* const_static_values) @extern("g_type_module_register_enum");

<* Maps to TypeModule::register_flags *>
extern fn usz TypeModule.register_flags(&self, ZString name, FlagsValue* const_static_values) @extern("g_type_module_register_flags");

<* Maps to TypeModule::register_type *>
extern fn usz TypeModule.register_type(&self, usz parent_type, ZString type_name, TypeInfo* type_info, TypeFlags flags) @extern("g_type_module_register_type");

<* Maps to TypeModule::set_name *>
extern fn void TypeModule.set_name(&self, ZString name) @extern("g_type_module_set_name");

<* Maps to TypeModule::unuse *>
extern fn void TypeModule.unuse(&self, ) @extern("g_type_module_unuse");

<* Maps to TypeModule::use *>
extern fn bool TypeModule.use(&self, ) @extern("g_type_module_use");


// Class Functions





<* Maps to GTypePlugin *>
interface TypePlugin {

  fn void complete_interface_info(usz instance_type, usz interface_type, InterfaceInfo* info);

  fn void complete_type_info(usz g_type, TypeInfo* info, TypeValueTable* value_table);

  fn void unuse();

  fn void use();

}


<* Maps to boxed_copy *>
extern fn void* boxed_copy(usz boxed_type, void* src_boxed) @extern("g_boxed_copy");

<* Maps to boxed_free *>
extern fn void boxed_free(usz boxed_type, void* boxed) @extern("g_boxed_free");

<* Maps to boxed_type_register_static *>
extern fn usz boxed_type_register_static(ZString name, BoxedCopyFunc boxed_copy, BoxedFreeFunc boxed_free) @extern("g_boxed_type_register_static");

<* Maps to cclosure_marshal_BOOLEAN__BOXED_BOXED *>
extern fn void cclosure_marshal_BOOLEAN__BOXED_BOXED(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_BOOLEAN__BOXED_BOXED");

<* Maps to cclosure_marshal_BOOLEAN__FLAGS *>
extern fn void cclosure_marshal_BOOLEAN__FLAGS(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_BOOLEAN__FLAGS");

<* Maps to cclosure_marshal_STRING__OBJECT_POINTER *>
extern fn void cclosure_marshal_STRING__OBJECT_POINTER(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_STRING__OBJECT_POINTER");

<* Maps to cclosure_marshal_VOID__BOOLEAN *>
extern fn void cclosure_marshal_VOID__BOOLEAN(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__BOOLEAN");

<* Maps to cclosure_marshal_VOID__BOXED *>
extern fn void cclosure_marshal_VOID__BOXED(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__BOXED");

<* Maps to cclosure_marshal_VOID__CHAR *>
extern fn void cclosure_marshal_VOID__CHAR(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__CHAR");

<* Maps to cclosure_marshal_VOID__DOUBLE *>
extern fn void cclosure_marshal_VOID__DOUBLE(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__DOUBLE");

<* Maps to cclosure_marshal_VOID__ENUM *>
extern fn void cclosure_marshal_VOID__ENUM(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__ENUM");

<* Maps to cclosure_marshal_VOID__FLAGS *>
extern fn void cclosure_marshal_VOID__FLAGS(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__FLAGS");

<* Maps to cclosure_marshal_VOID__FLOAT *>
extern fn void cclosure_marshal_VOID__FLOAT(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__FLOAT");

<* Maps to cclosure_marshal_VOID__INT *>
extern fn void cclosure_marshal_VOID__INT(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__INT");

<* Maps to cclosure_marshal_VOID__LONG *>
extern fn void cclosure_marshal_VOID__LONG(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__LONG");

<* Maps to cclosure_marshal_VOID__OBJECT *>
extern fn void cclosure_marshal_VOID__OBJECT(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__OBJECT");

<* Maps to cclosure_marshal_VOID__PARAM *>
extern fn void cclosure_marshal_VOID__PARAM(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__PARAM");

<* Maps to cclosure_marshal_VOID__POINTER *>
extern fn void cclosure_marshal_VOID__POINTER(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__POINTER");

<* Maps to cclosure_marshal_VOID__STRING *>
extern fn void cclosure_marshal_VOID__STRING(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__STRING");

<* Maps to cclosure_marshal_VOID__UCHAR *>
extern fn void cclosure_marshal_VOID__UCHAR(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__UCHAR");

<* Maps to cclosure_marshal_VOID__UINT *>
extern fn void cclosure_marshal_VOID__UINT(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__UINT");

<* Maps to cclosure_marshal_VOID__UINT_POINTER *>
extern fn void cclosure_marshal_VOID__UINT_POINTER(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__UINT_POINTER");

<* Maps to cclosure_marshal_VOID__ULONG *>
extern fn void cclosure_marshal_VOID__ULONG(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__ULONG");

<* Maps to cclosure_marshal_VOID__VARIANT *>
extern fn void cclosure_marshal_VOID__VARIANT(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__VARIANT");

<* Maps to cclosure_marshal_VOID__VOID *>
extern fn void cclosure_marshal_VOID__VOID(Closure* closure, Value* return_value, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_VOID__VOID");

<* Maps to cclosure_marshal_generic *>
extern fn void cclosure_marshal_generic(Closure* closure, Value* return_gvalue, uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) @extern("g_cclosure_marshal_generic");

<* Maps to cclosure_new *>
extern fn Closure* cclosure_new(Callback callback_func, void* user_data, ClosureNotify destroy_data) @extern("g_cclosure_new");

<* Maps to cclosure_new_object *>
extern fn Closure* cclosure_new_object(Callback callback_func, Object* object) @extern("g_cclosure_new_object");

<* Maps to cclosure_new_object_swap *>
extern fn Closure* cclosure_new_object_swap(Callback callback_func, Object* object) @extern("g_cclosure_new_object_swap");

<* Maps to cclosure_new_swap *>
extern fn Closure* cclosure_new_swap(Callback callback_func, void* user_data, ClosureNotify destroy_data) @extern("g_cclosure_new_swap");

<* Maps to clear_object *>
extern fn void clear_object(Object* object_ptr) @extern("g_clear_object");

<* Maps to clear_signal_handler *>
extern fn void clear_signal_handler(ulong* handler_id_ptr, Object* instance) @extern("g_clear_signal_handler");

<* Maps to enum_complete_type_info *>
extern fn void enum_complete_type_info(usz g_enum_type, TypeInfo* info, EnumValue* const_values) @extern("g_enum_complete_type_info");

<* Maps to enum_get_value *>
extern fn EnumValue* enum_get_value(EnumClass* enum_class, int value) @extern("g_enum_get_value");

<* Maps to enum_get_value_by_name *>
extern fn EnumValue* enum_get_value_by_name(EnumClass* enum_class, ZString name) @extern("g_enum_get_value_by_name");

<* Maps to enum_get_value_by_nick *>
extern fn EnumValue* enum_get_value_by_nick(EnumClass* enum_class, ZString nick) @extern("g_enum_get_value_by_nick");

<* Maps to enum_register_static *>
extern fn usz enum_register_static(ZString name, EnumValue* const_static_values) @extern("g_enum_register_static");

<* Maps to enum_to_string *>
extern fn ZString* enum_to_string(usz g_enum_type, int value) @extern("g_enum_to_string");

<* Maps to flags_complete_type_info *>
extern fn void flags_complete_type_info(usz g_flags_type, TypeInfo* info, FlagsValue* const_values) @extern("g_flags_complete_type_info");

<* Maps to flags_get_first_value *>
extern fn FlagsValue* flags_get_first_value(FlagsClass* flags_class, uint value) @extern("g_flags_get_first_value");

<* Maps to flags_get_value_by_name *>
extern fn FlagsValue* flags_get_value_by_name(FlagsClass* flags_class, ZString name) @extern("g_flags_get_value_by_name");

<* Maps to flags_get_value_by_nick *>
extern fn FlagsValue* flags_get_value_by_nick(FlagsClass* flags_class, ZString nick) @extern("g_flags_get_value_by_nick");

<* Maps to flags_register_static *>
extern fn usz flags_register_static(ZString name, FlagsValue* const_static_values) @extern("g_flags_register_static");

<* Maps to flags_to_string *>
extern fn ZString* flags_to_string(usz flags_type, uint value) @extern("g_flags_to_string");

<* Maps to gtype_get_type *>
extern fn usz gtype_get_type() @extern("g_gtype_get_type");

<* Maps to param_spec_boolean *>
extern fn ParamSpec* param_spec_boolean(ZString name, ZString nick, ZString blurb, bool default_value, ParamFlags flags) @extern("g_param_spec_boolean");

<* Maps to param_spec_boxed *>
extern fn ParamSpec* param_spec_boxed(ZString name, ZString nick, ZString blurb, usz boxed_type, ParamFlags flags) @extern("g_param_spec_boxed");

<* Maps to param_spec_char *>
extern fn ParamSpec* param_spec_char(ZString name, ZString nick, ZString blurb, ichar minimum, ichar maximum, ichar default_value, ParamFlags flags) @extern("g_param_spec_char");

<* Maps to param_spec_double *>
extern fn ParamSpec* param_spec_double(ZString name, ZString nick, ZString blurb, double minimum, double maximum, double default_value, ParamFlags flags) @extern("g_param_spec_double");

<* Maps to param_spec_enum *>
extern fn ParamSpec* param_spec_enum(ZString name, ZString nick, ZString blurb, usz enum_type, int default_value, ParamFlags flags) @extern("g_param_spec_enum");

<* Maps to param_spec_flags *>
extern fn ParamSpec* param_spec_flags(ZString name, ZString nick, ZString blurb, usz flags_type, uint default_value, ParamFlags flags) @extern("g_param_spec_flags");

<* Maps to param_spec_float *>
extern fn ParamSpec* param_spec_float(ZString name, ZString nick, ZString blurb, float minimum, float maximum, float default_value, ParamFlags flags) @extern("g_param_spec_float");

<* Maps to param_spec_gtype *>
extern fn ParamSpec* param_spec_gtype(ZString name, ZString nick, ZString blurb, usz is_a_type, ParamFlags flags) @extern("g_param_spec_gtype");

<* Maps to param_spec_int *>
extern fn ParamSpec* param_spec_int(ZString name, ZString nick, ZString blurb, int minimum, int maximum, int default_value, ParamFlags flags) @extern("g_param_spec_int");

<* Maps to param_spec_int64 *>
extern fn ParamSpec* param_spec_int64(ZString name, ZString nick, ZString blurb, long minimum, long maximum, long default_value, ParamFlags flags) @extern("g_param_spec_int64");

<* Maps to param_spec_long *>
extern fn ParamSpec* param_spec_long(ZString name, ZString nick, ZString blurb, long minimum, long maximum, long default_value, ParamFlags flags) @extern("g_param_spec_long");

<* Maps to param_spec_object *>
extern fn ParamSpec* param_spec_object(ZString name, ZString nick, ZString blurb, usz object_type, ParamFlags flags) @extern("g_param_spec_object");

<* Maps to param_spec_override *>
extern fn ParamSpec* param_spec_override(ZString name, ParamSpec* overridden) @extern("g_param_spec_override");

<* Maps to param_spec_param *>
extern fn ParamSpec* param_spec_param(ZString name, ZString nick, ZString blurb, usz param_type, ParamFlags flags) @extern("g_param_spec_param");

<* Maps to param_spec_pointer *>
extern fn ParamSpec* param_spec_pointer(ZString name, ZString nick, ZString blurb, ParamFlags flags) @extern("g_param_spec_pointer");

<* Maps to param_spec_string *>
extern fn ParamSpec* param_spec_string(ZString name, ZString nick, ZString blurb, ZString default_value, ParamFlags flags) @extern("g_param_spec_string");

<* Maps to param_spec_uchar *>
extern fn ParamSpec* param_spec_uchar(ZString name, ZString nick, ZString blurb, char minimum, char maximum, char default_value, ParamFlags flags) @extern("g_param_spec_uchar");

<* Maps to param_spec_uint *>
extern fn ParamSpec* param_spec_uint(ZString name, ZString nick, ZString blurb, uint minimum, uint maximum, uint default_value, ParamFlags flags) @extern("g_param_spec_uint");

<* Maps to param_spec_uint64 *>
extern fn ParamSpec* param_spec_uint64(ZString name, ZString nick, ZString blurb, ulong minimum, ulong maximum, ulong default_value, ParamFlags flags) @extern("g_param_spec_uint64");

<* Maps to param_spec_ulong *>
extern fn ParamSpec* param_spec_ulong(ZString name, ZString nick, ZString blurb, ulong minimum, ulong maximum, ulong default_value, ParamFlags flags) @extern("g_param_spec_ulong");

<* Maps to param_spec_unichar *>
extern fn ParamSpec* param_spec_unichar(ZString name, ZString nick, ZString blurb, uint default_value, ParamFlags flags) @extern("g_param_spec_unichar");

<* Maps to param_spec_value_array *>
extern fn ParamSpec* param_spec_value_array(ZString name, ZString nick, ZString blurb, ParamSpec* element_spec, ParamFlags flags) @extern("g_param_spec_value_array");

<* Maps to param_spec_variant *>
extern fn ParamSpec* param_spec_variant(ZString name, ZString nick, ZString blurb, glib::VariantType* type, glib::Variant* default_value, ParamFlags flags) @extern("g_param_spec_variant");

<* Maps to param_type_register_static *>
extern fn usz param_type_register_static(ZString name, ParamSpecTypeInfo* pspec_info) @extern("g_param_type_register_static");

<* Maps to param_value_convert *>
extern fn bool param_value_convert(ParamSpec* pspec, Value* src_value, Value* dest_value, bool strict_validation) @extern("g_param_value_convert");

<* Maps to param_value_defaults *>
extern fn bool param_value_defaults(ParamSpec* pspec, Value* value) @extern("g_param_value_defaults");

<* Maps to param_value_is_valid *>
extern fn bool param_value_is_valid(ParamSpec* pspec, Value* value) @extern("g_param_value_is_valid");

<* Maps to param_value_set_default *>
extern fn void param_value_set_default(ParamSpec* pspec, Value* value) @extern("g_param_value_set_default");

<* Maps to param_value_validate *>
extern fn bool param_value_validate(ParamSpec* pspec, Value* value) @extern("g_param_value_validate");

<* Maps to param_values_cmp *>
extern fn int param_values_cmp(ParamSpec* pspec, Value* value1, Value* value2) @extern("g_param_values_cmp");

<* Maps to pointer_type_register_static *>
extern fn usz pointer_type_register_static(ZString name) @extern("g_pointer_type_register_static");

<* Maps to signal_accumulator_first_wins *>
extern fn bool signal_accumulator_first_wins(SignalInvocationHint* ihint, Value* return_accu, Value* handler_return, void* dummy) @extern("g_signal_accumulator_first_wins");

<* Maps to signal_accumulator_true_handled *>
extern fn bool signal_accumulator_true_handled(SignalInvocationHint* ihint, Value* return_accu, Value* handler_return, void* dummy) @extern("g_signal_accumulator_true_handled");

<* Maps to signal_add_emission_hook *>
extern fn ulong signal_add_emission_hook(uint signal_id, glib::Quark detail, SignalEmissionHook hook_func, void* hook_data, glib::DestroyNotify data_destroy) @extern("g_signal_add_emission_hook");

<* Maps to signal_chain_from_overridden *>
extern fn void signal_chain_from_overridden(Value instance_and_params, Value* return_value) @extern("g_signal_chain_from_overridden");

<* Maps to signal_chain_from_overridden_handler *>
extern fn void signal_chain_from_overridden_handler(TypeInstance* instance, any rest) @extern("g_signal_chain_from_overridden_handler");

<* Maps to signal_connect_closure *>
extern fn ulong signal_connect_closure(Object* instance, ZString detailed_signal, Closure* closure, bool after) @extern("g_signal_connect_closure");

<* Maps to signal_connect_closure_by_id *>
extern fn ulong signal_connect_closure_by_id(Object* instance, uint signal_id, glib::Quark detail, Closure* closure, bool after) @extern("g_signal_connect_closure_by_id");

<* Maps to signal_connect_data *>
extern fn ulong signal_connect_data(Object* instance, ZString detailed_signal, Callback c_handler, void* data, ClosureNotify destroy_data, ConnectFlags connect_flags) @extern("g_signal_connect_data");

<* Maps to signal_connect_object *>
extern fn ulong signal_connect_object(TypeInstance* instance, ZString detailed_signal, Callback c_handler, Object* gobject, ConnectFlags connect_flags) @extern("g_signal_connect_object");

<* Maps to signal_emit *>
extern fn void signal_emit(Object* instance, uint signal_id, glib::Quark detail, any rest) @extern("g_signal_emit");

<* Maps to signal_emit_by_name *>
extern fn void signal_emit_by_name(Object* instance, ZString detailed_signal, any rest) @extern("g_signal_emit_by_name");

<* Maps to signal_emit_valist *>
extern fn void signal_emit_valist(TypeInstance* instance, uint signal_id, glib::Quark detail, ZString var_args) @extern("g_signal_emit_valist");

<* Maps to signal_emitv *>
extern fn void signal_emitv(Value instance_and_params, uint signal_id, glib::Quark detail, Value* return_value) @extern("g_signal_emitv");

<* Maps to signal_get_invocation_hint *>
extern fn SignalInvocationHint* signal_get_invocation_hint(Object* instance) @extern("g_signal_get_invocation_hint");

<* Maps to signal_handler_block *>
extern fn void signal_handler_block(Object* instance, ulong handler_id) @extern("g_signal_handler_block");

<* Maps to signal_handler_disconnect *>
extern fn void signal_handler_disconnect(Object* instance, ulong handler_id) @extern("g_signal_handler_disconnect");

<* Maps to signal_handler_find *>
extern fn ulong signal_handler_find(Object* instance, SignalMatchType mask, uint signal_id, glib::Quark detail, Closure* closure, void* func, void* data) @extern("g_signal_handler_find");

<* Maps to signal_handler_is_connected *>
extern fn bool signal_handler_is_connected(Object* instance, ulong handler_id) @extern("g_signal_handler_is_connected");

<* Maps to signal_handler_unblock *>
extern fn void signal_handler_unblock(Object* instance, ulong handler_id) @extern("g_signal_handler_unblock");

<* Maps to signal_handlers_block_matched *>
extern fn uint signal_handlers_block_matched(Object* instance, SignalMatchType mask, uint signal_id, glib::Quark detail, Closure* closure, void* func, void* data) @extern("g_signal_handlers_block_matched");

<* Maps to signal_handlers_destroy *>
extern fn void signal_handlers_destroy(Object* instance) @extern("g_signal_handlers_destroy");

<* Maps to signal_handlers_disconnect_matched *>
extern fn uint signal_handlers_disconnect_matched(Object* instance, SignalMatchType mask, uint signal_id, glib::Quark detail, Closure* closure, void* func, void* data) @extern("g_signal_handlers_disconnect_matched");

<* Maps to signal_handlers_unblock_matched *>
extern fn uint signal_handlers_unblock_matched(Object* instance, SignalMatchType mask, uint signal_id, glib::Quark detail, Closure* closure, void* func, void* data) @extern("g_signal_handlers_unblock_matched");

<* Maps to signal_has_handler_pending *>
extern fn bool signal_has_handler_pending(Object* instance, uint signal_id, glib::Quark detail, bool may_be_blocked) @extern("g_signal_has_handler_pending");

<* Maps to signal_is_valid_name *>
extern fn bool signal_is_valid_name(ZString name) @extern("g_signal_is_valid_name");

<* Maps to signal_list_ids *>
extern fn uint signal_list_ids(usz itype, uint* n_ids) @extern("g_signal_list_ids");

<* Maps to signal_lookup *>
extern fn uint signal_lookup(ZString name, usz itype) @extern("g_signal_lookup");

<* Maps to signal_name *>
extern fn ZString signal_name(uint signal_id) @extern("g_signal_name");

<* Maps to signal_new *>
extern fn uint signal_new(ZString signal_name, usz itype, SignalFlags signal_flags, uint class_offset, SignalAccumulator accumulator, void* accu_data, ClosureMarshal c_marshaller, usz return_type, uint n_params, any rest) @extern("g_signal_new");

<* Maps to signal_new_class_handler *>
extern fn uint signal_new_class_handler(ZString signal_name, usz itype, SignalFlags signal_flags, Callback class_handler, SignalAccumulator accumulator, void* accu_data, ClosureMarshal c_marshaller, usz return_type, uint n_params, any rest) @extern("g_signal_new_class_handler");

<* Maps to signal_new_valist *>
extern fn uint signal_new_valist(ZString signal_name, usz itype, SignalFlags signal_flags, Closure* class_closure, SignalAccumulator accumulator, void* accu_data, ClosureMarshal c_marshaller, usz return_type, uint n_params, ZString args) @extern("g_signal_new_valist");

<* Maps to signal_newv *>
extern fn uint signal_newv(ZString signal_name, usz itype, SignalFlags signal_flags, Closure* class_closure, SignalAccumulator accumulator, void* accu_data, ClosureMarshal c_marshaller, usz return_type, uint n_params, usz param_types) @extern("g_signal_newv");

<* Maps to signal_override_class_closure *>
extern fn void signal_override_class_closure(uint signal_id, usz instance_type, Closure* class_closure) @extern("g_signal_override_class_closure");

<* Maps to signal_override_class_handler *>
extern fn void signal_override_class_handler(ZString signal_name, usz instance_type, Callback class_handler) @extern("g_signal_override_class_handler");

<* Maps to signal_parse_name *>
extern fn bool signal_parse_name(ZString detailed_signal, usz itype, uint* signal_id_p, glib::Quark* detail_p, bool force_detail_quark) @extern("g_signal_parse_name");

<* Maps to signal_query *>
extern fn void signal_query(uint signal_id, SignalQuery* query) @extern("g_signal_query");

<* Maps to signal_remove_emission_hook *>
extern fn void signal_remove_emission_hook(uint signal_id, ulong hook_id) @extern("g_signal_remove_emission_hook");

<* Maps to signal_set_va_marshaller *>
extern fn void signal_set_va_marshaller(uint signal_id, usz instance_type, VaClosureMarshal va_marshaller) @extern("g_signal_set_va_marshaller");

<* Maps to signal_stop_emission *>
extern fn void signal_stop_emission(Object* instance, uint signal_id, glib::Quark detail) @extern("g_signal_stop_emission");

<* Maps to signal_stop_emission_by_name *>
extern fn void signal_stop_emission_by_name(Object* instance, ZString detailed_signal) @extern("g_signal_stop_emission_by_name");

<* Maps to signal_type_cclosure_new *>
extern fn Closure* signal_type_cclosure_new(usz itype, uint struct_offset) @extern("g_signal_type_cclosure_new");

<* Maps to source_set_closure *>
extern fn void source_set_closure(glib::Source* source, Closure* closure) @extern("g_source_set_closure");

<* Maps to source_set_dummy_callback *>
extern fn void source_set_dummy_callback(glib::Source* source) @extern("g_source_set_dummy_callback");

<* Maps to strdup_value_contents *>
extern fn ZString* strdup_value_contents(Value* value) @extern("g_strdup_value_contents");

<* Maps to type_add_class_cache_func *>
extern fn void type_add_class_cache_func(void* cache_data, TypeClassCacheFunc cache_func) @extern("g_type_add_class_cache_func");

<* Maps to type_add_class_private *>
extern fn void type_add_class_private(usz class_type, usz private_size) @extern("g_type_add_class_private");

<* Maps to type_add_instance_private *>
extern fn int type_add_instance_private(usz class_type, usz private_size) @extern("g_type_add_instance_private");

<* Maps to type_add_interface_check *>
extern fn void type_add_interface_check(void* check_data, TypeInterfaceCheckFunc check_func) @extern("g_type_add_interface_check");

<* Maps to type_add_interface_dynamic *>
extern fn void type_add_interface_dynamic(usz instance_type, usz interface_type, TypePlugin* plugin) @extern("g_type_add_interface_dynamic");

<* Maps to type_add_interface_static *>
extern fn void type_add_interface_static(usz instance_type, usz interface_type, InterfaceInfo* info) @extern("g_type_add_interface_static");

<* Maps to type_check_class_cast *>
extern fn TypeClass* type_check_class_cast(TypeClass* g_class, usz is_a_type) @extern("g_type_check_class_cast");

<* Maps to type_check_class_is_a *>
extern fn bool type_check_class_is_a(TypeClass* g_class, usz is_a_type) @extern("g_type_check_class_is_a");

<* Maps to type_check_instance *>
extern fn bool type_check_instance(TypeInstance* instance) @extern("g_type_check_instance");

<* Maps to type_check_instance_cast *>
extern fn TypeInstance* type_check_instance_cast(TypeInstance* instance, usz iface_type) @extern("g_type_check_instance_cast");

<* Maps to type_check_instance_is_a *>
extern fn bool type_check_instance_is_a(TypeInstance* instance, usz iface_type) @extern("g_type_check_instance_is_a");

<* Maps to type_check_instance_is_fundamentally_a *>
extern fn bool type_check_instance_is_fundamentally_a(TypeInstance* instance, usz fundamental_type) @extern("g_type_check_instance_is_fundamentally_a");

<* Maps to type_check_is_value_type *>
extern fn bool type_check_is_value_type(usz type) @extern("g_type_check_is_value_type");

<* Maps to type_check_value *>
extern fn bool type_check_value(Value* value) @extern("g_type_check_value");

<* Maps to type_check_value_holds *>
extern fn bool type_check_value_holds(Value* value, usz type) @extern("g_type_check_value_holds");

<* Maps to type_children *>
extern fn usz type_children(usz type, uint* n_children) @extern("g_type_children");

<* Maps to type_class_adjust_private_offset *>
extern fn void type_class_adjust_private_offset(void* g_class, int* private_size_or_offset) @extern("g_type_class_adjust_private_offset");

<* Maps to type_class_peek *>
extern fn TypeClass* type_class_peek(usz type) @extern("g_type_class_peek");

<* Maps to type_class_peek_static *>
extern fn TypeClass* type_class_peek_static(usz type) @extern("g_type_class_peek_static");

<* Maps to type_class_ref *>
extern fn TypeClass* type_class_ref(usz type) @extern("g_type_class_ref");

<* Maps to type_create_instance *>
extern fn TypeInstance* type_create_instance(usz type) @extern("g_type_create_instance");

<* Maps to type_default_interface_peek *>
extern fn TypeInterface* type_default_interface_peek(usz g_type) @extern("g_type_default_interface_peek");

<* Maps to type_default_interface_ref *>
extern fn TypeInterface* type_default_interface_ref(usz g_type) @extern("g_type_default_interface_ref");

<* Maps to type_default_interface_unref *>
extern fn void type_default_interface_unref(TypeInterface* g_iface) @extern("g_type_default_interface_unref");

<* Maps to type_depth *>
extern fn uint type_depth(usz type) @extern("g_type_depth");

<* Maps to type_ensure *>
extern fn void type_ensure(usz type) @extern("g_type_ensure");

<* Maps to type_free_instance *>
extern fn void type_free_instance(TypeInstance* instance) @extern("g_type_free_instance");

<* Maps to type_from_name *>
extern fn usz type_from_name(ZString name) @extern("g_type_from_name");

<* Maps to type_fundamental *>
extern fn usz type_fundamental(usz type_id) @extern("g_type_fundamental");

<* Maps to type_fundamental_next *>
extern fn usz type_fundamental_next() @extern("g_type_fundamental_next");

<* Maps to type_get_instance_count *>
extern fn int type_get_instance_count(usz type) @extern("g_type_get_instance_count");

<* Maps to type_get_plugin *>
extern fn TypePlugin* type_get_plugin(usz type) @extern("g_type_get_plugin");

<* Maps to type_get_qdata *>
extern fn void* type_get_qdata(usz type, glib::Quark quark) @extern("g_type_get_qdata");

<* Maps to type_get_type_registration_serial *>
extern fn uint type_get_type_registration_serial() @extern("g_type_get_type_registration_serial");

<* Maps to type_init *>
extern fn void type_init() @extern("g_type_init");

<* Maps to type_init_with_debug_flags *>
extern fn void type_init_with_debug_flags(TypeDebugFlags debug_flags) @extern("g_type_init_with_debug_flags");

<* Maps to type_interface_add_prerequisite *>
extern fn void type_interface_add_prerequisite(usz interface_type, usz prerequisite_type) @extern("g_type_interface_add_prerequisite");

<* Maps to type_interface_get_plugin *>
extern fn TypePlugin* type_interface_get_plugin(usz instance_type, usz interface_type) @extern("g_type_interface_get_plugin");

<* Maps to type_interface_instantiatable_prerequisite *>
extern fn usz type_interface_instantiatable_prerequisite(usz interface_type) @extern("g_type_interface_instantiatable_prerequisite");

<* Maps to type_interface_peek *>
extern fn TypeInterface* type_interface_peek(TypeClass* instance_class, usz iface_type) @extern("g_type_interface_peek");

<* Maps to type_interface_prerequisites *>
extern fn usz type_interface_prerequisites(usz interface_type, uint* n_prerequisites) @extern("g_type_interface_prerequisites");

<* Maps to type_interfaces *>
extern fn usz type_interfaces(usz type, uint* n_interfaces) @extern("g_type_interfaces");

<* Maps to type_is_a *>
extern fn bool type_is_a(usz type, usz is_a_type) @extern("g_type_is_a");

<* Maps to type_name *>
extern fn ZString type_name(usz type) @extern("g_type_name");

<* Maps to type_name_from_class *>
extern fn ZString type_name_from_class(TypeClass* g_class) @extern("g_type_name_from_class");

<* Maps to type_name_from_instance *>
extern fn ZString type_name_from_instance(TypeInstance* instance) @extern("g_type_name_from_instance");

<* Maps to type_next_base *>
extern fn usz type_next_base(usz leaf_type, usz root_type) @extern("g_type_next_base");

<* Maps to type_parent *>
extern fn usz type_parent(usz type) @extern("g_type_parent");

<* Maps to type_qname *>
extern fn glib::Quark type_qname(usz type) @extern("g_type_qname");

<* Maps to type_query *>
extern fn void type_query(usz type, TypeQuery* query) @extern("g_type_query");

<* Maps to type_register_dynamic *>
extern fn usz type_register_dynamic(usz parent_type, ZString type_name, TypePlugin* plugin, TypeFlags flags) @extern("g_type_register_dynamic");

<* Maps to type_register_fundamental *>
extern fn usz type_register_fundamental(usz type_id, ZString type_name, TypeInfo* info, TypeFundamentalInfo* finfo, TypeFlags flags) @extern("g_type_register_fundamental");

<* Maps to type_register_static *>
extern fn usz type_register_static(usz parent_type, ZString type_name, TypeInfo* info, TypeFlags flags) @extern("g_type_register_static");

<* Maps to type_register_static_simple *>
extern fn usz type_register_static_simple(usz parent_type, ZString type_name, uint class_size, ClassInitFunc class_init, uint instance_size, InstanceInitFunc instance_init, TypeFlags flags) @extern("g_type_register_static_simple");

<* Maps to type_remove_class_cache_func *>
extern fn void type_remove_class_cache_func(void* cache_data, TypeClassCacheFunc cache_func) @extern("g_type_remove_class_cache_func");

<* Maps to type_remove_interface_check *>
extern fn void type_remove_interface_check(void* check_data, TypeInterfaceCheckFunc check_func) @extern("g_type_remove_interface_check");

<* Maps to type_set_qdata *>
extern fn void type_set_qdata(usz type, glib::Quark quark, void* data) @extern("g_type_set_qdata");

<* Maps to type_test_flags *>
extern fn bool type_test_flags(usz type, uint flags) @extern("g_type_test_flags");

<* Maps to type_value_table_peek *>
extern fn TypeValueTable* type_value_table_peek(usz type) @extern("g_type_value_table_peek");

<* Maps to value_register_transform_func *>
extern fn void value_register_transform_func(usz src_type, usz dest_type, ValueTransform transform_func) @extern("g_value_register_transform_func");

<* Maps to value_type_compatible *>
extern fn bool value_type_compatible(usz src_type, usz dest_type) @extern("g_value_type_compatible");

<* Maps to value_type_transformable *>
extern fn bool value_type_transformable(usz src_type, usz dest_type) @extern("g_value_type_transformable");

<* Maps to variant_get_gtype *>
extern fn usz variant_get_gtype() @extern("g_variant_get_gtype");

///END MODULE gobject
