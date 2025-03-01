
///START MODULE gtk
module gtk;

import gobject;

import glib;

import gio;

import pango;

import cairo;

import graphene;

import gdkpixbuf;

import gdk;

import gsk;


distinct ApplicationInhibitFlags = int;
const ApplicationInhibitFlags APPLICATION_INHIBIT_FLAGS_IDLE = 8;
const ApplicationInhibitFlags APPLICATION_INHIBIT_FLAGS_LOGOUT = 1;
const ApplicationInhibitFlags APPLICATION_INHIBIT_FLAGS_SUSPEND = 4;
const ApplicationInhibitFlags APPLICATION_INHIBIT_FLAGS_SWITCH = 2;

distinct BuilderClosureFlags = int;
const BuilderClosureFlags BUILDER_CLOSURE_FLAGS_SWAPPED = 1;

distinct CellRendererState = int;
const CellRendererState CELL_RENDERER_STATE_EXPANDABLE = 32;
const CellRendererState CELL_RENDERER_STATE_EXPANDED = 64;
const CellRendererState CELL_RENDERER_STATE_FOCUSED = 16;
const CellRendererState CELL_RENDERER_STATE_INSENSITIVE = 4;
const CellRendererState CELL_RENDERER_STATE_PRELIT = 2;
const CellRendererState CELL_RENDERER_STATE_SELECTED = 1;
const CellRendererState CELL_RENDERER_STATE_SORTED = 8;

distinct DebugFlags = int;
const DebugFlags DEBUG_FLAGS_A11Y = 131072;
const DebugFlags DEBUG_FLAGS_ACTIONS = 4096;
const DebugFlags DEBUG_FLAGS_BUILDER = 128;
const DebugFlags DEBUG_FLAGS_BUILDER_OBJECTS = 65536;
const DebugFlags DEBUG_FLAGS_CONSTRAINTS = 32768;
const DebugFlags DEBUG_FLAGS_CSS = 1048576;
const DebugFlags DEBUG_FLAGS_GEOMETRY = 16;
const DebugFlags DEBUG_FLAGS_ICONFALLBACK = 262144;
const DebugFlags DEBUG_FLAGS_ICONTHEME = 32;
const DebugFlags DEBUG_FLAGS_INTERACTIVE = 1024;
const DebugFlags DEBUG_FLAGS_INVERT_TEXT_DIR = 524288;
const DebugFlags DEBUG_FLAGS_KEYBINDINGS = 4;
const DebugFlags DEBUG_FLAGS_LAYOUT = 8192;
const DebugFlags DEBUG_FLAGS_MODULES = 8;
const DebugFlags DEBUG_FLAGS_NO_CSS_CACHE = 512;
const DebugFlags DEBUG_FLAGS_PRINTING = 64;
const DebugFlags DEBUG_FLAGS_SIZE_REQUEST = 256;
const DebugFlags DEBUG_FLAGS_SNAPSHOT = 16384;
const DebugFlags DEBUG_FLAGS_TEXT = 1;
const DebugFlags DEBUG_FLAGS_TREE = 2;

distinct DialogFlags = int;
const DialogFlags DIALOG_FLAGS_DESTROY_WITH_PARENT = 2;
const DialogFlags DIALOG_FLAGS_MODAL = 1;
const DialogFlags DIALOG_FLAGS_USE_HEADER_BAR = 4;

distinct EventControllerScrollFlags = int;
const EventControllerScrollFlags EVENT_CONTROLLER_SCROLL_FLAGS_BOTH_AXES = 3;
const EventControllerScrollFlags EVENT_CONTROLLER_SCROLL_FLAGS_DISCRETE = 4;
const EventControllerScrollFlags EVENT_CONTROLLER_SCROLL_FLAGS_HORIZONTAL = 2;
const EventControllerScrollFlags EVENT_CONTROLLER_SCROLL_FLAGS_KINETIC = 8;
const EventControllerScrollFlags EVENT_CONTROLLER_SCROLL_FLAGS_NONE = 0;
const EventControllerScrollFlags EVENT_CONTROLLER_SCROLL_FLAGS_VERTICAL = 1;

distinct FontChooserLevel = int;
const FontChooserLevel FONT_CHOOSER_LEVEL_FAMILY = 0;
const FontChooserLevel FONT_CHOOSER_LEVEL_FEATURES = 8;
const FontChooserLevel FONT_CHOOSER_LEVEL_SIZE = 2;
const FontChooserLevel FONT_CHOOSER_LEVEL_STYLE = 1;
const FontChooserLevel FONT_CHOOSER_LEVEL_VARIATIONS = 4;

distinct IconLookupFlags = int;
const IconLookupFlags ICON_LOOKUP_FLAGS_FORCE_REGULAR = 1;
const IconLookupFlags ICON_LOOKUP_FLAGS_FORCE_SYMBOLIC = 2;
const IconLookupFlags ICON_LOOKUP_FLAGS_PRELOAD = 4;

distinct InputHints = int;
const InputHints INPUT_HINTS_EMOJI = 512;
const InputHints INPUT_HINTS_INHIBIT_OSK = 128;
const InputHints INPUT_HINTS_LOWERCASE = 8;
const InputHints INPUT_HINTS_NONE = 0;
const InputHints INPUT_HINTS_NO_EMOJI = 1024;
const InputHints INPUT_HINTS_NO_SPELLCHECK = 2;
const InputHints INPUT_HINTS_PRIVATE = 2048;
const InputHints INPUT_HINTS_SPELLCHECK = 1;
const InputHints INPUT_HINTS_UPPERCASE_CHARS = 16;
const InputHints INPUT_HINTS_UPPERCASE_SENTENCES = 64;
const InputHints INPUT_HINTS_UPPERCASE_WORDS = 32;
const InputHints INPUT_HINTS_VERTICAL_WRITING = 256;
const InputHints INPUT_HINTS_WORD_COMPLETION = 4;

distinct ListScrollFlags = int;
const ListScrollFlags LIST_SCROLL_FLAGS_FOCUS = 1;
const ListScrollFlags LIST_SCROLL_FLAGS_NONE = 0;
const ListScrollFlags LIST_SCROLL_FLAGS_SELECT = 2;

distinct PickFlags = int;
const PickFlags PICK_FLAGS_DEFAULT = 0;
const PickFlags PICK_FLAGS_INSENSITIVE = 1;
const PickFlags PICK_FLAGS_NON_TARGETABLE = 2;

distinct PopoverMenuFlags = int;
const PopoverMenuFlags POPOVER_MENU_FLAGS_NESTED = 1;
const PopoverMenuFlags POPOVER_MENU_FLAGS_SLIDING = 0;

distinct PrintCapabilities = int;
const PrintCapabilities PRINT_CAPABILITIES_COLLATE = 4;
const PrintCapabilities PRINT_CAPABILITIES_COPIES = 2;
const PrintCapabilities PRINT_CAPABILITIES_GENERATE_PDF = 32;
const PrintCapabilities PRINT_CAPABILITIES_GENERATE_PS = 64;
const PrintCapabilities PRINT_CAPABILITIES_NUMBER_UP = 256;
const PrintCapabilities PRINT_CAPABILITIES_NUMBER_UP_LAYOUT = 512;
const PrintCapabilities PRINT_CAPABILITIES_PAGE_SET = 1;
const PrintCapabilities PRINT_CAPABILITIES_PREVIEW = 128;
const PrintCapabilities PRINT_CAPABILITIES_REVERSE = 8;
const PrintCapabilities PRINT_CAPABILITIES_SCALE = 16;

distinct ShortcutActionFlags = int;
const ShortcutActionFlags SHORTCUT_ACTION_FLAGS_EXCLUSIVE = 1;

distinct StateFlags = int;
const StateFlags STATE_FLAGS_ACTIVE = 1;
const StateFlags STATE_FLAGS_BACKDROP = 64;
const StateFlags STATE_FLAGS_CHECKED = 2048;
const StateFlags STATE_FLAGS_DIR_LTR = 128;
const StateFlags STATE_FLAGS_DIR_RTL = 256;
const StateFlags STATE_FLAGS_DROP_ACTIVE = 4096;
const StateFlags STATE_FLAGS_FOCUSED = 32;
const StateFlags STATE_FLAGS_FOCUS_VISIBLE = 8192;
const StateFlags STATE_FLAGS_FOCUS_WITHIN = 16384;
const StateFlags STATE_FLAGS_INCONSISTENT = 16;
const StateFlags STATE_FLAGS_INSENSITIVE = 8;
const StateFlags STATE_FLAGS_LINK = 512;
const StateFlags STATE_FLAGS_NORMAL = 0;
const StateFlags STATE_FLAGS_PRELIGHT = 2;
const StateFlags STATE_FLAGS_SELECTED = 4;
const StateFlags STATE_FLAGS_VISITED = 1024;

distinct StyleContextPrintFlags = int;
const StyleContextPrintFlags STYLE_CONTEXT_PRINT_FLAGS_NONE = 0;
const StyleContextPrintFlags STYLE_CONTEXT_PRINT_FLAGS_RECURSE = 1;
const StyleContextPrintFlags STYLE_CONTEXT_PRINT_FLAGS_SHOW_CHANGE = 4;
const StyleContextPrintFlags STYLE_CONTEXT_PRINT_FLAGS_SHOW_STYLE = 2;

distinct TextBufferNotifyFlags = int;
const TextBufferNotifyFlags TEXT_BUFFER_NOTIFY_FLAGS_AFTER_DELETE = 8;
const TextBufferNotifyFlags TEXT_BUFFER_NOTIFY_FLAGS_AFTER_INSERT = 2;
const TextBufferNotifyFlags TEXT_BUFFER_NOTIFY_FLAGS_BEFORE_DELETE = 4;
const TextBufferNotifyFlags TEXT_BUFFER_NOTIFY_FLAGS_BEFORE_INSERT = 1;

distinct TextSearchFlags = int;
const TextSearchFlags TEXT_SEARCH_FLAGS_CASE_INSENSITIVE = 4;
const TextSearchFlags TEXT_SEARCH_FLAGS_TEXT_ONLY = 2;
const TextSearchFlags TEXT_SEARCH_FLAGS_VISIBLE_ONLY = 1;

distinct TreeModelFlags = int;
const TreeModelFlags TREE_MODEL_FLAGS_ITERS_PERSIST = 1;
const TreeModelFlags TREE_MODEL_FLAGS_LIST_ONLY = 2;

distinct AccessibleAnnouncementPriority = int;
const AccessibleAnnouncementPriority ACCESSIBLE_ANNOUNCEMENT_PRIORITY_HIGH = 2;
const AccessibleAnnouncementPriority ACCESSIBLE_ANNOUNCEMENT_PRIORITY_LOW = 0;
const AccessibleAnnouncementPriority ACCESSIBLE_ANNOUNCEMENT_PRIORITY_MEDIUM = 1;

distinct AccessibleAutocomplete = int;
const AccessibleAutocomplete ACCESSIBLE_AUTOCOMPLETE_BOTH = 3;
const AccessibleAutocomplete ACCESSIBLE_AUTOCOMPLETE_INLINE = 1;
const AccessibleAutocomplete ACCESSIBLE_AUTOCOMPLETE_LIST = 2;
const AccessibleAutocomplete ACCESSIBLE_AUTOCOMPLETE_NONE = 0;

distinct AccessibleInvalidState = int;
const AccessibleInvalidState ACCESSIBLE_INVALID_STATE_FALSE = 0;
const AccessibleInvalidState ACCESSIBLE_INVALID_STATE_GRAMMAR = 2;
const AccessibleInvalidState ACCESSIBLE_INVALID_STATE_SPELLING = 3;
const AccessibleInvalidState ACCESSIBLE_INVALID_STATE_TRUE = 1;

distinct AccessiblePlatformState = int;
const AccessiblePlatformState ACCESSIBLE_PLATFORM_STATE_ACTIVE = 2;
const AccessiblePlatformState ACCESSIBLE_PLATFORM_STATE_FOCUSABLE = 0;
const AccessiblePlatformState ACCESSIBLE_PLATFORM_STATE_FOCUSED = 1;

distinct AccessibleProperty = int;
const AccessibleProperty ACCESSIBLE_PROPERTY_AUTOCOMPLETE = 0;
const AccessibleProperty ACCESSIBLE_PROPERTY_DESCRIPTION = 1;
const AccessibleProperty ACCESSIBLE_PROPERTY_HAS_POPUP = 2;
const AccessibleProperty ACCESSIBLE_PROPERTY_HELP_TEXT = 19;
const AccessibleProperty ACCESSIBLE_PROPERTY_KEY_SHORTCUTS = 3;
const AccessibleProperty ACCESSIBLE_PROPERTY_LABEL = 4;
const AccessibleProperty ACCESSIBLE_PROPERTY_LEVEL = 5;
const AccessibleProperty ACCESSIBLE_PROPERTY_MODAL = 6;
const AccessibleProperty ACCESSIBLE_PROPERTY_MULTI_LINE = 7;
const AccessibleProperty ACCESSIBLE_PROPERTY_MULTI_SELECTABLE = 8;
const AccessibleProperty ACCESSIBLE_PROPERTY_ORIENTATION = 9;
const AccessibleProperty ACCESSIBLE_PROPERTY_PLACEHOLDER = 10;
const AccessibleProperty ACCESSIBLE_PROPERTY_READ_ONLY = 11;
const AccessibleProperty ACCESSIBLE_PROPERTY_REQUIRED = 12;
const AccessibleProperty ACCESSIBLE_PROPERTY_ROLE_DESCRIPTION = 13;
const AccessibleProperty ACCESSIBLE_PROPERTY_SORT = 14;
const AccessibleProperty ACCESSIBLE_PROPERTY_VALUE_MAX = 15;
const AccessibleProperty ACCESSIBLE_PROPERTY_VALUE_MIN = 16;
const AccessibleProperty ACCESSIBLE_PROPERTY_VALUE_NOW = 17;
const AccessibleProperty ACCESSIBLE_PROPERTY_VALUE_TEXT = 18;

distinct AccessibleRelation = int;
const AccessibleRelation ACCESSIBLE_RELATION_ACTIVE_DESCENDANT = 0;
const AccessibleRelation ACCESSIBLE_RELATION_COL_COUNT = 1;
const AccessibleRelation ACCESSIBLE_RELATION_COL_INDEX = 2;
const AccessibleRelation ACCESSIBLE_RELATION_COL_INDEX_TEXT = 3;
const AccessibleRelation ACCESSIBLE_RELATION_COL_SPAN = 4;
const AccessibleRelation ACCESSIBLE_RELATION_CONTROLS = 5;
const AccessibleRelation ACCESSIBLE_RELATION_DESCRIBED_BY = 6;
const AccessibleRelation ACCESSIBLE_RELATION_DETAILS = 7;
const AccessibleRelation ACCESSIBLE_RELATION_ERROR_MESSAGE = 8;
const AccessibleRelation ACCESSIBLE_RELATION_FLOW_TO = 9;
const AccessibleRelation ACCESSIBLE_RELATION_LABELLED_BY = 10;
const AccessibleRelation ACCESSIBLE_RELATION_OWNS = 11;
const AccessibleRelation ACCESSIBLE_RELATION_POS_IN_SET = 12;
const AccessibleRelation ACCESSIBLE_RELATION_ROW_COUNT = 13;
const AccessibleRelation ACCESSIBLE_RELATION_ROW_INDEX = 14;
const AccessibleRelation ACCESSIBLE_RELATION_ROW_INDEX_TEXT = 15;
const AccessibleRelation ACCESSIBLE_RELATION_ROW_SPAN = 16;
const AccessibleRelation ACCESSIBLE_RELATION_SET_SIZE = 17;

distinct AccessibleRole = int;
const AccessibleRole ACCESSIBLE_ROLE_ALERT = 0;
const AccessibleRole ACCESSIBLE_ROLE_ALERT_DIALOG = 1;
const AccessibleRole ACCESSIBLE_ROLE_APPLICATION = 79;
const AccessibleRole ACCESSIBLE_ROLE_ARTICLE = 82;
const AccessibleRole ACCESSIBLE_ROLE_BANNER = 2;
const AccessibleRole ACCESSIBLE_ROLE_BLOCK_QUOTE = 81;
const AccessibleRole ACCESSIBLE_ROLE_BUTTON = 3;
const AccessibleRole ACCESSIBLE_ROLE_CAPTION = 4;
const AccessibleRole ACCESSIBLE_ROLE_CELL = 5;
const AccessibleRole ACCESSIBLE_ROLE_CHECKBOX = 6;
const AccessibleRole ACCESSIBLE_ROLE_COLUMN_HEADER = 7;
const AccessibleRole ACCESSIBLE_ROLE_COMBO_BOX = 8;
const AccessibleRole ACCESSIBLE_ROLE_COMMAND = 9;
const AccessibleRole ACCESSIBLE_ROLE_COMMENT = 83;
const AccessibleRole ACCESSIBLE_ROLE_COMPOSITE = 10;
const AccessibleRole ACCESSIBLE_ROLE_DIALOG = 11;
const AccessibleRole ACCESSIBLE_ROLE_DOCUMENT = 12;
const AccessibleRole ACCESSIBLE_ROLE_FEED = 13;
const AccessibleRole ACCESSIBLE_ROLE_FORM = 14;
const AccessibleRole ACCESSIBLE_ROLE_GENERIC = 15;
const AccessibleRole ACCESSIBLE_ROLE_GRID = 16;
const AccessibleRole ACCESSIBLE_ROLE_GRID_CELL = 17;
const AccessibleRole ACCESSIBLE_ROLE_GROUP = 18;
const AccessibleRole ACCESSIBLE_ROLE_HEADING = 19;
const AccessibleRole ACCESSIBLE_ROLE_IMG = 20;
const AccessibleRole ACCESSIBLE_ROLE_INPUT = 21;
const AccessibleRole ACCESSIBLE_ROLE_LABEL = 22;
const AccessibleRole ACCESSIBLE_ROLE_LANDMARK = 23;
const AccessibleRole ACCESSIBLE_ROLE_LEGEND = 24;
const AccessibleRole ACCESSIBLE_ROLE_LINK = 25;
const AccessibleRole ACCESSIBLE_ROLE_LIST = 26;
const AccessibleRole ACCESSIBLE_ROLE_LIST_BOX = 27;
const AccessibleRole ACCESSIBLE_ROLE_LIST_ITEM = 28;
const AccessibleRole ACCESSIBLE_ROLE_LOG = 29;
const AccessibleRole ACCESSIBLE_ROLE_MAIN = 30;
const AccessibleRole ACCESSIBLE_ROLE_MARQUEE = 31;
const AccessibleRole ACCESSIBLE_ROLE_MATH = 32;
const AccessibleRole ACCESSIBLE_ROLE_MENU = 34;
const AccessibleRole ACCESSIBLE_ROLE_MENU_BAR = 35;
const AccessibleRole ACCESSIBLE_ROLE_MENU_ITEM = 36;
const AccessibleRole ACCESSIBLE_ROLE_MENU_ITEM_CHECKBOX = 37;
const AccessibleRole ACCESSIBLE_ROLE_MENU_ITEM_RADIO = 38;
const AccessibleRole ACCESSIBLE_ROLE_METER = 33;
const AccessibleRole ACCESSIBLE_ROLE_NAVIGATION = 39;
const AccessibleRole ACCESSIBLE_ROLE_NONE = 40;
const AccessibleRole ACCESSIBLE_ROLE_NOTE = 41;
const AccessibleRole ACCESSIBLE_ROLE_OPTION = 42;
const AccessibleRole ACCESSIBLE_ROLE_PARAGRAPH = 80;
const AccessibleRole ACCESSIBLE_ROLE_PRESENTATION = 43;
const AccessibleRole ACCESSIBLE_ROLE_PROGRESS_BAR = 44;
const AccessibleRole ACCESSIBLE_ROLE_RADIO = 45;
const AccessibleRole ACCESSIBLE_ROLE_RADIO_GROUP = 46;
const AccessibleRole ACCESSIBLE_ROLE_RANGE = 47;
const AccessibleRole ACCESSIBLE_ROLE_REGION = 48;
const AccessibleRole ACCESSIBLE_ROLE_ROW = 49;
const AccessibleRole ACCESSIBLE_ROLE_ROW_GROUP = 50;
const AccessibleRole ACCESSIBLE_ROLE_ROW_HEADER = 51;
const AccessibleRole ACCESSIBLE_ROLE_SCROLLBAR = 52;
const AccessibleRole ACCESSIBLE_ROLE_SEARCH = 53;
const AccessibleRole ACCESSIBLE_ROLE_SEARCH_BOX = 54;
const AccessibleRole ACCESSIBLE_ROLE_SECTION = 55;
const AccessibleRole ACCESSIBLE_ROLE_SECTION_HEAD = 56;
const AccessibleRole ACCESSIBLE_ROLE_SELECT = 57;
const AccessibleRole ACCESSIBLE_ROLE_SEPARATOR = 58;
const AccessibleRole ACCESSIBLE_ROLE_SLIDER = 59;
const AccessibleRole ACCESSIBLE_ROLE_SPIN_BUTTON = 60;
const AccessibleRole ACCESSIBLE_ROLE_STATUS = 61;
const AccessibleRole ACCESSIBLE_ROLE_STRUCTURE = 62;
const AccessibleRole ACCESSIBLE_ROLE_SWITCH = 63;
const AccessibleRole ACCESSIBLE_ROLE_TAB = 64;
const AccessibleRole ACCESSIBLE_ROLE_TABLE = 65;
const AccessibleRole ACCESSIBLE_ROLE_TAB_LIST = 66;
const AccessibleRole ACCESSIBLE_ROLE_TAB_PANEL = 67;
const AccessibleRole ACCESSIBLE_ROLE_TERMINAL = 84;
const AccessibleRole ACCESSIBLE_ROLE_TEXT_BOX = 68;
const AccessibleRole ACCESSIBLE_ROLE_TIME = 69;
const AccessibleRole ACCESSIBLE_ROLE_TIMER = 70;
const AccessibleRole ACCESSIBLE_ROLE_TOGGLE_BUTTON = 78;
const AccessibleRole ACCESSIBLE_ROLE_TOOLBAR = 71;
const AccessibleRole ACCESSIBLE_ROLE_TOOLTIP = 72;
const AccessibleRole ACCESSIBLE_ROLE_TREE = 73;
const AccessibleRole ACCESSIBLE_ROLE_TREE_GRID = 74;
const AccessibleRole ACCESSIBLE_ROLE_TREE_ITEM = 75;
const AccessibleRole ACCESSIBLE_ROLE_WIDGET = 76;
const AccessibleRole ACCESSIBLE_ROLE_WINDOW = 77;

distinct AccessibleSort = int;
const AccessibleSort ACCESSIBLE_SORT_ASCENDING = 1;
const AccessibleSort ACCESSIBLE_SORT_DESCENDING = 2;
const AccessibleSort ACCESSIBLE_SORT_NONE = 0;
const AccessibleSort ACCESSIBLE_SORT_OTHER = 3;

distinct AccessibleState = int;
const AccessibleState ACCESSIBLE_STATE_BUSY = 0;
const AccessibleState ACCESSIBLE_STATE_CHECKED = 1;
const AccessibleState ACCESSIBLE_STATE_DISABLED = 2;
const AccessibleState ACCESSIBLE_STATE_EXPANDED = 3;
const AccessibleState ACCESSIBLE_STATE_HIDDEN = 4;
const AccessibleState ACCESSIBLE_STATE_INVALID = 5;
const AccessibleState ACCESSIBLE_STATE_PRESSED = 6;
const AccessibleState ACCESSIBLE_STATE_SELECTED = 7;
const AccessibleState ACCESSIBLE_STATE_VISITED = 8;

distinct AccessibleTextContentChange = int;
const AccessibleTextContentChange ACCESSIBLE_TEXT_CONTENT_CHANGE_INSERT = 0;
const AccessibleTextContentChange ACCESSIBLE_TEXT_CONTENT_CHANGE_REMOVE = 1;

distinct AccessibleTextGranularity = int;
const AccessibleTextGranularity ACCESSIBLE_TEXT_GRANULARITY_CHARACTER = 0;
const AccessibleTextGranularity ACCESSIBLE_TEXT_GRANULARITY_LINE = 3;
const AccessibleTextGranularity ACCESSIBLE_TEXT_GRANULARITY_PARAGRAPH = 4;
const AccessibleTextGranularity ACCESSIBLE_TEXT_GRANULARITY_SENTENCE = 2;
const AccessibleTextGranularity ACCESSIBLE_TEXT_GRANULARITY_WORD = 1;

distinct AccessibleTristate = int;
const AccessibleTristate ACCESSIBLE_TRISTATE_FALSE = 0;
const AccessibleTristate ACCESSIBLE_TRISTATE_MIXED = 2;
const AccessibleTristate ACCESSIBLE_TRISTATE_TRUE = 1;

distinct Align = int;
const Align ALIGN_BASELINE = 4;
const Align ALIGN_BASELINE_CENTER = 5;
const Align ALIGN_BASELINE_FILL = 4;
const Align ALIGN_CENTER = 3;
const Align ALIGN_END = 2;
const Align ALIGN_FILL = 0;
const Align ALIGN_START = 1;

distinct ArrowType = int;
const ArrowType ARROW_TYPE_DOWN = 1;
const ArrowType ARROW_TYPE_LEFT = 2;
const ArrowType ARROW_TYPE_NONE = 4;
const ArrowType ARROW_TYPE_RIGHT = 3;
const ArrowType ARROW_TYPE_UP = 0;

distinct AssistantPageType = int;
const AssistantPageType ASSISTANT_PAGE_TYPE_CONFIRM = 2;
const AssistantPageType ASSISTANT_PAGE_TYPE_CONTENT = 0;
const AssistantPageType ASSISTANT_PAGE_TYPE_CUSTOM = 5;
const AssistantPageType ASSISTANT_PAGE_TYPE_INTRO = 1;
const AssistantPageType ASSISTANT_PAGE_TYPE_PROGRESS = 4;
const AssistantPageType ASSISTANT_PAGE_TYPE_SUMMARY = 3;

distinct BaselinePosition = int;
const BaselinePosition BASELINE_POSITION_BOTTOM = 2;
const BaselinePosition BASELINE_POSITION_CENTER = 1;
const BaselinePosition BASELINE_POSITION_TOP = 0;

distinct BorderStyle = int;
const BorderStyle BORDER_STYLE_DASHED = 6;
const BorderStyle BORDER_STYLE_DOTTED = 5;
const BorderStyle BORDER_STYLE_DOUBLE = 7;
const BorderStyle BORDER_STYLE_GROOVE = 8;
const BorderStyle BORDER_STYLE_HIDDEN = 1;
const BorderStyle BORDER_STYLE_INSET = 3;
const BorderStyle BORDER_STYLE_NONE = 0;
const BorderStyle BORDER_STYLE_OUTSET = 4;
const BorderStyle BORDER_STYLE_RIDGE = 9;
const BorderStyle BORDER_STYLE_SOLID = 2;

distinct BuilderError = int;
const BuilderError BUILDER_ERROR_DUPLICATE_ID = 8;
const BuilderError BUILDER_ERROR_INVALID_ATTRIBUTE = 3;
const BuilderError BUILDER_ERROR_INVALID_FUNCTION = 14;
const BuilderError BUILDER_ERROR_INVALID_ID = 13;
const BuilderError BUILDER_ERROR_INVALID_PROPERTY = 11;
const BuilderError BUILDER_ERROR_INVALID_SIGNAL = 12;
const BuilderError BUILDER_ERROR_INVALID_TAG = 4;
const BuilderError BUILDER_ERROR_INVALID_TYPE_FUNCTION = 0;
const BuilderError BUILDER_ERROR_INVALID_VALUE = 6;
const BuilderError BUILDER_ERROR_MISSING_ATTRIBUTE = 2;
const BuilderError BUILDER_ERROR_MISSING_PROPERTY_VALUE = 5;
const BuilderError BUILDER_ERROR_OBJECT_TYPE_REFUSED = 9;
const BuilderError BUILDER_ERROR_TEMPLATE_MISMATCH = 10;
const BuilderError BUILDER_ERROR_UNHANDLED_TAG = 1;
const BuilderError BUILDER_ERROR_VERSION_MISMATCH = 7;

distinct ButtonsType = int;
const ButtonsType BUTTONS_TYPE_CANCEL = 3;
const ButtonsType BUTTONS_TYPE_CLOSE = 2;
const ButtonsType BUTTONS_TYPE_NONE = 0;
const ButtonsType BUTTONS_TYPE_OK = 1;
const ButtonsType BUTTONS_TYPE_OK_CANCEL = 5;
const ButtonsType BUTTONS_TYPE_YES_NO = 4;

distinct CellRendererAccelMode = int;
const CellRendererAccelMode CELL_RENDERER_ACCEL_MODE_GTK = 0;
const CellRendererAccelMode CELL_RENDERER_ACCEL_MODE_OTHER = 1;

distinct CellRendererMode = int;
const CellRendererMode CELL_RENDERER_MODE_ACTIVATABLE = 1;
const CellRendererMode CELL_RENDERER_MODE_EDITABLE = 2;
const CellRendererMode CELL_RENDERER_MODE_INERT = 0;

distinct Collation = int;
const Collation COLLATION_FILENAME = 2;
const Collation COLLATION_NONE = 0;
const Collation COLLATION_UNICODE = 1;

distinct ConstraintAttribute = int;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_BASELINE = 11;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_BOTTOM = 4;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_CENTER_X = 9;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_CENTER_Y = 10;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_END = 6;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_HEIGHT = 8;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_LEFT = 1;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_NONE = 0;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_RIGHT = 2;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_START = 5;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_TOP = 3;
const ConstraintAttribute CONSTRAINT_ATTRIBUTE_WIDTH = 7;

distinct ConstraintRelation = int;
const ConstraintRelation CONSTRAINT_RELATION_EQ = 0;
const ConstraintRelation CONSTRAINT_RELATION_GE = 1;
const ConstraintRelation CONSTRAINT_RELATION_LE = -1;

distinct ConstraintStrength = int;
const ConstraintStrength CONSTRAINT_STRENGTH_MEDIUM = 1000;
const ConstraintStrength CONSTRAINT_STRENGTH_REQUIRED = 1001001000;
const ConstraintStrength CONSTRAINT_STRENGTH_STRONG = 1000000000;
const ConstraintStrength CONSTRAINT_STRENGTH_WEAK = 1;

distinct ConstraintVflParserError = int;
const ConstraintVflParserError CONSTRAINT_VFL_PARSER_ERROR_ATTRIBUTE = 1;
const ConstraintVflParserError CONSTRAINT_VFL_PARSER_ERROR_METRIC = 3;
const ConstraintVflParserError CONSTRAINT_VFL_PARSER_ERROR_PRIORITY = 4;
const ConstraintVflParserError CONSTRAINT_VFL_PARSER_ERROR_RELATION = 5;
const ConstraintVflParserError CONSTRAINT_VFL_PARSER_ERROR_SYMBOL = 0;
const ConstraintVflParserError CONSTRAINT_VFL_PARSER_ERROR_VIEW = 2;

distinct ContentFit = int;
const ContentFit CONTENT_FIT_CONTAIN = 1;
const ContentFit CONTENT_FIT_COVER = 2;
const ContentFit CONTENT_FIT_FILL = 0;
const ContentFit CONTENT_FIT_SCALE_DOWN = 3;

distinct CornerType = int;
const CornerType CORNER_TYPE_BOTTOM_LEFT = 1;
const CornerType CORNER_TYPE_BOTTOM_RIGHT = 3;
const CornerType CORNER_TYPE_TOP_LEFT = 0;
const CornerType CORNER_TYPE_TOP_RIGHT = 2;

distinct CssParserError = int;
const CssParserError CSS_PARSER_ERROR_FAILED = 0;
const CssParserError CSS_PARSER_ERROR_IMPORT = 2;
const CssParserError CSS_PARSER_ERROR_NAME = 3;
const CssParserError CSS_PARSER_ERROR_SYNTAX = 1;
const CssParserError CSS_PARSER_ERROR_UNKNOWN_VALUE = 4;

distinct CssParserWarning = int;
const CssParserWarning CSS_PARSER_WARNING_DEPRECATED = 0;
const CssParserWarning CSS_PARSER_WARNING_SYNTAX = 1;
const CssParserWarning CSS_PARSER_WARNING_UNIMPLEMENTED = 2;

distinct DeleteType = int;
const DeleteType DELETE_TYPE_CHARS = 0;
const DeleteType DELETE_TYPE_DISPLAY_LINES = 3;
const DeleteType DELETE_TYPE_DISPLAY_LINE_ENDS = 4;
const DeleteType DELETE_TYPE_PARAGRAPHS = 6;
const DeleteType DELETE_TYPE_PARAGRAPH_ENDS = 5;
const DeleteType DELETE_TYPE_WHITESPACE = 7;
const DeleteType DELETE_TYPE_WORDS = 2;
const DeleteType DELETE_TYPE_WORD_ENDS = 1;

distinct DialogError = int;
const DialogError DIALOG_ERROR_CANCELLED = 1;
const DialogError DIALOG_ERROR_DISMISSED = 2;
const DialogError DIALOG_ERROR_FAILED = 0;

distinct DirectionType = int;
const DirectionType DIRECTION_TYPE_DOWN = 3;
const DirectionType DIRECTION_TYPE_LEFT = 4;
const DirectionType DIRECTION_TYPE_RIGHT = 5;
const DirectionType DIRECTION_TYPE_TAB_BACKWARD = 1;
const DirectionType DIRECTION_TYPE_TAB_FORWARD = 0;
const DirectionType DIRECTION_TYPE_UP = 2;

distinct EditableProperties = int;
const EditableProperties EDITABLE_PROPERTIES_NUM_PROPERTIES = 8;
const EditableProperties EDITABLE_PROPERTIES_PROP_CURSOR_POSITION = 1;
const EditableProperties EDITABLE_PROPERTIES_PROP_EDITABLE = 3;
const EditableProperties EDITABLE_PROPERTIES_PROP_ENABLE_UNDO = 7;
const EditableProperties EDITABLE_PROPERTIES_PROP_MAX_WIDTH_CHARS = 5;
const EditableProperties EDITABLE_PROPERTIES_PROP_SELECTION_BOUND = 2;
const EditableProperties EDITABLE_PROPERTIES_PROP_TEXT = 0;
const EditableProperties EDITABLE_PROPERTIES_PROP_WIDTH_CHARS = 4;
const EditableProperties EDITABLE_PROPERTIES_PROP_XALIGN = 6;

distinct EntryIconPosition = int;
const EntryIconPosition ENTRY_ICON_POSITION_PRIMARY = 0;
const EntryIconPosition ENTRY_ICON_POSITION_SECONDARY = 1;

distinct EventSequenceState = int;
const EventSequenceState EVENT_SEQUENCE_STATE_CLAIMED = 1;
const EventSequenceState EVENT_SEQUENCE_STATE_DENIED = 2;
const EventSequenceState EVENT_SEQUENCE_STATE_NONE = 0;

distinct FileChooserAction = int;
const FileChooserAction FILE_CHOOSER_ACTION_OPEN = 0;
const FileChooserAction FILE_CHOOSER_ACTION_SAVE = 1;
const FileChooserAction FILE_CHOOSER_ACTION_SELECT_FOLDER = 2;

distinct FileChooserError = int;
const FileChooserError FILE_CHOOSER_ERROR_ALREADY_EXISTS = 2;
const FileChooserError FILE_CHOOSER_ERROR_BAD_FILENAME = 1;
const FileChooserError FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME = 3;
const FileChooserError FILE_CHOOSER_ERROR_NONEXISTENT = 0;

distinct FilterChange = int;
const FilterChange FILTER_CHANGE_DIFFERENT = 0;
const FilterChange FILTER_CHANGE_LESS_STRICT = 1;
const FilterChange FILTER_CHANGE_MORE_STRICT = 2;

distinct FilterMatch = int;
const FilterMatch FILTER_MATCH_ALL = 2;
const FilterMatch FILTER_MATCH_NONE = 1;
const FilterMatch FILTER_MATCH_SOME = 0;

distinct FontLevel = int;
const FontLevel FONT_LEVEL_FACE = 1;
const FontLevel FONT_LEVEL_FAMILY = 0;
const FontLevel FONT_LEVEL_FEATURES = 3;
const FontLevel FONT_LEVEL_FONT = 2;

distinct FontRendering = int;
const FontRendering FONT_RENDERING_AUTOMATIC = 0;
const FontRendering FONT_RENDERING_MANUAL = 1;

distinct GraphicsOffloadEnabled = int;
const GraphicsOffloadEnabled GRAPHICS_OFFLOAD_ENABLED_DISABLED = 1;
const GraphicsOffloadEnabled GRAPHICS_OFFLOAD_ENABLED_ENABLED = 0;

distinct IconSize = int;
const IconSize ICON_SIZE_INHERIT = 0;
const IconSize ICON_SIZE_LARGE = 2;
const IconSize ICON_SIZE_NORMAL = 1;

distinct IconThemeError = int;
const IconThemeError ICON_THEME_ERROR_FAILED = 1;
const IconThemeError ICON_THEME_ERROR_NOT_FOUND = 0;

distinct IconViewDropPosition = int;
const IconViewDropPosition ICON_VIEW_DROP_POSITION_DROP_ABOVE = 4;
const IconViewDropPosition ICON_VIEW_DROP_POSITION_DROP_BELOW = 5;
const IconViewDropPosition ICON_VIEW_DROP_POSITION_DROP_INTO = 1;
const IconViewDropPosition ICON_VIEW_DROP_POSITION_DROP_LEFT = 2;
const IconViewDropPosition ICON_VIEW_DROP_POSITION_DROP_RIGHT = 3;
const IconViewDropPosition ICON_VIEW_DROP_POSITION_NO_DROP = 0;

distinct ImageType = int;
const ImageType IMAGE_TYPE_EMPTY = 0;
const ImageType IMAGE_TYPE_GICON = 2;
const ImageType IMAGE_TYPE_ICON_NAME = 1;
const ImageType IMAGE_TYPE_PAINTABLE = 3;

distinct InputPurpose = int;
const InputPurpose INPUT_PURPOSE_ALPHA = 1;
const InputPurpose INPUT_PURPOSE_DIGITS = 2;
const InputPurpose INPUT_PURPOSE_EMAIL = 6;
const InputPurpose INPUT_PURPOSE_FREE_FORM = 0;
const InputPurpose INPUT_PURPOSE_NAME = 7;
const InputPurpose INPUT_PURPOSE_NUMBER = 3;
const InputPurpose INPUT_PURPOSE_PASSWORD = 8;
const InputPurpose INPUT_PURPOSE_PHONE = 4;
const InputPurpose INPUT_PURPOSE_PIN = 9;
const InputPurpose INPUT_PURPOSE_TERMINAL = 10;
const InputPurpose INPUT_PURPOSE_URL = 5;

distinct InscriptionOverflow = int;
const InscriptionOverflow INSCRIPTION_OVERFLOW_CLIP = 0;
const InscriptionOverflow INSCRIPTION_OVERFLOW_ELLIPSIZE_END = 3;
const InscriptionOverflow INSCRIPTION_OVERFLOW_ELLIPSIZE_MIDDLE = 2;
const InscriptionOverflow INSCRIPTION_OVERFLOW_ELLIPSIZE_START = 1;

distinct Justification = int;
const Justification JUSTIFICATION_CENTER = 2;
const Justification JUSTIFICATION_FILL = 3;
const Justification JUSTIFICATION_LEFT = 0;
const Justification JUSTIFICATION_RIGHT = 1;

distinct LevelBarMode = int;
const LevelBarMode LEVEL_BAR_MODE_CONTINUOUS = 0;
const LevelBarMode LEVEL_BAR_MODE_DISCRETE = 1;

distinct License = int;
const License LICENSE_AGPL_3_0 = 13;
const License LICENSE_AGPL_3_0_ONLY = 14;
const License LICENSE_APACHE_2_0 = 16;
const License LICENSE_ARTISTIC = 8;
const License LICENSE_BSD = 6;
const License LICENSE_BSD_3 = 15;
const License LICENSE_CUSTOM = 1;
const License LICENSE_GPL_2_0 = 2;
const License LICENSE_GPL_2_0_ONLY = 9;
const License LICENSE_GPL_3_0 = 3;
const License LICENSE_GPL_3_0_ONLY = 10;
const License LICENSE_LGPL_2_1 = 4;
const License LICENSE_LGPL_2_1_ONLY = 11;
const License LICENSE_LGPL_3_0 = 5;
const License LICENSE_LGPL_3_0_ONLY = 12;
const License LICENSE_LICENSE_0BSD = 18;
const License LICENSE_MIT_X11 = 7;
const License LICENSE_MPL_2_0 = 17;
const License LICENSE_UNKNOWN = 0;

distinct ListTabBehavior = int;
const ListTabBehavior LIST_TAB_BEHAVIOR_ALL = 0;
const ListTabBehavior LIST_TAB_BEHAVIOR_CELL = 2;
const ListTabBehavior LIST_TAB_BEHAVIOR_ITEM = 1;

distinct MessageType = int;
const MessageType MESSAGE_TYPE_ERROR = 3;
const MessageType MESSAGE_TYPE_INFO = 0;
const MessageType MESSAGE_TYPE_OTHER = 4;
const MessageType MESSAGE_TYPE_QUESTION = 2;
const MessageType MESSAGE_TYPE_WARNING = 1;

distinct MovementStep = int;
const MovementStep MOVEMENT_STEP_BUFFER_ENDS = 8;
const MovementStep MOVEMENT_STEP_DISPLAY_LINES = 3;
const MovementStep MOVEMENT_STEP_DISPLAY_LINE_ENDS = 4;
const MovementStep MOVEMENT_STEP_HORIZONTAL_PAGES = 9;
const MovementStep MOVEMENT_STEP_LOGICAL_POSITIONS = 0;
const MovementStep MOVEMENT_STEP_PAGES = 7;
const MovementStep MOVEMENT_STEP_PARAGRAPHS = 5;
const MovementStep MOVEMENT_STEP_PARAGRAPH_ENDS = 6;
const MovementStep MOVEMENT_STEP_VISUAL_POSITIONS = 1;
const MovementStep MOVEMENT_STEP_WORDS = 2;

distinct NaturalWrapMode = int;
const NaturalWrapMode NATURAL_WRAP_MODE_INHERIT = 0;
const NaturalWrapMode NATURAL_WRAP_MODE_NONE = 1;
const NaturalWrapMode NATURAL_WRAP_MODE_WORD = 2;

distinct NotebookTab = int;
const NotebookTab NOTEBOOK_TAB_FIRST = 0;
const NotebookTab NOTEBOOK_TAB_LAST = 1;

distinct NumberUpLayout = int;
const NumberUpLayout NUMBER_UP_LAYOUT_BTLR = 6;
const NumberUpLayout NUMBER_UP_LAYOUT_BTRL = 7;
const NumberUpLayout NUMBER_UP_LAYOUT_LRBT = 1;
const NumberUpLayout NUMBER_UP_LAYOUT_LRTB = 0;
const NumberUpLayout NUMBER_UP_LAYOUT_RLBT = 3;
const NumberUpLayout NUMBER_UP_LAYOUT_RLTB = 2;
const NumberUpLayout NUMBER_UP_LAYOUT_TBLR = 4;
const NumberUpLayout NUMBER_UP_LAYOUT_TBRL = 5;

distinct Ordering = int;
const Ordering ORDERING_EQUAL = 0;
const Ordering ORDERING_LARGER = 1;
const Ordering ORDERING_SMALLER = -1;

distinct Orientation = int;
const Orientation ORIENTATION_HORIZONTAL = 0;
const Orientation ORIENTATION_VERTICAL = 1;

distinct Overflow = int;
const Overflow OVERFLOW_HIDDEN = 1;
const Overflow OVERFLOW_VISIBLE = 0;

distinct PackType = int;
const PackType PACK_TYPE_END = 1;
const PackType PACK_TYPE_START = 0;

distinct PadActionType = int;
const PadActionType PAD_ACTION_TYPE_BUTTON = 0;
const PadActionType PAD_ACTION_TYPE_RING = 1;
const PadActionType PAD_ACTION_TYPE_STRIP = 2;

distinct PageOrientation = int;
const PageOrientation PAGE_ORIENTATION_LANDSCAPE = 1;
const PageOrientation PAGE_ORIENTATION_PORTRAIT = 0;
const PageOrientation PAGE_ORIENTATION_REVERSE_LANDSCAPE = 3;
const PageOrientation PAGE_ORIENTATION_REVERSE_PORTRAIT = 2;

distinct PageSet = int;
const PageSet PAGE_SET_ALL = 0;
const PageSet PAGE_SET_EVEN = 1;
const PageSet PAGE_SET_ODD = 2;

distinct PanDirection = int;
const PanDirection PAN_DIRECTION_DOWN = 3;
const PanDirection PAN_DIRECTION_LEFT = 0;
const PanDirection PAN_DIRECTION_RIGHT = 1;
const PanDirection PAN_DIRECTION_UP = 2;

distinct PolicyType = int;
const PolicyType POLICY_TYPE_ALWAYS = 0;
const PolicyType POLICY_TYPE_AUTOMATIC = 1;
const PolicyType POLICY_TYPE_EXTERNAL = 3;
const PolicyType POLICY_TYPE_NEVER = 2;

distinct PositionType = int;
const PositionType POSITION_TYPE_BOTTOM = 3;
const PositionType POSITION_TYPE_LEFT = 0;
const PositionType POSITION_TYPE_RIGHT = 1;
const PositionType POSITION_TYPE_TOP = 2;

distinct PrintDuplex = int;
const PrintDuplex PRINT_DUPLEX_HORIZONTAL = 1;
const PrintDuplex PRINT_DUPLEX_SIMPLEX = 0;
const PrintDuplex PRINT_DUPLEX_VERTICAL = 2;

distinct PrintError = int;
const PrintError PRINT_ERROR_GENERAL = 0;
const PrintError PRINT_ERROR_INTERNAL_ERROR = 1;
const PrintError PRINT_ERROR_INVALID_FILE = 3;
const PrintError PRINT_ERROR_NOMEM = 2;

distinct PrintOperationAction = int;
const PrintOperationAction PRINT_OPERATION_ACTION_EXPORT = 3;
const PrintOperationAction PRINT_OPERATION_ACTION_PREVIEW = 2;
const PrintOperationAction PRINT_OPERATION_ACTION_PRINT = 1;
const PrintOperationAction PRINT_OPERATION_ACTION_PRINT_DIALOG = 0;

distinct PrintOperationResult = int;
const PrintOperationResult PRINT_OPERATION_RESULT_APPLY = 1;
const PrintOperationResult PRINT_OPERATION_RESULT_CANCEL = 2;
const PrintOperationResult PRINT_OPERATION_RESULT_ERROR = 0;
const PrintOperationResult PRINT_OPERATION_RESULT_IN_PROGRESS = 3;

distinct PrintPages = int;
const PrintPages PRINT_PAGES_ALL = 0;
const PrintPages PRINT_PAGES_CURRENT = 1;
const PrintPages PRINT_PAGES_RANGES = 2;
const PrintPages PRINT_PAGES_SELECTION = 3;

distinct PrintQuality = int;
const PrintQuality PRINT_QUALITY_DRAFT = 3;
const PrintQuality PRINT_QUALITY_HIGH = 2;
const PrintQuality PRINT_QUALITY_LOW = 0;
const PrintQuality PRINT_QUALITY_NORMAL = 1;

distinct PrintStatus = int;
const PrintStatus PRINT_STATUS_FINISHED = 7;
const PrintStatus PRINT_STATUS_FINISHED_ABORTED = 8;
const PrintStatus PRINT_STATUS_GENERATING_DATA = 2;
const PrintStatus PRINT_STATUS_INITIAL = 0;
const PrintStatus PRINT_STATUS_PENDING = 4;
const PrintStatus PRINT_STATUS_PENDING_ISSUE = 5;
const PrintStatus PRINT_STATUS_PREPARING = 1;
const PrintStatus PRINT_STATUS_PRINTING = 6;
const PrintStatus PRINT_STATUS_SENDING_DATA = 3;

distinct PropagationLimit = int;
const PropagationLimit PROPAGATION_LIMIT_NONE = 0;
const PropagationLimit PROPAGATION_LIMIT_SAME_NATIVE = 1;

distinct PropagationPhase = int;
const PropagationPhase PROPAGATION_PHASE_BUBBLE = 2;
const PropagationPhase PROPAGATION_PHASE_CAPTURE = 1;
const PropagationPhase PROPAGATION_PHASE_NONE = 0;
const PropagationPhase PROPAGATION_PHASE_TARGET = 3;

distinct RecentManagerError = int;
const RecentManagerError RECENT_MANAGER_ERROR_INVALID_ENCODING = 2;
const RecentManagerError RECENT_MANAGER_ERROR_INVALID_URI = 1;
const RecentManagerError RECENT_MANAGER_ERROR_NOT_FOUND = 0;
const RecentManagerError RECENT_MANAGER_ERROR_NOT_REGISTERED = 3;
const RecentManagerError RECENT_MANAGER_ERROR_READ = 4;
const RecentManagerError RECENT_MANAGER_ERROR_UNKNOWN = 6;
const RecentManagerError RECENT_MANAGER_ERROR_WRITE = 5;

distinct ResponseType = int;
const ResponseType RESPONSE_TYPE_ACCEPT = -3;
const ResponseType RESPONSE_TYPE_APPLY = -10;
const ResponseType RESPONSE_TYPE_CANCEL = -6;
const ResponseType RESPONSE_TYPE_CLOSE = -7;
const ResponseType RESPONSE_TYPE_DELETE_EVENT = -4;
const ResponseType RESPONSE_TYPE_HELP = -11;
const ResponseType RESPONSE_TYPE_NO = -9;
const ResponseType RESPONSE_TYPE_NONE = -1;
const ResponseType RESPONSE_TYPE_OK = -5;
const ResponseType RESPONSE_TYPE_REJECT = -2;
const ResponseType RESPONSE_TYPE_YES = -8;

distinct RevealerTransitionType = int;
const RevealerTransitionType REVEALER_TRANSITION_TYPE_CROSSFADE = 1;
const RevealerTransitionType REVEALER_TRANSITION_TYPE_NONE = 0;
const RevealerTransitionType REVEALER_TRANSITION_TYPE_SLIDE_DOWN = 5;
const RevealerTransitionType REVEALER_TRANSITION_TYPE_SLIDE_LEFT = 3;
const RevealerTransitionType REVEALER_TRANSITION_TYPE_SLIDE_RIGHT = 2;
const RevealerTransitionType REVEALER_TRANSITION_TYPE_SLIDE_UP = 4;
const RevealerTransitionType REVEALER_TRANSITION_TYPE_SWING_DOWN = 9;
const RevealerTransitionType REVEALER_TRANSITION_TYPE_SWING_LEFT = 7;
const RevealerTransitionType REVEALER_TRANSITION_TYPE_SWING_RIGHT = 6;
const RevealerTransitionType REVEALER_TRANSITION_TYPE_SWING_UP = 8;

distinct ScrollStep = int;
const ScrollStep SCROLL_STEP_ENDS = 2;
const ScrollStep SCROLL_STEP_HORIZONTAL_ENDS = 5;
const ScrollStep SCROLL_STEP_HORIZONTAL_PAGES = 4;
const ScrollStep SCROLL_STEP_HORIZONTAL_STEPS = 3;
const ScrollStep SCROLL_STEP_PAGES = 1;
const ScrollStep SCROLL_STEP_STEPS = 0;

distinct ScrollType = int;
const ScrollType SCROLL_TYPE_END = 15;
const ScrollType SCROLL_TYPE_JUMP = 1;
const ScrollType SCROLL_TYPE_NONE = 0;
const ScrollType SCROLL_TYPE_PAGE_BACKWARD = 4;
const ScrollType SCROLL_TYPE_PAGE_DOWN = 9;
const ScrollType SCROLL_TYPE_PAGE_FORWARD = 5;
const ScrollType SCROLL_TYPE_PAGE_LEFT = 12;
const ScrollType SCROLL_TYPE_PAGE_RIGHT = 13;
const ScrollType SCROLL_TYPE_PAGE_UP = 8;
const ScrollType SCROLL_TYPE_START = 14;
const ScrollType SCROLL_TYPE_STEP_BACKWARD = 2;
const ScrollType SCROLL_TYPE_STEP_DOWN = 7;
const ScrollType SCROLL_TYPE_STEP_FORWARD = 3;
const ScrollType SCROLL_TYPE_STEP_LEFT = 10;
const ScrollType SCROLL_TYPE_STEP_RIGHT = 11;
const ScrollType SCROLL_TYPE_STEP_UP = 6;

distinct ScrollablePolicy = int;
const ScrollablePolicy SCROLLABLE_POLICY_MINIMUM = 0;
const ScrollablePolicy SCROLLABLE_POLICY_NATURAL = 1;

distinct SelectionMode = int;
const SelectionMode SELECTION_MODE_BROWSE = 2;
const SelectionMode SELECTION_MODE_MULTIPLE = 3;
const SelectionMode SELECTION_MODE_NONE = 0;
const SelectionMode SELECTION_MODE_SINGLE = 1;

distinct SensitivityType = int;
const SensitivityType SENSITIVITY_TYPE_AUTO = 0;
const SensitivityType SENSITIVITY_TYPE_OFF = 2;
const SensitivityType SENSITIVITY_TYPE_ON = 1;

distinct ShortcutScope = int;
const ShortcutScope SHORTCUT_SCOPE_GLOBAL = 2;
const ShortcutScope SHORTCUT_SCOPE_LOCAL = 0;
const ShortcutScope SHORTCUT_SCOPE_MANAGED = 1;

distinct ShortcutType = int;
const ShortcutType SHORTCUT_TYPE_ACCELERATOR = 0;
const ShortcutType SHORTCUT_TYPE_GESTURE = 7;
const ShortcutType SHORTCUT_TYPE_GESTURE_PINCH = 1;
const ShortcutType SHORTCUT_TYPE_GESTURE_ROTATE_CLOCKWISE = 3;
const ShortcutType SHORTCUT_TYPE_GESTURE_ROTATE_COUNTERCLOCKWISE = 4;
const ShortcutType SHORTCUT_TYPE_GESTURE_STRETCH = 2;
const ShortcutType SHORTCUT_TYPE_GESTURE_SWIPE_LEFT = 8;
const ShortcutType SHORTCUT_TYPE_GESTURE_SWIPE_RIGHT = 9;
const ShortcutType SHORTCUT_TYPE_GESTURE_TWO_FINGER_SWIPE_LEFT = 5;
const ShortcutType SHORTCUT_TYPE_GESTURE_TWO_FINGER_SWIPE_RIGHT = 6;

distinct SizeGroupMode = int;
const SizeGroupMode SIZE_GROUP_MODE_BOTH = 3;
const SizeGroupMode SIZE_GROUP_MODE_HORIZONTAL = 1;
const SizeGroupMode SIZE_GROUP_MODE_NONE = 0;
const SizeGroupMode SIZE_GROUP_MODE_VERTICAL = 2;

distinct SizeRequestMode = int;
const SizeRequestMode SIZE_REQUEST_MODE_CONSTANT_SIZE = 2;
const SizeRequestMode SIZE_REQUEST_MODE_HEIGHT_FOR_WIDTH = 0;
const SizeRequestMode SIZE_REQUEST_MODE_WIDTH_FOR_HEIGHT = 1;

distinct SortType = int;
const SortType SORT_TYPE_ASCENDING = 0;
const SortType SORT_TYPE_DESCENDING = 1;

distinct SorterChange = int;
const SorterChange SORTER_CHANGE_DIFFERENT = 0;
const SorterChange SORTER_CHANGE_INVERTED = 1;
const SorterChange SORTER_CHANGE_LESS_STRICT = 2;
const SorterChange SORTER_CHANGE_MORE_STRICT = 3;

distinct SorterOrder = int;
const SorterOrder SORTER_ORDER_NONE = 1;
const SorterOrder SORTER_ORDER_PARTIAL = 0;
const SorterOrder SORTER_ORDER_TOTAL = 2;

distinct SpinButtonUpdatePolicy = int;
const SpinButtonUpdatePolicy SPIN_BUTTON_UPDATE_POLICY_ALWAYS = 0;
const SpinButtonUpdatePolicy SPIN_BUTTON_UPDATE_POLICY_IF_VALID = 1;

distinct SpinType = int;
const SpinType SPIN_TYPE_END = 5;
const SpinType SPIN_TYPE_HOME = 4;
const SpinType SPIN_TYPE_PAGE_BACKWARD = 3;
const SpinType SPIN_TYPE_PAGE_FORWARD = 2;
const SpinType SPIN_TYPE_STEP_BACKWARD = 1;
const SpinType SPIN_TYPE_STEP_FORWARD = 0;
const SpinType SPIN_TYPE_USER_DEFINED = 6;

distinct StackTransitionType = int;
const StackTransitionType STACK_TRANSITION_TYPE_CROSSFADE = 1;
const StackTransitionType STACK_TRANSITION_TYPE_NONE = 0;
const StackTransitionType STACK_TRANSITION_TYPE_OVER_DOWN = 9;
const StackTransitionType STACK_TRANSITION_TYPE_OVER_DOWN_UP = 17;
const StackTransitionType STACK_TRANSITION_TYPE_OVER_LEFT = 10;
const StackTransitionType STACK_TRANSITION_TYPE_OVER_LEFT_RIGHT = 18;
const StackTransitionType STACK_TRANSITION_TYPE_OVER_RIGHT = 11;
const StackTransitionType STACK_TRANSITION_TYPE_OVER_RIGHT_LEFT = 19;
const StackTransitionType STACK_TRANSITION_TYPE_OVER_UP = 8;
const StackTransitionType STACK_TRANSITION_TYPE_OVER_UP_DOWN = 16;
const StackTransitionType STACK_TRANSITION_TYPE_ROTATE_LEFT = 20;
const StackTransitionType STACK_TRANSITION_TYPE_ROTATE_LEFT_RIGHT = 22;
const StackTransitionType STACK_TRANSITION_TYPE_ROTATE_RIGHT = 21;
const StackTransitionType STACK_TRANSITION_TYPE_SLIDE_DOWN = 5;
const StackTransitionType STACK_TRANSITION_TYPE_SLIDE_LEFT = 3;
const StackTransitionType STACK_TRANSITION_TYPE_SLIDE_LEFT_RIGHT = 6;
const StackTransitionType STACK_TRANSITION_TYPE_SLIDE_RIGHT = 2;
const StackTransitionType STACK_TRANSITION_TYPE_SLIDE_UP = 4;
const StackTransitionType STACK_TRANSITION_TYPE_SLIDE_UP_DOWN = 7;
const StackTransitionType STACK_TRANSITION_TYPE_UNDER_DOWN = 13;
const StackTransitionType STACK_TRANSITION_TYPE_UNDER_LEFT = 14;
const StackTransitionType STACK_TRANSITION_TYPE_UNDER_RIGHT = 15;
const StackTransitionType STACK_TRANSITION_TYPE_UNDER_UP = 12;

distinct StringFilterMatchMode = int;
const StringFilterMatchMode STRING_FILTER_MATCH_MODE_EXACT = 0;
const StringFilterMatchMode STRING_FILTER_MATCH_MODE_PREFIX = 2;
const StringFilterMatchMode STRING_FILTER_MATCH_MODE_SUBSTRING = 1;

distinct SymbolicColor = int;
const SymbolicColor SYMBOLIC_COLOR_ERROR = 1;
const SymbolicColor SYMBOLIC_COLOR_FOREGROUND = 0;
const SymbolicColor SYMBOLIC_COLOR_SUCCESS = 3;
const SymbolicColor SYMBOLIC_COLOR_WARNING = 2;

distinct SystemSetting = int;
const SystemSetting SYSTEM_SETTING_DISPLAY = 3;
const SystemSetting SYSTEM_SETTING_DPI = 0;
const SystemSetting SYSTEM_SETTING_FONT_CONFIG = 2;
const SystemSetting SYSTEM_SETTING_FONT_NAME = 1;
const SystemSetting SYSTEM_SETTING_ICON_THEME = 4;

distinct TextDirection = int;
const TextDirection TEXT_DIRECTION_LTR = 1;
const TextDirection TEXT_DIRECTION_NONE = 0;
const TextDirection TEXT_DIRECTION_RTL = 2;

distinct TextExtendSelection = int;
const TextExtendSelection TEXT_EXTEND_SELECTION_LINE = 1;
const TextExtendSelection TEXT_EXTEND_SELECTION_WORD = 0;

distinct TextViewLayer = int;
const TextViewLayer TEXT_VIEW_LAYER_ABOVE_TEXT = 1;
const TextViewLayer TEXT_VIEW_LAYER_BELOW_TEXT = 0;

distinct TextWindowType = int;
const TextWindowType TEXT_WINDOW_TYPE_BOTTOM = 6;
const TextWindowType TEXT_WINDOW_TYPE_LEFT = 3;
const TextWindowType TEXT_WINDOW_TYPE_RIGHT = 4;
const TextWindowType TEXT_WINDOW_TYPE_TEXT = 2;
const TextWindowType TEXT_WINDOW_TYPE_TOP = 5;
const TextWindowType TEXT_WINDOW_TYPE_WIDGET = 1;

distinct TreeViewColumnSizing = int;
const TreeViewColumnSizing TREE_VIEW_COLUMN_SIZING_AUTOSIZE = 1;
const TreeViewColumnSizing TREE_VIEW_COLUMN_SIZING_FIXED = 2;
const TreeViewColumnSizing TREE_VIEW_COLUMN_SIZING_GROW_ONLY = 0;

distinct TreeViewDropPosition = int;
const TreeViewDropPosition TREE_VIEW_DROP_POSITION_AFTER = 1;
const TreeViewDropPosition TREE_VIEW_DROP_POSITION_BEFORE = 0;
const TreeViewDropPosition TREE_VIEW_DROP_POSITION_INTO_OR_AFTER = 3;
const TreeViewDropPosition TREE_VIEW_DROP_POSITION_INTO_OR_BEFORE = 2;

distinct TreeViewGridLines = int;
const TreeViewGridLines TREE_VIEW_GRID_LINES_BOTH = 3;
const TreeViewGridLines TREE_VIEW_GRID_LINES_HORIZONTAL = 1;
const TreeViewGridLines TREE_VIEW_GRID_LINES_NONE = 0;
const TreeViewGridLines TREE_VIEW_GRID_LINES_VERTICAL = 2;

distinct Unit = int;
const Unit UNIT_INCH = 2;
const Unit UNIT_MM = 3;
const Unit UNIT_NONE = 0;
const Unit UNIT_POINTS = 1;

distinct WrapMode = int;
const WrapMode WRAP_MODE_CHAR = 1;
const WrapMode WRAP_MODE_NONE = 0;
const WrapMode WRAP_MODE_WORD = 2;
const WrapMode WRAP_MODE_WORD_CHAR = 3;



distinct ATContextClass = void*;

distinct AccessibleInterface = void*;

distinct AccessibleList = void*;

distinct AccessibleRangeInterface = void*;

distinct AccessibleTextInterface = void*;

distinct AccessibleTextRange = void*;

distinct ActionableInterface = void*;

distinct ActivateActionClass = void*;

distinct AdjustmentClass = void*;

distinct AlertDialogClass = void*;

distinct AlternativeTriggerClass = void*;

distinct AnyFilterClass = void*;

distinct ApplicationClass = void*;

distinct ApplicationWindowClass = void*;

distinct BinLayoutClass = void*;

distinct Bitset = void*;

distinct BitsetIter = void*;

distinct BookmarkListClass = void*;

distinct BoolFilterClass = void*;

distinct Border = void*;

distinct BoxClass = void*;

distinct BoxLayoutClass = void*;

distinct BuildableIface = void*;

distinct BuildableParseContext = void*;

distinct BuildableParser = void*;

distinct BuilderCScopeClass = void*;

distinct BuilderClass = void*;

distinct BuilderListItemFactoryClass = void*;

distinct BuilderScopeInterface = void*;

distinct ButtonClass = void*;

distinct ButtonPrivate = void*;

distinct CallbackActionClass = void*;

distinct CellAreaClass = void*;

distinct CellAreaContextClass = void*;

distinct CellAreaContextPrivate = void*;

distinct CellEditableIface = void*;

distinct CellLayoutIface = void*;

distinct CellRendererClass = void*;

distinct CellRendererClassPrivate = void*;

distinct CellRendererPrivate = void*;

distinct CellRendererTextClass = void*;

distinct CenterBoxClass = void*;

distinct CenterLayoutClass = void*;

distinct CheckButtonClass = void*;

distinct ColorChooserInterface = void*;

distinct ColorDialogButtonClass = void*;

distinct ColorDialogClass = void*;

distinct ColumnViewCellClass = void*;

distinct ColumnViewClass = void*;

distinct ColumnViewColumnClass = void*;

distinct ColumnViewRowClass = void*;

distinct ColumnViewSorterClass = void*;

distinct ComboBoxClass = void*;

distinct ConstraintClass = void*;

distinct ConstraintGuideClass = void*;

distinct ConstraintLayoutChildClass = void*;

distinct ConstraintLayoutClass = void*;

distinct ConstraintTargetInterface = void*;

distinct CssLocation = void*;

distinct CssProviderClass = void*;

distinct CssProviderPrivate = void*;

distinct CssSection = void*;

distinct CssStyleChange = void*;

distinct CustomFilterClass = void*;

distinct CustomLayoutClass = void*;

distinct CustomSorterClass = void*;

distinct DialogClass = void*;

distinct DirectoryListClass = void*;

distinct DragIconClass = void*;

distinct DragSourceClass = void*;

distinct DrawingAreaClass = void*;

distinct DropControllerMotionClass = void*;

distinct DropDownClass = void*;

distinct DropTargetAsyncClass = void*;

distinct DropTargetClass = void*;

distinct EditableInterface = void*;

distinct EditableLabelClass = void*;

distinct EmojiChooserClass = void*;

distinct EntryBufferClass = void*;

distinct EntryClass = void*;

distinct EventControllerClass = void*;

distinct EventControllerFocusClass = void*;

distinct EventControllerKeyClass = void*;

distinct EventControllerLegacyClass = void*;

distinct EventControllerMotionClass = void*;

distinct EventControllerScrollClass = void*;

distinct EveryFilterClass = void*;

distinct ExpressionWatch = void*;

distinct FileChooserNativeClass = void*;

distinct FileDialogClass = void*;

distinct FileLauncherClass = void*;

distinct FilterClass = void*;

distinct FilterListModelClass = void*;

distinct FixedClass = void*;

distinct FixedLayoutChildClass = void*;

distinct FixedLayoutClass = void*;

distinct FlattenListModelClass = void*;

distinct FlowBoxChildClass = void*;

distinct FontChooserIface = void*;

distinct FontDialogButtonClass = void*;

distinct FontDialogClass = void*;

distinct FrameClass = void*;

distinct GLAreaClass = void*;

distinct GestureClass = void*;

distinct GestureClickClass = void*;

distinct GestureDragClass = void*;

distinct GestureLongPressClass = void*;

distinct GesturePanClass = void*;

distinct GestureRotateClass = void*;

distinct GestureSingleClass = void*;

distinct GestureStylusClass = void*;

distinct GestureSwipeClass = void*;

distinct GestureZoomClass = void*;

distinct GraphicsOffloadClass = void*;

distinct GridClass = void*;

distinct GridLayoutChildClass = void*;

distinct GridLayoutClass = void*;

distinct GridViewClass = void*;

distinct IMContextClass = void*;

distinct IMContextSimpleClass = void*;

distinct IMContextSimplePrivate = void*;

distinct IMMulticontextClass = void*;

distinct IMMulticontextPrivate = void*;

distinct InscriptionClass = void*;

distinct KeyvalTriggerClass = void*;

distinct LayoutChildClass = void*;

distinct LayoutManagerClass = void*;

distinct ListBaseClass = void*;

distinct ListBoxRowClass = void*;

distinct ListHeaderClass = void*;

distinct ListItemClass = void*;

distinct ListItemFactoryClass = void*;

distinct ListStoreClass = void*;

distinct ListStorePrivate = void*;

distinct ListViewClass = void*;

distinct MapListModelClass = void*;

distinct MediaControlsClass = void*;

distinct MediaFileClass = void*;

distinct MediaStreamClass = void*;

distinct MessageDialogClass = void*;

distinct MnemonicActionClass = void*;

distinct MnemonicTriggerClass = void*;

distinct MountOperationClass = void*;

distinct MountOperationPrivate = void*;

distinct MultiFilterClass = void*;

distinct MultiSelectionClass = void*;

distinct MultiSorterClass = void*;

distinct NamedActionClass = void*;

distinct NativeDialogClass = void*;

distinct NativeInterface = void*;

distinct NeverTriggerClass = void*;

distinct NoSelectionClass = void*;

distinct NothingActionClass = void*;

distinct NumericSorterClass = void*;

distinct OrientableIface = void*;

distinct OverlayLayoutChildClass = void*;

distinct OverlayLayoutClass = void*;

distinct PadActionEntry = void*;

distinct PadControllerClass = void*;

distinct PageRange = void*;

distinct PaperSize = void*;

distinct PasswordEntryBufferClass = void*;

distinct PasswordEntryClass = void*;

distinct PictureClass = void*;

distinct PopoverClass = void*;

distinct PrintBackend = void*;

distinct PrintDialogClass = void*;

distinct PrintOperationClass = void*;

distinct PrintOperationPreviewIface = void*;

distinct PrintOperationPrivate = void*;

distinct PrintSetup = void*;

distinct RangeClass = void*;

distinct RecentData = void*;

distinct RecentInfo = void*;

distinct RecentManagerClass = void*;

distinct RecentManagerPrivate = void*;

distinct RequestedSize = void*;

distinct Requisition = void*;

distinct RootInterface = void*;

distinct ScaleButtonClass = void*;

distinct ScaleClass = void*;

distinct ScrollInfo = void*;

distinct ScrollableInterface = void*;

distinct SectionModelInterface = void*;

distinct SelectionFilterModelClass = void*;

distinct SelectionModelInterface = void*;

distinct ShortcutActionClass = void*;

distinct ShortcutClass = void*;

distinct ShortcutControllerClass = void*;

distinct ShortcutLabelClass = void*;

distinct ShortcutManagerInterface = void*;

distinct ShortcutTriggerClass = void*;

distinct ShortcutsGroupClass = void*;

distinct ShortcutsSectionClass = void*;

distinct ShortcutsShortcutClass = void*;

distinct SignalActionClass = void*;

distinct SignalListItemFactoryClass = void*;

distinct SingleSelectionClass = void*;

distinct SliceListModelClass = void*;

distinct SnapshotClass = void*;

distinct SortListModelClass = void*;

distinct SorterClass = void*;

distinct StringFilterClass = void*;

distinct StringListClass = void*;

distinct StringObjectClass = void*;

distinct StringSorterClass = void*;

distinct StyleContextClass = void*;

distinct SymbolicPaintableInterface = void*;

distinct TextBufferClass = void*;

distinct TextBufferPrivate = void*;

distinct TextChildAnchorClass = void*;

distinct TextIter = void*;

distinct TextMarkClass = void*;

distinct TextTagClass = void*;

distinct TextTagPrivate = void*;

distinct TextViewClass = void*;

distinct TextViewPrivate = void*;

distinct ToggleButtonClass = void*;

distinct TreeDragDestIface = void*;

distinct TreeDragSourceIface = void*;

distinct TreeExpanderClass = void*;

distinct TreeIter = void*;

distinct TreeListModelClass = void*;

distinct TreeListRowClass = void*;

distinct TreeListRowSorterClass = void*;

distinct TreeModelFilterClass = void*;

distinct TreeModelFilterPrivate = void*;

distinct TreeModelIface = void*;

distinct TreeModelSortClass = void*;

distinct TreeModelSortPrivate = void*;

distinct TreePath = void*;

distinct TreeRowReference = void*;

distinct TreeSortableIface = void*;

distinct TreeStoreClass = void*;

distinct TreeStorePrivate = void*;

distinct TreeViewClass = void*;

distinct UriLauncherClass = void*;

distinct VideoClass = void*;

distinct WidgetClass = void*;

distinct WidgetClassPrivate = void*;

distinct WidgetPaintableClass = void*;

distinct WidgetPrivate = void*;

distinct WindowClass = void*;

distinct WindowControlsClass = void*;

distinct WindowGroupClass = void*;

distinct WindowGroupPrivate = void*;

distinct WindowHandleClass = void*;


def AssistantPageFunc = fn int(int current_page, void* data);

def CellAllocCallback = fn bool(CellRenderer* renderer, gdk::Rectangle* cell_area, gdk::Rectangle* cell_background, void* data);

def CellCallback = fn bool(CellRenderer* renderer, void* data);

def CellLayoutDataFunc = fn void(CellLayout* cell_layout, CellRenderer* cell, TreeModel* tree_model, TreeIter* iter, void* data);

def CustomAllocateFunc = fn void(Widget* widget, int width, int height, int baseline);

def CustomFilterFunc = fn bool(gobject::Object* item, void* user_data);

def CustomMeasureFunc = fn void(Widget* widget, Orientation orientation, int for_size, int* minimum, int* natural, int* minimum_baseline, int* natural_baseline);

def CustomRequestModeFunc = fn SizeRequestMode(Widget* widget);

def DrawingAreaDrawFunc = fn void(DrawingArea* drawing_area, cairo::Context* cr, int width, int height, void* user_data);

def EntryCompletionMatchFunc = fn bool(EntryCompletion* completion, ZString key, TreeIter* iter, void* user_data);

def ExpressionNotify = fn void(void* user_data);

def FlowBoxCreateWidgetFunc = fn Widget*(gobject::Object* item, void* user_data);

def FlowBoxFilterFunc = fn bool(FlowBoxChild* child, void* user_data);

def FlowBoxForeachFunc = fn void(FlowBox* box, FlowBoxChild* child, void* user_data);

def FlowBoxSortFunc = fn int(FlowBoxChild* child1, FlowBoxChild* child2, void* user_data);

def FontFilterFunc = fn bool(pango::FontFamily* family, pango::FontFace* face, void* data);

def IconViewForeachFunc = fn void(IconView* icon_view, TreePath* path, void* data);

def ListBoxCreateWidgetFunc = fn Widget*(gobject::Object* item, void* user_data);

def ListBoxFilterFunc = fn bool(ListBoxRow* row, void* user_data);

def ListBoxForeachFunc = fn void(ListBox* box, ListBoxRow* row, void* user_data);

def ListBoxSortFunc = fn int(ListBoxRow* row1, ListBoxRow* row2, void* user_data);

def ListBoxUpdateHeaderFunc = fn void(ListBoxRow* row, ListBoxRow* before, void* user_data);

def MapListModelMapFunc = fn gobject::Object*(gobject::Object* item, void* user_data);

def MenuButtonCreatePopupFunc = fn void(MenuButton* menu_button, void* user_data);

def PageSetupDoneFunc = fn void(PageSetup* page_setup, void* data);

def PrintJobCompleteFunc = fn void(PrintJob* print_job, void* user_data, glib::Error* error);

def PrintSettingsFunc = fn void(ZString key, ZString value, void* user_data);

def PrinterFunc = fn bool(Printer* printer, void* data);

def ScaleFormatValueFunc = fn ZString*(Scale* scale, double value, void* user_data);

def ShortcutFunc = fn bool(Widget* widget, glib::Variant* args, void* user_data);

def TextBufferCommitNotify = fn void(TextBuffer* buffer, TextBufferNotifyFlags flags, uint position, uint length, void* user_data);

def TextCharPredicate = fn bool(uint ch, void* user_data);

def TextTagTableForeach = fn void(TextTag* tag, void* data);

def TickCallback = fn bool(Widget* widget, gdk::FrameClock* frame_clock, void* user_data);

def TreeCellDataFunc = fn void(TreeViewColumn* tree_column, CellRenderer* cell, TreeModel* tree_model, TreeIter* iter, void* data);

def TreeIterCompareFunc = fn int(TreeModel* model, TreeIter* a, TreeIter* b, void* user_data);

def TreeListModelCreateModelFunc = fn gio::ListModel*(gobject::Object* item, void* user_data);

def TreeModelFilterModifyFunc = fn void(TreeModel* model, TreeIter* iter, gobject::Value* value, int column, void* data);

def TreeModelFilterVisibleFunc = fn bool(TreeModel* model, TreeIter* iter, void* data);

def TreeModelForeachFunc = fn bool(TreeModel* model, TreePath* path, TreeIter* iter, void* data);

def TreeSelectionForeachFunc = fn void(TreeModel* model, TreePath* path, TreeIter* iter, void* data);

def TreeSelectionFunc = fn bool(TreeSelection* selection, TreeModel* model, TreePath* path, bool path_currently_selected, void* data);

def TreeViewColumnDropFunc = fn bool(TreeView* tree_view, TreeViewColumn* column, TreeViewColumn* prev_column, TreeViewColumn* next_column, void* data);

def TreeViewMappingFunc = fn void(TreeView* tree_view, TreePath* path, void* user_data);

def TreeViewRowSeparatorFunc = fn bool(TreeModel* model, TreeIter* iter, void* data);

def TreeViewSearchEqualFunc = fn bool(TreeModel* model, int column, ZString key, TreeIter* iter, void* search_data);

def WidgetActionActivateFunc = fn void(Widget* widget, ZString action_name, glib::Variant* parameter);


<* Maps to GtkATContext *>
distinct ATContext = void*;

// Class to parent cast.
fn gobject::Object* ATContext.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to create of ATContext *>
extern fn ATContext* at_context_create(AccessibleRole accessible_role, Accessible* accessible, gdk::Display* display) @extern("gtk_at_context_create");



// Class Methods

<* Maps to ATContext::get_accessible *>
extern fn Accessible* ATContext.get_accessible(&self, ) @extern("gtk_at_context_get_accessible");

<* Maps to ATContext::get_accessible_role *>
extern fn AccessibleRole ATContext.get_accessible_role(&self, ) @extern("gtk_at_context_get_accessible_role");


// Class Functions



<* Maps to GtkAboutDialog *>
distinct AboutDialog = void*;

// Class to parent cast.
fn Window* AboutDialog.as_Window(&self) => (Window*)(self);

// Class Constructors

<* Maps to new of AboutDialog *>
extern fn Widget* about_dialog_new() @extern("gtk_about_dialog_new");



// Class Methods

<* Maps to AboutDialog::add_credit_section *>
extern fn void AboutDialog.add_credit_section(&self, ZString section_name, ZString* people) @extern("gtk_about_dialog_add_credit_section");

<* Maps to AboutDialog::get_artists *>
extern fn ZString AboutDialog.get_artists(&self, ) @extern("gtk_about_dialog_get_artists");

<* Maps to AboutDialog::get_authors *>
extern fn ZString AboutDialog.get_authors(&self, ) @extern("gtk_about_dialog_get_authors");

<* Maps to AboutDialog::get_comments *>
extern fn ZString AboutDialog.get_comments(&self, ) @extern("gtk_about_dialog_get_comments");

<* Maps to AboutDialog::get_copyright *>
extern fn ZString AboutDialog.get_copyright(&self, ) @extern("gtk_about_dialog_get_copyright");

<* Maps to AboutDialog::get_documenters *>
extern fn ZString AboutDialog.get_documenters(&self, ) @extern("gtk_about_dialog_get_documenters");

<* Maps to AboutDialog::get_license *>
extern fn ZString AboutDialog.get_license(&self, ) @extern("gtk_about_dialog_get_license");

<* Maps to AboutDialog::get_license_type *>
extern fn License AboutDialog.get_license_type(&self, ) @extern("gtk_about_dialog_get_license_type");

<* Maps to AboutDialog::get_logo *>
extern fn gdk::Paintable* AboutDialog.get_logo(&self, ) @extern("gtk_about_dialog_get_logo");

<* Maps to AboutDialog::get_logo_icon_name *>
extern fn ZString AboutDialog.get_logo_icon_name(&self, ) @extern("gtk_about_dialog_get_logo_icon_name");

<* Maps to AboutDialog::get_program_name *>
extern fn ZString AboutDialog.get_program_name(&self, ) @extern("gtk_about_dialog_get_program_name");

<* Maps to AboutDialog::get_system_information *>
extern fn ZString AboutDialog.get_system_information(&self, ) @extern("gtk_about_dialog_get_system_information");

<* Maps to AboutDialog::get_translator_credits *>
extern fn ZString AboutDialog.get_translator_credits(&self, ) @extern("gtk_about_dialog_get_translator_credits");

<* Maps to AboutDialog::get_version *>
extern fn ZString AboutDialog.get_version(&self, ) @extern("gtk_about_dialog_get_version");

<* Maps to AboutDialog::get_website *>
extern fn ZString AboutDialog.get_website(&self, ) @extern("gtk_about_dialog_get_website");

<* Maps to AboutDialog::get_website_label *>
extern fn ZString AboutDialog.get_website_label(&self, ) @extern("gtk_about_dialog_get_website_label");

<* Maps to AboutDialog::get_wrap_license *>
extern fn bool AboutDialog.get_wrap_license(&self, ) @extern("gtk_about_dialog_get_wrap_license");

<* Maps to AboutDialog::set_artists *>
extern fn void AboutDialog.set_artists(&self, ZString* artists) @extern("gtk_about_dialog_set_artists");

<* Maps to AboutDialog::set_authors *>
extern fn void AboutDialog.set_authors(&self, ZString* authors) @extern("gtk_about_dialog_set_authors");

<* Maps to AboutDialog::set_comments *>
extern fn void AboutDialog.set_comments(&self, ZString comments) @extern("gtk_about_dialog_set_comments");

<* Maps to AboutDialog::set_copyright *>
extern fn void AboutDialog.set_copyright(&self, ZString copyright) @extern("gtk_about_dialog_set_copyright");

<* Maps to AboutDialog::set_documenters *>
extern fn void AboutDialog.set_documenters(&self, ZString* documenters) @extern("gtk_about_dialog_set_documenters");

<* Maps to AboutDialog::set_license *>
extern fn void AboutDialog.set_license(&self, ZString license) @extern("gtk_about_dialog_set_license");

<* Maps to AboutDialog::set_license_type *>
extern fn void AboutDialog.set_license_type(&self, License license_type) @extern("gtk_about_dialog_set_license_type");

<* Maps to AboutDialog::set_logo *>
extern fn void AboutDialog.set_logo(&self, gdk::Paintable* logo) @extern("gtk_about_dialog_set_logo");

<* Maps to AboutDialog::set_logo_icon_name *>
extern fn void AboutDialog.set_logo_icon_name(&self, ZString icon_name) @extern("gtk_about_dialog_set_logo_icon_name");

<* Maps to AboutDialog::set_program_name *>
extern fn void AboutDialog.set_program_name(&self, ZString name) @extern("gtk_about_dialog_set_program_name");

<* Maps to AboutDialog::set_system_information *>
extern fn void AboutDialog.set_system_information(&self, ZString system_information) @extern("gtk_about_dialog_set_system_information");

<* Maps to AboutDialog::set_translator_credits *>
extern fn void AboutDialog.set_translator_credits(&self, ZString translator_credits) @extern("gtk_about_dialog_set_translator_credits");

<* Maps to AboutDialog::set_version *>
extern fn void AboutDialog.set_version(&self, ZString version) @extern("gtk_about_dialog_set_version");

<* Maps to AboutDialog::set_website *>
extern fn void AboutDialog.set_website(&self, ZString website) @extern("gtk_about_dialog_set_website");

<* Maps to AboutDialog::set_website_label *>
extern fn void AboutDialog.set_website_label(&self, ZString website_label) @extern("gtk_about_dialog_set_website_label");

<* Maps to AboutDialog::set_wrap_license *>
extern fn void AboutDialog.set_wrap_license(&self, bool wrap_license) @extern("gtk_about_dialog_set_wrap_license");


// Class Functions



<* Maps to GtkActionBar *>
distinct ActionBar = void*;

// Class to parent cast.
fn Widget* ActionBar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ActionBar *>
extern fn Widget* action_bar_new() @extern("gtk_action_bar_new");



// Class Methods

<* Maps to ActionBar::get_center_widget *>
extern fn Widget* ActionBar.get_center_widget(&self, ) @extern("gtk_action_bar_get_center_widget");

<* Maps to ActionBar::get_revealed *>
extern fn bool ActionBar.get_revealed(&self, ) @extern("gtk_action_bar_get_revealed");

<* Maps to ActionBar::pack_end *>
extern fn void ActionBar.pack_end(&self, Widget* child) @extern("gtk_action_bar_pack_end");

<* Maps to ActionBar::pack_start *>
extern fn void ActionBar.pack_start(&self, Widget* child) @extern("gtk_action_bar_pack_start");

<* Maps to ActionBar::remove *>
extern fn void ActionBar.remove(&self, Widget* child) @extern("gtk_action_bar_remove");

<* Maps to ActionBar::set_center_widget *>
extern fn void ActionBar.set_center_widget(&self, Widget* center_widget) @extern("gtk_action_bar_set_center_widget");

<* Maps to ActionBar::set_revealed *>
extern fn void ActionBar.set_revealed(&self, bool revealed) @extern("gtk_action_bar_set_revealed");


// Class Functions



<* Maps to GtkActivateAction *>
distinct ActivateAction = void*;

// Class to parent cast.
fn ShortcutAction* ActivateAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);

// Class Constructors



// Class Methods


// Class Functions

<* Maps to get of ActivateAction *>
extern fn ActivateAction* activate_action_get() @extern("gtk_activate_action_get");



<* Maps to GtkAdjustment *>
distinct Adjustment = void*;

// Class to parent cast.
fn gobject::InitiallyUnowned* Adjustment.as_gobject_InitiallyUnowned(&self) => (gobject::InitiallyUnowned*)(self);

// Class Constructors

<* Maps to new of Adjustment *>
extern fn Adjustment* adjustment_new(double value, double lower, double upper, double step_increment, double page_increment, double page_size) @extern("gtk_adjustment_new");



// Class Methods

<* Maps to Adjustment::clamp_page *>
extern fn void Adjustment.clamp_page(&self, double lower, double upper) @extern("gtk_adjustment_clamp_page");

<* Maps to Adjustment::configure *>
extern fn void Adjustment.configure(&self, double value, double lower, double upper, double step_increment, double page_increment, double page_size) @extern("gtk_adjustment_configure");

<* Maps to Adjustment::get_lower *>
extern fn double Adjustment.get_lower(&self, ) @extern("gtk_adjustment_get_lower");

<* Maps to Adjustment::get_minimum_increment *>
extern fn double Adjustment.get_minimum_increment(&self, ) @extern("gtk_adjustment_get_minimum_increment");

<* Maps to Adjustment::get_page_increment *>
extern fn double Adjustment.get_page_increment(&self, ) @extern("gtk_adjustment_get_page_increment");

<* Maps to Adjustment::get_page_size *>
extern fn double Adjustment.get_page_size(&self, ) @extern("gtk_adjustment_get_page_size");

<* Maps to Adjustment::get_step_increment *>
extern fn double Adjustment.get_step_increment(&self, ) @extern("gtk_adjustment_get_step_increment");

<* Maps to Adjustment::get_upper *>
extern fn double Adjustment.get_upper(&self, ) @extern("gtk_adjustment_get_upper");

<* Maps to Adjustment::get_value *>
extern fn double Adjustment.get_value(&self, ) @extern("gtk_adjustment_get_value");

<* Maps to Adjustment::set_lower *>
extern fn void Adjustment.set_lower(&self, double lower) @extern("gtk_adjustment_set_lower");

<* Maps to Adjustment::set_page_increment *>
extern fn void Adjustment.set_page_increment(&self, double page_increment) @extern("gtk_adjustment_set_page_increment");

<* Maps to Adjustment::set_page_size *>
extern fn void Adjustment.set_page_size(&self, double page_size) @extern("gtk_adjustment_set_page_size");

<* Maps to Adjustment::set_step_increment *>
extern fn void Adjustment.set_step_increment(&self, double step_increment) @extern("gtk_adjustment_set_step_increment");

<* Maps to Adjustment::set_upper *>
extern fn void Adjustment.set_upper(&self, double upper) @extern("gtk_adjustment_set_upper");

<* Maps to Adjustment::set_value *>
extern fn void Adjustment.set_value(&self, double value) @extern("gtk_adjustment_set_value");


// Class Functions



<* Maps to GtkAlertDialog *>
distinct AlertDialog = void*;

// Class to parent cast.
fn gobject::Object* AlertDialog.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of AlertDialog *>
extern fn AlertDialog* alert_dialog_new(ZString format, any rest) @extern("gtk_alert_dialog_new");



// Class Methods

<* Maps to AlertDialog::choose *>
extern fn void AlertDialog.choose(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_alert_dialog_choose");

<* Maps to AlertDialog::choose_finish *>
extern fn int AlertDialog.choose_finish(&self, gio::AsyncResult* result) @extern("gtk_alert_dialog_choose_finish");

<* Maps to AlertDialog::get_buttons *>
extern fn ZString AlertDialog.get_buttons(&self, ) @extern("gtk_alert_dialog_get_buttons");

<* Maps to AlertDialog::get_cancel_button *>
extern fn int AlertDialog.get_cancel_button(&self, ) @extern("gtk_alert_dialog_get_cancel_button");

<* Maps to AlertDialog::get_default_button *>
extern fn int AlertDialog.get_default_button(&self, ) @extern("gtk_alert_dialog_get_default_button");

<* Maps to AlertDialog::get_detail *>
extern fn ZString AlertDialog.get_detail(&self, ) @extern("gtk_alert_dialog_get_detail");

<* Maps to AlertDialog::get_message *>
extern fn ZString AlertDialog.get_message(&self, ) @extern("gtk_alert_dialog_get_message");

<* Maps to AlertDialog::get_modal *>
extern fn bool AlertDialog.get_modal(&self, ) @extern("gtk_alert_dialog_get_modal");

<* Maps to AlertDialog::set_buttons *>
extern fn void AlertDialog.set_buttons(&self, ZString* labels) @extern("gtk_alert_dialog_set_buttons");

<* Maps to AlertDialog::set_cancel_button *>
extern fn void AlertDialog.set_cancel_button(&self, int button) @extern("gtk_alert_dialog_set_cancel_button");

<* Maps to AlertDialog::set_default_button *>
extern fn void AlertDialog.set_default_button(&self, int button) @extern("gtk_alert_dialog_set_default_button");

<* Maps to AlertDialog::set_detail *>
extern fn void AlertDialog.set_detail(&self, ZString detail) @extern("gtk_alert_dialog_set_detail");

<* Maps to AlertDialog::set_message *>
extern fn void AlertDialog.set_message(&self, ZString message) @extern("gtk_alert_dialog_set_message");

<* Maps to AlertDialog::set_modal *>
extern fn void AlertDialog.set_modal(&self, bool modal) @extern("gtk_alert_dialog_set_modal");

<* Maps to AlertDialog::show *>
extern fn void AlertDialog.show(&self, Window* parent) @extern("gtk_alert_dialog_show");


// Class Functions



<* Maps to GtkAlternativeTrigger *>
distinct AlternativeTrigger = void*;

// Class to parent cast.
fn ShortcutTrigger* AlternativeTrigger.as_ShortcutTrigger(&self) => (ShortcutTrigger*)(self);

// Class Constructors

<* Maps to new of AlternativeTrigger *>
extern fn ShortcutTrigger* alternative_trigger_new(ShortcutTrigger* first, ShortcutTrigger* second) @extern("gtk_alternative_trigger_new");



// Class Methods

<* Maps to AlternativeTrigger::get_first *>
extern fn ShortcutTrigger* AlternativeTrigger.get_first(&self, ) @extern("gtk_alternative_trigger_get_first");

<* Maps to AlternativeTrigger::get_second *>
extern fn ShortcutTrigger* AlternativeTrigger.get_second(&self, ) @extern("gtk_alternative_trigger_get_second");


// Class Functions



<* Maps to GtkAnyFilter *>
distinct AnyFilter = void*;

// Class to parent cast.
fn MultiFilter* AnyFilter.as_MultiFilter(&self) => (MultiFilter*)(self);

// Class Constructors

<* Maps to new of AnyFilter *>
extern fn AnyFilter* any_filter_new() @extern("gtk_any_filter_new");



// Class Methods


// Class Functions



<* Maps to GtkAppChooserButton *>
distinct AppChooserButton = void*;

// Class to parent cast.
fn Widget* AppChooserButton.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of AppChooserButton *>
extern fn Widget* app_chooser_button_new(ZString content_type) @extern("gtk_app_chooser_button_new");



// Class Methods

<* Maps to AppChooserButton::append_custom_item *>
extern fn void AppChooserButton.append_custom_item(&self, ZString name, ZString label, gio::Icon* icon) @extern("gtk_app_chooser_button_append_custom_item");

<* Maps to AppChooserButton::append_separator *>
extern fn void AppChooserButton.append_separator(&self, ) @extern("gtk_app_chooser_button_append_separator");

<* Maps to AppChooserButton::get_heading *>
extern fn ZString AppChooserButton.get_heading(&self, ) @extern("gtk_app_chooser_button_get_heading");

<* Maps to AppChooserButton::get_modal *>
extern fn bool AppChooserButton.get_modal(&self, ) @extern("gtk_app_chooser_button_get_modal");

<* Maps to AppChooserButton::get_show_default_item *>
extern fn bool AppChooserButton.get_show_default_item(&self, ) @extern("gtk_app_chooser_button_get_show_default_item");

<* Maps to AppChooserButton::get_show_dialog_item *>
extern fn bool AppChooserButton.get_show_dialog_item(&self, ) @extern("gtk_app_chooser_button_get_show_dialog_item");

<* Maps to AppChooserButton::set_active_custom_item *>
extern fn void AppChooserButton.set_active_custom_item(&self, ZString name) @extern("gtk_app_chooser_button_set_active_custom_item");

<* Maps to AppChooserButton::set_heading *>
extern fn void AppChooserButton.set_heading(&self, ZString heading) @extern("gtk_app_chooser_button_set_heading");

<* Maps to AppChooserButton::set_modal *>
extern fn void AppChooserButton.set_modal(&self, bool modal) @extern("gtk_app_chooser_button_set_modal");

<* Maps to AppChooserButton::set_show_default_item *>
extern fn void AppChooserButton.set_show_default_item(&self, bool setting) @extern("gtk_app_chooser_button_set_show_default_item");

<* Maps to AppChooserButton::set_show_dialog_item *>
extern fn void AppChooserButton.set_show_dialog_item(&self, bool setting) @extern("gtk_app_chooser_button_set_show_dialog_item");


// Class Functions



<* Maps to GtkAppChooserDialog *>
distinct AppChooserDialog = void*;

// Class to parent cast.
fn Dialog* AppChooserDialog.as_Dialog(&self) => (Dialog*)(self);

// Class Constructors

<* Maps to new of AppChooserDialog *>
extern fn Widget* app_chooser_dialog_new(Window* parent, DialogFlags flags, gio::File* file) @extern("gtk_app_chooser_dialog_new");

<* Maps to new_for_content_type of AppChooserDialog *>
extern fn Widget* app_chooser_dialog_new_for_content_type(Window* parent, DialogFlags flags, ZString content_type) @extern("gtk_app_chooser_dialog_new_for_content_type");



// Class Methods

<* Maps to AppChooserDialog::get_heading *>
extern fn ZString AppChooserDialog.get_heading(&self, ) @extern("gtk_app_chooser_dialog_get_heading");

<* Maps to AppChooserDialog::get_widget *>
extern fn Widget* AppChooserDialog.get_widget(&self, ) @extern("gtk_app_chooser_dialog_get_widget");

<* Maps to AppChooserDialog::set_heading *>
extern fn void AppChooserDialog.set_heading(&self, ZString heading) @extern("gtk_app_chooser_dialog_set_heading");


// Class Functions



<* Maps to GtkAppChooserWidget *>
distinct AppChooserWidget = void*;

// Class to parent cast.
fn Widget* AppChooserWidget.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of AppChooserWidget *>
extern fn Widget* app_chooser_widget_new(ZString content_type) @extern("gtk_app_chooser_widget_new");



// Class Methods

<* Maps to AppChooserWidget::get_default_text *>
extern fn ZString AppChooserWidget.get_default_text(&self, ) @extern("gtk_app_chooser_widget_get_default_text");

<* Maps to AppChooserWidget::get_show_all *>
extern fn bool AppChooserWidget.get_show_all(&self, ) @extern("gtk_app_chooser_widget_get_show_all");

<* Maps to AppChooserWidget::get_show_default *>
extern fn bool AppChooserWidget.get_show_default(&self, ) @extern("gtk_app_chooser_widget_get_show_default");

<* Maps to AppChooserWidget::get_show_fallback *>
extern fn bool AppChooserWidget.get_show_fallback(&self, ) @extern("gtk_app_chooser_widget_get_show_fallback");

<* Maps to AppChooserWidget::get_show_other *>
extern fn bool AppChooserWidget.get_show_other(&self, ) @extern("gtk_app_chooser_widget_get_show_other");

<* Maps to AppChooserWidget::get_show_recommended *>
extern fn bool AppChooserWidget.get_show_recommended(&self, ) @extern("gtk_app_chooser_widget_get_show_recommended");

<* Maps to AppChooserWidget::set_default_text *>
extern fn void AppChooserWidget.set_default_text(&self, ZString text) @extern("gtk_app_chooser_widget_set_default_text");

<* Maps to AppChooserWidget::set_show_all *>
extern fn void AppChooserWidget.set_show_all(&self, bool setting) @extern("gtk_app_chooser_widget_set_show_all");

<* Maps to AppChooserWidget::set_show_default *>
extern fn void AppChooserWidget.set_show_default(&self, bool setting) @extern("gtk_app_chooser_widget_set_show_default");

<* Maps to AppChooserWidget::set_show_fallback *>
extern fn void AppChooserWidget.set_show_fallback(&self, bool setting) @extern("gtk_app_chooser_widget_set_show_fallback");

<* Maps to AppChooserWidget::set_show_other *>
extern fn void AppChooserWidget.set_show_other(&self, bool setting) @extern("gtk_app_chooser_widget_set_show_other");

<* Maps to AppChooserWidget::set_show_recommended *>
extern fn void AppChooserWidget.set_show_recommended(&self, bool setting) @extern("gtk_app_chooser_widget_set_show_recommended");


// Class Functions



<* Maps to GtkApplication *>
distinct Application = void*;

// Class to parent cast.
fn gio::Application* Application.as_gio_Application(&self) => (gio::Application*)(self);

// Class Constructors

<* Maps to new of Application *>
extern fn Application* application_new(ZString application_id, gio::ApplicationFlags flags) @extern("gtk_application_new");



// Class Methods

<* Maps to Application::add_window *>
extern fn void Application.add_window(&self, Window* window) @extern("gtk_application_add_window");

<* Maps to Application::get_accels_for_action *>
extern fn ZString Application.get_accels_for_action(&self, ZString detailed_action_name) @extern("gtk_application_get_accels_for_action");

<* Maps to Application::get_actions_for_accel *>
extern fn ZString Application.get_actions_for_accel(&self, ZString accel) @extern("gtk_application_get_actions_for_accel");

<* Maps to Application::get_active_window *>
extern fn Window* Application.get_active_window(&self, ) @extern("gtk_application_get_active_window");

<* Maps to Application::get_menu_by_id *>
extern fn gio::Menu* Application.get_menu_by_id(&self, ZString id) @extern("gtk_application_get_menu_by_id");

<* Maps to Application::get_menubar *>
extern fn gio::MenuModel* Application.get_menubar(&self, ) @extern("gtk_application_get_menubar");

<* Maps to Application::get_window_by_id *>
extern fn Window* Application.get_window_by_id(&self, uint id) @extern("gtk_application_get_window_by_id");

<* Maps to Application::get_windows *>
extern fn glib::List* Application.get_windows(&self, ) @extern("gtk_application_get_windows");

<* Maps to Application::inhibit *>
extern fn uint Application.inhibit(&self, Window* window, ApplicationInhibitFlags flags, ZString reason) @extern("gtk_application_inhibit");

<* Maps to Application::list_action_descriptions *>
extern fn ZString Application.list_action_descriptions(&self, ) @extern("gtk_application_list_action_descriptions");

<* Maps to Application::remove_window *>
extern fn void Application.remove_window(&self, Window* window) @extern("gtk_application_remove_window");

<* Maps to Application::set_accels_for_action *>
extern fn void Application.set_accels_for_action(&self, ZString detailed_action_name, ZString* accels) @extern("gtk_application_set_accels_for_action");

<* Maps to Application::set_menubar *>
extern fn void Application.set_menubar(&self, gio::MenuModel* menubar) @extern("gtk_application_set_menubar");

<* Maps to Application::uninhibit *>
extern fn void Application.uninhibit(&self, uint cookie) @extern("gtk_application_uninhibit");


// Class Functions



<* Maps to GtkApplicationWindow *>
distinct ApplicationWindow = void*;

// Class to parent cast.
fn Window* ApplicationWindow.as_Window(&self) => (Window*)(self);

// Class Constructors

<* Maps to new of ApplicationWindow *>
extern fn Widget* application_window_new(Application* application) @extern("gtk_application_window_new");



// Class Methods

<* Maps to ApplicationWindow::get_help_overlay *>
extern fn ShortcutsWindow* ApplicationWindow.get_help_overlay(&self, ) @extern("gtk_application_window_get_help_overlay");

<* Maps to ApplicationWindow::get_id *>
extern fn uint ApplicationWindow.get_id(&self, ) @extern("gtk_application_window_get_id");

<* Maps to ApplicationWindow::get_show_menubar *>
extern fn bool ApplicationWindow.get_show_menubar(&self, ) @extern("gtk_application_window_get_show_menubar");

<* Maps to ApplicationWindow::set_help_overlay *>
extern fn void ApplicationWindow.set_help_overlay(&self, ShortcutsWindow* help_overlay) @extern("gtk_application_window_set_help_overlay");

<* Maps to ApplicationWindow::set_show_menubar *>
extern fn void ApplicationWindow.set_show_menubar(&self, bool show_menubar) @extern("gtk_application_window_set_show_menubar");


// Class Functions



<* Maps to GtkAspectFrame *>
distinct AspectFrame = void*;

// Class to parent cast.
fn Widget* AspectFrame.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of AspectFrame *>
extern fn Widget* aspect_frame_new(float xalign, float yalign, float ratio, bool obey_child) @extern("gtk_aspect_frame_new");



// Class Methods

<* Maps to AspectFrame::get_child *>
extern fn Widget* AspectFrame.get_child(&self, ) @extern("gtk_aspect_frame_get_child");

<* Maps to AspectFrame::get_obey_child *>
extern fn bool AspectFrame.get_obey_child(&self, ) @extern("gtk_aspect_frame_get_obey_child");

<* Maps to AspectFrame::get_ratio *>
extern fn float AspectFrame.get_ratio(&self, ) @extern("gtk_aspect_frame_get_ratio");

<* Maps to AspectFrame::get_xalign *>
extern fn float AspectFrame.get_xalign(&self, ) @extern("gtk_aspect_frame_get_xalign");

<* Maps to AspectFrame::get_yalign *>
extern fn float AspectFrame.get_yalign(&self, ) @extern("gtk_aspect_frame_get_yalign");

<* Maps to AspectFrame::set_child *>
extern fn void AspectFrame.set_child(&self, Widget* child) @extern("gtk_aspect_frame_set_child");

<* Maps to AspectFrame::set_obey_child *>
extern fn void AspectFrame.set_obey_child(&self, bool obey_child) @extern("gtk_aspect_frame_set_obey_child");

<* Maps to AspectFrame::set_ratio *>
extern fn void AspectFrame.set_ratio(&self, float ratio) @extern("gtk_aspect_frame_set_ratio");

<* Maps to AspectFrame::set_xalign *>
extern fn void AspectFrame.set_xalign(&self, float xalign) @extern("gtk_aspect_frame_set_xalign");

<* Maps to AspectFrame::set_yalign *>
extern fn void AspectFrame.set_yalign(&self, float yalign) @extern("gtk_aspect_frame_set_yalign");


// Class Functions



<* Maps to GtkAssistant *>
distinct Assistant = void*;

// Class to parent cast.
fn Window* Assistant.as_Window(&self) => (Window*)(self);

// Class Constructors

<* Maps to new of Assistant *>
extern fn Widget* assistant_new() @extern("gtk_assistant_new");



// Class Methods

<* Maps to Assistant::add_action_widget *>
extern fn void Assistant.add_action_widget(&self, Widget* child) @extern("gtk_assistant_add_action_widget");

<* Maps to Assistant::append_page *>
extern fn int Assistant.append_page(&self, Widget* page) @extern("gtk_assistant_append_page");

<* Maps to Assistant::commit *>
extern fn void Assistant.commit(&self, ) @extern("gtk_assistant_commit");

<* Maps to Assistant::get_current_page *>
extern fn int Assistant.get_current_page(&self, ) @extern("gtk_assistant_get_current_page");

<* Maps to Assistant::get_n_pages *>
extern fn int Assistant.get_n_pages(&self, ) @extern("gtk_assistant_get_n_pages");

<* Maps to Assistant::get_nth_page *>
extern fn Widget* Assistant.get_nth_page(&self, int page_num) @extern("gtk_assistant_get_nth_page");

<* Maps to Assistant::get_page *>
extern fn AssistantPage* Assistant.get_page(&self, Widget* child) @extern("gtk_assistant_get_page");

<* Maps to Assistant::get_page_complete *>
extern fn bool Assistant.get_page_complete(&self, Widget* page) @extern("gtk_assistant_get_page_complete");

<* Maps to Assistant::get_page_title *>
extern fn ZString Assistant.get_page_title(&self, Widget* page) @extern("gtk_assistant_get_page_title");

<* Maps to Assistant::get_page_type *>
extern fn AssistantPageType Assistant.get_page_type(&self, Widget* page) @extern("gtk_assistant_get_page_type");

<* Maps to Assistant::get_pages *>
extern fn gio::ListModel* Assistant.get_pages(&self, ) @extern("gtk_assistant_get_pages");

<* Maps to Assistant::insert_page *>
extern fn int Assistant.insert_page(&self, Widget* page, int position) @extern("gtk_assistant_insert_page");

<* Maps to Assistant::next_page *>
extern fn void Assistant.next_page(&self, ) @extern("gtk_assistant_next_page");

<* Maps to Assistant::prepend_page *>
extern fn int Assistant.prepend_page(&self, Widget* page) @extern("gtk_assistant_prepend_page");

<* Maps to Assistant::previous_page *>
extern fn void Assistant.previous_page(&self, ) @extern("gtk_assistant_previous_page");

<* Maps to Assistant::remove_action_widget *>
extern fn void Assistant.remove_action_widget(&self, Widget* child) @extern("gtk_assistant_remove_action_widget");

<* Maps to Assistant::remove_page *>
extern fn void Assistant.remove_page(&self, int page_num) @extern("gtk_assistant_remove_page");

<* Maps to Assistant::set_current_page *>
extern fn void Assistant.set_current_page(&self, int page_num) @extern("gtk_assistant_set_current_page");

<* Maps to Assistant::set_forward_page_func *>
extern fn void Assistant.set_forward_page_func(&self, AssistantPageFunc page_func, void* data, glib::DestroyNotify destroy) @extern("gtk_assistant_set_forward_page_func");

<* Maps to Assistant::set_page_complete *>
extern fn void Assistant.set_page_complete(&self, Widget* page, bool complete) @extern("gtk_assistant_set_page_complete");

<* Maps to Assistant::set_page_title *>
extern fn void Assistant.set_page_title(&self, Widget* page, ZString title) @extern("gtk_assistant_set_page_title");

<* Maps to Assistant::set_page_type *>
extern fn void Assistant.set_page_type(&self, Widget* page, AssistantPageType type) @extern("gtk_assistant_set_page_type");

<* Maps to Assistant::update_buttons_state *>
extern fn void Assistant.update_buttons_state(&self, ) @extern("gtk_assistant_update_buttons_state");


// Class Functions



<* Maps to GtkAssistantPage *>
distinct AssistantPage = void*;

// Class to parent cast.
fn gobject::Object* AssistantPage.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to AssistantPage::get_child *>
extern fn Widget* AssistantPage.get_child(&self, ) @extern("gtk_assistant_page_get_child");


// Class Functions



<* Maps to GtkBinLayout *>
distinct BinLayout = void*;

// Class to parent cast.
fn LayoutManager* BinLayout.as_LayoutManager(&self) => (LayoutManager*)(self);

// Class Constructors

<* Maps to new of BinLayout *>
extern fn LayoutManager* bin_layout_new() @extern("gtk_bin_layout_new");



// Class Methods


// Class Functions



<* Maps to GtkBookmarkList *>
distinct BookmarkList = void*;

// Class to parent cast.
fn gobject::Object* BookmarkList.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of BookmarkList *>
extern fn BookmarkList* bookmark_list_new(ZString filename, ZString attributes) @extern("gtk_bookmark_list_new");



// Class Methods

<* Maps to BookmarkList::get_attributes *>
extern fn ZString BookmarkList.get_attributes(&self, ) @extern("gtk_bookmark_list_get_attributes");

<* Maps to BookmarkList::get_filename *>
extern fn ZString BookmarkList.get_filename(&self, ) @extern("gtk_bookmark_list_get_filename");

<* Maps to BookmarkList::get_io_priority *>
extern fn int BookmarkList.get_io_priority(&self, ) @extern("gtk_bookmark_list_get_io_priority");

<* Maps to BookmarkList::is_loading *>
extern fn bool BookmarkList.is_loading(&self, ) @extern("gtk_bookmark_list_is_loading");

<* Maps to BookmarkList::set_attributes *>
extern fn void BookmarkList.set_attributes(&self, ZString attributes) @extern("gtk_bookmark_list_set_attributes");

<* Maps to BookmarkList::set_io_priority *>
extern fn void BookmarkList.set_io_priority(&self, int io_priority) @extern("gtk_bookmark_list_set_io_priority");


// Class Functions



<* Maps to GtkBoolFilter *>
distinct BoolFilter = void*;

// Class to parent cast.
fn Filter* BoolFilter.as_Filter(&self) => (Filter*)(self);

// Class Constructors

<* Maps to new of BoolFilter *>
extern fn BoolFilter* bool_filter_new(Expression* expression) @extern("gtk_bool_filter_new");



// Class Methods

<* Maps to BoolFilter::get_expression *>
extern fn Expression* BoolFilter.get_expression(&self, ) @extern("gtk_bool_filter_get_expression");

<* Maps to BoolFilter::get_invert *>
extern fn bool BoolFilter.get_invert(&self, ) @extern("gtk_bool_filter_get_invert");

<* Maps to BoolFilter::set_expression *>
extern fn void BoolFilter.set_expression(&self, Expression* expression) @extern("gtk_bool_filter_set_expression");

<* Maps to BoolFilter::set_invert *>
extern fn void BoolFilter.set_invert(&self, bool invert) @extern("gtk_bool_filter_set_invert");


// Class Functions



<* Maps to GtkBox *>
distinct Box = void*;

// Class to parent cast.
fn Widget* Box.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Box *>
extern fn Widget* box_new(Orientation orientation, int spacing) @extern("gtk_box_new");



// Class Methods

<* Maps to Box::append *>
extern fn void Box.append(&self, Widget* child) @extern("gtk_box_append");

<* Maps to Box::get_baseline_child *>
extern fn int Box.get_baseline_child(&self, ) @extern("gtk_box_get_baseline_child");

<* Maps to Box::get_baseline_position *>
extern fn BaselinePosition Box.get_baseline_position(&self, ) @extern("gtk_box_get_baseline_position");

<* Maps to Box::get_homogeneous *>
extern fn bool Box.get_homogeneous(&self, ) @extern("gtk_box_get_homogeneous");

<* Maps to Box::get_spacing *>
extern fn int Box.get_spacing(&self, ) @extern("gtk_box_get_spacing");

<* Maps to Box::insert_child_after *>
extern fn void Box.insert_child_after(&self, Widget* child, Widget* sibling) @extern("gtk_box_insert_child_after");

<* Maps to Box::prepend *>
extern fn void Box.prepend(&self, Widget* child) @extern("gtk_box_prepend");

<* Maps to Box::remove *>
extern fn void Box.remove(&self, Widget* child) @extern("gtk_box_remove");

<* Maps to Box::reorder_child_after *>
extern fn void Box.reorder_child_after(&self, Widget* child, Widget* sibling) @extern("gtk_box_reorder_child_after");

<* Maps to Box::set_baseline_child *>
extern fn void Box.set_baseline_child(&self, int child) @extern("gtk_box_set_baseline_child");

<* Maps to Box::set_baseline_position *>
extern fn void Box.set_baseline_position(&self, BaselinePosition position) @extern("gtk_box_set_baseline_position");

<* Maps to Box::set_homogeneous *>
extern fn void Box.set_homogeneous(&self, bool homogeneous) @extern("gtk_box_set_homogeneous");

<* Maps to Box::set_spacing *>
extern fn void Box.set_spacing(&self, int spacing) @extern("gtk_box_set_spacing");


// Class Functions



<* Maps to GtkBoxLayout *>
distinct BoxLayout = void*;

// Class to parent cast.
fn LayoutManager* BoxLayout.as_LayoutManager(&self) => (LayoutManager*)(self);

// Class Constructors

<* Maps to new of BoxLayout *>
extern fn LayoutManager* box_layout_new(Orientation orientation) @extern("gtk_box_layout_new");



// Class Methods

<* Maps to BoxLayout::get_baseline_child *>
extern fn int BoxLayout.get_baseline_child(&self, ) @extern("gtk_box_layout_get_baseline_child");

<* Maps to BoxLayout::get_baseline_position *>
extern fn BaselinePosition BoxLayout.get_baseline_position(&self, ) @extern("gtk_box_layout_get_baseline_position");

<* Maps to BoxLayout::get_homogeneous *>
extern fn bool BoxLayout.get_homogeneous(&self, ) @extern("gtk_box_layout_get_homogeneous");

<* Maps to BoxLayout::get_spacing *>
extern fn uint BoxLayout.get_spacing(&self, ) @extern("gtk_box_layout_get_spacing");

<* Maps to BoxLayout::set_baseline_child *>
extern fn void BoxLayout.set_baseline_child(&self, int child) @extern("gtk_box_layout_set_baseline_child");

<* Maps to BoxLayout::set_baseline_position *>
extern fn void BoxLayout.set_baseline_position(&self, BaselinePosition position) @extern("gtk_box_layout_set_baseline_position");

<* Maps to BoxLayout::set_homogeneous *>
extern fn void BoxLayout.set_homogeneous(&self, bool homogeneous) @extern("gtk_box_layout_set_homogeneous");

<* Maps to BoxLayout::set_spacing *>
extern fn void BoxLayout.set_spacing(&self, uint spacing) @extern("gtk_box_layout_set_spacing");


// Class Functions



<* Maps to GtkBuilder *>
distinct Builder = void*;

// Class to parent cast.
fn gobject::Object* Builder.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Builder *>
extern fn Builder* builder_new() @extern("gtk_builder_new");

<* Maps to new_from_file of Builder *>
extern fn Builder* builder_new_from_file(ZString filename) @extern("gtk_builder_new_from_file");

<* Maps to new_from_resource of Builder *>
extern fn Builder* builder_new_from_resource(ZString resource_path) @extern("gtk_builder_new_from_resource");

<* Maps to new_from_string of Builder *>
extern fn Builder* builder_new_from_string(ZString string, isz length) @extern("gtk_builder_new_from_string");



// Class Methods

<* Maps to Builder::add_from_file *>
extern fn bool Builder.add_from_file(&self, ZString filename) @extern("gtk_builder_add_from_file");

<* Maps to Builder::add_from_resource *>
extern fn bool Builder.add_from_resource(&self, ZString resource_path) @extern("gtk_builder_add_from_resource");

<* Maps to Builder::add_from_string *>
extern fn bool Builder.add_from_string(&self, ZString buffer, isz length) @extern("gtk_builder_add_from_string");

<* Maps to Builder::add_objects_from_file *>
extern fn bool Builder.add_objects_from_file(&self, ZString filename, ZString object_ids) @extern("gtk_builder_add_objects_from_file");

<* Maps to Builder::add_objects_from_resource *>
extern fn bool Builder.add_objects_from_resource(&self, ZString resource_path, ZString object_ids) @extern("gtk_builder_add_objects_from_resource");

<* Maps to Builder::add_objects_from_string *>
extern fn bool Builder.add_objects_from_string(&self, ZString buffer, isz length, ZString object_ids) @extern("gtk_builder_add_objects_from_string");

<* Maps to Builder::create_closure *>
extern fn gobject::Closure* Builder.create_closure(&self, ZString function_name, BuilderClosureFlags flags, gobject::Object* object) @extern("gtk_builder_create_closure");

<* Maps to Builder::expose_object *>
extern fn void Builder.expose_object(&self, ZString name, gobject::Object* object) @extern("gtk_builder_expose_object");

<* Maps to Builder::extend_with_template *>
extern fn bool Builder.extend_with_template(&self, gobject::Object* object, usz template_type, ZString buffer, isz length) @extern("gtk_builder_extend_with_template");

<* Maps to Builder::get_current_object *>
extern fn gobject::Object* Builder.get_current_object(&self, ) @extern("gtk_builder_get_current_object");

<* Maps to Builder::get_object *>
extern fn gobject::Object* Builder.get_object(&self, ZString name) @extern("gtk_builder_get_object");

<* Maps to Builder::get_objects *>
extern fn glib::SList* Builder.get_objects(&self, ) @extern("gtk_builder_get_objects");

<* Maps to Builder::get_scope *>
extern fn BuilderScope* Builder.get_scope(&self, ) @extern("gtk_builder_get_scope");

<* Maps to Builder::get_translation_domain *>
extern fn ZString Builder.get_translation_domain(&self, ) @extern("gtk_builder_get_translation_domain");

<* Maps to Builder::get_type_from_name *>
extern fn usz Builder.get_type_from_name(&self, ZString type_name) @extern("gtk_builder_get_type_from_name");

<* Maps to Builder::set_current_object *>
extern fn void Builder.set_current_object(&self, gobject::Object* current_object) @extern("gtk_builder_set_current_object");

<* Maps to Builder::set_scope *>
extern fn void Builder.set_scope(&self, BuilderScope* scope) @extern("gtk_builder_set_scope");

<* Maps to Builder::set_translation_domain *>
extern fn void Builder.set_translation_domain(&self, ZString domain) @extern("gtk_builder_set_translation_domain");

<* Maps to Builder::value_from_string *>
extern fn bool Builder.value_from_string(&self, gobject::ParamSpec* pspec, ZString string, gobject::Value* value) @extern("gtk_builder_value_from_string");

<* Maps to Builder::value_from_string_type *>
extern fn bool Builder.value_from_string_type(&self, usz type, ZString string, gobject::Value* value) @extern("gtk_builder_value_from_string_type");


// Class Functions



<* Maps to GtkBuilderCScope *>
distinct BuilderCScope = void*;

// Class to parent cast.
fn gobject::Object* BuilderCScope.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of BuilderCScope *>
extern fn BuilderCScope* builder_c_scope_new() @extern("gtk_builder_cscope_new");



// Class Methods

<* Maps to BuilderCScope::add_callback_symbol *>
extern fn void BuilderCScope.add_callback_symbol(&self, ZString callback_name, gobject::Callback callback_symbol) @extern("gtk_builder_cscope_add_callback_symbol");

<* Maps to BuilderCScope::add_callback_symbols *>
extern fn void BuilderCScope.add_callback_symbols(&self, ZString first_callback_name, gobject::Callback first_callback_symbol, any rest) @extern("gtk_builder_cscope_add_callback_symbols");

<* Maps to BuilderCScope::lookup_callback_symbol *>
extern fn gobject::Callback BuilderCScope.lookup_callback_symbol(&self, ZString callback_name) @extern("gtk_builder_cscope_lookup_callback_symbol");


// Class Functions



<* Maps to GtkBuilderListItemFactory *>
distinct BuilderListItemFactory = void*;

// Class to parent cast.
fn ListItemFactory* BuilderListItemFactory.as_ListItemFactory(&self) => (ListItemFactory*)(self);

// Class Constructors

<* Maps to new_from_bytes of BuilderListItemFactory *>
extern fn ListItemFactory* builder_list_item_factory_new_from_bytes(BuilderScope* scope, glib::Bytes* bytes) @extern("gtk_builder_list_item_factory_new_from_bytes");

<* Maps to new_from_resource of BuilderListItemFactory *>
extern fn ListItemFactory* builder_list_item_factory_new_from_resource(BuilderScope* scope, ZString resource_path) @extern("gtk_builder_list_item_factory_new_from_resource");



// Class Methods

<* Maps to BuilderListItemFactory::get_bytes *>
extern fn glib::Bytes* BuilderListItemFactory.get_bytes(&self, ) @extern("gtk_builder_list_item_factory_get_bytes");

<* Maps to BuilderListItemFactory::get_resource *>
extern fn ZString BuilderListItemFactory.get_resource(&self, ) @extern("gtk_builder_list_item_factory_get_resource");

<* Maps to BuilderListItemFactory::get_scope *>
extern fn BuilderScope* BuilderListItemFactory.get_scope(&self, ) @extern("gtk_builder_list_item_factory_get_scope");


// Class Functions



<* Maps to GtkButton *>
distinct Button = void*;

// Class to parent cast.
fn Widget* Button.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Button *>
extern fn Widget* button_new() @extern("gtk_button_new");

<* Maps to new_from_icon_name of Button *>
extern fn Widget* button_new_from_icon_name(ZString icon_name) @extern("gtk_button_new_from_icon_name");

<* Maps to new_with_label of Button *>
extern fn Widget* button_new_with_label(ZString label) @extern("gtk_button_new_with_label");

<* Maps to new_with_mnemonic of Button *>
extern fn Widget* button_new_with_mnemonic(ZString label) @extern("gtk_button_new_with_mnemonic");



// Class Methods

<* Maps to Button::get_can_shrink *>
extern fn bool Button.get_can_shrink(&self, ) @extern("gtk_button_get_can_shrink");

<* Maps to Button::get_child *>
extern fn Widget* Button.get_child(&self, ) @extern("gtk_button_get_child");

<* Maps to Button::get_has_frame *>
extern fn bool Button.get_has_frame(&self, ) @extern("gtk_button_get_has_frame");

<* Maps to Button::get_icon_name *>
extern fn ZString Button.get_icon_name(&self, ) @extern("gtk_button_get_icon_name");

<* Maps to Button::get_label *>
extern fn ZString Button.get_label(&self, ) @extern("gtk_button_get_label");

<* Maps to Button::get_use_underline *>
extern fn bool Button.get_use_underline(&self, ) @extern("gtk_button_get_use_underline");

<* Maps to Button::set_can_shrink *>
extern fn void Button.set_can_shrink(&self, bool can_shrink) @extern("gtk_button_set_can_shrink");

<* Maps to Button::set_child *>
extern fn void Button.set_child(&self, Widget* child) @extern("gtk_button_set_child");

<* Maps to Button::set_has_frame *>
extern fn void Button.set_has_frame(&self, bool has_frame) @extern("gtk_button_set_has_frame");

<* Maps to Button::set_icon_name *>
extern fn void Button.set_icon_name(&self, ZString icon_name) @extern("gtk_button_set_icon_name");

<* Maps to Button::set_label *>
extern fn void Button.set_label(&self, ZString label) @extern("gtk_button_set_label");

<* Maps to Button::set_use_underline *>
extern fn void Button.set_use_underline(&self, bool use_underline) @extern("gtk_button_set_use_underline");


// Class Functions



<* Maps to GtkCClosureExpression *>
distinct CClosureExpression = void*;

// Class to parent cast.
fn Expression* CClosureExpression.as_Expression(&self) => (Expression*)(self);

// Class Constructors

<* Maps to new of CClosureExpression *>
extern fn CClosureExpression* c_closure_expression_new(usz value_type, gobject::ClosureMarshal marshal, uint n_params, Expression* params, gobject::Callback callback_func, void* user_data, gobject::ClosureNotify user_destroy) @extern("gtk_cclosure_expression_new");



// Class Methods


// Class Functions



<* Maps to GtkCalendar *>
distinct Calendar = void*;

// Class to parent cast.
fn Widget* Calendar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Calendar *>
extern fn Widget* calendar_new() @extern("gtk_calendar_new");



// Class Methods

<* Maps to Calendar::clear_marks *>
extern fn void Calendar.clear_marks(&self, ) @extern("gtk_calendar_clear_marks");

<* Maps to Calendar::get_date *>
extern fn glib::DateTime* Calendar.get_date(&self, ) @extern("gtk_calendar_get_date");

<* Maps to Calendar::get_day *>
extern fn int Calendar.get_day(&self, ) @extern("gtk_calendar_get_day");

<* Maps to Calendar::get_day_is_marked *>
extern fn bool Calendar.get_day_is_marked(&self, uint day) @extern("gtk_calendar_get_day_is_marked");

<* Maps to Calendar::get_month *>
extern fn int Calendar.get_month(&self, ) @extern("gtk_calendar_get_month");

<* Maps to Calendar::get_show_day_names *>
extern fn bool Calendar.get_show_day_names(&self, ) @extern("gtk_calendar_get_show_day_names");

<* Maps to Calendar::get_show_heading *>
extern fn bool Calendar.get_show_heading(&self, ) @extern("gtk_calendar_get_show_heading");

<* Maps to Calendar::get_show_week_numbers *>
extern fn bool Calendar.get_show_week_numbers(&self, ) @extern("gtk_calendar_get_show_week_numbers");

<* Maps to Calendar::get_year *>
extern fn int Calendar.get_year(&self, ) @extern("gtk_calendar_get_year");

<* Maps to Calendar::mark_day *>
extern fn void Calendar.mark_day(&self, uint day) @extern("gtk_calendar_mark_day");

<* Maps to Calendar::select_day *>
extern fn void Calendar.select_day(&self, glib::DateTime* date) @extern("gtk_calendar_select_day");

<* Maps to Calendar::set_day *>
extern fn void Calendar.set_day(&self, int day) @extern("gtk_calendar_set_day");

<* Maps to Calendar::set_month *>
extern fn void Calendar.set_month(&self, int month) @extern("gtk_calendar_set_month");

<* Maps to Calendar::set_show_day_names *>
extern fn void Calendar.set_show_day_names(&self, bool value) @extern("gtk_calendar_set_show_day_names");

<* Maps to Calendar::set_show_heading *>
extern fn void Calendar.set_show_heading(&self, bool value) @extern("gtk_calendar_set_show_heading");

<* Maps to Calendar::set_show_week_numbers *>
extern fn void Calendar.set_show_week_numbers(&self, bool value) @extern("gtk_calendar_set_show_week_numbers");

<* Maps to Calendar::set_year *>
extern fn void Calendar.set_year(&self, int year) @extern("gtk_calendar_set_year");

<* Maps to Calendar::unmark_day *>
extern fn void Calendar.unmark_day(&self, uint day) @extern("gtk_calendar_unmark_day");


// Class Functions



<* Maps to GtkCallbackAction *>
distinct CallbackAction = void*;

// Class to parent cast.
fn ShortcutAction* CallbackAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);

// Class Constructors

<* Maps to new of CallbackAction *>
extern fn CallbackAction* callback_action_new(ShortcutFunc callback, void* data, glib::DestroyNotify destroy) @extern("gtk_callback_action_new");



// Class Methods


// Class Functions



<* Maps to GtkCellArea *>
distinct CellArea = void*;

// Class to parent cast.
fn gobject::InitiallyUnowned* CellArea.as_gobject_InitiallyUnowned(&self) => (gobject::InitiallyUnowned*)(self);

// Class Constructors



// Class Methods

<* Maps to CellArea::activate *>
extern fn bool CellArea.activate(&self, CellAreaContext* context, Widget* widget, gdk::Rectangle* cell_area, CellRendererState flags, bool edit_only) @extern("gtk_cell_area_activate");

<* Maps to CellArea::activate_cell *>
extern fn bool CellArea.activate_cell(&self, Widget* widget, CellRenderer* renderer, gdk::Event* event, gdk::Rectangle* cell_area, CellRendererState flags) @extern("gtk_cell_area_activate_cell");

<* Maps to CellArea::add *>
extern fn void CellArea.add(&self, CellRenderer* renderer) @extern("gtk_cell_area_add");

<* Maps to CellArea::add_focus_sibling *>
extern fn void CellArea.add_focus_sibling(&self, CellRenderer* renderer, CellRenderer* sibling) @extern("gtk_cell_area_add_focus_sibling");

<* Maps to CellArea::add_with_properties *>
extern fn void CellArea.add_with_properties(&self, CellRenderer* renderer, ZString first_prop_name, any rest) @extern("gtk_cell_area_add_with_properties");

<* Maps to CellArea::apply_attributes *>
extern fn void CellArea.apply_attributes(&self, TreeModel* tree_model, TreeIter* iter, bool is_expander, bool is_expanded) @extern("gtk_cell_area_apply_attributes");

<* Maps to CellArea::attribute_connect *>
extern fn void CellArea.attribute_connect(&self, CellRenderer* renderer, ZString attribute, int column) @extern("gtk_cell_area_attribute_connect");

<* Maps to CellArea::attribute_disconnect *>
extern fn void CellArea.attribute_disconnect(&self, CellRenderer* renderer, ZString attribute) @extern("gtk_cell_area_attribute_disconnect");

<* Maps to CellArea::attribute_get_column *>
extern fn int CellArea.attribute_get_column(&self, CellRenderer* renderer, ZString attribute) @extern("gtk_cell_area_attribute_get_column");

<* Maps to CellArea::cell_get *>
extern fn void CellArea.cell_get(&self, CellRenderer* renderer, ZString first_prop_name, any rest) @extern("gtk_cell_area_cell_get");

<* Maps to CellArea::cell_get_property *>
extern fn void CellArea.cell_get_property(&self, CellRenderer* renderer, ZString property_name, gobject::Value* value) @extern("gtk_cell_area_cell_get_property");

<* Maps to CellArea::cell_set *>
extern fn void CellArea.cell_set(&self, CellRenderer* renderer, ZString first_prop_name, any rest) @extern("gtk_cell_area_cell_set");

<* Maps to CellArea::cell_set_property *>
extern fn void CellArea.cell_set_property(&self, CellRenderer* renderer, ZString property_name, gobject::Value* value) @extern("gtk_cell_area_cell_set_property");

<* Maps to CellArea::copy_context *>
extern fn CellAreaContext* CellArea.copy_context(&self, CellAreaContext* context) @extern("gtk_cell_area_copy_context");

<* Maps to CellArea::create_context *>
extern fn CellAreaContext* CellArea.create_context(&self, ) @extern("gtk_cell_area_create_context");

<* Maps to CellArea::event *>
extern fn int CellArea.event(&self, CellAreaContext* context, Widget* widget, gdk::Event* event, gdk::Rectangle* cell_area, CellRendererState flags) @extern("gtk_cell_area_event");

<* Maps to CellArea::focus *>
extern fn bool CellArea.focus(&self, DirectionType direction) @extern("gtk_cell_area_focus");

<* Maps to CellArea::for_each *>
extern fn void CellArea.for_each(&self, CellCallback callback, void* callback_data) @extern("gtk_cell_area_foreach");

<* Maps to CellArea::foreach_alloc *>
extern fn void CellArea.foreach_alloc(&self, CellAreaContext* context, Widget* widget, gdk::Rectangle* cell_area, gdk::Rectangle* background_area, CellAllocCallback callback, void* callback_data) @extern("gtk_cell_area_foreach_alloc");

<* Maps to CellArea::get_cell_allocation *>
extern fn void CellArea.get_cell_allocation(&self, CellAreaContext* context, Widget* widget, CellRenderer* renderer, gdk::Rectangle* cell_area, gdk::Rectangle* allocation) @extern("gtk_cell_area_get_cell_allocation");

<* Maps to CellArea::get_cell_at_position *>
extern fn CellRenderer* CellArea.get_cell_at_position(&self, CellAreaContext* context, Widget* widget, gdk::Rectangle* cell_area, int x, int y, gdk::Rectangle* alloc_area) @extern("gtk_cell_area_get_cell_at_position");

<* Maps to CellArea::get_current_path_string *>
extern fn ZString CellArea.get_current_path_string(&self, ) @extern("gtk_cell_area_get_current_path_string");

<* Maps to CellArea::get_edit_widget *>
extern fn CellEditable* CellArea.get_edit_widget(&self, ) @extern("gtk_cell_area_get_edit_widget");

<* Maps to CellArea::get_edited_cell *>
extern fn CellRenderer* CellArea.get_edited_cell(&self, ) @extern("gtk_cell_area_get_edited_cell");

<* Maps to CellArea::get_focus_cell *>
extern fn CellRenderer* CellArea.get_focus_cell(&self, ) @extern("gtk_cell_area_get_focus_cell");

<* Maps to CellArea::get_focus_from_sibling *>
extern fn CellRenderer* CellArea.get_focus_from_sibling(&self, CellRenderer* renderer) @extern("gtk_cell_area_get_focus_from_sibling");

<* Maps to CellArea::get_focus_siblings *>
extern fn glib::List* CellArea.get_focus_siblings(&self, CellRenderer* renderer) @extern("gtk_cell_area_get_focus_siblings");

<* Maps to CellArea::get_preferred_height *>
extern fn void CellArea.get_preferred_height(&self, CellAreaContext* context, Widget* widget, int* minimum_height, int* natural_height) @extern("gtk_cell_area_get_preferred_height");

<* Maps to CellArea::get_preferred_height_for_width *>
extern fn void CellArea.get_preferred_height_for_width(&self, CellAreaContext* context, Widget* widget, int width, int* minimum_height, int* natural_height) @extern("gtk_cell_area_get_preferred_height_for_width");

<* Maps to CellArea::get_preferred_width *>
extern fn void CellArea.get_preferred_width(&self, CellAreaContext* context, Widget* widget, int* minimum_width, int* natural_width) @extern("gtk_cell_area_get_preferred_width");

<* Maps to CellArea::get_preferred_width_for_height *>
extern fn void CellArea.get_preferred_width_for_height(&self, CellAreaContext* context, Widget* widget, int height, int* minimum_width, int* natural_width) @extern("gtk_cell_area_get_preferred_width_for_height");

<* Maps to CellArea::get_request_mode *>
extern fn SizeRequestMode CellArea.get_request_mode(&self, ) @extern("gtk_cell_area_get_request_mode");

<* Maps to CellArea::has_renderer *>
extern fn bool CellArea.has_renderer(&self, CellRenderer* renderer) @extern("gtk_cell_area_has_renderer");

<* Maps to CellArea::inner_cell_area *>
extern fn void CellArea.inner_cell_area(&self, Widget* widget, gdk::Rectangle* cell_area, gdk::Rectangle* inner_area) @extern("gtk_cell_area_inner_cell_area");

<* Maps to CellArea::is_activatable *>
extern fn bool CellArea.is_activatable(&self, ) @extern("gtk_cell_area_is_activatable");

<* Maps to CellArea::is_focus_sibling *>
extern fn bool CellArea.is_focus_sibling(&self, CellRenderer* renderer, CellRenderer* sibling) @extern("gtk_cell_area_is_focus_sibling");

<* Maps to CellArea::remove *>
extern fn void CellArea.remove(&self, CellRenderer* renderer) @extern("gtk_cell_area_remove");

<* Maps to CellArea::remove_focus_sibling *>
extern fn void CellArea.remove_focus_sibling(&self, CellRenderer* renderer, CellRenderer* sibling) @extern("gtk_cell_area_remove_focus_sibling");

<* Maps to CellArea::request_renderer *>
extern fn void CellArea.request_renderer(&self, CellRenderer* renderer, Orientation orientation, Widget* widget, int for_size, int* minimum_size, int* natural_size) @extern("gtk_cell_area_request_renderer");

<* Maps to CellArea::set_focus_cell *>
extern fn void CellArea.set_focus_cell(&self, CellRenderer* renderer) @extern("gtk_cell_area_set_focus_cell");

<* Maps to CellArea::snapshot *>
extern fn void CellArea.snapshot(&self, CellAreaContext* context, Widget* widget, Snapshot* snapshot, gdk::Rectangle* background_area, gdk::Rectangle* cell_area, CellRendererState flags, bool paint_focus) @extern("gtk_cell_area_snapshot");

<* Maps to CellArea::stop_editing *>
extern fn void CellArea.stop_editing(&self, bool canceled) @extern("gtk_cell_area_stop_editing");


// Class Functions



<* Maps to GtkCellAreaBox *>
distinct CellAreaBox = void*;

// Class to parent cast.
fn CellArea* CellAreaBox.as_CellArea(&self) => (CellArea*)(self);

// Class Constructors

<* Maps to new of CellAreaBox *>
extern fn CellArea* cell_area_box_new() @extern("gtk_cell_area_box_new");



// Class Methods

<* Maps to CellAreaBox::get_spacing *>
extern fn int CellAreaBox.get_spacing(&self, ) @extern("gtk_cell_area_box_get_spacing");

<* Maps to CellAreaBox::pack_end *>
extern fn void CellAreaBox.pack_end(&self, CellRenderer* renderer, bool expand, bool align, bool fixed) @extern("gtk_cell_area_box_pack_end");

<* Maps to CellAreaBox::pack_start *>
extern fn void CellAreaBox.pack_start(&self, CellRenderer* renderer, bool expand, bool align, bool fixed) @extern("gtk_cell_area_box_pack_start");

<* Maps to CellAreaBox::set_spacing *>
extern fn void CellAreaBox.set_spacing(&self, int spacing) @extern("gtk_cell_area_box_set_spacing");


// Class Functions



<* Maps to GtkCellAreaContext *>
distinct CellAreaContext = void*;

// Class to parent cast.
fn gobject::Object* CellAreaContext.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to CellAreaContext::allocate *>
extern fn void CellAreaContext.allocate(&self, int width, int height) @extern("gtk_cell_area_context_allocate");

<* Maps to CellAreaContext::get_allocation *>
extern fn void CellAreaContext.get_allocation(&self, int* width, int* height) @extern("gtk_cell_area_context_get_allocation");

<* Maps to CellAreaContext::get_area *>
extern fn CellArea* CellAreaContext.get_area(&self, ) @extern("gtk_cell_area_context_get_area");

<* Maps to CellAreaContext::get_preferred_height *>
extern fn void CellAreaContext.get_preferred_height(&self, int* minimum_height, int* natural_height) @extern("gtk_cell_area_context_get_preferred_height");

<* Maps to CellAreaContext::get_preferred_height_for_width *>
extern fn void CellAreaContext.get_preferred_height_for_width(&self, int width, int* minimum_height, int* natural_height) @extern("gtk_cell_area_context_get_preferred_height_for_width");

<* Maps to CellAreaContext::get_preferred_width *>
extern fn void CellAreaContext.get_preferred_width(&self, int* minimum_width, int* natural_width) @extern("gtk_cell_area_context_get_preferred_width");

<* Maps to CellAreaContext::get_preferred_width_for_height *>
extern fn void CellAreaContext.get_preferred_width_for_height(&self, int height, int* minimum_width, int* natural_width) @extern("gtk_cell_area_context_get_preferred_width_for_height");

<* Maps to CellAreaContext::push_preferred_height *>
extern fn void CellAreaContext.push_preferred_height(&self, int minimum_height, int natural_height) @extern("gtk_cell_area_context_push_preferred_height");

<* Maps to CellAreaContext::push_preferred_width *>
extern fn void CellAreaContext.push_preferred_width(&self, int minimum_width, int natural_width) @extern("gtk_cell_area_context_push_preferred_width");

<* Maps to CellAreaContext::reset *>
extern fn void CellAreaContext.reset(&self, ) @extern("gtk_cell_area_context_reset");


// Class Functions



<* Maps to GtkCellRenderer *>
distinct CellRenderer = void*;

// Class to parent cast.
fn gobject::InitiallyUnowned* CellRenderer.as_gobject_InitiallyUnowned(&self) => (gobject::InitiallyUnowned*)(self);

// Class Constructors



// Class Methods

<* Maps to CellRenderer::activate *>
extern fn bool CellRenderer.activate(&self, gdk::Event* event, Widget* widget, ZString path, gdk::Rectangle* background_area, gdk::Rectangle* cell_area, CellRendererState flags) @extern("gtk_cell_renderer_activate");

<* Maps to CellRenderer::get_aligned_area *>
extern fn void CellRenderer.get_aligned_area(&self, Widget* widget, CellRendererState flags, gdk::Rectangle* cell_area, gdk::Rectangle* aligned_area) @extern("gtk_cell_renderer_get_aligned_area");

<* Maps to CellRenderer::get_alignment *>
extern fn void CellRenderer.get_alignment(&self, float* xalign, float* yalign) @extern("gtk_cell_renderer_get_alignment");

<* Maps to CellRenderer::get_fixed_size *>
extern fn void CellRenderer.get_fixed_size(&self, int* width, int* height) @extern("gtk_cell_renderer_get_fixed_size");

<* Maps to CellRenderer::get_is_expanded *>
extern fn bool CellRenderer.get_is_expanded(&self, ) @extern("gtk_cell_renderer_get_is_expanded");

<* Maps to CellRenderer::get_is_expander *>
extern fn bool CellRenderer.get_is_expander(&self, ) @extern("gtk_cell_renderer_get_is_expander");

<* Maps to CellRenderer::get_padding *>
extern fn void CellRenderer.get_padding(&self, int* xpad, int* ypad) @extern("gtk_cell_renderer_get_padding");

<* Maps to CellRenderer::get_preferred_height *>
extern fn void CellRenderer.get_preferred_height(&self, Widget* widget, int* minimum_size, int* natural_size) @extern("gtk_cell_renderer_get_preferred_height");

<* Maps to CellRenderer::get_preferred_height_for_width *>
extern fn void CellRenderer.get_preferred_height_for_width(&self, Widget* widget, int width, int* minimum_height, int* natural_height) @extern("gtk_cell_renderer_get_preferred_height_for_width");

<* Maps to CellRenderer::get_preferred_size *>
extern fn void CellRenderer.get_preferred_size(&self, Widget* widget, Requisition* minimum_size, Requisition* natural_size) @extern("gtk_cell_renderer_get_preferred_size");

<* Maps to CellRenderer::get_preferred_width *>
extern fn void CellRenderer.get_preferred_width(&self, Widget* widget, int* minimum_size, int* natural_size) @extern("gtk_cell_renderer_get_preferred_width");

<* Maps to CellRenderer::get_preferred_width_for_height *>
extern fn void CellRenderer.get_preferred_width_for_height(&self, Widget* widget, int height, int* minimum_width, int* natural_width) @extern("gtk_cell_renderer_get_preferred_width_for_height");

<* Maps to CellRenderer::get_request_mode *>
extern fn SizeRequestMode CellRenderer.get_request_mode(&self, ) @extern("gtk_cell_renderer_get_request_mode");

<* Maps to CellRenderer::get_sensitive *>
extern fn bool CellRenderer.get_sensitive(&self, ) @extern("gtk_cell_renderer_get_sensitive");

<* Maps to CellRenderer::get_state *>
extern fn StateFlags CellRenderer.get_state(&self, Widget* widget, CellRendererState cell_state) @extern("gtk_cell_renderer_get_state");

<* Maps to CellRenderer::get_visible *>
extern fn bool CellRenderer.get_visible(&self, ) @extern("gtk_cell_renderer_get_visible");

<* Maps to CellRenderer::is_activatable *>
extern fn bool CellRenderer.is_activatable(&self, ) @extern("gtk_cell_renderer_is_activatable");

<* Maps to CellRenderer::set_alignment *>
extern fn void CellRenderer.set_alignment(&self, float xalign, float yalign) @extern("gtk_cell_renderer_set_alignment");

<* Maps to CellRenderer::set_fixed_size *>
extern fn void CellRenderer.set_fixed_size(&self, int width, int height) @extern("gtk_cell_renderer_set_fixed_size");

<* Maps to CellRenderer::set_is_expanded *>
extern fn void CellRenderer.set_is_expanded(&self, bool is_expanded) @extern("gtk_cell_renderer_set_is_expanded");

<* Maps to CellRenderer::set_is_expander *>
extern fn void CellRenderer.set_is_expander(&self, bool is_expander) @extern("gtk_cell_renderer_set_is_expander");

<* Maps to CellRenderer::set_padding *>
extern fn void CellRenderer.set_padding(&self, int xpad, int ypad) @extern("gtk_cell_renderer_set_padding");

<* Maps to CellRenderer::set_sensitive *>
extern fn void CellRenderer.set_sensitive(&self, bool sensitive) @extern("gtk_cell_renderer_set_sensitive");

<* Maps to CellRenderer::set_visible *>
extern fn void CellRenderer.set_visible(&self, bool visible) @extern("gtk_cell_renderer_set_visible");

<* Maps to CellRenderer::snapshot *>
extern fn void CellRenderer.snapshot(&self, Snapshot* snapshot, Widget* widget, gdk::Rectangle* background_area, gdk::Rectangle* cell_area, CellRendererState flags) @extern("gtk_cell_renderer_snapshot");

<* Maps to CellRenderer::start_editing *>
extern fn CellEditable* CellRenderer.start_editing(&self, gdk::Event* event, Widget* widget, ZString path, gdk::Rectangle* background_area, gdk::Rectangle* cell_area, CellRendererState flags) @extern("gtk_cell_renderer_start_editing");

<* Maps to CellRenderer::stop_editing *>
extern fn void CellRenderer.stop_editing(&self, bool canceled) @extern("gtk_cell_renderer_stop_editing");


// Class Functions



<* Maps to GtkCellRendererAccel *>
distinct CellRendererAccel = void*;

// Class to parent cast.
fn CellRendererText* CellRendererAccel.as_CellRendererText(&self) => (CellRendererText*)(self);

// Class Constructors

<* Maps to new of CellRendererAccel *>
extern fn CellRenderer* cell_renderer_accel_new() @extern("gtk_cell_renderer_accel_new");



// Class Methods


// Class Functions



<* Maps to GtkCellRendererCombo *>
distinct CellRendererCombo = void*;

// Class to parent cast.
fn CellRendererText* CellRendererCombo.as_CellRendererText(&self) => (CellRendererText*)(self);

// Class Constructors

<* Maps to new of CellRendererCombo *>
extern fn CellRenderer* cell_renderer_combo_new() @extern("gtk_cell_renderer_combo_new");



// Class Methods


// Class Functions



<* Maps to GtkCellRendererPixbuf *>
distinct CellRendererPixbuf = void*;

// Class to parent cast.
fn CellRenderer* CellRendererPixbuf.as_CellRenderer(&self) => (CellRenderer*)(self);

// Class Constructors

<* Maps to new of CellRendererPixbuf *>
extern fn CellRenderer* cell_renderer_pixbuf_new() @extern("gtk_cell_renderer_pixbuf_new");



// Class Methods


// Class Functions



<* Maps to GtkCellRendererProgress *>
distinct CellRendererProgress = void*;

// Class to parent cast.
fn CellRenderer* CellRendererProgress.as_CellRenderer(&self) => (CellRenderer*)(self);

// Class Constructors

<* Maps to new of CellRendererProgress *>
extern fn CellRenderer* cell_renderer_progress_new() @extern("gtk_cell_renderer_progress_new");



// Class Methods


// Class Functions



<* Maps to GtkCellRendererSpin *>
distinct CellRendererSpin = void*;

// Class to parent cast.
fn CellRendererText* CellRendererSpin.as_CellRendererText(&self) => (CellRendererText*)(self);

// Class Constructors

<* Maps to new of CellRendererSpin *>
extern fn CellRenderer* cell_renderer_spin_new() @extern("gtk_cell_renderer_spin_new");



// Class Methods


// Class Functions



<* Maps to GtkCellRendererSpinner *>
distinct CellRendererSpinner = void*;

// Class to parent cast.
fn CellRenderer* CellRendererSpinner.as_CellRenderer(&self) => (CellRenderer*)(self);

// Class Constructors

<* Maps to new of CellRendererSpinner *>
extern fn CellRenderer* cell_renderer_spinner_new() @extern("gtk_cell_renderer_spinner_new");



// Class Methods


// Class Functions



<* Maps to GtkCellRendererText *>
distinct CellRendererText = void*;

// Class to parent cast.
fn CellRenderer* CellRendererText.as_CellRenderer(&self) => (CellRenderer*)(self);

// Class Constructors

<* Maps to new of CellRendererText *>
extern fn CellRenderer* cell_renderer_text_new() @extern("gtk_cell_renderer_text_new");



// Class Methods

<* Maps to CellRendererText::set_fixed_height_from_font *>
extern fn void CellRendererText.set_fixed_height_from_font(&self, int number_of_rows) @extern("gtk_cell_renderer_text_set_fixed_height_from_font");


// Class Functions



<* Maps to GtkCellRendererToggle *>
distinct CellRendererToggle = void*;

// Class to parent cast.
fn CellRenderer* CellRendererToggle.as_CellRenderer(&self) => (CellRenderer*)(self);

// Class Constructors

<* Maps to new of CellRendererToggle *>
extern fn CellRenderer* cell_renderer_toggle_new() @extern("gtk_cell_renderer_toggle_new");



// Class Methods

<* Maps to CellRendererToggle::get_activatable *>
extern fn bool CellRendererToggle.get_activatable(&self, ) @extern("gtk_cell_renderer_toggle_get_activatable");

<* Maps to CellRendererToggle::get_active *>
extern fn bool CellRendererToggle.get_active(&self, ) @extern("gtk_cell_renderer_toggle_get_active");

<* Maps to CellRendererToggle::get_radio *>
extern fn bool CellRendererToggle.get_radio(&self, ) @extern("gtk_cell_renderer_toggle_get_radio");

<* Maps to CellRendererToggle::set_activatable *>
extern fn void CellRendererToggle.set_activatable(&self, bool setting) @extern("gtk_cell_renderer_toggle_set_activatable");

<* Maps to CellRendererToggle::set_active *>
extern fn void CellRendererToggle.set_active(&self, bool setting) @extern("gtk_cell_renderer_toggle_set_active");

<* Maps to CellRendererToggle::set_radio *>
extern fn void CellRendererToggle.set_radio(&self, bool radio) @extern("gtk_cell_renderer_toggle_set_radio");


// Class Functions



<* Maps to GtkCellView *>
distinct CellView = void*;

// Class to parent cast.
fn Widget* CellView.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of CellView *>
extern fn Widget* cell_view_new() @extern("gtk_cell_view_new");

<* Maps to new_with_context of CellView *>
extern fn Widget* cell_view_new_with_context(CellArea* area, CellAreaContext* context) @extern("gtk_cell_view_new_with_context");

<* Maps to new_with_markup of CellView *>
extern fn Widget* cell_view_new_with_markup(ZString markup) @extern("gtk_cell_view_new_with_markup");

<* Maps to new_with_text of CellView *>
extern fn Widget* cell_view_new_with_text(ZString text) @extern("gtk_cell_view_new_with_text");

<* Maps to new_with_texture of CellView *>
extern fn Widget* cell_view_new_with_texture(gdk::Texture* texture) @extern("gtk_cell_view_new_with_texture");



// Class Methods

<* Maps to CellView::get_displayed_row *>
extern fn TreePath* CellView.get_displayed_row(&self, ) @extern("gtk_cell_view_get_displayed_row");

<* Maps to CellView::get_draw_sensitive *>
extern fn bool CellView.get_draw_sensitive(&self, ) @extern("gtk_cell_view_get_draw_sensitive");

<* Maps to CellView::get_fit_model *>
extern fn bool CellView.get_fit_model(&self, ) @extern("gtk_cell_view_get_fit_model");

<* Maps to CellView::get_model *>
extern fn TreeModel* CellView.get_model(&self, ) @extern("gtk_cell_view_get_model");

<* Maps to CellView::set_displayed_row *>
extern fn void CellView.set_displayed_row(&self, TreePath* path) @extern("gtk_cell_view_set_displayed_row");

<* Maps to CellView::set_draw_sensitive *>
extern fn void CellView.set_draw_sensitive(&self, bool draw_sensitive) @extern("gtk_cell_view_set_draw_sensitive");

<* Maps to CellView::set_fit_model *>
extern fn void CellView.set_fit_model(&self, bool fit_model) @extern("gtk_cell_view_set_fit_model");

<* Maps to CellView::set_model *>
extern fn void CellView.set_model(&self, TreeModel* model) @extern("gtk_cell_view_set_model");


// Class Functions



<* Maps to GtkCenterBox *>
distinct CenterBox = void*;

// Class to parent cast.
fn Widget* CenterBox.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of CenterBox *>
extern fn Widget* center_box_new() @extern("gtk_center_box_new");



// Class Methods

<* Maps to CenterBox::get_baseline_position *>
extern fn BaselinePosition CenterBox.get_baseline_position(&self, ) @extern("gtk_center_box_get_baseline_position");

<* Maps to CenterBox::get_center_widget *>
extern fn Widget* CenterBox.get_center_widget(&self, ) @extern("gtk_center_box_get_center_widget");

<* Maps to CenterBox::get_end_widget *>
extern fn Widget* CenterBox.get_end_widget(&self, ) @extern("gtk_center_box_get_end_widget");

<* Maps to CenterBox::get_shrink_center_last *>
extern fn bool CenterBox.get_shrink_center_last(&self, ) @extern("gtk_center_box_get_shrink_center_last");

<* Maps to CenterBox::get_start_widget *>
extern fn Widget* CenterBox.get_start_widget(&self, ) @extern("gtk_center_box_get_start_widget");

<* Maps to CenterBox::set_baseline_position *>
extern fn void CenterBox.set_baseline_position(&self, BaselinePosition position) @extern("gtk_center_box_set_baseline_position");

<* Maps to CenterBox::set_center_widget *>
extern fn void CenterBox.set_center_widget(&self, Widget* child) @extern("gtk_center_box_set_center_widget");

<* Maps to CenterBox::set_end_widget *>
extern fn void CenterBox.set_end_widget(&self, Widget* child) @extern("gtk_center_box_set_end_widget");

<* Maps to CenterBox::set_shrink_center_last *>
extern fn void CenterBox.set_shrink_center_last(&self, bool shrink_center_last) @extern("gtk_center_box_set_shrink_center_last");

<* Maps to CenterBox::set_start_widget *>
extern fn void CenterBox.set_start_widget(&self, Widget* child) @extern("gtk_center_box_set_start_widget");


// Class Functions



<* Maps to GtkCenterLayout *>
distinct CenterLayout = void*;

// Class to parent cast.
fn LayoutManager* CenterLayout.as_LayoutManager(&self) => (LayoutManager*)(self);

// Class Constructors

<* Maps to new of CenterLayout *>
extern fn LayoutManager* center_layout_new() @extern("gtk_center_layout_new");



// Class Methods

<* Maps to CenterLayout::get_baseline_position *>
extern fn BaselinePosition CenterLayout.get_baseline_position(&self, ) @extern("gtk_center_layout_get_baseline_position");

<* Maps to CenterLayout::get_center_widget *>
extern fn Widget* CenterLayout.get_center_widget(&self, ) @extern("gtk_center_layout_get_center_widget");

<* Maps to CenterLayout::get_end_widget *>
extern fn Widget* CenterLayout.get_end_widget(&self, ) @extern("gtk_center_layout_get_end_widget");

<* Maps to CenterLayout::get_orientation *>
extern fn Orientation CenterLayout.get_orientation(&self, ) @extern("gtk_center_layout_get_orientation");

<* Maps to CenterLayout::get_shrink_center_last *>
extern fn bool CenterLayout.get_shrink_center_last(&self, ) @extern("gtk_center_layout_get_shrink_center_last");

<* Maps to CenterLayout::get_start_widget *>
extern fn Widget* CenterLayout.get_start_widget(&self, ) @extern("gtk_center_layout_get_start_widget");

<* Maps to CenterLayout::set_baseline_position *>
extern fn void CenterLayout.set_baseline_position(&self, BaselinePosition baseline_position) @extern("gtk_center_layout_set_baseline_position");

<* Maps to CenterLayout::set_center_widget *>
extern fn void CenterLayout.set_center_widget(&self, Widget* widget) @extern("gtk_center_layout_set_center_widget");

<* Maps to CenterLayout::set_end_widget *>
extern fn void CenterLayout.set_end_widget(&self, Widget* widget) @extern("gtk_center_layout_set_end_widget");

<* Maps to CenterLayout::set_orientation *>
extern fn void CenterLayout.set_orientation(&self, Orientation orientation) @extern("gtk_center_layout_set_orientation");

<* Maps to CenterLayout::set_shrink_center_last *>
extern fn void CenterLayout.set_shrink_center_last(&self, bool shrink_center_last) @extern("gtk_center_layout_set_shrink_center_last");

<* Maps to CenterLayout::set_start_widget *>
extern fn void CenterLayout.set_start_widget(&self, Widget* widget) @extern("gtk_center_layout_set_start_widget");


// Class Functions



<* Maps to GtkCheckButton *>
distinct CheckButton = void*;

// Class to parent cast.
fn Widget* CheckButton.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of CheckButton *>
extern fn Widget* check_button_new() @extern("gtk_check_button_new");

<* Maps to new_with_label of CheckButton *>
extern fn Widget* check_button_new_with_label(ZString label) @extern("gtk_check_button_new_with_label");

<* Maps to new_with_mnemonic of CheckButton *>
extern fn Widget* check_button_new_with_mnemonic(ZString label) @extern("gtk_check_button_new_with_mnemonic");



// Class Methods

<* Maps to CheckButton::get_active *>
extern fn bool CheckButton.get_active(&self, ) @extern("gtk_check_button_get_active");

<* Maps to CheckButton::get_child *>
extern fn Widget* CheckButton.get_child(&self, ) @extern("gtk_check_button_get_child");

<* Maps to CheckButton::get_inconsistent *>
extern fn bool CheckButton.get_inconsistent(&self, ) @extern("gtk_check_button_get_inconsistent");

<* Maps to CheckButton::get_label *>
extern fn ZString CheckButton.get_label(&self, ) @extern("gtk_check_button_get_label");

<* Maps to CheckButton::get_use_underline *>
extern fn bool CheckButton.get_use_underline(&self, ) @extern("gtk_check_button_get_use_underline");

<* Maps to CheckButton::set_active *>
extern fn void CheckButton.set_active(&self, bool setting) @extern("gtk_check_button_set_active");

<* Maps to CheckButton::set_child *>
extern fn void CheckButton.set_child(&self, Widget* child) @extern("gtk_check_button_set_child");

<* Maps to CheckButton::set_group *>
extern fn void CheckButton.set_group(&self, CheckButton* group) @extern("gtk_check_button_set_group");

<* Maps to CheckButton::set_inconsistent *>
extern fn void CheckButton.set_inconsistent(&self, bool inconsistent) @extern("gtk_check_button_set_inconsistent");

<* Maps to CheckButton::set_label *>
extern fn void CheckButton.set_label(&self, ZString label) @extern("gtk_check_button_set_label");

<* Maps to CheckButton::set_use_underline *>
extern fn void CheckButton.set_use_underline(&self, bool setting) @extern("gtk_check_button_set_use_underline");


// Class Functions



<* Maps to GtkClosureExpression *>
distinct ClosureExpression = void*;

// Class to parent cast.
fn Expression* ClosureExpression.as_Expression(&self) => (Expression*)(self);

// Class Constructors

<* Maps to new of ClosureExpression *>
extern fn ClosureExpression* closure_expression_new(usz value_type, gobject::Closure* closure, uint n_params, Expression* params) @extern("gtk_closure_expression_new");



// Class Methods


// Class Functions



<* Maps to GtkColorButton *>
distinct ColorButton = void*;

// Class to parent cast.
fn Widget* ColorButton.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ColorButton *>
extern fn Widget* color_button_new() @extern("gtk_color_button_new");

<* Maps to new_with_rgba of ColorButton *>
extern fn Widget* color_button_new_with_rgba(gdk::Rgba* rgba) @extern("gtk_color_button_new_with_rgba");



// Class Methods

<* Maps to ColorButton::get_modal *>
extern fn bool ColorButton.get_modal(&self, ) @extern("gtk_color_button_get_modal");

<* Maps to ColorButton::get_title *>
extern fn ZString ColorButton.get_title(&self, ) @extern("gtk_color_button_get_title");

<* Maps to ColorButton::set_modal *>
extern fn void ColorButton.set_modal(&self, bool modal) @extern("gtk_color_button_set_modal");

<* Maps to ColorButton::set_title *>
extern fn void ColorButton.set_title(&self, ZString title) @extern("gtk_color_button_set_title");


// Class Functions



<* Maps to GtkColorChooserDialog *>
distinct ColorChooserDialog = void*;

// Class to parent cast.
fn Dialog* ColorChooserDialog.as_Dialog(&self) => (Dialog*)(self);

// Class Constructors

<* Maps to new of ColorChooserDialog *>
extern fn Widget* color_chooser_dialog_new(ZString title, Window* parent) @extern("gtk_color_chooser_dialog_new");



// Class Methods


// Class Functions



<* Maps to GtkColorChooserWidget *>
distinct ColorChooserWidget = void*;

// Class to parent cast.
fn Widget* ColorChooserWidget.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ColorChooserWidget *>
extern fn Widget* color_chooser_widget_new() @extern("gtk_color_chooser_widget_new");



// Class Methods


// Class Functions



<* Maps to GtkColorDialog *>
distinct ColorDialog = void*;

// Class to parent cast.
fn gobject::Object* ColorDialog.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of ColorDialog *>
extern fn ColorDialog* color_dialog_new() @extern("gtk_color_dialog_new");



// Class Methods

<* Maps to ColorDialog::choose_rgba *>
extern fn void ColorDialog.choose_rgba(&self, Window* parent, gdk::Rgba* initial_color, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_color_dialog_choose_rgba");

<* Maps to ColorDialog::choose_rgba_finish *>
extern fn gdk::Rgba* ColorDialog.choose_rgba_finish(&self, gio::AsyncResult* result) @extern("gtk_color_dialog_choose_rgba_finish");

<* Maps to ColorDialog::get_modal *>
extern fn bool ColorDialog.get_modal(&self, ) @extern("gtk_color_dialog_get_modal");

<* Maps to ColorDialog::get_title *>
extern fn ZString ColorDialog.get_title(&self, ) @extern("gtk_color_dialog_get_title");

<* Maps to ColorDialog::get_with_alpha *>
extern fn bool ColorDialog.get_with_alpha(&self, ) @extern("gtk_color_dialog_get_with_alpha");

<* Maps to ColorDialog::set_modal *>
extern fn void ColorDialog.set_modal(&self, bool modal) @extern("gtk_color_dialog_set_modal");

<* Maps to ColorDialog::set_title *>
extern fn void ColorDialog.set_title(&self, ZString title) @extern("gtk_color_dialog_set_title");

<* Maps to ColorDialog::set_with_alpha *>
extern fn void ColorDialog.set_with_alpha(&self, bool with_alpha) @extern("gtk_color_dialog_set_with_alpha");


// Class Functions



<* Maps to GtkColorDialogButton *>
distinct ColorDialogButton = void*;

// Class to parent cast.
fn Widget* ColorDialogButton.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ColorDialogButton *>
extern fn Widget* color_dialog_button_new(ColorDialog* dialog) @extern("gtk_color_dialog_button_new");



// Class Methods

<* Maps to ColorDialogButton::get_dialog *>
extern fn ColorDialog* ColorDialogButton.get_dialog(&self, ) @extern("gtk_color_dialog_button_get_dialog");

<* Maps to ColorDialogButton::get_rgba *>
extern fn gdk::Rgba* ColorDialogButton.get_rgba(&self, ) @extern("gtk_color_dialog_button_get_rgba");

<* Maps to ColorDialogButton::set_dialog *>
extern fn void ColorDialogButton.set_dialog(&self, ColorDialog* dialog) @extern("gtk_color_dialog_button_set_dialog");

<* Maps to ColorDialogButton::set_rgba *>
extern fn void ColorDialogButton.set_rgba(&self, gdk::Rgba* color) @extern("gtk_color_dialog_button_set_rgba");


// Class Functions



<* Maps to GtkColumnView *>
distinct ColumnView = void*;

// Class to parent cast.
fn Widget* ColumnView.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ColumnView *>
extern fn Widget* column_view_new(SelectionModel* model) @extern("gtk_column_view_new");



// Class Methods

<* Maps to ColumnView::append_column *>
extern fn void ColumnView.append_column(&self, ColumnViewColumn* column) @extern("gtk_column_view_append_column");

<* Maps to ColumnView::get_columns *>
extern fn gio::ListModel* ColumnView.get_columns(&self, ) @extern("gtk_column_view_get_columns");

<* Maps to ColumnView::get_enable_rubberband *>
extern fn bool ColumnView.get_enable_rubberband(&self, ) @extern("gtk_column_view_get_enable_rubberband");

<* Maps to ColumnView::get_header_factory *>
extern fn ListItemFactory* ColumnView.get_header_factory(&self, ) @extern("gtk_column_view_get_header_factory");

<* Maps to ColumnView::get_model *>
extern fn SelectionModel* ColumnView.get_model(&self, ) @extern("gtk_column_view_get_model");

<* Maps to ColumnView::get_reorderable *>
extern fn bool ColumnView.get_reorderable(&self, ) @extern("gtk_column_view_get_reorderable");

<* Maps to ColumnView::get_row_factory *>
extern fn ListItemFactory* ColumnView.get_row_factory(&self, ) @extern("gtk_column_view_get_row_factory");

<* Maps to ColumnView::get_show_column_separators *>
extern fn bool ColumnView.get_show_column_separators(&self, ) @extern("gtk_column_view_get_show_column_separators");

<* Maps to ColumnView::get_show_row_separators *>
extern fn bool ColumnView.get_show_row_separators(&self, ) @extern("gtk_column_view_get_show_row_separators");

<* Maps to ColumnView::get_single_click_activate *>
extern fn bool ColumnView.get_single_click_activate(&self, ) @extern("gtk_column_view_get_single_click_activate");

<* Maps to ColumnView::get_sorter *>
extern fn Sorter* ColumnView.get_sorter(&self, ) @extern("gtk_column_view_get_sorter");

<* Maps to ColumnView::get_tab_behavior *>
extern fn ListTabBehavior ColumnView.get_tab_behavior(&self, ) @extern("gtk_column_view_get_tab_behavior");

<* Maps to ColumnView::insert_column *>
extern fn void ColumnView.insert_column(&self, uint position, ColumnViewColumn* column) @extern("gtk_column_view_insert_column");

<* Maps to ColumnView::remove_column *>
extern fn void ColumnView.remove_column(&self, ColumnViewColumn* column) @extern("gtk_column_view_remove_column");

<* Maps to ColumnView::scroll_to *>
extern fn void ColumnView.scroll_to(&self, uint pos, ColumnViewColumn* column, ListScrollFlags flags, ScrollInfo* scroll) @extern("gtk_column_view_scroll_to");

<* Maps to ColumnView::set_enable_rubberband *>
extern fn void ColumnView.set_enable_rubberband(&self, bool enable_rubberband) @extern("gtk_column_view_set_enable_rubberband");

<* Maps to ColumnView::set_header_factory *>
extern fn void ColumnView.set_header_factory(&self, ListItemFactory* factory) @extern("gtk_column_view_set_header_factory");

<* Maps to ColumnView::set_model *>
extern fn void ColumnView.set_model(&self, SelectionModel* model) @extern("gtk_column_view_set_model");

<* Maps to ColumnView::set_reorderable *>
extern fn void ColumnView.set_reorderable(&self, bool reorderable) @extern("gtk_column_view_set_reorderable");

<* Maps to ColumnView::set_row_factory *>
extern fn void ColumnView.set_row_factory(&self, ListItemFactory* factory) @extern("gtk_column_view_set_row_factory");

<* Maps to ColumnView::set_show_column_separators *>
extern fn void ColumnView.set_show_column_separators(&self, bool show_column_separators) @extern("gtk_column_view_set_show_column_separators");

<* Maps to ColumnView::set_show_row_separators *>
extern fn void ColumnView.set_show_row_separators(&self, bool show_row_separators) @extern("gtk_column_view_set_show_row_separators");

<* Maps to ColumnView::set_single_click_activate *>
extern fn void ColumnView.set_single_click_activate(&self, bool single_click_activate) @extern("gtk_column_view_set_single_click_activate");

<* Maps to ColumnView::set_tab_behavior *>
extern fn void ColumnView.set_tab_behavior(&self, ListTabBehavior tab_behavior) @extern("gtk_column_view_set_tab_behavior");

<* Maps to ColumnView::sort_by_column *>
extern fn void ColumnView.sort_by_column(&self, ColumnViewColumn* column, SortType direction) @extern("gtk_column_view_sort_by_column");


// Class Functions



<* Maps to GtkColumnViewCell *>
distinct ColumnViewCell = void*;

// Class to parent cast.
fn ListItem* ColumnViewCell.as_ListItem(&self) => (ListItem*)(self);

// Class Constructors



// Class Methods

<* Maps to ColumnViewCell::get_child *>
extern fn Widget* ColumnViewCell.get_child(&self, ) @extern("gtk_column_view_cell_get_child");

<* Maps to ColumnViewCell::get_focusable *>
extern fn bool ColumnViewCell.get_focusable(&self, ) @extern("gtk_column_view_cell_get_focusable");

<* Maps to ColumnViewCell::get_item *>
extern fn gobject::Object* ColumnViewCell.get_item(&self, ) @extern("gtk_column_view_cell_get_item");

<* Maps to ColumnViewCell::get_position *>
extern fn uint ColumnViewCell.get_position(&self, ) @extern("gtk_column_view_cell_get_position");

<* Maps to ColumnViewCell::get_selected *>
extern fn bool ColumnViewCell.get_selected(&self, ) @extern("gtk_column_view_cell_get_selected");

<* Maps to ColumnViewCell::set_child *>
extern fn void ColumnViewCell.set_child(&self, Widget* child) @extern("gtk_column_view_cell_set_child");

<* Maps to ColumnViewCell::set_focusable *>
extern fn void ColumnViewCell.set_focusable(&self, bool focusable) @extern("gtk_column_view_cell_set_focusable");


// Class Functions



<* Maps to GtkColumnViewColumn *>
distinct ColumnViewColumn = void*;

// Class to parent cast.
fn gobject::Object* ColumnViewColumn.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of ColumnViewColumn *>
extern fn ColumnViewColumn* column_view_column_new(ZString title, ListItemFactory* factory) @extern("gtk_column_view_column_new");



// Class Methods

<* Maps to ColumnViewColumn::get_column_view *>
extern fn ColumnView* ColumnViewColumn.get_column_view(&self, ) @extern("gtk_column_view_column_get_column_view");

<* Maps to ColumnViewColumn::get_expand *>
extern fn bool ColumnViewColumn.get_expand(&self, ) @extern("gtk_column_view_column_get_expand");

<* Maps to ColumnViewColumn::get_factory *>
extern fn ListItemFactory* ColumnViewColumn.get_factory(&self, ) @extern("gtk_column_view_column_get_factory");

<* Maps to ColumnViewColumn::get_fixed_width *>
extern fn int ColumnViewColumn.get_fixed_width(&self, ) @extern("gtk_column_view_column_get_fixed_width");

<* Maps to ColumnViewColumn::get_header_menu *>
extern fn gio::MenuModel* ColumnViewColumn.get_header_menu(&self, ) @extern("gtk_column_view_column_get_header_menu");

<* Maps to ColumnViewColumn::get_id *>
extern fn ZString ColumnViewColumn.get_id(&self, ) @extern("gtk_column_view_column_get_id");

<* Maps to ColumnViewColumn::get_resizable *>
extern fn bool ColumnViewColumn.get_resizable(&self, ) @extern("gtk_column_view_column_get_resizable");

<* Maps to ColumnViewColumn::get_sorter *>
extern fn Sorter* ColumnViewColumn.get_sorter(&self, ) @extern("gtk_column_view_column_get_sorter");

<* Maps to ColumnViewColumn::get_title *>
extern fn ZString ColumnViewColumn.get_title(&self, ) @extern("gtk_column_view_column_get_title");

<* Maps to ColumnViewColumn::get_visible *>
extern fn bool ColumnViewColumn.get_visible(&self, ) @extern("gtk_column_view_column_get_visible");

<* Maps to ColumnViewColumn::set_expand *>
extern fn void ColumnViewColumn.set_expand(&self, bool expand) @extern("gtk_column_view_column_set_expand");

<* Maps to ColumnViewColumn::set_factory *>
extern fn void ColumnViewColumn.set_factory(&self, ListItemFactory* factory) @extern("gtk_column_view_column_set_factory");

<* Maps to ColumnViewColumn::set_fixed_width *>
extern fn void ColumnViewColumn.set_fixed_width(&self, int fixed_width) @extern("gtk_column_view_column_set_fixed_width");

<* Maps to ColumnViewColumn::set_header_menu *>
extern fn void ColumnViewColumn.set_header_menu(&self, gio::MenuModel* menu) @extern("gtk_column_view_column_set_header_menu");

<* Maps to ColumnViewColumn::set_id *>
extern fn void ColumnViewColumn.set_id(&self, ZString id) @extern("gtk_column_view_column_set_id");

<* Maps to ColumnViewColumn::set_resizable *>
extern fn void ColumnViewColumn.set_resizable(&self, bool resizable) @extern("gtk_column_view_column_set_resizable");

<* Maps to ColumnViewColumn::set_sorter *>
extern fn void ColumnViewColumn.set_sorter(&self, Sorter* sorter) @extern("gtk_column_view_column_set_sorter");

<* Maps to ColumnViewColumn::set_title *>
extern fn void ColumnViewColumn.set_title(&self, ZString title) @extern("gtk_column_view_column_set_title");

<* Maps to ColumnViewColumn::set_visible *>
extern fn void ColumnViewColumn.set_visible(&self, bool visible) @extern("gtk_column_view_column_set_visible");


// Class Functions



<* Maps to GtkColumnViewRow *>
distinct ColumnViewRow = void*;

// Class to parent cast.
fn gobject::Object* ColumnViewRow.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to ColumnViewRow::get_accessible_description *>
extern fn ZString ColumnViewRow.get_accessible_description(&self, ) @extern("gtk_column_view_row_get_accessible_description");

<* Maps to ColumnViewRow::get_accessible_label *>
extern fn ZString ColumnViewRow.get_accessible_label(&self, ) @extern("gtk_column_view_row_get_accessible_label");

<* Maps to ColumnViewRow::get_activatable *>
extern fn bool ColumnViewRow.get_activatable(&self, ) @extern("gtk_column_view_row_get_activatable");

<* Maps to ColumnViewRow::get_focusable *>
extern fn bool ColumnViewRow.get_focusable(&self, ) @extern("gtk_column_view_row_get_focusable");

<* Maps to ColumnViewRow::get_item *>
extern fn gobject::Object* ColumnViewRow.get_item(&self, ) @extern("gtk_column_view_row_get_item");

<* Maps to ColumnViewRow::get_position *>
extern fn uint ColumnViewRow.get_position(&self, ) @extern("gtk_column_view_row_get_position");

<* Maps to ColumnViewRow::get_selectable *>
extern fn bool ColumnViewRow.get_selectable(&self, ) @extern("gtk_column_view_row_get_selectable");

<* Maps to ColumnViewRow::get_selected *>
extern fn bool ColumnViewRow.get_selected(&self, ) @extern("gtk_column_view_row_get_selected");

<* Maps to ColumnViewRow::set_accessible_description *>
extern fn void ColumnViewRow.set_accessible_description(&self, ZString description) @extern("gtk_column_view_row_set_accessible_description");

<* Maps to ColumnViewRow::set_accessible_label *>
extern fn void ColumnViewRow.set_accessible_label(&self, ZString label) @extern("gtk_column_view_row_set_accessible_label");

<* Maps to ColumnViewRow::set_activatable *>
extern fn void ColumnViewRow.set_activatable(&self, bool activatable) @extern("gtk_column_view_row_set_activatable");

<* Maps to ColumnViewRow::set_focusable *>
extern fn void ColumnViewRow.set_focusable(&self, bool focusable) @extern("gtk_column_view_row_set_focusable");

<* Maps to ColumnViewRow::set_selectable *>
extern fn void ColumnViewRow.set_selectable(&self, bool selectable) @extern("gtk_column_view_row_set_selectable");


// Class Functions



<* Maps to GtkColumnViewSorter *>
distinct ColumnViewSorter = void*;

// Class to parent cast.
fn Sorter* ColumnViewSorter.as_Sorter(&self) => (Sorter*)(self);

// Class Constructors



// Class Methods

<* Maps to ColumnViewSorter::get_n_sort_columns *>
extern fn uint ColumnViewSorter.get_n_sort_columns(&self, ) @extern("gtk_column_view_sorter_get_n_sort_columns");

<* Maps to ColumnViewSorter::get_nth_sort_column *>
extern fn ColumnViewColumn* ColumnViewSorter.get_nth_sort_column(&self, uint position, SortType* sort_order) @extern("gtk_column_view_sorter_get_nth_sort_column");

<* Maps to ColumnViewSorter::get_primary_sort_column *>
extern fn ColumnViewColumn* ColumnViewSorter.get_primary_sort_column(&self, ) @extern("gtk_column_view_sorter_get_primary_sort_column");

<* Maps to ColumnViewSorter::get_primary_sort_order *>
extern fn SortType ColumnViewSorter.get_primary_sort_order(&self, ) @extern("gtk_column_view_sorter_get_primary_sort_order");


// Class Functions



<* Maps to GtkComboBox *>
distinct ComboBox = void*;

// Class to parent cast.
fn Widget* ComboBox.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ComboBox *>
extern fn Widget* combo_box_new() @extern("gtk_combo_box_new");

<* Maps to new_with_entry of ComboBox *>
extern fn Widget* combo_box_new_with_entry() @extern("gtk_combo_box_new_with_entry");

<* Maps to new_with_model of ComboBox *>
extern fn Widget* combo_box_new_with_model(TreeModel* model) @extern("gtk_combo_box_new_with_model");

<* Maps to new_with_model_and_entry of ComboBox *>
extern fn Widget* combo_box_new_with_model_and_entry(TreeModel* model) @extern("gtk_combo_box_new_with_model_and_entry");



// Class Methods

<* Maps to ComboBox::get_active *>
extern fn int ComboBox.get_active(&self, ) @extern("gtk_combo_box_get_active");

<* Maps to ComboBox::get_active_id *>
extern fn ZString ComboBox.get_active_id(&self, ) @extern("gtk_combo_box_get_active_id");

<* Maps to ComboBox::get_active_iter *>
extern fn bool ComboBox.get_active_iter(&self, TreeIter* iter) @extern("gtk_combo_box_get_active_iter");

<* Maps to ComboBox::get_button_sensitivity *>
extern fn SensitivityType ComboBox.get_button_sensitivity(&self, ) @extern("gtk_combo_box_get_button_sensitivity");

<* Maps to ComboBox::get_child *>
extern fn Widget* ComboBox.get_child(&self, ) @extern("gtk_combo_box_get_child");

<* Maps to ComboBox::get_entry_text_column *>
extern fn int ComboBox.get_entry_text_column(&self, ) @extern("gtk_combo_box_get_entry_text_column");

<* Maps to ComboBox::get_has_entry *>
extern fn bool ComboBox.get_has_entry(&self, ) @extern("gtk_combo_box_get_has_entry");

<* Maps to ComboBox::get_id_column *>
extern fn int ComboBox.get_id_column(&self, ) @extern("gtk_combo_box_get_id_column");

<* Maps to ComboBox::get_model *>
extern fn TreeModel* ComboBox.get_model(&self, ) @extern("gtk_combo_box_get_model");

<* Maps to ComboBox::get_popup_fixed_width *>
extern fn bool ComboBox.get_popup_fixed_width(&self, ) @extern("gtk_combo_box_get_popup_fixed_width");

<* Maps to ComboBox::get_row_separator_func *>
extern fn TreeViewRowSeparatorFunc ComboBox.get_row_separator_func(&self, ) @extern("gtk_combo_box_get_row_separator_func");

<* Maps to ComboBox::popdown *>
extern fn void ComboBox.popdown(&self, ) @extern("gtk_combo_box_popdown");

<* Maps to ComboBox::popup *>
extern fn void ComboBox.popup(&self, ) @extern("gtk_combo_box_popup");

<* Maps to ComboBox::popup_for_device *>
extern fn void ComboBox.popup_for_device(&self, gdk::Device* device) @extern("gtk_combo_box_popup_for_device");

<* Maps to ComboBox::set_active *>
extern fn void ComboBox.set_active(&self, int index_) @extern("gtk_combo_box_set_active");

<* Maps to ComboBox::set_active_id *>
extern fn bool ComboBox.set_active_id(&self, ZString active_id) @extern("gtk_combo_box_set_active_id");

<* Maps to ComboBox::set_active_iter *>
extern fn void ComboBox.set_active_iter(&self, TreeIter* iter) @extern("gtk_combo_box_set_active_iter");

<* Maps to ComboBox::set_button_sensitivity *>
extern fn void ComboBox.set_button_sensitivity(&self, SensitivityType sensitivity) @extern("gtk_combo_box_set_button_sensitivity");

<* Maps to ComboBox::set_child *>
extern fn void ComboBox.set_child(&self, Widget* child) @extern("gtk_combo_box_set_child");

<* Maps to ComboBox::set_entry_text_column *>
extern fn void ComboBox.set_entry_text_column(&self, int text_column) @extern("gtk_combo_box_set_entry_text_column");

<* Maps to ComboBox::set_id_column *>
extern fn void ComboBox.set_id_column(&self, int id_column) @extern("gtk_combo_box_set_id_column");

<* Maps to ComboBox::set_model *>
extern fn void ComboBox.set_model(&self, TreeModel* model) @extern("gtk_combo_box_set_model");

<* Maps to ComboBox::set_popup_fixed_width *>
extern fn void ComboBox.set_popup_fixed_width(&self, bool fixed) @extern("gtk_combo_box_set_popup_fixed_width");

<* Maps to ComboBox::set_row_separator_func *>
extern fn void ComboBox.set_row_separator_func(&self, TreeViewRowSeparatorFunc func, void* data, glib::DestroyNotify destroy) @extern("gtk_combo_box_set_row_separator_func");


// Class Functions



<* Maps to GtkComboBoxText *>
distinct ComboBoxText = void*;

// Class to parent cast.
fn ComboBox* ComboBoxText.as_ComboBox(&self) => (ComboBox*)(self);

// Class Constructors

<* Maps to new of ComboBoxText *>
extern fn Widget* combo_box_text_new() @extern("gtk_combo_box_text_new");

<* Maps to new_with_entry of ComboBoxText *>
extern fn Widget* combo_box_text_new_with_entry() @extern("gtk_combo_box_text_new_with_entry");



// Class Methods

<* Maps to ComboBoxText::append *>
extern fn void ComboBoxText.append(&self, ZString id, ZString text) @extern("gtk_combo_box_text_append");

<* Maps to ComboBoxText::append_text *>
extern fn void ComboBoxText.append_text(&self, ZString text) @extern("gtk_combo_box_text_append_text");

<* Maps to ComboBoxText::get_active_text *>
extern fn ZString* ComboBoxText.get_active_text(&self, ) @extern("gtk_combo_box_text_get_active_text");

<* Maps to ComboBoxText::insert *>
extern fn void ComboBoxText.insert(&self, int position, ZString id, ZString text) @extern("gtk_combo_box_text_insert");

<* Maps to ComboBoxText::insert_text *>
extern fn void ComboBoxText.insert_text(&self, int position, ZString text) @extern("gtk_combo_box_text_insert_text");

<* Maps to ComboBoxText::prepend *>
extern fn void ComboBoxText.prepend(&self, ZString id, ZString text) @extern("gtk_combo_box_text_prepend");

<* Maps to ComboBoxText::prepend_text *>
extern fn void ComboBoxText.prepend_text(&self, ZString text) @extern("gtk_combo_box_text_prepend_text");

<* Maps to ComboBoxText::remove *>
extern fn void ComboBoxText.remove(&self, int position) @extern("gtk_combo_box_text_remove");

<* Maps to ComboBoxText::remove_all *>
extern fn void ComboBoxText.remove_all(&self, ) @extern("gtk_combo_box_text_remove_all");


// Class Functions



<* Maps to GtkConstantExpression *>
distinct ConstantExpression = void*;

// Class to parent cast.
fn Expression* ConstantExpression.as_Expression(&self) => (Expression*)(self);

// Class Constructors

<* Maps to new of ConstantExpression *>
extern fn ConstantExpression* constant_expression_new(usz value_type, any rest) @extern("gtk_constant_expression_new");

<* Maps to new_for_value of ConstantExpression *>
extern fn ConstantExpression* constant_expression_new_for_value(gobject::Value* value) @extern("gtk_constant_expression_new_for_value");



// Class Methods

<* Maps to ConstantExpression::get_value *>
extern fn gobject::Value* ConstantExpression.get_value(&self, ) @extern("gtk_constant_expression_get_value");


// Class Functions



<* Maps to GtkConstraint *>
distinct Constraint = void*;

// Class to parent cast.
fn gobject::Object* Constraint.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Constraint *>
extern fn Constraint* constraint_new(ConstraintTarget* target, ConstraintAttribute target_attribute, ConstraintRelation relation, ConstraintTarget* source, ConstraintAttribute source_attribute, double multiplier, double constant, int strength) @extern("gtk_constraint_new");

<* Maps to new_constant of Constraint *>
extern fn Constraint* constraint_new_constant(ConstraintTarget* target, ConstraintAttribute target_attribute, ConstraintRelation relation, double constant, int strength) @extern("gtk_constraint_new_constant");



// Class Methods

<* Maps to Constraint::get_constant *>
extern fn double Constraint.get_constant(&self, ) @extern("gtk_constraint_get_constant");

<* Maps to Constraint::get_multiplier *>
extern fn double Constraint.get_multiplier(&self, ) @extern("gtk_constraint_get_multiplier");

<* Maps to Constraint::get_relation *>
extern fn ConstraintRelation Constraint.get_relation(&self, ) @extern("gtk_constraint_get_relation");

<* Maps to Constraint::get_source *>
extern fn ConstraintTarget* Constraint.get_source(&self, ) @extern("gtk_constraint_get_source");

<* Maps to Constraint::get_source_attribute *>
extern fn ConstraintAttribute Constraint.get_source_attribute(&self, ) @extern("gtk_constraint_get_source_attribute");

<* Maps to Constraint::get_strength *>
extern fn int Constraint.get_strength(&self, ) @extern("gtk_constraint_get_strength");

<* Maps to Constraint::get_target *>
extern fn ConstraintTarget* Constraint.get_target(&self, ) @extern("gtk_constraint_get_target");

<* Maps to Constraint::get_target_attribute *>
extern fn ConstraintAttribute Constraint.get_target_attribute(&self, ) @extern("gtk_constraint_get_target_attribute");

<* Maps to Constraint::is_attached *>
extern fn bool Constraint.is_attached(&self, ) @extern("gtk_constraint_is_attached");

<* Maps to Constraint::is_constant *>
extern fn bool Constraint.is_constant(&self, ) @extern("gtk_constraint_is_constant");

<* Maps to Constraint::is_required *>
extern fn bool Constraint.is_required(&self, ) @extern("gtk_constraint_is_required");


// Class Functions



<* Maps to GtkConstraintGuide *>
distinct ConstraintGuide = void*;

// Class to parent cast.
fn gobject::Object* ConstraintGuide.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of ConstraintGuide *>
extern fn ConstraintGuide* constraint_guide_new() @extern("gtk_constraint_guide_new");



// Class Methods

<* Maps to ConstraintGuide::get_max_size *>
extern fn void ConstraintGuide.get_max_size(&self, int* width, int* height) @extern("gtk_constraint_guide_get_max_size");

<* Maps to ConstraintGuide::get_min_size *>
extern fn void ConstraintGuide.get_min_size(&self, int* width, int* height) @extern("gtk_constraint_guide_get_min_size");

<* Maps to ConstraintGuide::get_name *>
extern fn ZString ConstraintGuide.get_name(&self, ) @extern("gtk_constraint_guide_get_name");

<* Maps to ConstraintGuide::get_nat_size *>
extern fn void ConstraintGuide.get_nat_size(&self, int* width, int* height) @extern("gtk_constraint_guide_get_nat_size");

<* Maps to ConstraintGuide::get_strength *>
extern fn ConstraintStrength ConstraintGuide.get_strength(&self, ) @extern("gtk_constraint_guide_get_strength");

<* Maps to ConstraintGuide::set_max_size *>
extern fn void ConstraintGuide.set_max_size(&self, int width, int height) @extern("gtk_constraint_guide_set_max_size");

<* Maps to ConstraintGuide::set_min_size *>
extern fn void ConstraintGuide.set_min_size(&self, int width, int height) @extern("gtk_constraint_guide_set_min_size");

<* Maps to ConstraintGuide::set_name *>
extern fn void ConstraintGuide.set_name(&self, ZString name) @extern("gtk_constraint_guide_set_name");

<* Maps to ConstraintGuide::set_nat_size *>
extern fn void ConstraintGuide.set_nat_size(&self, int width, int height) @extern("gtk_constraint_guide_set_nat_size");

<* Maps to ConstraintGuide::set_strength *>
extern fn void ConstraintGuide.set_strength(&self, ConstraintStrength strength) @extern("gtk_constraint_guide_set_strength");


// Class Functions



<* Maps to GtkConstraintLayout *>
distinct ConstraintLayout = void*;

// Class to parent cast.
fn LayoutManager* ConstraintLayout.as_LayoutManager(&self) => (LayoutManager*)(self);

// Class Constructors

<* Maps to new of ConstraintLayout *>
extern fn LayoutManager* constraint_layout_new() @extern("gtk_constraint_layout_new");



// Class Methods

<* Maps to ConstraintLayout::add_constraint *>
extern fn void ConstraintLayout.add_constraint(&self, Constraint* constraint) @extern("gtk_constraint_layout_add_constraint");

<* Maps to ConstraintLayout::add_constraints_from_description *>
extern fn glib::List* ConstraintLayout.add_constraints_from_description(&self, ZString* lines, usz n_lines, int hspacing, int vspacing, glib::Error* error, ZString first_view, any rest) @extern("gtk_constraint_layout_add_constraints_from_description");

<* Maps to ConstraintLayout::add_constraints_from_descriptionv *>
extern fn glib::List* ConstraintLayout.add_constraints_from_descriptionv(&self, ZString* lines, usz n_lines, int hspacing, int vspacing, glib::HashTable* views) @extern("gtk_constraint_layout_add_constraints_from_descriptionv");

<* Maps to ConstraintLayout::add_guide *>
extern fn void ConstraintLayout.add_guide(&self, ConstraintGuide* guide) @extern("gtk_constraint_layout_add_guide");

<* Maps to ConstraintLayout::observe_constraints *>
extern fn gio::ListModel* ConstraintLayout.observe_constraints(&self, ) @extern("gtk_constraint_layout_observe_constraints");

<* Maps to ConstraintLayout::observe_guides *>
extern fn gio::ListModel* ConstraintLayout.observe_guides(&self, ) @extern("gtk_constraint_layout_observe_guides");

<* Maps to ConstraintLayout::remove_all_constraints *>
extern fn void ConstraintLayout.remove_all_constraints(&self, ) @extern("gtk_constraint_layout_remove_all_constraints");

<* Maps to ConstraintLayout::remove_constraint *>
extern fn void ConstraintLayout.remove_constraint(&self, Constraint* constraint) @extern("gtk_constraint_layout_remove_constraint");

<* Maps to ConstraintLayout::remove_guide *>
extern fn void ConstraintLayout.remove_guide(&self, ConstraintGuide* guide) @extern("gtk_constraint_layout_remove_guide");


// Class Functions



<* Maps to GtkConstraintLayoutChild *>
distinct ConstraintLayoutChild = void*;

// Class to parent cast.
fn LayoutChild* ConstraintLayoutChild.as_LayoutChild(&self) => (LayoutChild*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GtkCssProvider *>
distinct CssProvider = void*;

// Class to parent cast.
fn gobject::Object* CssProvider.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of CssProvider *>
extern fn CssProvider* css_provider_new() @extern("gtk_css_provider_new");



// Class Methods

<* Maps to CssProvider::load_from_bytes *>
extern fn void CssProvider.load_from_bytes(&self, glib::Bytes* data) @extern("gtk_css_provider_load_from_bytes");

<* Maps to CssProvider::load_from_data *>
extern fn void CssProvider.load_from_data(&self, ZString data, isz length) @extern("gtk_css_provider_load_from_data");

<* Maps to CssProvider::load_from_file *>
extern fn void CssProvider.load_from_file(&self, gio::File* file) @extern("gtk_css_provider_load_from_file");

<* Maps to CssProvider::load_from_path *>
extern fn void CssProvider.load_from_path(&self, ZString path) @extern("gtk_css_provider_load_from_path");

<* Maps to CssProvider::load_from_resource *>
extern fn void CssProvider.load_from_resource(&self, ZString resource_path) @extern("gtk_css_provider_load_from_resource");

<* Maps to CssProvider::load_from_string *>
extern fn void CssProvider.load_from_string(&self, ZString string) @extern("gtk_css_provider_load_from_string");

<* Maps to CssProvider::load_named *>
extern fn void CssProvider.load_named(&self, ZString name, ZString variant) @extern("gtk_css_provider_load_named");

<* Maps to CssProvider::to_string *>
extern fn ZString* CssProvider.to_string(&self, ) @extern("gtk_css_provider_to_string");


// Class Functions



<* Maps to GtkCustomFilter *>
distinct CustomFilter = void*;

// Class to parent cast.
fn Filter* CustomFilter.as_Filter(&self) => (Filter*)(self);

// Class Constructors

<* Maps to new of CustomFilter *>
extern fn CustomFilter* custom_filter_new(CustomFilterFunc match_func, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_custom_filter_new");



// Class Methods

<* Maps to CustomFilter::set_filter_func *>
extern fn void CustomFilter.set_filter_func(&self, CustomFilterFunc match_func, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_custom_filter_set_filter_func");


// Class Functions



<* Maps to GtkCustomLayout *>
distinct CustomLayout = void*;

// Class to parent cast.
fn LayoutManager* CustomLayout.as_LayoutManager(&self) => (LayoutManager*)(self);

// Class Constructors

<* Maps to new of CustomLayout *>
extern fn LayoutManager* custom_layout_new(CustomRequestModeFunc request_mode, CustomMeasureFunc measure, CustomAllocateFunc allocate) @extern("gtk_custom_layout_new");



// Class Methods


// Class Functions



<* Maps to GtkCustomSorter *>
distinct CustomSorter = void*;

// Class to parent cast.
fn Sorter* CustomSorter.as_Sorter(&self) => (Sorter*)(self);

// Class Constructors

<* Maps to new of CustomSorter *>
extern fn CustomSorter* custom_sorter_new(glib::CompareDataFunc sort_func, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_custom_sorter_new");



// Class Methods

<* Maps to CustomSorter::set_sort_func *>
extern fn void CustomSorter.set_sort_func(&self, glib::CompareDataFunc sort_func, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_custom_sorter_set_sort_func");


// Class Functions



<* Maps to GtkDialog *>
distinct Dialog = void*;

// Class to parent cast.
fn Window* Dialog.as_Window(&self) => (Window*)(self);

// Class Constructors

<* Maps to new of Dialog *>
extern fn Widget* dialog_new() @extern("gtk_dialog_new");

<* Maps to new_with_buttons of Dialog *>
extern fn Widget* dialog_new_with_buttons(ZString title, Window* parent, DialogFlags flags, ZString first_button_text, any rest) @extern("gtk_dialog_new_with_buttons");



// Class Methods

<* Maps to Dialog::add_action_widget *>
extern fn void Dialog.add_action_widget(&self, Widget* child, int response_id) @extern("gtk_dialog_add_action_widget");

<* Maps to Dialog::add_button *>
extern fn Widget* Dialog.add_button(&self, ZString button_text, int response_id) @extern("gtk_dialog_add_button");

<* Maps to Dialog::add_buttons *>
extern fn void Dialog.add_buttons(&self, ZString first_button_text, any rest) @extern("gtk_dialog_add_buttons");

<* Maps to Dialog::get_content_area *>
extern fn Box* Dialog.get_content_area(&self, ) @extern("gtk_dialog_get_content_area");

<* Maps to Dialog::get_header_bar *>
extern fn HeaderBar* Dialog.get_header_bar(&self, ) @extern("gtk_dialog_get_header_bar");

<* Maps to Dialog::get_response_for_widget *>
extern fn int Dialog.get_response_for_widget(&self, Widget* widget) @extern("gtk_dialog_get_response_for_widget");

<* Maps to Dialog::get_widget_for_response *>
extern fn Widget* Dialog.get_widget_for_response(&self, int response_id) @extern("gtk_dialog_get_widget_for_response");

<* Maps to Dialog::response *>
extern fn void Dialog.response(&self, int response_id) @extern("gtk_dialog_response");

<* Maps to Dialog::set_default_response *>
extern fn void Dialog.set_default_response(&self, int response_id) @extern("gtk_dialog_set_default_response");

<* Maps to Dialog::set_response_sensitive *>
extern fn void Dialog.set_response_sensitive(&self, int response_id, bool setting) @extern("gtk_dialog_set_response_sensitive");


// Class Functions



<* Maps to GtkDirectoryList *>
distinct DirectoryList = void*;

// Class to parent cast.
fn gobject::Object* DirectoryList.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of DirectoryList *>
extern fn DirectoryList* directory_list_new(ZString attributes, gio::File* file) @extern("gtk_directory_list_new");



// Class Methods

<* Maps to DirectoryList::get_attributes *>
extern fn ZString DirectoryList.get_attributes(&self, ) @extern("gtk_directory_list_get_attributes");

<* Maps to DirectoryList::get_error *>
extern fn glib::Error* DirectoryList.get_error(&self, ) @extern("gtk_directory_list_get_error");

<* Maps to DirectoryList::get_file *>
extern fn gio::File* DirectoryList.get_file(&self, ) @extern("gtk_directory_list_get_file");

<* Maps to DirectoryList::get_io_priority *>
extern fn int DirectoryList.get_io_priority(&self, ) @extern("gtk_directory_list_get_io_priority");

<* Maps to DirectoryList::get_monitored *>
extern fn bool DirectoryList.get_monitored(&self, ) @extern("gtk_directory_list_get_monitored");

<* Maps to DirectoryList::is_loading *>
extern fn bool DirectoryList.is_loading(&self, ) @extern("gtk_directory_list_is_loading");

<* Maps to DirectoryList::set_attributes *>
extern fn void DirectoryList.set_attributes(&self, ZString attributes) @extern("gtk_directory_list_set_attributes");

<* Maps to DirectoryList::set_file *>
extern fn void DirectoryList.set_file(&self, gio::File* file) @extern("gtk_directory_list_set_file");

<* Maps to DirectoryList::set_io_priority *>
extern fn void DirectoryList.set_io_priority(&self, int io_priority) @extern("gtk_directory_list_set_io_priority");

<* Maps to DirectoryList::set_monitored *>
extern fn void DirectoryList.set_monitored(&self, bool monitored) @extern("gtk_directory_list_set_monitored");


// Class Functions



<* Maps to GtkDragIcon *>
distinct DragIcon = void*;

// Class to parent cast.
fn Widget* DragIcon.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to get_for_drag of DragIcon *>
extern fn Widget* drag_icon_get_for_drag(gdk::Drag* drag) @extern("gtk_drag_icon_get_for_drag");



// Class Methods

<* Maps to DragIcon::get_child *>
extern fn Widget* DragIcon.get_child(&self, ) @extern("gtk_drag_icon_get_child");

<* Maps to DragIcon::set_child *>
extern fn void DragIcon.set_child(&self, Widget* child) @extern("gtk_drag_icon_set_child");


// Class Functions

<* Maps to create_widget_for_value of DragIcon *>
extern fn Widget* drag_icon_create_widget_for_value(gobject::Value* value) @extern("gtk_drag_icon_create_widget_for_value");

<* Maps to set_from_paintable of DragIcon *>
extern fn void drag_icon_set_from_paintable(gdk::Drag* drag, gdk::Paintable* paintable, int hot_x, int hot_y) @extern("gtk_drag_icon_set_from_paintable");



<* Maps to GtkDragSource *>
distinct DragSource = void*;

// Class to parent cast.
fn GestureSingle* DragSource.as_GestureSingle(&self) => (GestureSingle*)(self);

// Class Constructors

<* Maps to new of DragSource *>
extern fn DragSource* drag_source_new() @extern("gtk_drag_source_new");



// Class Methods

<* Maps to DragSource::drag_cancel *>
extern fn void DragSource.drag_cancel(&self, ) @extern("gtk_drag_source_drag_cancel");

<* Maps to DragSource::get_actions *>
extern fn gdk::DragAction DragSource.get_actions(&self, ) @extern("gtk_drag_source_get_actions");

<* Maps to DragSource::get_content *>
extern fn gdk::ContentProvider* DragSource.get_content(&self, ) @extern("gtk_drag_source_get_content");

<* Maps to DragSource::get_drag *>
extern fn gdk::Drag* DragSource.get_drag(&self, ) @extern("gtk_drag_source_get_drag");

<* Maps to DragSource::set_actions *>
extern fn void DragSource.set_actions(&self, gdk::DragAction actions) @extern("gtk_drag_source_set_actions");

<* Maps to DragSource::set_content *>
extern fn void DragSource.set_content(&self, gdk::ContentProvider* content) @extern("gtk_drag_source_set_content");

<* Maps to DragSource::set_icon *>
extern fn void DragSource.set_icon(&self, gdk::Paintable* paintable, int hot_x, int hot_y) @extern("gtk_drag_source_set_icon");


// Class Functions



<* Maps to GtkDrawingArea *>
distinct DrawingArea = void*;

// Class to parent cast.
fn Widget* DrawingArea.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of DrawingArea *>
extern fn Widget* drawing_area_new() @extern("gtk_drawing_area_new");



// Class Methods

<* Maps to DrawingArea::get_content_height *>
extern fn int DrawingArea.get_content_height(&self, ) @extern("gtk_drawing_area_get_content_height");

<* Maps to DrawingArea::get_content_width *>
extern fn int DrawingArea.get_content_width(&self, ) @extern("gtk_drawing_area_get_content_width");

<* Maps to DrawingArea::set_content_height *>
extern fn void DrawingArea.set_content_height(&self, int height) @extern("gtk_drawing_area_set_content_height");

<* Maps to DrawingArea::set_content_width *>
extern fn void DrawingArea.set_content_width(&self, int width) @extern("gtk_drawing_area_set_content_width");

<* Maps to DrawingArea::set_draw_func *>
extern fn void DrawingArea.set_draw_func(&self, DrawingAreaDrawFunc draw_func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_drawing_area_set_draw_func");


// Class Functions



<* Maps to GtkDropControllerMotion *>
distinct DropControllerMotion = void*;

// Class to parent cast.
fn EventController* DropControllerMotion.as_EventController(&self) => (EventController*)(self);

// Class Constructors

<* Maps to new of DropControllerMotion *>
extern fn EventController* drop_controller_motion_new() @extern("gtk_drop_controller_motion_new");



// Class Methods

<* Maps to DropControllerMotion::contains_pointer *>
extern fn bool DropControllerMotion.contains_pointer(&self, ) @extern("gtk_drop_controller_motion_contains_pointer");

<* Maps to DropControllerMotion::get_drop *>
extern fn gdk::Drop* DropControllerMotion.get_drop(&self, ) @extern("gtk_drop_controller_motion_get_drop");

<* Maps to DropControllerMotion::is_pointer *>
extern fn bool DropControllerMotion.is_pointer(&self, ) @extern("gtk_drop_controller_motion_is_pointer");


// Class Functions



<* Maps to GtkDropDown *>
distinct DropDown = void*;

// Class to parent cast.
fn Widget* DropDown.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of DropDown *>
extern fn Widget* drop_down_new(gio::ListModel* model, Expression* expression) @extern("gtk_drop_down_new");

<* Maps to new_from_strings of DropDown *>
extern fn Widget* drop_down_new_from_strings(ZString* strings) @extern("gtk_drop_down_new_from_strings");



// Class Methods

<* Maps to DropDown::get_enable_search *>
extern fn bool DropDown.get_enable_search(&self, ) @extern("gtk_drop_down_get_enable_search");

<* Maps to DropDown::get_expression *>
extern fn Expression* DropDown.get_expression(&self, ) @extern("gtk_drop_down_get_expression");

<* Maps to DropDown::get_factory *>
extern fn ListItemFactory* DropDown.get_factory(&self, ) @extern("gtk_drop_down_get_factory");

<* Maps to DropDown::get_header_factory *>
extern fn ListItemFactory* DropDown.get_header_factory(&self, ) @extern("gtk_drop_down_get_header_factory");

<* Maps to DropDown::get_list_factory *>
extern fn ListItemFactory* DropDown.get_list_factory(&self, ) @extern("gtk_drop_down_get_list_factory");

<* Maps to DropDown::get_model *>
extern fn gio::ListModel* DropDown.get_model(&self, ) @extern("gtk_drop_down_get_model");

<* Maps to DropDown::get_search_match_mode *>
extern fn StringFilterMatchMode DropDown.get_search_match_mode(&self, ) @extern("gtk_drop_down_get_search_match_mode");

<* Maps to DropDown::get_selected *>
extern fn uint DropDown.get_selected(&self, ) @extern("gtk_drop_down_get_selected");

<* Maps to DropDown::get_selected_item *>
extern fn gobject::Object* DropDown.get_selected_item(&self, ) @extern("gtk_drop_down_get_selected_item");

<* Maps to DropDown::get_show_arrow *>
extern fn bool DropDown.get_show_arrow(&self, ) @extern("gtk_drop_down_get_show_arrow");

<* Maps to DropDown::set_enable_search *>
extern fn void DropDown.set_enable_search(&self, bool enable_search) @extern("gtk_drop_down_set_enable_search");

<* Maps to DropDown::set_expression *>
extern fn void DropDown.set_expression(&self, Expression* expression) @extern("gtk_drop_down_set_expression");

<* Maps to DropDown::set_factory *>
extern fn void DropDown.set_factory(&self, ListItemFactory* factory) @extern("gtk_drop_down_set_factory");

<* Maps to DropDown::set_header_factory *>
extern fn void DropDown.set_header_factory(&self, ListItemFactory* factory) @extern("gtk_drop_down_set_header_factory");

<* Maps to DropDown::set_list_factory *>
extern fn void DropDown.set_list_factory(&self, ListItemFactory* factory) @extern("gtk_drop_down_set_list_factory");

<* Maps to DropDown::set_model *>
extern fn void DropDown.set_model(&self, gio::ListModel* model) @extern("gtk_drop_down_set_model");

<* Maps to DropDown::set_search_match_mode *>
extern fn void DropDown.set_search_match_mode(&self, StringFilterMatchMode search_match_mode) @extern("gtk_drop_down_set_search_match_mode");

<* Maps to DropDown::set_selected *>
extern fn void DropDown.set_selected(&self, uint position) @extern("gtk_drop_down_set_selected");

<* Maps to DropDown::set_show_arrow *>
extern fn void DropDown.set_show_arrow(&self, bool show_arrow) @extern("gtk_drop_down_set_show_arrow");


// Class Functions



<* Maps to GtkDropTarget *>
distinct DropTarget = void*;

// Class to parent cast.
fn EventController* DropTarget.as_EventController(&self) => (EventController*)(self);

// Class Constructors

<* Maps to new of DropTarget *>
extern fn DropTarget* drop_target_new(usz type, gdk::DragAction actions) @extern("gtk_drop_target_new");



// Class Methods

<* Maps to DropTarget::get_actions *>
extern fn gdk::DragAction DropTarget.get_actions(&self, ) @extern("gtk_drop_target_get_actions");

<* Maps to DropTarget::get_current_drop *>
extern fn gdk::Drop* DropTarget.get_current_drop(&self, ) @extern("gtk_drop_target_get_current_drop");

<* Maps to DropTarget::get_drop *>
extern fn gdk::Drop* DropTarget.get_drop(&self, ) @extern("gtk_drop_target_get_drop");

<* Maps to DropTarget::get_formats *>
extern fn gdk::ContentFormats* DropTarget.get_formats(&self, ) @extern("gtk_drop_target_get_formats");

<* Maps to DropTarget::get_gtypes *>
extern fn usz DropTarget.get_gtypes(&self, usz* n_types) @extern("gtk_drop_target_get_gtypes");

<* Maps to DropTarget::get_preload *>
extern fn bool DropTarget.get_preload(&self, ) @extern("gtk_drop_target_get_preload");

<* Maps to DropTarget::get_value *>
extern fn gobject::Value* DropTarget.get_value(&self, ) @extern("gtk_drop_target_get_value");

<* Maps to DropTarget::reject *>
extern fn void DropTarget.reject(&self, ) @extern("gtk_drop_target_reject");

<* Maps to DropTarget::set_actions *>
extern fn void DropTarget.set_actions(&self, gdk::DragAction actions) @extern("gtk_drop_target_set_actions");

<* Maps to DropTarget::set_gtypes *>
extern fn void DropTarget.set_gtypes(&self, usz types, usz n_types) @extern("gtk_drop_target_set_gtypes");

<* Maps to DropTarget::set_preload *>
extern fn void DropTarget.set_preload(&self, bool preload) @extern("gtk_drop_target_set_preload");


// Class Functions



<* Maps to GtkDropTargetAsync *>
distinct DropTargetAsync = void*;

// Class to parent cast.
fn EventController* DropTargetAsync.as_EventController(&self) => (EventController*)(self);

// Class Constructors

<* Maps to new of DropTargetAsync *>
extern fn DropTargetAsync* drop_target_async_new(gdk::ContentFormats* formats, gdk::DragAction actions) @extern("gtk_drop_target_async_new");



// Class Methods

<* Maps to DropTargetAsync::get_actions *>
extern fn gdk::DragAction DropTargetAsync.get_actions(&self, ) @extern("gtk_drop_target_async_get_actions");

<* Maps to DropTargetAsync::get_formats *>
extern fn gdk::ContentFormats* DropTargetAsync.get_formats(&self, ) @extern("gtk_drop_target_async_get_formats");

<* Maps to DropTargetAsync::reject_drop *>
extern fn void DropTargetAsync.reject_drop(&self, gdk::Drop* drop) @extern("gtk_drop_target_async_reject_drop");

<* Maps to DropTargetAsync::set_actions *>
extern fn void DropTargetAsync.set_actions(&self, gdk::DragAction actions) @extern("gtk_drop_target_async_set_actions");

<* Maps to DropTargetAsync::set_formats *>
extern fn void DropTargetAsync.set_formats(&self, gdk::ContentFormats* formats) @extern("gtk_drop_target_async_set_formats");


// Class Functions



<* Maps to GtkEditableLabel *>
distinct EditableLabel = void*;

// Class to parent cast.
fn Widget* EditableLabel.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of EditableLabel *>
extern fn Widget* editable_label_new(ZString str) @extern("gtk_editable_label_new");



// Class Methods

<* Maps to EditableLabel::get_editing *>
extern fn bool EditableLabel.get_editing(&self, ) @extern("gtk_editable_label_get_editing");

<* Maps to EditableLabel::start_editing *>
extern fn void EditableLabel.start_editing(&self, ) @extern("gtk_editable_label_start_editing");

<* Maps to EditableLabel::stop_editing *>
extern fn void EditableLabel.stop_editing(&self, bool commit) @extern("gtk_editable_label_stop_editing");


// Class Functions



<* Maps to GtkEmojiChooser *>
distinct EmojiChooser = void*;

// Class to parent cast.
fn Popover* EmojiChooser.as_Popover(&self) => (Popover*)(self);

// Class Constructors

<* Maps to new of EmojiChooser *>
extern fn Widget* emoji_chooser_new() @extern("gtk_emoji_chooser_new");



// Class Methods


// Class Functions



<* Maps to GtkEntry *>
distinct Entry = void*;

// Class to parent cast.
fn Widget* Entry.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Entry *>
extern fn Widget* entry_new() @extern("gtk_entry_new");

<* Maps to new_with_buffer of Entry *>
extern fn Widget* entry_new_with_buffer(EntryBuffer* buffer) @extern("gtk_entry_new_with_buffer");



// Class Methods

<* Maps to Entry::get_activates_default *>
extern fn bool Entry.get_activates_default(&self, ) @extern("gtk_entry_get_activates_default");

<* Maps to Entry::get_alignment *>
extern fn float Entry.get_alignment(&self, ) @extern("gtk_entry_get_alignment");

<* Maps to Entry::get_attributes *>
extern fn pango::AttrList* Entry.get_attributes(&self, ) @extern("gtk_entry_get_attributes");

<* Maps to Entry::get_buffer *>
extern fn EntryBuffer* Entry.get_buffer(&self, ) @extern("gtk_entry_get_buffer");

<* Maps to Entry::get_completion *>
extern fn EntryCompletion* Entry.get_completion(&self, ) @extern("gtk_entry_get_completion");

<* Maps to Entry::get_current_icon_drag_source *>
extern fn int Entry.get_current_icon_drag_source(&self, ) @extern("gtk_entry_get_current_icon_drag_source");

<* Maps to Entry::get_extra_menu *>
extern fn gio::MenuModel* Entry.get_extra_menu(&self, ) @extern("gtk_entry_get_extra_menu");

<* Maps to Entry::get_has_frame *>
extern fn bool Entry.get_has_frame(&self, ) @extern("gtk_entry_get_has_frame");

<* Maps to Entry::get_icon_activatable *>
extern fn bool Entry.get_icon_activatable(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_activatable");

<* Maps to Entry::get_icon_area *>
extern fn void Entry.get_icon_area(&self, EntryIconPosition icon_pos, gdk::Rectangle* icon_area) @extern("gtk_entry_get_icon_area");

<* Maps to Entry::get_icon_at_pos *>
extern fn int Entry.get_icon_at_pos(&self, int x, int y) @extern("gtk_entry_get_icon_at_pos");

<* Maps to Entry::get_icon_gicon *>
extern fn gio::Icon* Entry.get_icon_gicon(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_gicon");

<* Maps to Entry::get_icon_name *>
extern fn ZString Entry.get_icon_name(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_name");

<* Maps to Entry::get_icon_paintable *>
extern fn gdk::Paintable* Entry.get_icon_paintable(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_paintable");

<* Maps to Entry::get_icon_sensitive *>
extern fn bool Entry.get_icon_sensitive(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_sensitive");

<* Maps to Entry::get_icon_storage_type *>
extern fn ImageType Entry.get_icon_storage_type(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_storage_type");

<* Maps to Entry::get_icon_tooltip_markup *>
extern fn ZString* Entry.get_icon_tooltip_markup(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_tooltip_markup");

<* Maps to Entry::get_icon_tooltip_text *>
extern fn ZString* Entry.get_icon_tooltip_text(&self, EntryIconPosition icon_pos) @extern("gtk_entry_get_icon_tooltip_text");

<* Maps to Entry::get_input_hints *>
extern fn InputHints Entry.get_input_hints(&self, ) @extern("gtk_entry_get_input_hints");

<* Maps to Entry::get_input_purpose *>
extern fn InputPurpose Entry.get_input_purpose(&self, ) @extern("gtk_entry_get_input_purpose");

<* Maps to Entry::get_invisible_char *>
extern fn uint Entry.get_invisible_char(&self, ) @extern("gtk_entry_get_invisible_char");

<* Maps to Entry::get_max_length *>
extern fn int Entry.get_max_length(&self, ) @extern("gtk_entry_get_max_length");

<* Maps to Entry::get_overwrite_mode *>
extern fn bool Entry.get_overwrite_mode(&self, ) @extern("gtk_entry_get_overwrite_mode");

<* Maps to Entry::get_placeholder_text *>
extern fn ZString Entry.get_placeholder_text(&self, ) @extern("gtk_entry_get_placeholder_text");

<* Maps to Entry::get_progress_fraction *>
extern fn double Entry.get_progress_fraction(&self, ) @extern("gtk_entry_get_progress_fraction");

<* Maps to Entry::get_progress_pulse_step *>
extern fn double Entry.get_progress_pulse_step(&self, ) @extern("gtk_entry_get_progress_pulse_step");

<* Maps to Entry::get_tabs *>
extern fn pango::TabArray* Entry.get_tabs(&self, ) @extern("gtk_entry_get_tabs");

<* Maps to Entry::get_text_length *>
extern fn ushort Entry.get_text_length(&self, ) @extern("gtk_entry_get_text_length");

<* Maps to Entry::get_visibility *>
extern fn bool Entry.get_visibility(&self, ) @extern("gtk_entry_get_visibility");

<* Maps to Entry::grab_focus_without_selecting *>
extern fn bool Entry.grab_focus_without_selecting(&self, ) @extern("gtk_entry_grab_focus_without_selecting");

<* Maps to Entry::progress_pulse *>
extern fn void Entry.progress_pulse(&self, ) @extern("gtk_entry_progress_pulse");

<* Maps to Entry::reset_im_context *>
extern fn void Entry.reset_im_context(&self, ) @extern("gtk_entry_reset_im_context");

<* Maps to Entry::set_activates_default *>
extern fn void Entry.set_activates_default(&self, bool setting) @extern("gtk_entry_set_activates_default");

<* Maps to Entry::set_alignment *>
extern fn void Entry.set_alignment(&self, float xalign) @extern("gtk_entry_set_alignment");

<* Maps to Entry::set_attributes *>
extern fn void Entry.set_attributes(&self, pango::AttrList* attrs) @extern("gtk_entry_set_attributes");

<* Maps to Entry::set_buffer *>
extern fn void Entry.set_buffer(&self, EntryBuffer* buffer) @extern("gtk_entry_set_buffer");

<* Maps to Entry::set_completion *>
extern fn void Entry.set_completion(&self, EntryCompletion* completion) @extern("gtk_entry_set_completion");

<* Maps to Entry::set_extra_menu *>
extern fn void Entry.set_extra_menu(&self, gio::MenuModel* model) @extern("gtk_entry_set_extra_menu");

<* Maps to Entry::set_has_frame *>
extern fn void Entry.set_has_frame(&self, bool setting) @extern("gtk_entry_set_has_frame");

<* Maps to Entry::set_icon_activatable *>
extern fn void Entry.set_icon_activatable(&self, EntryIconPosition icon_pos, bool activatable) @extern("gtk_entry_set_icon_activatable");

<* Maps to Entry::set_icon_drag_source *>
extern fn void Entry.set_icon_drag_source(&self, EntryIconPosition icon_pos, gdk::ContentProvider* provider, gdk::DragAction actions) @extern("gtk_entry_set_icon_drag_source");

<* Maps to Entry::set_icon_from_gicon *>
extern fn void Entry.set_icon_from_gicon(&self, EntryIconPosition icon_pos, gio::Icon* icon) @extern("gtk_entry_set_icon_from_gicon");

<* Maps to Entry::set_icon_from_icon_name *>
extern fn void Entry.set_icon_from_icon_name(&self, EntryIconPosition icon_pos, ZString icon_name) @extern("gtk_entry_set_icon_from_icon_name");

<* Maps to Entry::set_icon_from_paintable *>
extern fn void Entry.set_icon_from_paintable(&self, EntryIconPosition icon_pos, gdk::Paintable* paintable) @extern("gtk_entry_set_icon_from_paintable");

<* Maps to Entry::set_icon_sensitive *>
extern fn void Entry.set_icon_sensitive(&self, EntryIconPosition icon_pos, bool sensitive) @extern("gtk_entry_set_icon_sensitive");

<* Maps to Entry::set_icon_tooltip_markup *>
extern fn void Entry.set_icon_tooltip_markup(&self, EntryIconPosition icon_pos, ZString tooltip) @extern("gtk_entry_set_icon_tooltip_markup");

<* Maps to Entry::set_icon_tooltip_text *>
extern fn void Entry.set_icon_tooltip_text(&self, EntryIconPosition icon_pos, ZString tooltip) @extern("gtk_entry_set_icon_tooltip_text");

<* Maps to Entry::set_input_hints *>
extern fn void Entry.set_input_hints(&self, InputHints hints) @extern("gtk_entry_set_input_hints");

<* Maps to Entry::set_input_purpose *>
extern fn void Entry.set_input_purpose(&self, InputPurpose purpose) @extern("gtk_entry_set_input_purpose");

<* Maps to Entry::set_invisible_char *>
extern fn void Entry.set_invisible_char(&self, uint ch) @extern("gtk_entry_set_invisible_char");

<* Maps to Entry::set_max_length *>
extern fn void Entry.set_max_length(&self, int max) @extern("gtk_entry_set_max_length");

<* Maps to Entry::set_overwrite_mode *>
extern fn void Entry.set_overwrite_mode(&self, bool overwrite) @extern("gtk_entry_set_overwrite_mode");

<* Maps to Entry::set_placeholder_text *>
extern fn void Entry.set_placeholder_text(&self, ZString text) @extern("gtk_entry_set_placeholder_text");

<* Maps to Entry::set_progress_fraction *>
extern fn void Entry.set_progress_fraction(&self, double fraction) @extern("gtk_entry_set_progress_fraction");

<* Maps to Entry::set_progress_pulse_step *>
extern fn void Entry.set_progress_pulse_step(&self, double fraction) @extern("gtk_entry_set_progress_pulse_step");

<* Maps to Entry::set_tabs *>
extern fn void Entry.set_tabs(&self, pango::TabArray* tabs) @extern("gtk_entry_set_tabs");

<* Maps to Entry::set_visibility *>
extern fn void Entry.set_visibility(&self, bool visible) @extern("gtk_entry_set_visibility");

<* Maps to Entry::unset_invisible_char *>
extern fn void Entry.unset_invisible_char(&self, ) @extern("gtk_entry_unset_invisible_char");


// Class Functions



<* Maps to GtkEntryBuffer *>
distinct EntryBuffer = void*;

// Class to parent cast.
fn gobject::Object* EntryBuffer.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of EntryBuffer *>
extern fn EntryBuffer* entry_buffer_new(ZString initial_chars, int n_initial_chars) @extern("gtk_entry_buffer_new");



// Class Methods

<* Maps to EntryBuffer::delete_text *>
extern fn uint EntryBuffer.delete_text(&self, uint position, int n_chars) @extern("gtk_entry_buffer_delete_text");

<* Maps to EntryBuffer::emit_deleted_text *>
extern fn void EntryBuffer.emit_deleted_text(&self, uint position, uint n_chars) @extern("gtk_entry_buffer_emit_deleted_text");

<* Maps to EntryBuffer::emit_inserted_text *>
extern fn void EntryBuffer.emit_inserted_text(&self, uint position, ZString chars, uint n_chars) @extern("gtk_entry_buffer_emit_inserted_text");

<* Maps to EntryBuffer::get_bytes *>
extern fn usz EntryBuffer.get_bytes(&self, ) @extern("gtk_entry_buffer_get_bytes");

<* Maps to EntryBuffer::get_length *>
extern fn uint EntryBuffer.get_length(&self, ) @extern("gtk_entry_buffer_get_length");

<* Maps to EntryBuffer::get_max_length *>
extern fn int EntryBuffer.get_max_length(&self, ) @extern("gtk_entry_buffer_get_max_length");

<* Maps to EntryBuffer::get_text *>
extern fn ZString EntryBuffer.get_text(&self, ) @extern("gtk_entry_buffer_get_text");

<* Maps to EntryBuffer::insert_text *>
extern fn uint EntryBuffer.insert_text(&self, uint position, ZString chars, int n_chars) @extern("gtk_entry_buffer_insert_text");

<* Maps to EntryBuffer::set_max_length *>
extern fn void EntryBuffer.set_max_length(&self, int max_length) @extern("gtk_entry_buffer_set_max_length");

<* Maps to EntryBuffer::set_text *>
extern fn void EntryBuffer.set_text(&self, ZString chars, int n_chars) @extern("gtk_entry_buffer_set_text");


// Class Functions



<* Maps to GtkEntryCompletion *>
distinct EntryCompletion = void*;

// Class to parent cast.
fn gobject::Object* EntryCompletion.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of EntryCompletion *>
extern fn EntryCompletion* entry_completion_new() @extern("gtk_entry_completion_new");

<* Maps to new_with_area of EntryCompletion *>
extern fn EntryCompletion* entry_completion_new_with_area(CellArea* area) @extern("gtk_entry_completion_new_with_area");



// Class Methods

<* Maps to EntryCompletion::complete *>
extern fn void EntryCompletion.complete(&self, ) @extern("gtk_entry_completion_complete");

<* Maps to EntryCompletion::compute_prefix *>
extern fn ZString* EntryCompletion.compute_prefix(&self, ZString key) @extern("gtk_entry_completion_compute_prefix");

<* Maps to EntryCompletion::get_completion_prefix *>
extern fn ZString EntryCompletion.get_completion_prefix(&self, ) @extern("gtk_entry_completion_get_completion_prefix");

<* Maps to EntryCompletion::get_entry *>
extern fn Widget* EntryCompletion.get_entry(&self, ) @extern("gtk_entry_completion_get_entry");

<* Maps to EntryCompletion::get_inline_completion *>
extern fn bool EntryCompletion.get_inline_completion(&self, ) @extern("gtk_entry_completion_get_inline_completion");

<* Maps to EntryCompletion::get_inline_selection *>
extern fn bool EntryCompletion.get_inline_selection(&self, ) @extern("gtk_entry_completion_get_inline_selection");

<* Maps to EntryCompletion::get_minimum_key_length *>
extern fn int EntryCompletion.get_minimum_key_length(&self, ) @extern("gtk_entry_completion_get_minimum_key_length");

<* Maps to EntryCompletion::get_model *>
extern fn TreeModel* EntryCompletion.get_model(&self, ) @extern("gtk_entry_completion_get_model");

<* Maps to EntryCompletion::get_popup_completion *>
extern fn bool EntryCompletion.get_popup_completion(&self, ) @extern("gtk_entry_completion_get_popup_completion");

<* Maps to EntryCompletion::get_popup_set_width *>
extern fn bool EntryCompletion.get_popup_set_width(&self, ) @extern("gtk_entry_completion_get_popup_set_width");

<* Maps to EntryCompletion::get_popup_single_match *>
extern fn bool EntryCompletion.get_popup_single_match(&self, ) @extern("gtk_entry_completion_get_popup_single_match");

<* Maps to EntryCompletion::get_text_column *>
extern fn int EntryCompletion.get_text_column(&self, ) @extern("gtk_entry_completion_get_text_column");

<* Maps to EntryCompletion::insert_prefix *>
extern fn void EntryCompletion.insert_prefix(&self, ) @extern("gtk_entry_completion_insert_prefix");

<* Maps to EntryCompletion::set_inline_completion *>
extern fn void EntryCompletion.set_inline_completion(&self, bool inline_completion) @extern("gtk_entry_completion_set_inline_completion");

<* Maps to EntryCompletion::set_inline_selection *>
extern fn void EntryCompletion.set_inline_selection(&self, bool inline_selection) @extern("gtk_entry_completion_set_inline_selection");

<* Maps to EntryCompletion::set_match_func *>
extern fn void EntryCompletion.set_match_func(&self, EntryCompletionMatchFunc func, void* func_data, glib::DestroyNotify func_notify) @extern("gtk_entry_completion_set_match_func");

<* Maps to EntryCompletion::set_minimum_key_length *>
extern fn void EntryCompletion.set_minimum_key_length(&self, int length) @extern("gtk_entry_completion_set_minimum_key_length");

<* Maps to EntryCompletion::set_model *>
extern fn void EntryCompletion.set_model(&self, TreeModel* model) @extern("gtk_entry_completion_set_model");

<* Maps to EntryCompletion::set_popup_completion *>
extern fn void EntryCompletion.set_popup_completion(&self, bool popup_completion) @extern("gtk_entry_completion_set_popup_completion");

<* Maps to EntryCompletion::set_popup_set_width *>
extern fn void EntryCompletion.set_popup_set_width(&self, bool popup_set_width) @extern("gtk_entry_completion_set_popup_set_width");

<* Maps to EntryCompletion::set_popup_single_match *>
extern fn void EntryCompletion.set_popup_single_match(&self, bool popup_single_match) @extern("gtk_entry_completion_set_popup_single_match");

<* Maps to EntryCompletion::set_text_column *>
extern fn void EntryCompletion.set_text_column(&self, int column) @extern("gtk_entry_completion_set_text_column");


// Class Functions



<* Maps to GtkEventController *>
distinct EventController = void*;

// Class to parent cast.
fn gobject::Object* EventController.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to EventController::get_current_event *>
extern fn gdk::Event* EventController.get_current_event(&self, ) @extern("gtk_event_controller_get_current_event");

<* Maps to EventController::get_current_event_device *>
extern fn gdk::Device* EventController.get_current_event_device(&self, ) @extern("gtk_event_controller_get_current_event_device");

<* Maps to EventController::get_current_event_state *>
extern fn gdk::ModifierType EventController.get_current_event_state(&self, ) @extern("gtk_event_controller_get_current_event_state");

<* Maps to EventController::get_current_event_time *>
extern fn uint EventController.get_current_event_time(&self, ) @extern("gtk_event_controller_get_current_event_time");

<* Maps to EventController::get_name *>
extern fn ZString EventController.get_name(&self, ) @extern("gtk_event_controller_get_name");

<* Maps to EventController::get_propagation_limit *>
extern fn PropagationLimit EventController.get_propagation_limit(&self, ) @extern("gtk_event_controller_get_propagation_limit");

<* Maps to EventController::get_propagation_phase *>
extern fn PropagationPhase EventController.get_propagation_phase(&self, ) @extern("gtk_event_controller_get_propagation_phase");

<* Maps to EventController::get_widget *>
extern fn Widget* EventController.get_widget(&self, ) @extern("gtk_event_controller_get_widget");

<* Maps to EventController::reset *>
extern fn void EventController.reset(&self, ) @extern("gtk_event_controller_reset");

<* Maps to EventController::set_name *>
extern fn void EventController.set_name(&self, ZString name) @extern("gtk_event_controller_set_name");

<* Maps to EventController::set_propagation_limit *>
extern fn void EventController.set_propagation_limit(&self, PropagationLimit limit) @extern("gtk_event_controller_set_propagation_limit");

<* Maps to EventController::set_propagation_phase *>
extern fn void EventController.set_propagation_phase(&self, PropagationPhase phase) @extern("gtk_event_controller_set_propagation_phase");

<* Maps to EventController::set_static_name *>
extern fn void EventController.set_static_name(&self, ZString name) @extern("gtk_event_controller_set_static_name");


// Class Functions



<* Maps to GtkEventControllerFocus *>
distinct EventControllerFocus = void*;

// Class to parent cast.
fn EventController* EventControllerFocus.as_EventController(&self) => (EventController*)(self);

// Class Constructors

<* Maps to new of EventControllerFocus *>
extern fn EventController* event_controller_focus_new() @extern("gtk_event_controller_focus_new");



// Class Methods

<* Maps to EventControllerFocus::contains_focus *>
extern fn bool EventControllerFocus.contains_focus(&self, ) @extern("gtk_event_controller_focus_contains_focus");

<* Maps to EventControllerFocus::is_focus *>
extern fn bool EventControllerFocus.is_focus(&self, ) @extern("gtk_event_controller_focus_is_focus");


// Class Functions



<* Maps to GtkEventControllerKey *>
distinct EventControllerKey = void*;

// Class to parent cast.
fn EventController* EventControllerKey.as_EventController(&self) => (EventController*)(self);

// Class Constructors

<* Maps to new of EventControllerKey *>
extern fn EventController* event_controller_key_new() @extern("gtk_event_controller_key_new");



// Class Methods

<* Maps to EventControllerKey::forward *>
extern fn bool EventControllerKey.forward(&self, Widget* widget) @extern("gtk_event_controller_key_forward");

<* Maps to EventControllerKey::get_group *>
extern fn uint EventControllerKey.get_group(&self, ) @extern("gtk_event_controller_key_get_group");

<* Maps to EventControllerKey::get_im_context *>
extern fn IMContext* EventControllerKey.get_im_context(&self, ) @extern("gtk_event_controller_key_get_im_context");

<* Maps to EventControllerKey::set_im_context *>
extern fn void EventControllerKey.set_im_context(&self, IMContext* im_context) @extern("gtk_event_controller_key_set_im_context");


// Class Functions



<* Maps to GtkEventControllerLegacy *>
distinct EventControllerLegacy = void*;

// Class to parent cast.
fn EventController* EventControllerLegacy.as_EventController(&self) => (EventController*)(self);

// Class Constructors

<* Maps to new of EventControllerLegacy *>
extern fn EventController* event_controller_legacy_new() @extern("gtk_event_controller_legacy_new");



// Class Methods


// Class Functions



<* Maps to GtkEventControllerMotion *>
distinct EventControllerMotion = void*;

// Class to parent cast.
fn EventController* EventControllerMotion.as_EventController(&self) => (EventController*)(self);

// Class Constructors

<* Maps to new of EventControllerMotion *>
extern fn EventController* event_controller_motion_new() @extern("gtk_event_controller_motion_new");



// Class Methods

<* Maps to EventControllerMotion::contains_pointer *>
extern fn bool EventControllerMotion.contains_pointer(&self, ) @extern("gtk_event_controller_motion_contains_pointer");

<* Maps to EventControllerMotion::is_pointer *>
extern fn bool EventControllerMotion.is_pointer(&self, ) @extern("gtk_event_controller_motion_is_pointer");


// Class Functions



<* Maps to GtkEventControllerScroll *>
distinct EventControllerScroll = void*;

// Class to parent cast.
fn EventController* EventControllerScroll.as_EventController(&self) => (EventController*)(self);

// Class Constructors

<* Maps to new of EventControllerScroll *>
extern fn EventController* event_controller_scroll_new(EventControllerScrollFlags flags) @extern("gtk_event_controller_scroll_new");



// Class Methods

<* Maps to EventControllerScroll::get_flags *>
extern fn EventControllerScrollFlags EventControllerScroll.get_flags(&self, ) @extern("gtk_event_controller_scroll_get_flags");

<* Maps to EventControllerScroll::get_unit *>
extern fn gdk::ScrollUnit EventControllerScroll.get_unit(&self, ) @extern("gtk_event_controller_scroll_get_unit");

<* Maps to EventControllerScroll::set_flags *>
extern fn void EventControllerScroll.set_flags(&self, EventControllerScrollFlags flags) @extern("gtk_event_controller_scroll_set_flags");


// Class Functions



<* Maps to GtkEveryFilter *>
distinct EveryFilter = void*;

// Class to parent cast.
fn MultiFilter* EveryFilter.as_MultiFilter(&self) => (MultiFilter*)(self);

// Class Constructors

<* Maps to new of EveryFilter *>
extern fn EveryFilter* every_filter_new() @extern("gtk_every_filter_new");



// Class Methods


// Class Functions



<* Maps to GtkExpander *>
distinct Expander = void*;

// Class to parent cast.
fn Widget* Expander.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Expander *>
extern fn Widget* expander_new(ZString label) @extern("gtk_expander_new");

<* Maps to new_with_mnemonic of Expander *>
extern fn Widget* expander_new_with_mnemonic(ZString label) @extern("gtk_expander_new_with_mnemonic");



// Class Methods

<* Maps to Expander::get_child *>
extern fn Widget* Expander.get_child(&self, ) @extern("gtk_expander_get_child");

<* Maps to Expander::get_expanded *>
extern fn bool Expander.get_expanded(&self, ) @extern("gtk_expander_get_expanded");

<* Maps to Expander::get_label *>
extern fn ZString Expander.get_label(&self, ) @extern("gtk_expander_get_label");

<* Maps to Expander::get_label_widget *>
extern fn Widget* Expander.get_label_widget(&self, ) @extern("gtk_expander_get_label_widget");

<* Maps to Expander::get_resize_toplevel *>
extern fn bool Expander.get_resize_toplevel(&self, ) @extern("gtk_expander_get_resize_toplevel");

<* Maps to Expander::get_use_markup *>
extern fn bool Expander.get_use_markup(&self, ) @extern("gtk_expander_get_use_markup");

<* Maps to Expander::get_use_underline *>
extern fn bool Expander.get_use_underline(&self, ) @extern("gtk_expander_get_use_underline");

<* Maps to Expander::set_child *>
extern fn void Expander.set_child(&self, Widget* child) @extern("gtk_expander_set_child");

<* Maps to Expander::set_expanded *>
extern fn void Expander.set_expanded(&self, bool expanded) @extern("gtk_expander_set_expanded");

<* Maps to Expander::set_label *>
extern fn void Expander.set_label(&self, ZString label) @extern("gtk_expander_set_label");

<* Maps to Expander::set_label_widget *>
extern fn void Expander.set_label_widget(&self, Widget* label_widget) @extern("gtk_expander_set_label_widget");

<* Maps to Expander::set_resize_toplevel *>
extern fn void Expander.set_resize_toplevel(&self, bool resize_toplevel) @extern("gtk_expander_set_resize_toplevel");

<* Maps to Expander::set_use_markup *>
extern fn void Expander.set_use_markup(&self, bool use_markup) @extern("gtk_expander_set_use_markup");

<* Maps to Expander::set_use_underline *>
extern fn void Expander.set_use_underline(&self, bool use_underline) @extern("gtk_expander_set_use_underline");


// Class Functions



<* Maps to GtkExpression *>
distinct Expression = void*;

// Class to parent cast.


// Class Constructors



// Class Methods

<* Maps to Expression::bind *>
extern fn ExpressionWatch* Expression.bind(&self, gobject::Object* target, ZString property, gobject::Object* this_) @extern("gtk_expression_bind");

<* Maps to Expression::evaluate *>
extern fn bool Expression.evaluate(&self, gobject::Object* this_, gobject::Value* value) @extern("gtk_expression_evaluate");

<* Maps to Expression::get_value_type *>
extern fn usz Expression.get_value_type(&self, ) @extern("gtk_expression_get_value_type");

<* Maps to Expression::is_static *>
extern fn bool Expression.is_static(&self, ) @extern("gtk_expression_is_static");

<* Maps to Expression::ref *>
extern fn Expression* Expression.ref(&self, ) @extern("gtk_expression_ref");

<* Maps to Expression::unref *>
extern fn void Expression.unref(&self, ) @extern("gtk_expression_unref");

<* Maps to Expression::watch *>
extern fn ExpressionWatch* Expression.watch(&self, gobject::Object* this_, ExpressionNotify notify, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_expression_watch");


// Class Functions



<* Maps to GtkFileChooserDialog *>
distinct FileChooserDialog = void*;

// Class to parent cast.
fn Dialog* FileChooserDialog.as_Dialog(&self) => (Dialog*)(self);

// Class Constructors

<* Maps to new of FileChooserDialog *>
extern fn Widget* file_chooser_dialog_new(ZString title, Window* parent, FileChooserAction action, ZString first_button_text, any rest) @extern("gtk_file_chooser_dialog_new");



// Class Methods


// Class Functions



<* Maps to GtkFileChooserNative *>
distinct FileChooserNative = void*;

// Class to parent cast.
fn NativeDialog* FileChooserNative.as_NativeDialog(&self) => (NativeDialog*)(self);

// Class Constructors

<* Maps to new of FileChooserNative *>
extern fn FileChooserNative* file_chooser_native_new(ZString title, Window* parent, FileChooserAction action, ZString accept_label, ZString cancel_label) @extern("gtk_file_chooser_native_new");



// Class Methods

<* Maps to FileChooserNative::get_accept_label *>
extern fn ZString FileChooserNative.get_accept_label(&self, ) @extern("gtk_file_chooser_native_get_accept_label");

<* Maps to FileChooserNative::get_cancel_label *>
extern fn ZString FileChooserNative.get_cancel_label(&self, ) @extern("gtk_file_chooser_native_get_cancel_label");

<* Maps to FileChooserNative::set_accept_label *>
extern fn void FileChooserNative.set_accept_label(&self, ZString accept_label) @extern("gtk_file_chooser_native_set_accept_label");

<* Maps to FileChooserNative::set_cancel_label *>
extern fn void FileChooserNative.set_cancel_label(&self, ZString cancel_label) @extern("gtk_file_chooser_native_set_cancel_label");


// Class Functions



<* Maps to GtkFileChooserWidget *>
distinct FileChooserWidget = void*;

// Class to parent cast.
fn Widget* FileChooserWidget.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of FileChooserWidget *>
extern fn Widget* file_chooser_widget_new(FileChooserAction action) @extern("gtk_file_chooser_widget_new");



// Class Methods


// Class Functions



<* Maps to GtkFileDialog *>
distinct FileDialog = void*;

// Class to parent cast.
fn gobject::Object* FileDialog.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of FileDialog *>
extern fn FileDialog* file_dialog_new() @extern("gtk_file_dialog_new");



// Class Methods

<* Maps to FileDialog::get_accept_label *>
extern fn ZString FileDialog.get_accept_label(&self, ) @extern("gtk_file_dialog_get_accept_label");

<* Maps to FileDialog::get_default_filter *>
extern fn FileFilter* FileDialog.get_default_filter(&self, ) @extern("gtk_file_dialog_get_default_filter");

<* Maps to FileDialog::get_filters *>
extern fn gio::ListModel* FileDialog.get_filters(&self, ) @extern("gtk_file_dialog_get_filters");

<* Maps to FileDialog::get_initial_file *>
extern fn gio::File* FileDialog.get_initial_file(&self, ) @extern("gtk_file_dialog_get_initial_file");

<* Maps to FileDialog::get_initial_folder *>
extern fn gio::File* FileDialog.get_initial_folder(&self, ) @extern("gtk_file_dialog_get_initial_folder");

<* Maps to FileDialog::get_initial_name *>
extern fn ZString FileDialog.get_initial_name(&self, ) @extern("gtk_file_dialog_get_initial_name");

<* Maps to FileDialog::get_modal *>
extern fn bool FileDialog.get_modal(&self, ) @extern("gtk_file_dialog_get_modal");

<* Maps to FileDialog::get_title *>
extern fn ZString FileDialog.get_title(&self, ) @extern("gtk_file_dialog_get_title");

<* Maps to FileDialog::open *>
extern fn void FileDialog.open(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_dialog_open");

<* Maps to FileDialog::open_finish *>
extern fn gio::File* FileDialog.open_finish(&self, gio::AsyncResult* result) @extern("gtk_file_dialog_open_finish");

<* Maps to FileDialog::open_multiple *>
extern fn void FileDialog.open_multiple(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_dialog_open_multiple");

<* Maps to FileDialog::open_multiple_finish *>
extern fn gio::ListModel* FileDialog.open_multiple_finish(&self, gio::AsyncResult* result) @extern("gtk_file_dialog_open_multiple_finish");

<* Maps to FileDialog::save *>
extern fn void FileDialog.save(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_dialog_save");

<* Maps to FileDialog::save_finish *>
extern fn gio::File* FileDialog.save_finish(&self, gio::AsyncResult* result) @extern("gtk_file_dialog_save_finish");

<* Maps to FileDialog::select_folder *>
extern fn void FileDialog.select_folder(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_dialog_select_folder");

<* Maps to FileDialog::select_folder_finish *>
extern fn gio::File* FileDialog.select_folder_finish(&self, gio::AsyncResult* result) @extern("gtk_file_dialog_select_folder_finish");

<* Maps to FileDialog::select_multiple_folders *>
extern fn void FileDialog.select_multiple_folders(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_dialog_select_multiple_folders");

<* Maps to FileDialog::select_multiple_folders_finish *>
extern fn gio::ListModel* FileDialog.select_multiple_folders_finish(&self, gio::AsyncResult* result) @extern("gtk_file_dialog_select_multiple_folders_finish");

<* Maps to FileDialog::set_accept_label *>
extern fn void FileDialog.set_accept_label(&self, ZString accept_label) @extern("gtk_file_dialog_set_accept_label");

<* Maps to FileDialog::set_default_filter *>
extern fn void FileDialog.set_default_filter(&self, FileFilter* filter) @extern("gtk_file_dialog_set_default_filter");

<* Maps to FileDialog::set_filters *>
extern fn void FileDialog.set_filters(&self, gio::ListModel* filters) @extern("gtk_file_dialog_set_filters");

<* Maps to FileDialog::set_initial_file *>
extern fn void FileDialog.set_initial_file(&self, gio::File* file) @extern("gtk_file_dialog_set_initial_file");

<* Maps to FileDialog::set_initial_folder *>
extern fn void FileDialog.set_initial_folder(&self, gio::File* folder) @extern("gtk_file_dialog_set_initial_folder");

<* Maps to FileDialog::set_initial_name *>
extern fn void FileDialog.set_initial_name(&self, ZString name) @extern("gtk_file_dialog_set_initial_name");

<* Maps to FileDialog::set_modal *>
extern fn void FileDialog.set_modal(&self, bool modal) @extern("gtk_file_dialog_set_modal");

<* Maps to FileDialog::set_title *>
extern fn void FileDialog.set_title(&self, ZString title) @extern("gtk_file_dialog_set_title");


// Class Functions



<* Maps to GtkFileFilter *>
distinct FileFilter = void*;

// Class to parent cast.
fn Filter* FileFilter.as_Filter(&self) => (Filter*)(self);

// Class Constructors

<* Maps to new of FileFilter *>
extern fn FileFilter* file_filter_new() @extern("gtk_file_filter_new");

<* Maps to new_from_gvariant of FileFilter *>
extern fn FileFilter* file_filter_new_from_gvariant(glib::Variant* variant) @extern("gtk_file_filter_new_from_gvariant");



// Class Methods

<* Maps to FileFilter::add_mime_type *>
extern fn void FileFilter.add_mime_type(&self, ZString mime_type) @extern("gtk_file_filter_add_mime_type");

<* Maps to FileFilter::add_pattern *>
extern fn void FileFilter.add_pattern(&self, ZString pattern) @extern("gtk_file_filter_add_pattern");

<* Maps to FileFilter::add_pixbuf_formats *>
extern fn void FileFilter.add_pixbuf_formats(&self, ) @extern("gtk_file_filter_add_pixbuf_formats");

<* Maps to FileFilter::add_suffix *>
extern fn void FileFilter.add_suffix(&self, ZString suffix) @extern("gtk_file_filter_add_suffix");

<* Maps to FileFilter::get_attributes *>
extern fn ZString FileFilter.get_attributes(&self, ) @extern("gtk_file_filter_get_attributes");

<* Maps to FileFilter::get_name *>
extern fn ZString FileFilter.get_name(&self, ) @extern("gtk_file_filter_get_name");

<* Maps to FileFilter::set_name *>
extern fn void FileFilter.set_name(&self, ZString name) @extern("gtk_file_filter_set_name");

<* Maps to FileFilter::to_gvariant *>
extern fn glib::Variant* FileFilter.to_gvariant(&self, ) @extern("gtk_file_filter_to_gvariant");


// Class Functions



<* Maps to GtkFileLauncher *>
distinct FileLauncher = void*;

// Class to parent cast.
fn gobject::Object* FileLauncher.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of FileLauncher *>
extern fn FileLauncher* file_launcher_new(gio::File* file) @extern("gtk_file_launcher_new");



// Class Methods

<* Maps to FileLauncher::get_always_ask *>
extern fn bool FileLauncher.get_always_ask(&self, ) @extern("gtk_file_launcher_get_always_ask");

<* Maps to FileLauncher::get_file *>
extern fn gio::File* FileLauncher.get_file(&self, ) @extern("gtk_file_launcher_get_file");

<* Maps to FileLauncher::get_writable *>
extern fn bool FileLauncher.get_writable(&self, ) @extern("gtk_file_launcher_get_writable");

<* Maps to FileLauncher::launch *>
extern fn void FileLauncher.launch(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_launcher_launch");

<* Maps to FileLauncher::launch_finish *>
extern fn bool FileLauncher.launch_finish(&self, gio::AsyncResult* result) @extern("gtk_file_launcher_launch_finish");

<* Maps to FileLauncher::open_containing_folder *>
extern fn void FileLauncher.open_containing_folder(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_file_launcher_open_containing_folder");

<* Maps to FileLauncher::open_containing_folder_finish *>
extern fn bool FileLauncher.open_containing_folder_finish(&self, gio::AsyncResult* result) @extern("gtk_file_launcher_open_containing_folder_finish");

<* Maps to FileLauncher::set_always_ask *>
extern fn void FileLauncher.set_always_ask(&self, bool always_ask) @extern("gtk_file_launcher_set_always_ask");

<* Maps to FileLauncher::set_file *>
extern fn void FileLauncher.set_file(&self, gio::File* file) @extern("gtk_file_launcher_set_file");

<* Maps to FileLauncher::set_writable *>
extern fn void FileLauncher.set_writable(&self, bool writable) @extern("gtk_file_launcher_set_writable");


// Class Functions



<* Maps to GtkFilter *>
distinct Filter = void*;

// Class to parent cast.
fn gobject::Object* Filter.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Filter::changed *>
extern fn void Filter.changed(&self, FilterChange change) @extern("gtk_filter_changed");

<* Maps to Filter::get_strictness *>
extern fn FilterMatch Filter.get_strictness(&self, ) @extern("gtk_filter_get_strictness");

<* Maps to Filter::match *>
extern fn bool Filter.match(&self, gobject::Object* item) @extern("gtk_filter_match");


// Class Functions



<* Maps to GtkFilterListModel *>
distinct FilterListModel = void*;

// Class to parent cast.
fn gobject::Object* FilterListModel.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of FilterListModel *>
extern fn FilterListModel* filter_list_model_new(gio::ListModel* model, Filter* filter) @extern("gtk_filter_list_model_new");



// Class Methods

<* Maps to FilterListModel::get_filter *>
extern fn Filter* FilterListModel.get_filter(&self, ) @extern("gtk_filter_list_model_get_filter");

<* Maps to FilterListModel::get_incremental *>
extern fn bool FilterListModel.get_incremental(&self, ) @extern("gtk_filter_list_model_get_incremental");

<* Maps to FilterListModel::get_model *>
extern fn gio::ListModel* FilterListModel.get_model(&self, ) @extern("gtk_filter_list_model_get_model");

<* Maps to FilterListModel::get_pending *>
extern fn uint FilterListModel.get_pending(&self, ) @extern("gtk_filter_list_model_get_pending");

<* Maps to FilterListModel::set_filter *>
extern fn void FilterListModel.set_filter(&self, Filter* filter) @extern("gtk_filter_list_model_set_filter");

<* Maps to FilterListModel::set_incremental *>
extern fn void FilterListModel.set_incremental(&self, bool incremental) @extern("gtk_filter_list_model_set_incremental");

<* Maps to FilterListModel::set_model *>
extern fn void FilterListModel.set_model(&self, gio::ListModel* model) @extern("gtk_filter_list_model_set_model");


// Class Functions



<* Maps to GtkFixed *>
distinct Fixed = void*;

// Class to parent cast.
fn Widget* Fixed.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Fixed *>
extern fn Widget* fixed_new() @extern("gtk_fixed_new");



// Class Methods

<* Maps to Fixed::get_child_position *>
extern fn void Fixed.get_child_position(&self, Widget* widget, double* x, double* y) @extern("gtk_fixed_get_child_position");

<* Maps to Fixed::get_child_transform *>
extern fn gsk::Transform* Fixed.get_child_transform(&self, Widget* widget) @extern("gtk_fixed_get_child_transform");

<* Maps to Fixed::move *>
extern fn void Fixed.move(&self, Widget* widget, double x, double y) @extern("gtk_fixed_move");

<* Maps to Fixed::put *>
extern fn void Fixed.put(&self, Widget* widget, double x, double y) @extern("gtk_fixed_put");

<* Maps to Fixed::remove *>
extern fn void Fixed.remove(&self, Widget* widget) @extern("gtk_fixed_remove");

<* Maps to Fixed::set_child_transform *>
extern fn void Fixed.set_child_transform(&self, Widget* widget, gsk::Transform* transform) @extern("gtk_fixed_set_child_transform");


// Class Functions



<* Maps to GtkFixedLayout *>
distinct FixedLayout = void*;

// Class to parent cast.
fn LayoutManager* FixedLayout.as_LayoutManager(&self) => (LayoutManager*)(self);

// Class Constructors

<* Maps to new of FixedLayout *>
extern fn LayoutManager* fixed_layout_new() @extern("gtk_fixed_layout_new");



// Class Methods


// Class Functions



<* Maps to GtkFixedLayoutChild *>
distinct FixedLayoutChild = void*;

// Class to parent cast.
fn LayoutChild* FixedLayoutChild.as_LayoutChild(&self) => (LayoutChild*)(self);

// Class Constructors



// Class Methods

<* Maps to FixedLayoutChild::get_transform *>
extern fn gsk::Transform* FixedLayoutChild.get_transform(&self, ) @extern("gtk_fixed_layout_child_get_transform");

<* Maps to FixedLayoutChild::set_transform *>
extern fn void FixedLayoutChild.set_transform(&self, gsk::Transform* transform) @extern("gtk_fixed_layout_child_set_transform");


// Class Functions



<* Maps to GtkFlattenListModel *>
distinct FlattenListModel = void*;

// Class to parent cast.
fn gobject::Object* FlattenListModel.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of FlattenListModel *>
extern fn FlattenListModel* flatten_list_model_new(gio::ListModel* model) @extern("gtk_flatten_list_model_new");



// Class Methods

<* Maps to FlattenListModel::get_model *>
extern fn gio::ListModel* FlattenListModel.get_model(&self, ) @extern("gtk_flatten_list_model_get_model");

<* Maps to FlattenListModel::get_model_for_item *>
extern fn gio::ListModel* FlattenListModel.get_model_for_item(&self, uint position) @extern("gtk_flatten_list_model_get_model_for_item");

<* Maps to FlattenListModel::set_model *>
extern fn void FlattenListModel.set_model(&self, gio::ListModel* model) @extern("gtk_flatten_list_model_set_model");


// Class Functions



<* Maps to GtkFlowBox *>
distinct FlowBox = void*;

// Class to parent cast.
fn Widget* FlowBox.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of FlowBox *>
extern fn Widget* flow_box_new() @extern("gtk_flow_box_new");



// Class Methods

<* Maps to FlowBox::append *>
extern fn void FlowBox.append(&self, Widget* child) @extern("gtk_flow_box_append");

<* Maps to FlowBox::bind_model *>
extern fn void FlowBox.bind_model(&self, gio::ListModel* model, FlowBoxCreateWidgetFunc create_widget_func, void* user_data, glib::DestroyNotify user_data_free_func) @extern("gtk_flow_box_bind_model");

<* Maps to FlowBox::get_activate_on_single_click *>
extern fn bool FlowBox.get_activate_on_single_click(&self, ) @extern("gtk_flow_box_get_activate_on_single_click");

<* Maps to FlowBox::get_child_at_index *>
extern fn FlowBoxChild* FlowBox.get_child_at_index(&self, int idx) @extern("gtk_flow_box_get_child_at_index");

<* Maps to FlowBox::get_child_at_pos *>
extern fn FlowBoxChild* FlowBox.get_child_at_pos(&self, int x, int y) @extern("gtk_flow_box_get_child_at_pos");

<* Maps to FlowBox::get_column_spacing *>
extern fn uint FlowBox.get_column_spacing(&self, ) @extern("gtk_flow_box_get_column_spacing");

<* Maps to FlowBox::get_homogeneous *>
extern fn bool FlowBox.get_homogeneous(&self, ) @extern("gtk_flow_box_get_homogeneous");

<* Maps to FlowBox::get_max_children_per_line *>
extern fn uint FlowBox.get_max_children_per_line(&self, ) @extern("gtk_flow_box_get_max_children_per_line");

<* Maps to FlowBox::get_min_children_per_line *>
extern fn uint FlowBox.get_min_children_per_line(&self, ) @extern("gtk_flow_box_get_min_children_per_line");

<* Maps to FlowBox::get_row_spacing *>
extern fn uint FlowBox.get_row_spacing(&self, ) @extern("gtk_flow_box_get_row_spacing");

<* Maps to FlowBox::get_selected_children *>
extern fn glib::List* FlowBox.get_selected_children(&self, ) @extern("gtk_flow_box_get_selected_children");

<* Maps to FlowBox::get_selection_mode *>
extern fn SelectionMode FlowBox.get_selection_mode(&self, ) @extern("gtk_flow_box_get_selection_mode");

<* Maps to FlowBox::insert *>
extern fn void FlowBox.insert(&self, Widget* widget, int position) @extern("gtk_flow_box_insert");

<* Maps to FlowBox::invalidate_filter *>
extern fn void FlowBox.invalidate_filter(&self, ) @extern("gtk_flow_box_invalidate_filter");

<* Maps to FlowBox::invalidate_sort *>
extern fn void FlowBox.invalidate_sort(&self, ) @extern("gtk_flow_box_invalidate_sort");

<* Maps to FlowBox::prepend *>
extern fn void FlowBox.prepend(&self, Widget* child) @extern("gtk_flow_box_prepend");

<* Maps to FlowBox::remove *>
extern fn void FlowBox.remove(&self, Widget* widget) @extern("gtk_flow_box_remove");

<* Maps to FlowBox::remove_all *>
extern fn void FlowBox.remove_all(&self, ) @extern("gtk_flow_box_remove_all");

<* Maps to FlowBox::select_all *>
extern fn void FlowBox.select_all(&self, ) @extern("gtk_flow_box_select_all");

<* Maps to FlowBox::select_child *>
extern fn void FlowBox.select_child(&self, FlowBoxChild* child) @extern("gtk_flow_box_select_child");

<* Maps to FlowBox::selected_foreach *>
extern fn void FlowBox.selected_foreach(&self, FlowBoxForeachFunc func, void* data) @extern("gtk_flow_box_selected_foreach");

<* Maps to FlowBox::set_activate_on_single_click *>
extern fn void FlowBox.set_activate_on_single_click(&self, bool single) @extern("gtk_flow_box_set_activate_on_single_click");

<* Maps to FlowBox::set_column_spacing *>
extern fn void FlowBox.set_column_spacing(&self, uint spacing) @extern("gtk_flow_box_set_column_spacing");

<* Maps to FlowBox::set_filter_func *>
extern fn void FlowBox.set_filter_func(&self, FlowBoxFilterFunc filter_func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_flow_box_set_filter_func");

<* Maps to FlowBox::set_hadjustment *>
extern fn void FlowBox.set_hadjustment(&self, Adjustment* adjustment) @extern("gtk_flow_box_set_hadjustment");

<* Maps to FlowBox::set_homogeneous *>
extern fn void FlowBox.set_homogeneous(&self, bool homogeneous) @extern("gtk_flow_box_set_homogeneous");

<* Maps to FlowBox::set_max_children_per_line *>
extern fn void FlowBox.set_max_children_per_line(&self, uint n_children) @extern("gtk_flow_box_set_max_children_per_line");

<* Maps to FlowBox::set_min_children_per_line *>
extern fn void FlowBox.set_min_children_per_line(&self, uint n_children) @extern("gtk_flow_box_set_min_children_per_line");

<* Maps to FlowBox::set_row_spacing *>
extern fn void FlowBox.set_row_spacing(&self, uint spacing) @extern("gtk_flow_box_set_row_spacing");

<* Maps to FlowBox::set_selection_mode *>
extern fn void FlowBox.set_selection_mode(&self, SelectionMode mode) @extern("gtk_flow_box_set_selection_mode");

<* Maps to FlowBox::set_sort_func *>
extern fn void FlowBox.set_sort_func(&self, FlowBoxSortFunc sort_func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_flow_box_set_sort_func");

<* Maps to FlowBox::set_vadjustment *>
extern fn void FlowBox.set_vadjustment(&self, Adjustment* adjustment) @extern("gtk_flow_box_set_vadjustment");

<* Maps to FlowBox::unselect_all *>
extern fn void FlowBox.unselect_all(&self, ) @extern("gtk_flow_box_unselect_all");

<* Maps to FlowBox::unselect_child *>
extern fn void FlowBox.unselect_child(&self, FlowBoxChild* child) @extern("gtk_flow_box_unselect_child");


// Class Functions



<* Maps to GtkFlowBoxChild *>
distinct FlowBoxChild = void*;

// Class to parent cast.
fn Widget* FlowBoxChild.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of FlowBoxChild *>
extern fn Widget* flow_box_child_new() @extern("gtk_flow_box_child_new");



// Class Methods

<* Maps to FlowBoxChild::changed *>
extern fn void FlowBoxChild.changed(&self, ) @extern("gtk_flow_box_child_changed");

<* Maps to FlowBoxChild::get_child *>
extern fn Widget* FlowBoxChild.get_child(&self, ) @extern("gtk_flow_box_child_get_child");

<* Maps to FlowBoxChild::get_index *>
extern fn int FlowBoxChild.get_index(&self, ) @extern("gtk_flow_box_child_get_index");

<* Maps to FlowBoxChild::is_selected *>
extern fn bool FlowBoxChild.is_selected(&self, ) @extern("gtk_flow_box_child_is_selected");

<* Maps to FlowBoxChild::set_child *>
extern fn void FlowBoxChild.set_child(&self, Widget* child) @extern("gtk_flow_box_child_set_child");


// Class Functions



<* Maps to GtkFontButton *>
distinct FontButton = void*;

// Class to parent cast.
fn Widget* FontButton.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of FontButton *>
extern fn Widget* font_button_new() @extern("gtk_font_button_new");

<* Maps to new_with_font of FontButton *>
extern fn Widget* font_button_new_with_font(ZString fontname) @extern("gtk_font_button_new_with_font");



// Class Methods

<* Maps to FontButton::get_modal *>
extern fn bool FontButton.get_modal(&self, ) @extern("gtk_font_button_get_modal");

<* Maps to FontButton::get_title *>
extern fn ZString FontButton.get_title(&self, ) @extern("gtk_font_button_get_title");

<* Maps to FontButton::get_use_font *>
extern fn bool FontButton.get_use_font(&self, ) @extern("gtk_font_button_get_use_font");

<* Maps to FontButton::get_use_size *>
extern fn bool FontButton.get_use_size(&self, ) @extern("gtk_font_button_get_use_size");

<* Maps to FontButton::set_modal *>
extern fn void FontButton.set_modal(&self, bool modal) @extern("gtk_font_button_set_modal");

<* Maps to FontButton::set_title *>
extern fn void FontButton.set_title(&self, ZString title) @extern("gtk_font_button_set_title");

<* Maps to FontButton::set_use_font *>
extern fn void FontButton.set_use_font(&self, bool use_font) @extern("gtk_font_button_set_use_font");

<* Maps to FontButton::set_use_size *>
extern fn void FontButton.set_use_size(&self, bool use_size) @extern("gtk_font_button_set_use_size");


// Class Functions



<* Maps to GtkFontChooserDialog *>
distinct FontChooserDialog = void*;

// Class to parent cast.
fn Dialog* FontChooserDialog.as_Dialog(&self) => (Dialog*)(self);

// Class Constructors

<* Maps to new of FontChooserDialog *>
extern fn Widget* font_chooser_dialog_new(ZString title, Window* parent) @extern("gtk_font_chooser_dialog_new");



// Class Methods


// Class Functions



<* Maps to GtkFontChooserWidget *>
distinct FontChooserWidget = void*;

// Class to parent cast.
fn Widget* FontChooserWidget.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of FontChooserWidget *>
extern fn Widget* font_chooser_widget_new() @extern("gtk_font_chooser_widget_new");



// Class Methods


// Class Functions



<* Maps to GtkFontDialog *>
distinct FontDialog = void*;

// Class to parent cast.
fn gobject::Object* FontDialog.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of FontDialog *>
extern fn FontDialog* font_dialog_new() @extern("gtk_font_dialog_new");



// Class Methods

<* Maps to FontDialog::choose_face *>
extern fn void FontDialog.choose_face(&self, Window* parent, pango::FontFace* initial_value, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_font_dialog_choose_face");

<* Maps to FontDialog::choose_face_finish *>
extern fn pango::FontFace* FontDialog.choose_face_finish(&self, gio::AsyncResult* result) @extern("gtk_font_dialog_choose_face_finish");

<* Maps to FontDialog::choose_family *>
extern fn void FontDialog.choose_family(&self, Window* parent, pango::FontFamily* initial_value, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_font_dialog_choose_family");

<* Maps to FontDialog::choose_family_finish *>
extern fn pango::FontFamily* FontDialog.choose_family_finish(&self, gio::AsyncResult* result) @extern("gtk_font_dialog_choose_family_finish");

<* Maps to FontDialog::choose_font *>
extern fn void FontDialog.choose_font(&self, Window* parent, pango::FontDescription* initial_value, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_font_dialog_choose_font");

<* Maps to FontDialog::choose_font_and_features *>
extern fn void FontDialog.choose_font_and_features(&self, Window* parent, pango::FontDescription* initial_value, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_font_dialog_choose_font_and_features");

<* Maps to FontDialog::choose_font_and_features_finish *>
extern fn bool FontDialog.choose_font_and_features_finish(&self, gio::AsyncResult* result, pango::FontDescription* font_desc, ZString* font_features, pango::Language* language) @extern("gtk_font_dialog_choose_font_and_features_finish");

<* Maps to FontDialog::choose_font_finish *>
extern fn pango::FontDescription* FontDialog.choose_font_finish(&self, gio::AsyncResult* result) @extern("gtk_font_dialog_choose_font_finish");

<* Maps to FontDialog::get_filter *>
extern fn Filter* FontDialog.get_filter(&self, ) @extern("gtk_font_dialog_get_filter");

<* Maps to FontDialog::get_font_map *>
extern fn pango::FontMap* FontDialog.get_font_map(&self, ) @extern("gtk_font_dialog_get_font_map");

<* Maps to FontDialog::get_language *>
extern fn pango::Language* FontDialog.get_language(&self, ) @extern("gtk_font_dialog_get_language");

<* Maps to FontDialog::get_modal *>
extern fn bool FontDialog.get_modal(&self, ) @extern("gtk_font_dialog_get_modal");

<* Maps to FontDialog::get_title *>
extern fn ZString FontDialog.get_title(&self, ) @extern("gtk_font_dialog_get_title");

<* Maps to FontDialog::set_filter *>
extern fn void FontDialog.set_filter(&self, Filter* filter) @extern("gtk_font_dialog_set_filter");

<* Maps to FontDialog::set_font_map *>
extern fn void FontDialog.set_font_map(&self, pango::FontMap* fontmap) @extern("gtk_font_dialog_set_font_map");

<* Maps to FontDialog::set_language *>
extern fn void FontDialog.set_language(&self, pango::Language* language) @extern("gtk_font_dialog_set_language");

<* Maps to FontDialog::set_modal *>
extern fn void FontDialog.set_modal(&self, bool modal) @extern("gtk_font_dialog_set_modal");

<* Maps to FontDialog::set_title *>
extern fn void FontDialog.set_title(&self, ZString title) @extern("gtk_font_dialog_set_title");


// Class Functions



<* Maps to GtkFontDialogButton *>
distinct FontDialogButton = void*;

// Class to parent cast.
fn Widget* FontDialogButton.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of FontDialogButton *>
extern fn Widget* font_dialog_button_new(FontDialog* dialog) @extern("gtk_font_dialog_button_new");



// Class Methods

<* Maps to FontDialogButton::get_dialog *>
extern fn FontDialog* FontDialogButton.get_dialog(&self, ) @extern("gtk_font_dialog_button_get_dialog");

<* Maps to FontDialogButton::get_font_desc *>
extern fn pango::FontDescription* FontDialogButton.get_font_desc(&self, ) @extern("gtk_font_dialog_button_get_font_desc");

<* Maps to FontDialogButton::get_font_features *>
extern fn ZString FontDialogButton.get_font_features(&self, ) @extern("gtk_font_dialog_button_get_font_features");

<* Maps to FontDialogButton::get_language *>
extern fn pango::Language* FontDialogButton.get_language(&self, ) @extern("gtk_font_dialog_button_get_language");

<* Maps to FontDialogButton::get_level *>
extern fn FontLevel FontDialogButton.get_level(&self, ) @extern("gtk_font_dialog_button_get_level");

<* Maps to FontDialogButton::get_use_font *>
extern fn bool FontDialogButton.get_use_font(&self, ) @extern("gtk_font_dialog_button_get_use_font");

<* Maps to FontDialogButton::get_use_size *>
extern fn bool FontDialogButton.get_use_size(&self, ) @extern("gtk_font_dialog_button_get_use_size");

<* Maps to FontDialogButton::set_dialog *>
extern fn void FontDialogButton.set_dialog(&self, FontDialog* dialog) @extern("gtk_font_dialog_button_set_dialog");

<* Maps to FontDialogButton::set_font_desc *>
extern fn void FontDialogButton.set_font_desc(&self, pango::FontDescription* font_desc) @extern("gtk_font_dialog_button_set_font_desc");

<* Maps to FontDialogButton::set_font_features *>
extern fn void FontDialogButton.set_font_features(&self, ZString font_features) @extern("gtk_font_dialog_button_set_font_features");

<* Maps to FontDialogButton::set_language *>
extern fn void FontDialogButton.set_language(&self, pango::Language* language) @extern("gtk_font_dialog_button_set_language");

<* Maps to FontDialogButton::set_level *>
extern fn void FontDialogButton.set_level(&self, FontLevel level) @extern("gtk_font_dialog_button_set_level");

<* Maps to FontDialogButton::set_use_font *>
extern fn void FontDialogButton.set_use_font(&self, bool use_font) @extern("gtk_font_dialog_button_set_use_font");

<* Maps to FontDialogButton::set_use_size *>
extern fn void FontDialogButton.set_use_size(&self, bool use_size) @extern("gtk_font_dialog_button_set_use_size");


// Class Functions



<* Maps to GtkFrame *>
distinct Frame = void*;

// Class to parent cast.
fn Widget* Frame.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Frame *>
extern fn Widget* frame_new(ZString label) @extern("gtk_frame_new");



// Class Methods

<* Maps to Frame::get_child *>
extern fn Widget* Frame.get_child(&self, ) @extern("gtk_frame_get_child");

<* Maps to Frame::get_label *>
extern fn ZString Frame.get_label(&self, ) @extern("gtk_frame_get_label");

<* Maps to Frame::get_label_align *>
extern fn float Frame.get_label_align(&self, ) @extern("gtk_frame_get_label_align");

<* Maps to Frame::get_label_widget *>
extern fn Widget* Frame.get_label_widget(&self, ) @extern("gtk_frame_get_label_widget");

<* Maps to Frame::set_child *>
extern fn void Frame.set_child(&self, Widget* child) @extern("gtk_frame_set_child");

<* Maps to Frame::set_label *>
extern fn void Frame.set_label(&self, ZString label) @extern("gtk_frame_set_label");

<* Maps to Frame::set_label_align *>
extern fn void Frame.set_label_align(&self, float xalign) @extern("gtk_frame_set_label_align");

<* Maps to Frame::set_label_widget *>
extern fn void Frame.set_label_widget(&self, Widget* label_widget) @extern("gtk_frame_set_label_widget");


// Class Functions



<* Maps to GtkGLArea *>
distinct GLArea = void*;

// Class to parent cast.
fn Widget* GLArea.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of GLArea *>
extern fn Widget* gl_area_new() @extern("gtk_gl_area_new");



// Class Methods

<* Maps to GLArea::attach_buffers *>
extern fn void GLArea.attach_buffers(&self, ) @extern("gtk_gl_area_attach_buffers");

<* Maps to GLArea::get_allowed_apis *>
extern fn gdk::Glapi GLArea.get_allowed_apis(&self, ) @extern("gtk_gl_area_get_allowed_apis");

<* Maps to GLArea::get_api *>
extern fn gdk::Glapi GLArea.get_api(&self, ) @extern("gtk_gl_area_get_api");

<* Maps to GLArea::get_auto_render *>
extern fn bool GLArea.get_auto_render(&self, ) @extern("gtk_gl_area_get_auto_render");

<* Maps to GLArea::get_context *>
extern fn gdk::GLContext* GLArea.get_context(&self, ) @extern("gtk_gl_area_get_context");

<* Maps to GLArea::get_error *>
extern fn glib::Error* GLArea.get_error(&self, ) @extern("gtk_gl_area_get_error");

<* Maps to GLArea::get_has_depth_buffer *>
extern fn bool GLArea.get_has_depth_buffer(&self, ) @extern("gtk_gl_area_get_has_depth_buffer");

<* Maps to GLArea::get_has_stencil_buffer *>
extern fn bool GLArea.get_has_stencil_buffer(&self, ) @extern("gtk_gl_area_get_has_stencil_buffer");

<* Maps to GLArea::get_required_version *>
extern fn void GLArea.get_required_version(&self, int* major, int* minor) @extern("gtk_gl_area_get_required_version");

<* Maps to GLArea::get_use_es *>
extern fn bool GLArea.get_use_es(&self, ) @extern("gtk_gl_area_get_use_es");

<* Maps to GLArea::make_current *>
extern fn void GLArea.make_current(&self, ) @extern("gtk_gl_area_make_current");

<* Maps to GLArea::queue_render *>
extern fn void GLArea.queue_render(&self, ) @extern("gtk_gl_area_queue_render");

<* Maps to GLArea::set_allowed_apis *>
extern fn void GLArea.set_allowed_apis(&self, gdk::Glapi apis) @extern("gtk_gl_area_set_allowed_apis");

<* Maps to GLArea::set_auto_render *>
extern fn void GLArea.set_auto_render(&self, bool auto_render) @extern("gtk_gl_area_set_auto_render");

<* Maps to GLArea::set_error *>
extern fn void GLArea.set_error(&self, glib::Error* error) @extern("gtk_gl_area_set_error");

<* Maps to GLArea::set_has_depth_buffer *>
extern fn void GLArea.set_has_depth_buffer(&self, bool has_depth_buffer) @extern("gtk_gl_area_set_has_depth_buffer");

<* Maps to GLArea::set_has_stencil_buffer *>
extern fn void GLArea.set_has_stencil_buffer(&self, bool has_stencil_buffer) @extern("gtk_gl_area_set_has_stencil_buffer");

<* Maps to GLArea::set_required_version *>
extern fn void GLArea.set_required_version(&self, int major, int minor) @extern("gtk_gl_area_set_required_version");

<* Maps to GLArea::set_use_es *>
extern fn void GLArea.set_use_es(&self, bool use_es) @extern("gtk_gl_area_set_use_es");


// Class Functions



<* Maps to GtkGesture *>
distinct Gesture = void*;

// Class to parent cast.
fn EventController* Gesture.as_EventController(&self) => (EventController*)(self);

// Class Constructors



// Class Methods

<* Maps to Gesture::get_bounding_box *>
extern fn bool Gesture.get_bounding_box(&self, gdk::Rectangle* rect) @extern("gtk_gesture_get_bounding_box");

<* Maps to Gesture::get_bounding_box_center *>
extern fn bool Gesture.get_bounding_box_center(&self, double* x, double* y) @extern("gtk_gesture_get_bounding_box_center");

<* Maps to Gesture::get_device *>
extern fn gdk::Device* Gesture.get_device(&self, ) @extern("gtk_gesture_get_device");

<* Maps to Gesture::get_group *>
extern fn glib::List* Gesture.get_group(&self, ) @extern("gtk_gesture_get_group");

<* Maps to Gesture::get_last_event *>
extern fn gdk::Event* Gesture.get_last_event(&self, gdk::EventSequence* sequence) @extern("gtk_gesture_get_last_event");

<* Maps to Gesture::get_last_updated_sequence *>
extern fn gdk::EventSequence* Gesture.get_last_updated_sequence(&self, ) @extern("gtk_gesture_get_last_updated_sequence");

<* Maps to Gesture::get_point *>
extern fn bool Gesture.get_point(&self, gdk::EventSequence* sequence, double* x, double* y) @extern("gtk_gesture_get_point");

<* Maps to Gesture::get_sequence_state *>
extern fn EventSequenceState Gesture.get_sequence_state(&self, gdk::EventSequence* sequence) @extern("gtk_gesture_get_sequence_state");

<* Maps to Gesture::get_sequences *>
extern fn glib::List* Gesture.get_sequences(&self, ) @extern("gtk_gesture_get_sequences");

<* Maps to Gesture::group *>
extern fn void Gesture.group(&self, Gesture* gesture) @extern("gtk_gesture_group");

<* Maps to Gesture::handles_sequence *>
extern fn bool Gesture.handles_sequence(&self, gdk::EventSequence* sequence) @extern("gtk_gesture_handles_sequence");

<* Maps to Gesture::is_active *>
extern fn bool Gesture.is_active(&self, ) @extern("gtk_gesture_is_active");

<* Maps to Gesture::is_grouped_with *>
extern fn bool Gesture.is_grouped_with(&self, Gesture* other) @extern("gtk_gesture_is_grouped_with");

<* Maps to Gesture::is_recognized *>
extern fn bool Gesture.is_recognized(&self, ) @extern("gtk_gesture_is_recognized");

<* Maps to Gesture::set_sequence_state *>
extern fn bool Gesture.set_sequence_state(&self, gdk::EventSequence* sequence, EventSequenceState state) @extern("gtk_gesture_set_sequence_state");

<* Maps to Gesture::set_state *>
extern fn bool Gesture.set_state(&self, EventSequenceState state) @extern("gtk_gesture_set_state");

<* Maps to Gesture::ungroup *>
extern fn void Gesture.ungroup(&self, ) @extern("gtk_gesture_ungroup");


// Class Functions



<* Maps to GtkGestureClick *>
distinct GestureClick = void*;

// Class to parent cast.
fn GestureSingle* GestureClick.as_GestureSingle(&self) => (GestureSingle*)(self);

// Class Constructors

<* Maps to new of GestureClick *>
extern fn Gesture* gesture_click_new() @extern("gtk_gesture_click_new");



// Class Methods


// Class Functions



<* Maps to GtkGestureDrag *>
distinct GestureDrag = void*;

// Class to parent cast.
fn GestureSingle* GestureDrag.as_GestureSingle(&self) => (GestureSingle*)(self);

// Class Constructors

<* Maps to new of GestureDrag *>
extern fn Gesture* gesture_drag_new() @extern("gtk_gesture_drag_new");



// Class Methods

<* Maps to GestureDrag::get_offset *>
extern fn bool GestureDrag.get_offset(&self, double* x, double* y) @extern("gtk_gesture_drag_get_offset");

<* Maps to GestureDrag::get_start_point *>
extern fn bool GestureDrag.get_start_point(&self, double* x, double* y) @extern("gtk_gesture_drag_get_start_point");


// Class Functions



<* Maps to GtkGestureLongPress *>
distinct GestureLongPress = void*;

// Class to parent cast.
fn GestureSingle* GestureLongPress.as_GestureSingle(&self) => (GestureSingle*)(self);

// Class Constructors

<* Maps to new of GestureLongPress *>
extern fn Gesture* gesture_long_press_new() @extern("gtk_gesture_long_press_new");



// Class Methods

<* Maps to GestureLongPress::get_delay_factor *>
extern fn double GestureLongPress.get_delay_factor(&self, ) @extern("gtk_gesture_long_press_get_delay_factor");

<* Maps to GestureLongPress::set_delay_factor *>
extern fn void GestureLongPress.set_delay_factor(&self, double delay_factor) @extern("gtk_gesture_long_press_set_delay_factor");


// Class Functions



<* Maps to GtkGesturePan *>
distinct GesturePan = void*;

// Class to parent cast.
fn GestureDrag* GesturePan.as_GestureDrag(&self) => (GestureDrag*)(self);

// Class Constructors

<* Maps to new of GesturePan *>
extern fn Gesture* gesture_pan_new(Orientation orientation) @extern("gtk_gesture_pan_new");



// Class Methods

<* Maps to GesturePan::get_orientation *>
extern fn Orientation GesturePan.get_orientation(&self, ) @extern("gtk_gesture_pan_get_orientation");

<* Maps to GesturePan::set_orientation *>
extern fn void GesturePan.set_orientation(&self, Orientation orientation) @extern("gtk_gesture_pan_set_orientation");


// Class Functions



<* Maps to GtkGestureRotate *>
distinct GestureRotate = void*;

// Class to parent cast.
fn Gesture* GestureRotate.as_Gesture(&self) => (Gesture*)(self);

// Class Constructors

<* Maps to new of GestureRotate *>
extern fn Gesture* gesture_rotate_new() @extern("gtk_gesture_rotate_new");



// Class Methods

<* Maps to GestureRotate::get_angle_delta *>
extern fn double GestureRotate.get_angle_delta(&self, ) @extern("gtk_gesture_rotate_get_angle_delta");


// Class Functions



<* Maps to GtkGestureSingle *>
distinct GestureSingle = void*;

// Class to parent cast.
fn Gesture* GestureSingle.as_Gesture(&self) => (Gesture*)(self);

// Class Constructors



// Class Methods

<* Maps to GestureSingle::get_button *>
extern fn uint GestureSingle.get_button(&self, ) @extern("gtk_gesture_single_get_button");

<* Maps to GestureSingle::get_current_button *>
extern fn uint GestureSingle.get_current_button(&self, ) @extern("gtk_gesture_single_get_current_button");

<* Maps to GestureSingle::get_current_sequence *>
extern fn gdk::EventSequence* GestureSingle.get_current_sequence(&self, ) @extern("gtk_gesture_single_get_current_sequence");

<* Maps to GestureSingle::get_exclusive *>
extern fn bool GestureSingle.get_exclusive(&self, ) @extern("gtk_gesture_single_get_exclusive");

<* Maps to GestureSingle::get_touch_only *>
extern fn bool GestureSingle.get_touch_only(&self, ) @extern("gtk_gesture_single_get_touch_only");

<* Maps to GestureSingle::set_button *>
extern fn void GestureSingle.set_button(&self, uint button) @extern("gtk_gesture_single_set_button");

<* Maps to GestureSingle::set_exclusive *>
extern fn void GestureSingle.set_exclusive(&self, bool exclusive) @extern("gtk_gesture_single_set_exclusive");

<* Maps to GestureSingle::set_touch_only *>
extern fn void GestureSingle.set_touch_only(&self, bool touch_only) @extern("gtk_gesture_single_set_touch_only");


// Class Functions



<* Maps to GtkGestureStylus *>
distinct GestureStylus = void*;

// Class to parent cast.
fn GestureSingle* GestureStylus.as_GestureSingle(&self) => (GestureSingle*)(self);

// Class Constructors

<* Maps to new of GestureStylus *>
extern fn Gesture* gesture_stylus_new() @extern("gtk_gesture_stylus_new");



// Class Methods

<* Maps to GestureStylus::get_axes *>
extern fn bool GestureStylus.get_axes(&self, gdk::AxisUse axes, double* values) @extern("gtk_gesture_stylus_get_axes");

<* Maps to GestureStylus::get_axis *>
extern fn bool GestureStylus.get_axis(&self, gdk::AxisUse axis, double* value) @extern("gtk_gesture_stylus_get_axis");

<* Maps to GestureStylus::get_backlog *>
extern fn bool GestureStylus.get_backlog(&self, gdk::TimeCoord* backlog, uint* n_elems) @extern("gtk_gesture_stylus_get_backlog");

<* Maps to GestureStylus::get_device_tool *>
extern fn gdk::DeviceTool* GestureStylus.get_device_tool(&self, ) @extern("gtk_gesture_stylus_get_device_tool");

<* Maps to GestureStylus::get_stylus_only *>
extern fn bool GestureStylus.get_stylus_only(&self, ) @extern("gtk_gesture_stylus_get_stylus_only");

<* Maps to GestureStylus::set_stylus_only *>
extern fn void GestureStylus.set_stylus_only(&self, bool stylus_only) @extern("gtk_gesture_stylus_set_stylus_only");


// Class Functions



<* Maps to GtkGestureSwipe *>
distinct GestureSwipe = void*;

// Class to parent cast.
fn GestureSingle* GestureSwipe.as_GestureSingle(&self) => (GestureSingle*)(self);

// Class Constructors

<* Maps to new of GestureSwipe *>
extern fn Gesture* gesture_swipe_new() @extern("gtk_gesture_swipe_new");



// Class Methods

<* Maps to GestureSwipe::get_velocity *>
extern fn bool GestureSwipe.get_velocity(&self, double* velocity_x, double* velocity_y) @extern("gtk_gesture_swipe_get_velocity");


// Class Functions



<* Maps to GtkGestureZoom *>
distinct GestureZoom = void*;

// Class to parent cast.
fn Gesture* GestureZoom.as_Gesture(&self) => (Gesture*)(self);

// Class Constructors

<* Maps to new of GestureZoom *>
extern fn Gesture* gesture_zoom_new() @extern("gtk_gesture_zoom_new");



// Class Methods

<* Maps to GestureZoom::get_scale_delta *>
extern fn double GestureZoom.get_scale_delta(&self, ) @extern("gtk_gesture_zoom_get_scale_delta");


// Class Functions



<* Maps to GtkGraphicsOffload *>
distinct GraphicsOffload = void*;

// Class to parent cast.
fn Widget* GraphicsOffload.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of GraphicsOffload *>
extern fn Widget* graphics_offload_new(Widget* child) @extern("gtk_graphics_offload_new");



// Class Methods

<* Maps to GraphicsOffload::get_black_background *>
extern fn bool GraphicsOffload.get_black_background(&self, ) @extern("gtk_graphics_offload_get_black_background");

<* Maps to GraphicsOffload::get_child *>
extern fn Widget* GraphicsOffload.get_child(&self, ) @extern("gtk_graphics_offload_get_child");

<* Maps to GraphicsOffload::get_enabled *>
extern fn GraphicsOffloadEnabled GraphicsOffload.get_enabled(&self, ) @extern("gtk_graphics_offload_get_enabled");

<* Maps to GraphicsOffload::set_black_background *>
extern fn void GraphicsOffload.set_black_background(&self, bool value) @extern("gtk_graphics_offload_set_black_background");

<* Maps to GraphicsOffload::set_child *>
extern fn void GraphicsOffload.set_child(&self, Widget* child) @extern("gtk_graphics_offload_set_child");

<* Maps to GraphicsOffload::set_enabled *>
extern fn void GraphicsOffload.set_enabled(&self, GraphicsOffloadEnabled enabled) @extern("gtk_graphics_offload_set_enabled");


// Class Functions



<* Maps to GtkGrid *>
distinct Grid = void*;

// Class to parent cast.
fn Widget* Grid.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Grid *>
extern fn Widget* grid_new() @extern("gtk_grid_new");



// Class Methods

<* Maps to Grid::attach *>
extern fn void Grid.attach(&self, Widget* child, int column, int row, int width, int height) @extern("gtk_grid_attach");

<* Maps to Grid::attach_next_to *>
extern fn void Grid.attach_next_to(&self, Widget* child, Widget* sibling, PositionType side, int width, int height) @extern("gtk_grid_attach_next_to");

<* Maps to Grid::get_baseline_row *>
extern fn int Grid.get_baseline_row(&self, ) @extern("gtk_grid_get_baseline_row");

<* Maps to Grid::get_child_at *>
extern fn Widget* Grid.get_child_at(&self, int column, int row) @extern("gtk_grid_get_child_at");

<* Maps to Grid::get_column_homogeneous *>
extern fn bool Grid.get_column_homogeneous(&self, ) @extern("gtk_grid_get_column_homogeneous");

<* Maps to Grid::get_column_spacing *>
extern fn uint Grid.get_column_spacing(&self, ) @extern("gtk_grid_get_column_spacing");

<* Maps to Grid::get_row_baseline_position *>
extern fn BaselinePosition Grid.get_row_baseline_position(&self, int row) @extern("gtk_grid_get_row_baseline_position");

<* Maps to Grid::get_row_homogeneous *>
extern fn bool Grid.get_row_homogeneous(&self, ) @extern("gtk_grid_get_row_homogeneous");

<* Maps to Grid::get_row_spacing *>
extern fn uint Grid.get_row_spacing(&self, ) @extern("gtk_grid_get_row_spacing");

<* Maps to Grid::insert_column *>
extern fn void Grid.insert_column(&self, int position) @extern("gtk_grid_insert_column");

<* Maps to Grid::insert_next_to *>
extern fn void Grid.insert_next_to(&self, Widget* sibling, PositionType side) @extern("gtk_grid_insert_next_to");

<* Maps to Grid::insert_row *>
extern fn void Grid.insert_row(&self, int position) @extern("gtk_grid_insert_row");

<* Maps to Grid::query_child *>
extern fn void Grid.query_child(&self, Widget* child, int* column, int* row, int* width, int* height) @extern("gtk_grid_query_child");

<* Maps to Grid::remove *>
extern fn void Grid.remove(&self, Widget* child) @extern("gtk_grid_remove");

<* Maps to Grid::remove_column *>
extern fn void Grid.remove_column(&self, int position) @extern("gtk_grid_remove_column");

<* Maps to Grid::remove_row *>
extern fn void Grid.remove_row(&self, int position) @extern("gtk_grid_remove_row");

<* Maps to Grid::set_baseline_row *>
extern fn void Grid.set_baseline_row(&self, int row) @extern("gtk_grid_set_baseline_row");

<* Maps to Grid::set_column_homogeneous *>
extern fn void Grid.set_column_homogeneous(&self, bool homogeneous) @extern("gtk_grid_set_column_homogeneous");

<* Maps to Grid::set_column_spacing *>
extern fn void Grid.set_column_spacing(&self, uint spacing) @extern("gtk_grid_set_column_spacing");

<* Maps to Grid::set_row_baseline_position *>
extern fn void Grid.set_row_baseline_position(&self, int row, BaselinePosition pos) @extern("gtk_grid_set_row_baseline_position");

<* Maps to Grid::set_row_homogeneous *>
extern fn void Grid.set_row_homogeneous(&self, bool homogeneous) @extern("gtk_grid_set_row_homogeneous");

<* Maps to Grid::set_row_spacing *>
extern fn void Grid.set_row_spacing(&self, uint spacing) @extern("gtk_grid_set_row_spacing");


// Class Functions



<* Maps to GtkGridLayout *>
distinct GridLayout = void*;

// Class to parent cast.
fn LayoutManager* GridLayout.as_LayoutManager(&self) => (LayoutManager*)(self);

// Class Constructors

<* Maps to new of GridLayout *>
extern fn LayoutManager* grid_layout_new() @extern("gtk_grid_layout_new");



// Class Methods

<* Maps to GridLayout::get_baseline_row *>
extern fn int GridLayout.get_baseline_row(&self, ) @extern("gtk_grid_layout_get_baseline_row");

<* Maps to GridLayout::get_column_homogeneous *>
extern fn bool GridLayout.get_column_homogeneous(&self, ) @extern("gtk_grid_layout_get_column_homogeneous");

<* Maps to GridLayout::get_column_spacing *>
extern fn uint GridLayout.get_column_spacing(&self, ) @extern("gtk_grid_layout_get_column_spacing");

<* Maps to GridLayout::get_row_baseline_position *>
extern fn BaselinePosition GridLayout.get_row_baseline_position(&self, int row) @extern("gtk_grid_layout_get_row_baseline_position");

<* Maps to GridLayout::get_row_homogeneous *>
extern fn bool GridLayout.get_row_homogeneous(&self, ) @extern("gtk_grid_layout_get_row_homogeneous");

<* Maps to GridLayout::get_row_spacing *>
extern fn uint GridLayout.get_row_spacing(&self, ) @extern("gtk_grid_layout_get_row_spacing");

<* Maps to GridLayout::set_baseline_row *>
extern fn void GridLayout.set_baseline_row(&self, int row) @extern("gtk_grid_layout_set_baseline_row");

<* Maps to GridLayout::set_column_homogeneous *>
extern fn void GridLayout.set_column_homogeneous(&self, bool homogeneous) @extern("gtk_grid_layout_set_column_homogeneous");

<* Maps to GridLayout::set_column_spacing *>
extern fn void GridLayout.set_column_spacing(&self, uint spacing) @extern("gtk_grid_layout_set_column_spacing");

<* Maps to GridLayout::set_row_baseline_position *>
extern fn void GridLayout.set_row_baseline_position(&self, int row, BaselinePosition pos) @extern("gtk_grid_layout_set_row_baseline_position");

<* Maps to GridLayout::set_row_homogeneous *>
extern fn void GridLayout.set_row_homogeneous(&self, bool homogeneous) @extern("gtk_grid_layout_set_row_homogeneous");

<* Maps to GridLayout::set_row_spacing *>
extern fn void GridLayout.set_row_spacing(&self, uint spacing) @extern("gtk_grid_layout_set_row_spacing");


// Class Functions



<* Maps to GtkGridLayoutChild *>
distinct GridLayoutChild = void*;

// Class to parent cast.
fn LayoutChild* GridLayoutChild.as_LayoutChild(&self) => (LayoutChild*)(self);

// Class Constructors



// Class Methods

<* Maps to GridLayoutChild::get_column *>
extern fn int GridLayoutChild.get_column(&self, ) @extern("gtk_grid_layout_child_get_column");

<* Maps to GridLayoutChild::get_column_span *>
extern fn int GridLayoutChild.get_column_span(&self, ) @extern("gtk_grid_layout_child_get_column_span");

<* Maps to GridLayoutChild::get_row *>
extern fn int GridLayoutChild.get_row(&self, ) @extern("gtk_grid_layout_child_get_row");

<* Maps to GridLayoutChild::get_row_span *>
extern fn int GridLayoutChild.get_row_span(&self, ) @extern("gtk_grid_layout_child_get_row_span");

<* Maps to GridLayoutChild::set_column *>
extern fn void GridLayoutChild.set_column(&self, int column) @extern("gtk_grid_layout_child_set_column");

<* Maps to GridLayoutChild::set_column_span *>
extern fn void GridLayoutChild.set_column_span(&self, int span) @extern("gtk_grid_layout_child_set_column_span");

<* Maps to GridLayoutChild::set_row *>
extern fn void GridLayoutChild.set_row(&self, int row) @extern("gtk_grid_layout_child_set_row");

<* Maps to GridLayoutChild::set_row_span *>
extern fn void GridLayoutChild.set_row_span(&self, int span) @extern("gtk_grid_layout_child_set_row_span");


// Class Functions



<* Maps to GtkGridView *>
distinct GridView = void*;

// Class to parent cast.
fn ListBase* GridView.as_ListBase(&self) => (ListBase*)(self);

// Class Constructors

<* Maps to new of GridView *>
extern fn Widget* grid_view_new(SelectionModel* model, ListItemFactory* factory) @extern("gtk_grid_view_new");



// Class Methods

<* Maps to GridView::get_enable_rubberband *>
extern fn bool GridView.get_enable_rubberband(&self, ) @extern("gtk_grid_view_get_enable_rubberband");

<* Maps to GridView::get_factory *>
extern fn ListItemFactory* GridView.get_factory(&self, ) @extern("gtk_grid_view_get_factory");

<* Maps to GridView::get_max_columns *>
extern fn uint GridView.get_max_columns(&self, ) @extern("gtk_grid_view_get_max_columns");

<* Maps to GridView::get_min_columns *>
extern fn uint GridView.get_min_columns(&self, ) @extern("gtk_grid_view_get_min_columns");

<* Maps to GridView::get_model *>
extern fn SelectionModel* GridView.get_model(&self, ) @extern("gtk_grid_view_get_model");

<* Maps to GridView::get_single_click_activate *>
extern fn bool GridView.get_single_click_activate(&self, ) @extern("gtk_grid_view_get_single_click_activate");

<* Maps to GridView::get_tab_behavior *>
extern fn ListTabBehavior GridView.get_tab_behavior(&self, ) @extern("gtk_grid_view_get_tab_behavior");

<* Maps to GridView::scroll_to *>
extern fn void GridView.scroll_to(&self, uint pos, ListScrollFlags flags, ScrollInfo* scroll) @extern("gtk_grid_view_scroll_to");

<* Maps to GridView::set_enable_rubberband *>
extern fn void GridView.set_enable_rubberband(&self, bool enable_rubberband) @extern("gtk_grid_view_set_enable_rubberband");

<* Maps to GridView::set_factory *>
extern fn void GridView.set_factory(&self, ListItemFactory* factory) @extern("gtk_grid_view_set_factory");

<* Maps to GridView::set_max_columns *>
extern fn void GridView.set_max_columns(&self, uint max_columns) @extern("gtk_grid_view_set_max_columns");

<* Maps to GridView::set_min_columns *>
extern fn void GridView.set_min_columns(&self, uint min_columns) @extern("gtk_grid_view_set_min_columns");

<* Maps to GridView::set_model *>
extern fn void GridView.set_model(&self, SelectionModel* model) @extern("gtk_grid_view_set_model");

<* Maps to GridView::set_single_click_activate *>
extern fn void GridView.set_single_click_activate(&self, bool single_click_activate) @extern("gtk_grid_view_set_single_click_activate");

<* Maps to GridView::set_tab_behavior *>
extern fn void GridView.set_tab_behavior(&self, ListTabBehavior tab_behavior) @extern("gtk_grid_view_set_tab_behavior");


// Class Functions



<* Maps to GtkHeaderBar *>
distinct HeaderBar = void*;

// Class to parent cast.
fn Widget* HeaderBar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of HeaderBar *>
extern fn Widget* header_bar_new() @extern("gtk_header_bar_new");



// Class Methods

<* Maps to HeaderBar::get_decoration_layout *>
extern fn ZString HeaderBar.get_decoration_layout(&self, ) @extern("gtk_header_bar_get_decoration_layout");

<* Maps to HeaderBar::get_show_title_buttons *>
extern fn bool HeaderBar.get_show_title_buttons(&self, ) @extern("gtk_header_bar_get_show_title_buttons");

<* Maps to HeaderBar::get_title_widget *>
extern fn Widget* HeaderBar.get_title_widget(&self, ) @extern("gtk_header_bar_get_title_widget");

<* Maps to HeaderBar::pack_end *>
extern fn void HeaderBar.pack_end(&self, Widget* child) @extern("gtk_header_bar_pack_end");

<* Maps to HeaderBar::pack_start *>
extern fn void HeaderBar.pack_start(&self, Widget* child) @extern("gtk_header_bar_pack_start");

<* Maps to HeaderBar::remove *>
extern fn void HeaderBar.remove(&self, Widget* child) @extern("gtk_header_bar_remove");

<* Maps to HeaderBar::set_decoration_layout *>
extern fn void HeaderBar.set_decoration_layout(&self, ZString layout) @extern("gtk_header_bar_set_decoration_layout");

<* Maps to HeaderBar::set_show_title_buttons *>
extern fn void HeaderBar.set_show_title_buttons(&self, bool setting) @extern("gtk_header_bar_set_show_title_buttons");

<* Maps to HeaderBar::set_title_widget *>
extern fn void HeaderBar.set_title_widget(&self, Widget* title_widget) @extern("gtk_header_bar_set_title_widget");


// Class Functions



<* Maps to GtkIMContext *>
distinct IMContext = void*;

// Class to parent cast.
fn gobject::Object* IMContext.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to IMContext::activate_osk *>
extern fn bool IMContext.activate_osk(&self, gdk::Event* event) @extern("gtk_im_context_activate_osk");

<* Maps to IMContext::delete_surrounding *>
extern fn bool IMContext.delete_surrounding(&self, int offset, int n_chars) @extern("gtk_im_context_delete_surrounding");

<* Maps to IMContext::filter_key *>
extern fn bool IMContext.filter_key(&self, bool press, gdk::Surface* surface, gdk::Device* device, uint time, uint keycode, gdk::ModifierType state, int group) @extern("gtk_im_context_filter_key");

<* Maps to IMContext::filter_keypress *>
extern fn bool IMContext.filter_keypress(&self, gdk::Event* event) @extern("gtk_im_context_filter_keypress");

<* Maps to IMContext::focus_in *>
extern fn void IMContext.focus_in(&self, ) @extern("gtk_im_context_focus_in");

<* Maps to IMContext::focus_out *>
extern fn void IMContext.focus_out(&self, ) @extern("gtk_im_context_focus_out");

<* Maps to IMContext::get_preedit_string *>
extern fn void IMContext.get_preedit_string(&self, ZString* str, pango::AttrList* attrs, int* cursor_pos) @extern("gtk_im_context_get_preedit_string");

<* Maps to IMContext::get_surrounding *>
extern fn bool IMContext.get_surrounding(&self, ZString* text, int* cursor_index) @extern("gtk_im_context_get_surrounding");

<* Maps to IMContext::get_surrounding_with_selection *>
extern fn bool IMContext.get_surrounding_with_selection(&self, ZString* text, int* cursor_index, int* anchor_index) @extern("gtk_im_context_get_surrounding_with_selection");

<* Maps to IMContext::reset *>
extern fn void IMContext.reset(&self, ) @extern("gtk_im_context_reset");

<* Maps to IMContext::set_client_widget *>
extern fn void IMContext.set_client_widget(&self, Widget* widget) @extern("gtk_im_context_set_client_widget");

<* Maps to IMContext::set_cursor_location *>
extern fn void IMContext.set_cursor_location(&self, gdk::Rectangle* area) @extern("gtk_im_context_set_cursor_location");

<* Maps to IMContext::set_surrounding *>
extern fn void IMContext.set_surrounding(&self, ZString text, int len, int cursor_index) @extern("gtk_im_context_set_surrounding");

<* Maps to IMContext::set_surrounding_with_selection *>
extern fn void IMContext.set_surrounding_with_selection(&self, ZString text, int len, int cursor_index, int anchor_index) @extern("gtk_im_context_set_surrounding_with_selection");

<* Maps to IMContext::set_use_preedit *>
extern fn void IMContext.set_use_preedit(&self, bool use_preedit) @extern("gtk_im_context_set_use_preedit");


// Class Functions



<* Maps to GtkIMContextSimple *>
distinct IMContextSimple = void*;

// Class to parent cast.
fn IMContext* IMContextSimple.as_IMContext(&self) => (IMContext*)(self);

// Class Constructors

<* Maps to new of IMContextSimple *>
extern fn IMContext* im_context_simple_new() @extern("gtk_im_context_simple_new");



// Class Methods

<* Maps to IMContextSimple::add_compose_file *>
extern fn void IMContextSimple.add_compose_file(&self, ZString compose_file) @extern("gtk_im_context_simple_add_compose_file");

<* Maps to IMContextSimple::add_table *>
extern fn void IMContextSimple.add_table(&self, ushort data, int max_seq_len, int n_seqs) @extern("gtk_im_context_simple_add_table");


// Class Functions



<* Maps to GtkIMMulticontext *>
distinct IMMulticontext = void*;

// Class to parent cast.
fn IMContext* IMMulticontext.as_IMContext(&self) => (IMContext*)(self);

// Class Constructors

<* Maps to new of IMMulticontext *>
extern fn IMContext* im_multicontext_new() @extern("gtk_im_multicontext_new");



// Class Methods

<* Maps to IMMulticontext::get_context_id *>
extern fn ZString IMMulticontext.get_context_id(&self, ) @extern("gtk_im_multicontext_get_context_id");

<* Maps to IMMulticontext::set_context_id *>
extern fn void IMMulticontext.set_context_id(&self, ZString context_id) @extern("gtk_im_multicontext_set_context_id");


// Class Functions



<* Maps to GtkIconPaintable *>
distinct IconPaintable = void*;

// Class to parent cast.
fn gobject::Object* IconPaintable.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_for_file of IconPaintable *>
extern fn IconPaintable* icon_paintable_new_for_file(gio::File* file, int size, int scale) @extern("gtk_icon_paintable_new_for_file");



// Class Methods

<* Maps to IconPaintable::get_file *>
extern fn gio::File* IconPaintable.get_file(&self, ) @extern("gtk_icon_paintable_get_file");

<* Maps to IconPaintable::get_icon_name *>
extern fn ZString IconPaintable.get_icon_name(&self, ) @extern("gtk_icon_paintable_get_icon_name");

<* Maps to IconPaintable::is_symbolic *>
extern fn bool IconPaintable.is_symbolic(&self, ) @extern("gtk_icon_paintable_is_symbolic");


// Class Functions



<* Maps to GtkIconTheme *>
distinct IconTheme = void*;

// Class to parent cast.
fn gobject::Object* IconTheme.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of IconTheme *>
extern fn IconTheme* icon_theme_new() @extern("gtk_icon_theme_new");



// Class Methods

<* Maps to IconTheme::add_resource_path *>
extern fn void IconTheme.add_resource_path(&self, ZString path) @extern("gtk_icon_theme_add_resource_path");

<* Maps to IconTheme::add_search_path *>
extern fn void IconTheme.add_search_path(&self, ZString path) @extern("gtk_icon_theme_add_search_path");

<* Maps to IconTheme::get_display *>
extern fn gdk::Display* IconTheme.get_display(&self, ) @extern("gtk_icon_theme_get_display");

<* Maps to IconTheme::get_icon_names *>
extern fn ZString IconTheme.get_icon_names(&self, ) @extern("gtk_icon_theme_get_icon_names");

<* Maps to IconTheme::get_icon_sizes *>
extern fn int IconTheme.get_icon_sizes(&self, ZString icon_name) @extern("gtk_icon_theme_get_icon_sizes");

<* Maps to IconTheme::get_resource_path *>
extern fn ZString IconTheme.get_resource_path(&self, ) @extern("gtk_icon_theme_get_resource_path");

<* Maps to IconTheme::get_search_path *>
extern fn ZString IconTheme.get_search_path(&self, ) @extern("gtk_icon_theme_get_search_path");

<* Maps to IconTheme::get_theme_name *>
extern fn ZString* IconTheme.get_theme_name(&self, ) @extern("gtk_icon_theme_get_theme_name");

<* Maps to IconTheme::has_gicon *>
extern fn bool IconTheme.has_gicon(&self, gio::Icon* gicon) @extern("gtk_icon_theme_has_gicon");

<* Maps to IconTheme::has_icon *>
extern fn bool IconTheme.has_icon(&self, ZString icon_name) @extern("gtk_icon_theme_has_icon");

<* Maps to IconTheme::lookup_by_gicon *>
extern fn IconPaintable* IconTheme.lookup_by_gicon(&self, gio::Icon* icon, int size, int scale, TextDirection direction, IconLookupFlags flags) @extern("gtk_icon_theme_lookup_by_gicon");

<* Maps to IconTheme::lookup_icon *>
extern fn IconPaintable* IconTheme.lookup_icon(&self, ZString icon_name, ZString* fallbacks, int size, int scale, TextDirection direction, IconLookupFlags flags) @extern("gtk_icon_theme_lookup_icon");

<* Maps to IconTheme::set_resource_path *>
extern fn void IconTheme.set_resource_path(&self, ZString path) @extern("gtk_icon_theme_set_resource_path");

<* Maps to IconTheme::set_search_path *>
extern fn void IconTheme.set_search_path(&self, ZString path) @extern("gtk_icon_theme_set_search_path");

<* Maps to IconTheme::set_theme_name *>
extern fn void IconTheme.set_theme_name(&self, ZString theme_name) @extern("gtk_icon_theme_set_theme_name");


// Class Functions

<* Maps to get_for_display of IconTheme *>
extern fn IconTheme* icon_theme_get_for_display(gdk::Display* display) @extern("gtk_icon_theme_get_for_display");



<* Maps to GtkIconView *>
distinct IconView = void*;

// Class to parent cast.
fn Widget* IconView.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of IconView *>
extern fn Widget* icon_view_new() @extern("gtk_icon_view_new");

<* Maps to new_with_area of IconView *>
extern fn Widget* icon_view_new_with_area(CellArea* area) @extern("gtk_icon_view_new_with_area");

<* Maps to new_with_model of IconView *>
extern fn Widget* icon_view_new_with_model(TreeModel* model) @extern("gtk_icon_view_new_with_model");



// Class Methods

<* Maps to IconView::create_drag_icon *>
extern fn gdk::Paintable* IconView.create_drag_icon(&self, TreePath* path) @extern("gtk_icon_view_create_drag_icon");

<* Maps to IconView::enable_model_drag_dest *>
extern fn void IconView.enable_model_drag_dest(&self, gdk::ContentFormats* formats, gdk::DragAction actions) @extern("gtk_icon_view_enable_model_drag_dest");

<* Maps to IconView::enable_model_drag_source *>
extern fn void IconView.enable_model_drag_source(&self, gdk::ModifierType start_button_mask, gdk::ContentFormats* formats, gdk::DragAction actions) @extern("gtk_icon_view_enable_model_drag_source");

<* Maps to IconView::get_activate_on_single_click *>
extern fn bool IconView.get_activate_on_single_click(&self, ) @extern("gtk_icon_view_get_activate_on_single_click");

<* Maps to IconView::get_cell_rect *>
extern fn bool IconView.get_cell_rect(&self, TreePath* path, CellRenderer* cell, gdk::Rectangle* rect) @extern("gtk_icon_view_get_cell_rect");

<* Maps to IconView::get_column_spacing *>
extern fn int IconView.get_column_spacing(&self, ) @extern("gtk_icon_view_get_column_spacing");

<* Maps to IconView::get_columns *>
extern fn int IconView.get_columns(&self, ) @extern("gtk_icon_view_get_columns");

<* Maps to IconView::get_cursor *>
extern fn bool IconView.get_cursor(&self, TreePath* path, CellRenderer* cell) @extern("gtk_icon_view_get_cursor");

<* Maps to IconView::get_dest_item_at_pos *>
extern fn bool IconView.get_dest_item_at_pos(&self, int drag_x, int drag_y, TreePath* path, IconViewDropPosition* pos) @extern("gtk_icon_view_get_dest_item_at_pos");

<* Maps to IconView::get_drag_dest_item *>
extern fn void IconView.get_drag_dest_item(&self, TreePath* path, IconViewDropPosition* pos) @extern("gtk_icon_view_get_drag_dest_item");

<* Maps to IconView::get_item_at_pos *>
extern fn bool IconView.get_item_at_pos(&self, int x, int y, TreePath* path, CellRenderer* cell) @extern("gtk_icon_view_get_item_at_pos");

<* Maps to IconView::get_item_column *>
extern fn int IconView.get_item_column(&self, TreePath* path) @extern("gtk_icon_view_get_item_column");

<* Maps to IconView::get_item_orientation *>
extern fn Orientation IconView.get_item_orientation(&self, ) @extern("gtk_icon_view_get_item_orientation");

<* Maps to IconView::get_item_padding *>
extern fn int IconView.get_item_padding(&self, ) @extern("gtk_icon_view_get_item_padding");

<* Maps to IconView::get_item_row *>
extern fn int IconView.get_item_row(&self, TreePath* path) @extern("gtk_icon_view_get_item_row");

<* Maps to IconView::get_item_width *>
extern fn int IconView.get_item_width(&self, ) @extern("gtk_icon_view_get_item_width");

<* Maps to IconView::get_margin *>
extern fn int IconView.get_margin(&self, ) @extern("gtk_icon_view_get_margin");

<* Maps to IconView::get_markup_column *>
extern fn int IconView.get_markup_column(&self, ) @extern("gtk_icon_view_get_markup_column");

<* Maps to IconView::get_model *>
extern fn TreeModel* IconView.get_model(&self, ) @extern("gtk_icon_view_get_model");

<* Maps to IconView::get_path_at_pos *>
extern fn TreePath* IconView.get_path_at_pos(&self, int x, int y) @extern("gtk_icon_view_get_path_at_pos");

<* Maps to IconView::get_pixbuf_column *>
extern fn int IconView.get_pixbuf_column(&self, ) @extern("gtk_icon_view_get_pixbuf_column");

<* Maps to IconView::get_reorderable *>
extern fn bool IconView.get_reorderable(&self, ) @extern("gtk_icon_view_get_reorderable");

<* Maps to IconView::get_row_spacing *>
extern fn int IconView.get_row_spacing(&self, ) @extern("gtk_icon_view_get_row_spacing");

<* Maps to IconView::get_selected_items *>
extern fn glib::List* IconView.get_selected_items(&self, ) @extern("gtk_icon_view_get_selected_items");

<* Maps to IconView::get_selection_mode *>
extern fn SelectionMode IconView.get_selection_mode(&self, ) @extern("gtk_icon_view_get_selection_mode");

<* Maps to IconView::get_spacing *>
extern fn int IconView.get_spacing(&self, ) @extern("gtk_icon_view_get_spacing");

<* Maps to IconView::get_text_column *>
extern fn int IconView.get_text_column(&self, ) @extern("gtk_icon_view_get_text_column");

<* Maps to IconView::get_tooltip_column *>
extern fn int IconView.get_tooltip_column(&self, ) @extern("gtk_icon_view_get_tooltip_column");

<* Maps to IconView::get_tooltip_context *>
extern fn bool IconView.get_tooltip_context(&self, int x, int y, bool keyboard_tip, TreeModel* model, TreePath* path, TreeIter* iter) @extern("gtk_icon_view_get_tooltip_context");

<* Maps to IconView::get_visible_range *>
extern fn bool IconView.get_visible_range(&self, TreePath* start_path, TreePath* end_path) @extern("gtk_icon_view_get_visible_range");

<* Maps to IconView::item_activated *>
extern fn void IconView.item_activated(&self, TreePath* path) @extern("gtk_icon_view_item_activated");

<* Maps to IconView::path_is_selected *>
extern fn bool IconView.path_is_selected(&self, TreePath* path) @extern("gtk_icon_view_path_is_selected");

<* Maps to IconView::scroll_to_path *>
extern fn void IconView.scroll_to_path(&self, TreePath* path, bool use_align, float row_align, float col_align) @extern("gtk_icon_view_scroll_to_path");

<* Maps to IconView::select_all *>
extern fn void IconView.select_all(&self, ) @extern("gtk_icon_view_select_all");

<* Maps to IconView::select_path *>
extern fn void IconView.select_path(&self, TreePath* path) @extern("gtk_icon_view_select_path");

<* Maps to IconView::selected_foreach *>
extern fn void IconView.selected_foreach(&self, IconViewForeachFunc func, void* data) @extern("gtk_icon_view_selected_foreach");

<* Maps to IconView::set_activate_on_single_click *>
extern fn void IconView.set_activate_on_single_click(&self, bool single) @extern("gtk_icon_view_set_activate_on_single_click");

<* Maps to IconView::set_column_spacing *>
extern fn void IconView.set_column_spacing(&self, int column_spacing) @extern("gtk_icon_view_set_column_spacing");

<* Maps to IconView::set_columns *>
extern fn void IconView.set_columns(&self, int columns) @extern("gtk_icon_view_set_columns");

<* Maps to IconView::set_cursor *>
extern fn void IconView.set_cursor(&self, TreePath* path, CellRenderer* cell, bool start_editing) @extern("gtk_icon_view_set_cursor");

<* Maps to IconView::set_drag_dest_item *>
extern fn void IconView.set_drag_dest_item(&self, TreePath* path, IconViewDropPosition pos) @extern("gtk_icon_view_set_drag_dest_item");

<* Maps to IconView::set_item_orientation *>
extern fn void IconView.set_item_orientation(&self, Orientation orientation) @extern("gtk_icon_view_set_item_orientation");

<* Maps to IconView::set_item_padding *>
extern fn void IconView.set_item_padding(&self, int item_padding) @extern("gtk_icon_view_set_item_padding");

<* Maps to IconView::set_item_width *>
extern fn void IconView.set_item_width(&self, int item_width) @extern("gtk_icon_view_set_item_width");

<* Maps to IconView::set_margin *>
extern fn void IconView.set_margin(&self, int margin) @extern("gtk_icon_view_set_margin");

<* Maps to IconView::set_markup_column *>
extern fn void IconView.set_markup_column(&self, int column) @extern("gtk_icon_view_set_markup_column");

<* Maps to IconView::set_model *>
extern fn void IconView.set_model(&self, TreeModel* model) @extern("gtk_icon_view_set_model");

<* Maps to IconView::set_pixbuf_column *>
extern fn void IconView.set_pixbuf_column(&self, int column) @extern("gtk_icon_view_set_pixbuf_column");

<* Maps to IconView::set_reorderable *>
extern fn void IconView.set_reorderable(&self, bool reorderable) @extern("gtk_icon_view_set_reorderable");

<* Maps to IconView::set_row_spacing *>
extern fn void IconView.set_row_spacing(&self, int row_spacing) @extern("gtk_icon_view_set_row_spacing");

<* Maps to IconView::set_selection_mode *>
extern fn void IconView.set_selection_mode(&self, SelectionMode mode) @extern("gtk_icon_view_set_selection_mode");

<* Maps to IconView::set_spacing *>
extern fn void IconView.set_spacing(&self, int spacing) @extern("gtk_icon_view_set_spacing");

<* Maps to IconView::set_text_column *>
extern fn void IconView.set_text_column(&self, int column) @extern("gtk_icon_view_set_text_column");

<* Maps to IconView::set_tooltip_cell *>
extern fn void IconView.set_tooltip_cell(&self, Tooltip* tooltip, TreePath* path, CellRenderer* cell) @extern("gtk_icon_view_set_tooltip_cell");

<* Maps to IconView::set_tooltip_column *>
extern fn void IconView.set_tooltip_column(&self, int column) @extern("gtk_icon_view_set_tooltip_column");

<* Maps to IconView::set_tooltip_item *>
extern fn void IconView.set_tooltip_item(&self, Tooltip* tooltip, TreePath* path) @extern("gtk_icon_view_set_tooltip_item");

<* Maps to IconView::unselect_all *>
extern fn void IconView.unselect_all(&self, ) @extern("gtk_icon_view_unselect_all");

<* Maps to IconView::unselect_path *>
extern fn void IconView.unselect_path(&self, TreePath* path) @extern("gtk_icon_view_unselect_path");

<* Maps to IconView::unset_model_drag_dest *>
extern fn void IconView.unset_model_drag_dest(&self, ) @extern("gtk_icon_view_unset_model_drag_dest");

<* Maps to IconView::unset_model_drag_source *>
extern fn void IconView.unset_model_drag_source(&self, ) @extern("gtk_icon_view_unset_model_drag_source");


// Class Functions



<* Maps to GtkImage *>
distinct Image = void*;

// Class to parent cast.
fn Widget* Image.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Image *>
extern fn Widget* image_new() @extern("gtk_image_new");

<* Maps to new_from_file of Image *>
extern fn Widget* image_new_from_file(ZString filename) @extern("gtk_image_new_from_file");

<* Maps to new_from_gicon of Image *>
extern fn Widget* image_new_from_gicon(gio::Icon* icon) @extern("gtk_image_new_from_gicon");

<* Maps to new_from_icon_name of Image *>
extern fn Widget* image_new_from_icon_name(ZString icon_name) @extern("gtk_image_new_from_icon_name");

<* Maps to new_from_paintable of Image *>
extern fn Widget* image_new_from_paintable(gdk::Paintable* paintable) @extern("gtk_image_new_from_paintable");

<* Maps to new_from_pixbuf of Image *>
extern fn Widget* image_new_from_pixbuf(gdkpixbuf::Pixbuf* pixbuf) @extern("gtk_image_new_from_pixbuf");

<* Maps to new_from_resource of Image *>
extern fn Widget* image_new_from_resource(ZString resource_path) @extern("gtk_image_new_from_resource");



// Class Methods

<* Maps to Image::clear *>
extern fn void Image.clear(&self, ) @extern("gtk_image_clear");

<* Maps to Image::get_gicon *>
extern fn gio::Icon* Image.get_gicon(&self, ) @extern("gtk_image_get_gicon");

<* Maps to Image::get_icon_name *>
extern fn ZString Image.get_icon_name(&self, ) @extern("gtk_image_get_icon_name");

<* Maps to Image::get_icon_size *>
extern fn IconSize Image.get_icon_size(&self, ) @extern("gtk_image_get_icon_size");

<* Maps to Image::get_paintable *>
extern fn gdk::Paintable* Image.get_paintable(&self, ) @extern("gtk_image_get_paintable");

<* Maps to Image::get_pixel_size *>
extern fn int Image.get_pixel_size(&self, ) @extern("gtk_image_get_pixel_size");

<* Maps to Image::get_storage_type *>
extern fn ImageType Image.get_storage_type(&self, ) @extern("gtk_image_get_storage_type");

<* Maps to Image::set_from_file *>
extern fn void Image.set_from_file(&self, ZString filename) @extern("gtk_image_set_from_file");

<* Maps to Image::set_from_gicon *>
extern fn void Image.set_from_gicon(&self, gio::Icon* icon) @extern("gtk_image_set_from_gicon");

<* Maps to Image::set_from_icon_name *>
extern fn void Image.set_from_icon_name(&self, ZString icon_name) @extern("gtk_image_set_from_icon_name");

<* Maps to Image::set_from_paintable *>
extern fn void Image.set_from_paintable(&self, gdk::Paintable* paintable) @extern("gtk_image_set_from_paintable");

<* Maps to Image::set_from_pixbuf *>
extern fn void Image.set_from_pixbuf(&self, gdkpixbuf::Pixbuf* pixbuf) @extern("gtk_image_set_from_pixbuf");

<* Maps to Image::set_from_resource *>
extern fn void Image.set_from_resource(&self, ZString resource_path) @extern("gtk_image_set_from_resource");

<* Maps to Image::set_icon_size *>
extern fn void Image.set_icon_size(&self, IconSize icon_size) @extern("gtk_image_set_icon_size");

<* Maps to Image::set_pixel_size *>
extern fn void Image.set_pixel_size(&self, int pixel_size) @extern("gtk_image_set_pixel_size");


// Class Functions



<* Maps to GtkInfoBar *>
distinct InfoBar = void*;

// Class to parent cast.
fn Widget* InfoBar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of InfoBar *>
extern fn Widget* info_bar_new() @extern("gtk_info_bar_new");

<* Maps to new_with_buttons of InfoBar *>
extern fn Widget* info_bar_new_with_buttons(ZString first_button_text, any rest) @extern("gtk_info_bar_new_with_buttons");



// Class Methods

<* Maps to InfoBar::add_action_widget *>
extern fn void InfoBar.add_action_widget(&self, Widget* child, int response_id) @extern("gtk_info_bar_add_action_widget");

<* Maps to InfoBar::add_button *>
extern fn Button* InfoBar.add_button(&self, ZString button_text, int response_id) @extern("gtk_info_bar_add_button");

<* Maps to InfoBar::add_buttons *>
extern fn void InfoBar.add_buttons(&self, ZString first_button_text, any rest) @extern("gtk_info_bar_add_buttons");

<* Maps to InfoBar::add_child *>
extern fn void InfoBar.add_child(&self, Widget* widget) @extern("gtk_info_bar_add_child");

<* Maps to InfoBar::get_message_type *>
extern fn MessageType InfoBar.get_message_type(&self, ) @extern("gtk_info_bar_get_message_type");

<* Maps to InfoBar::get_revealed *>
extern fn bool InfoBar.get_revealed(&self, ) @extern("gtk_info_bar_get_revealed");

<* Maps to InfoBar::get_show_close_button *>
extern fn bool InfoBar.get_show_close_button(&self, ) @extern("gtk_info_bar_get_show_close_button");

<* Maps to InfoBar::remove_action_widget *>
extern fn void InfoBar.remove_action_widget(&self, Widget* widget) @extern("gtk_info_bar_remove_action_widget");

<* Maps to InfoBar::remove_child *>
extern fn void InfoBar.remove_child(&self, Widget* widget) @extern("gtk_info_bar_remove_child");

<* Maps to InfoBar::response *>
extern fn void InfoBar.response(&self, int response_id) @extern("gtk_info_bar_response");

<* Maps to InfoBar::set_default_response *>
extern fn void InfoBar.set_default_response(&self, int response_id) @extern("gtk_info_bar_set_default_response");

<* Maps to InfoBar::set_message_type *>
extern fn void InfoBar.set_message_type(&self, MessageType message_type) @extern("gtk_info_bar_set_message_type");

<* Maps to InfoBar::set_response_sensitive *>
extern fn void InfoBar.set_response_sensitive(&self, int response_id, bool setting) @extern("gtk_info_bar_set_response_sensitive");

<* Maps to InfoBar::set_revealed *>
extern fn void InfoBar.set_revealed(&self, bool revealed) @extern("gtk_info_bar_set_revealed");

<* Maps to InfoBar::set_show_close_button *>
extern fn void InfoBar.set_show_close_button(&self, bool setting) @extern("gtk_info_bar_set_show_close_button");


// Class Functions



<* Maps to GtkInscription *>
distinct Inscription = void*;

// Class to parent cast.
fn Widget* Inscription.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Inscription *>
extern fn Widget* inscription_new(ZString text) @extern("gtk_inscription_new");



// Class Methods

<* Maps to Inscription::get_attributes *>
extern fn pango::AttrList* Inscription.get_attributes(&self, ) @extern("gtk_inscription_get_attributes");

<* Maps to Inscription::get_min_chars *>
extern fn uint Inscription.get_min_chars(&self, ) @extern("gtk_inscription_get_min_chars");

<* Maps to Inscription::get_min_lines *>
extern fn uint Inscription.get_min_lines(&self, ) @extern("gtk_inscription_get_min_lines");

<* Maps to Inscription::get_nat_chars *>
extern fn uint Inscription.get_nat_chars(&self, ) @extern("gtk_inscription_get_nat_chars");

<* Maps to Inscription::get_nat_lines *>
extern fn uint Inscription.get_nat_lines(&self, ) @extern("gtk_inscription_get_nat_lines");

<* Maps to Inscription::get_text *>
extern fn ZString Inscription.get_text(&self, ) @extern("gtk_inscription_get_text");

<* Maps to Inscription::get_text_overflow *>
extern fn InscriptionOverflow Inscription.get_text_overflow(&self, ) @extern("gtk_inscription_get_text_overflow");

<* Maps to Inscription::get_wrap_mode *>
extern fn pango::WrapMode Inscription.get_wrap_mode(&self, ) @extern("gtk_inscription_get_wrap_mode");

<* Maps to Inscription::get_xalign *>
extern fn float Inscription.get_xalign(&self, ) @extern("gtk_inscription_get_xalign");

<* Maps to Inscription::get_yalign *>
extern fn float Inscription.get_yalign(&self, ) @extern("gtk_inscription_get_yalign");

<* Maps to Inscription::set_attributes *>
extern fn void Inscription.set_attributes(&self, pango::AttrList* attrs) @extern("gtk_inscription_set_attributes");

<* Maps to Inscription::set_markup *>
extern fn void Inscription.set_markup(&self, ZString markup) @extern("gtk_inscription_set_markup");

<* Maps to Inscription::set_min_chars *>
extern fn void Inscription.set_min_chars(&self, uint min_chars) @extern("gtk_inscription_set_min_chars");

<* Maps to Inscription::set_min_lines *>
extern fn void Inscription.set_min_lines(&self, uint min_lines) @extern("gtk_inscription_set_min_lines");

<* Maps to Inscription::set_nat_chars *>
extern fn void Inscription.set_nat_chars(&self, uint nat_chars) @extern("gtk_inscription_set_nat_chars");

<* Maps to Inscription::set_nat_lines *>
extern fn void Inscription.set_nat_lines(&self, uint nat_lines) @extern("gtk_inscription_set_nat_lines");

<* Maps to Inscription::set_text *>
extern fn void Inscription.set_text(&self, ZString text) @extern("gtk_inscription_set_text");

<* Maps to Inscription::set_text_overflow *>
extern fn void Inscription.set_text_overflow(&self, InscriptionOverflow overflow) @extern("gtk_inscription_set_text_overflow");

<* Maps to Inscription::set_wrap_mode *>
extern fn void Inscription.set_wrap_mode(&self, pango::WrapMode wrap_mode) @extern("gtk_inscription_set_wrap_mode");

<* Maps to Inscription::set_xalign *>
extern fn void Inscription.set_xalign(&self, float xalign) @extern("gtk_inscription_set_xalign");

<* Maps to Inscription::set_yalign *>
extern fn void Inscription.set_yalign(&self, float yalign) @extern("gtk_inscription_set_yalign");


// Class Functions



<* Maps to GtkKeyvalTrigger *>
distinct KeyvalTrigger = void*;

// Class to parent cast.
fn ShortcutTrigger* KeyvalTrigger.as_ShortcutTrigger(&self) => (ShortcutTrigger*)(self);

// Class Constructors

<* Maps to new of KeyvalTrigger *>
extern fn ShortcutTrigger* keyval_trigger_new(uint keyval, gdk::ModifierType modifiers) @extern("gtk_keyval_trigger_new");



// Class Methods

<* Maps to KeyvalTrigger::get_keyval *>
extern fn uint KeyvalTrigger.get_keyval(&self, ) @extern("gtk_keyval_trigger_get_keyval");

<* Maps to KeyvalTrigger::get_modifiers *>
extern fn gdk::ModifierType KeyvalTrigger.get_modifiers(&self, ) @extern("gtk_keyval_trigger_get_modifiers");


// Class Functions



<* Maps to GtkLabel *>
distinct Label = void*;

// Class to parent cast.
fn Widget* Label.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Label *>
extern fn Widget* label_new(ZString str) @extern("gtk_label_new");

<* Maps to new_with_mnemonic of Label *>
extern fn Widget* label_new_with_mnemonic(ZString str) @extern("gtk_label_new_with_mnemonic");



// Class Methods

<* Maps to Label::get_attributes *>
extern fn pango::AttrList* Label.get_attributes(&self, ) @extern("gtk_label_get_attributes");

<* Maps to Label::get_current_uri *>
extern fn ZString Label.get_current_uri(&self, ) @extern("gtk_label_get_current_uri");

<* Maps to Label::get_ellipsize *>
extern fn pango::EllipsizeMode Label.get_ellipsize(&self, ) @extern("gtk_label_get_ellipsize");

<* Maps to Label::get_extra_menu *>
extern fn gio::MenuModel* Label.get_extra_menu(&self, ) @extern("gtk_label_get_extra_menu");

<* Maps to Label::get_justify *>
extern fn Justification Label.get_justify(&self, ) @extern("gtk_label_get_justify");

<* Maps to Label::get_label *>
extern fn ZString Label.get_label(&self, ) @extern("gtk_label_get_label");

<* Maps to Label::get_layout *>
extern fn pango::Layout* Label.get_layout(&self, ) @extern("gtk_label_get_layout");

<* Maps to Label::get_layout_offsets *>
extern fn void Label.get_layout_offsets(&self, int* x, int* y) @extern("gtk_label_get_layout_offsets");

<* Maps to Label::get_lines *>
extern fn int Label.get_lines(&self, ) @extern("gtk_label_get_lines");

<* Maps to Label::get_max_width_chars *>
extern fn int Label.get_max_width_chars(&self, ) @extern("gtk_label_get_max_width_chars");

<* Maps to Label::get_mnemonic_keyval *>
extern fn uint Label.get_mnemonic_keyval(&self, ) @extern("gtk_label_get_mnemonic_keyval");

<* Maps to Label::get_mnemonic_widget *>
extern fn Widget* Label.get_mnemonic_widget(&self, ) @extern("gtk_label_get_mnemonic_widget");

<* Maps to Label::get_natural_wrap_mode *>
extern fn NaturalWrapMode Label.get_natural_wrap_mode(&self, ) @extern("gtk_label_get_natural_wrap_mode");

<* Maps to Label::get_selectable *>
extern fn bool Label.get_selectable(&self, ) @extern("gtk_label_get_selectable");

<* Maps to Label::get_selection_bounds *>
extern fn bool Label.get_selection_bounds(&self, int* start, int* end) @extern("gtk_label_get_selection_bounds");

<* Maps to Label::get_single_line_mode *>
extern fn bool Label.get_single_line_mode(&self, ) @extern("gtk_label_get_single_line_mode");

<* Maps to Label::get_tabs *>
extern fn pango::TabArray* Label.get_tabs(&self, ) @extern("gtk_label_get_tabs");

<* Maps to Label::get_text *>
extern fn ZString Label.get_text(&self, ) @extern("gtk_label_get_text");

<* Maps to Label::get_use_markup *>
extern fn bool Label.get_use_markup(&self, ) @extern("gtk_label_get_use_markup");

<* Maps to Label::get_use_underline *>
extern fn bool Label.get_use_underline(&self, ) @extern("gtk_label_get_use_underline");

<* Maps to Label::get_width_chars *>
extern fn int Label.get_width_chars(&self, ) @extern("gtk_label_get_width_chars");

<* Maps to Label::get_wrap *>
extern fn bool Label.get_wrap(&self, ) @extern("gtk_label_get_wrap");

<* Maps to Label::get_wrap_mode *>
extern fn pango::WrapMode Label.get_wrap_mode(&self, ) @extern("gtk_label_get_wrap_mode");

<* Maps to Label::get_xalign *>
extern fn float Label.get_xalign(&self, ) @extern("gtk_label_get_xalign");

<* Maps to Label::get_yalign *>
extern fn float Label.get_yalign(&self, ) @extern("gtk_label_get_yalign");

<* Maps to Label::select_region *>
extern fn void Label.select_region(&self, int start_offset, int end_offset) @extern("gtk_label_select_region");

<* Maps to Label::set_attributes *>
extern fn void Label.set_attributes(&self, pango::AttrList* attrs) @extern("gtk_label_set_attributes");

<* Maps to Label::set_ellipsize *>
extern fn void Label.set_ellipsize(&self, pango::EllipsizeMode mode) @extern("gtk_label_set_ellipsize");

<* Maps to Label::set_extra_menu *>
extern fn void Label.set_extra_menu(&self, gio::MenuModel* model) @extern("gtk_label_set_extra_menu");

<* Maps to Label::set_justify *>
extern fn void Label.set_justify(&self, Justification jtype) @extern("gtk_label_set_justify");

<* Maps to Label::set_label *>
extern fn void Label.set_label(&self, ZString str) @extern("gtk_label_set_label");

<* Maps to Label::set_lines *>
extern fn void Label.set_lines(&self, int lines) @extern("gtk_label_set_lines");

<* Maps to Label::set_markup *>
extern fn void Label.set_markup(&self, ZString str) @extern("gtk_label_set_markup");

<* Maps to Label::set_markup_with_mnemonic *>
extern fn void Label.set_markup_with_mnemonic(&self, ZString str) @extern("gtk_label_set_markup_with_mnemonic");

<* Maps to Label::set_max_width_chars *>
extern fn void Label.set_max_width_chars(&self, int n_chars) @extern("gtk_label_set_max_width_chars");

<* Maps to Label::set_mnemonic_widget *>
extern fn void Label.set_mnemonic_widget(&self, Widget* widget) @extern("gtk_label_set_mnemonic_widget");

<* Maps to Label::set_natural_wrap_mode *>
extern fn void Label.set_natural_wrap_mode(&self, NaturalWrapMode wrap_mode) @extern("gtk_label_set_natural_wrap_mode");

<* Maps to Label::set_selectable *>
extern fn void Label.set_selectable(&self, bool setting) @extern("gtk_label_set_selectable");

<* Maps to Label::set_single_line_mode *>
extern fn void Label.set_single_line_mode(&self, bool single_line_mode) @extern("gtk_label_set_single_line_mode");

<* Maps to Label::set_tabs *>
extern fn void Label.set_tabs(&self, pango::TabArray* tabs) @extern("gtk_label_set_tabs");

<* Maps to Label::set_text *>
extern fn void Label.set_text(&self, ZString str) @extern("gtk_label_set_text");

<* Maps to Label::set_text_with_mnemonic *>
extern fn void Label.set_text_with_mnemonic(&self, ZString str) @extern("gtk_label_set_text_with_mnemonic");

<* Maps to Label::set_use_markup *>
extern fn void Label.set_use_markup(&self, bool setting) @extern("gtk_label_set_use_markup");

<* Maps to Label::set_use_underline *>
extern fn void Label.set_use_underline(&self, bool setting) @extern("gtk_label_set_use_underline");

<* Maps to Label::set_width_chars *>
extern fn void Label.set_width_chars(&self, int n_chars) @extern("gtk_label_set_width_chars");

<* Maps to Label::set_wrap *>
extern fn void Label.set_wrap(&self, bool wrap) @extern("gtk_label_set_wrap");

<* Maps to Label::set_wrap_mode *>
extern fn void Label.set_wrap_mode(&self, pango::WrapMode wrap_mode) @extern("gtk_label_set_wrap_mode");

<* Maps to Label::set_xalign *>
extern fn void Label.set_xalign(&self, float xalign) @extern("gtk_label_set_xalign");

<* Maps to Label::set_yalign *>
extern fn void Label.set_yalign(&self, float yalign) @extern("gtk_label_set_yalign");


// Class Functions



<* Maps to GtkLayoutChild *>
distinct LayoutChild = void*;

// Class to parent cast.
fn gobject::Object* LayoutChild.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to LayoutChild::get_child_widget *>
extern fn Widget* LayoutChild.get_child_widget(&self, ) @extern("gtk_layout_child_get_child_widget");

<* Maps to LayoutChild::get_layout_manager *>
extern fn LayoutManager* LayoutChild.get_layout_manager(&self, ) @extern("gtk_layout_child_get_layout_manager");


// Class Functions



<* Maps to GtkLayoutManager *>
distinct LayoutManager = void*;

// Class to parent cast.
fn gobject::Object* LayoutManager.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to LayoutManager::allocate *>
extern fn void LayoutManager.allocate(&self, Widget* widget, int width, int height, int baseline) @extern("gtk_layout_manager_allocate");

<* Maps to LayoutManager::get_layout_child *>
extern fn LayoutChild* LayoutManager.get_layout_child(&self, Widget* child) @extern("gtk_layout_manager_get_layout_child");

<* Maps to LayoutManager::get_request_mode *>
extern fn SizeRequestMode LayoutManager.get_request_mode(&self, ) @extern("gtk_layout_manager_get_request_mode");

<* Maps to LayoutManager::get_widget *>
extern fn Widget* LayoutManager.get_widget(&self, ) @extern("gtk_layout_manager_get_widget");

<* Maps to LayoutManager::layout_changed *>
extern fn void LayoutManager.layout_changed(&self, ) @extern("gtk_layout_manager_layout_changed");

<* Maps to LayoutManager::measure *>
extern fn void LayoutManager.measure(&self, Widget* widget, Orientation orientation, int for_size, int* minimum, int* natural, int* minimum_baseline, int* natural_baseline) @extern("gtk_layout_manager_measure");


// Class Functions



<* Maps to GtkLevelBar *>
distinct LevelBar = void*;

// Class to parent cast.
fn Widget* LevelBar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of LevelBar *>
extern fn Widget* level_bar_new() @extern("gtk_level_bar_new");

<* Maps to new_for_interval of LevelBar *>
extern fn Widget* level_bar_new_for_interval(double min_value, double max_value) @extern("gtk_level_bar_new_for_interval");



// Class Methods

<* Maps to LevelBar::add_offset_value *>
extern fn void LevelBar.add_offset_value(&self, ZString name, double value) @extern("gtk_level_bar_add_offset_value");

<* Maps to LevelBar::get_inverted *>
extern fn bool LevelBar.get_inverted(&self, ) @extern("gtk_level_bar_get_inverted");

<* Maps to LevelBar::get_max_value *>
extern fn double LevelBar.get_max_value(&self, ) @extern("gtk_level_bar_get_max_value");

<* Maps to LevelBar::get_min_value *>
extern fn double LevelBar.get_min_value(&self, ) @extern("gtk_level_bar_get_min_value");

<* Maps to LevelBar::get_mode *>
extern fn LevelBarMode LevelBar.get_mode(&self, ) @extern("gtk_level_bar_get_mode");

<* Maps to LevelBar::get_offset_value *>
extern fn bool LevelBar.get_offset_value(&self, ZString name, double* value) @extern("gtk_level_bar_get_offset_value");

<* Maps to LevelBar::get_value *>
extern fn double LevelBar.get_value(&self, ) @extern("gtk_level_bar_get_value");

<* Maps to LevelBar::remove_offset_value *>
extern fn void LevelBar.remove_offset_value(&self, ZString name) @extern("gtk_level_bar_remove_offset_value");

<* Maps to LevelBar::set_inverted *>
extern fn void LevelBar.set_inverted(&self, bool inverted) @extern("gtk_level_bar_set_inverted");

<* Maps to LevelBar::set_max_value *>
extern fn void LevelBar.set_max_value(&self, double value) @extern("gtk_level_bar_set_max_value");

<* Maps to LevelBar::set_min_value *>
extern fn void LevelBar.set_min_value(&self, double value) @extern("gtk_level_bar_set_min_value");

<* Maps to LevelBar::set_mode *>
extern fn void LevelBar.set_mode(&self, LevelBarMode mode) @extern("gtk_level_bar_set_mode");

<* Maps to LevelBar::set_value *>
extern fn void LevelBar.set_value(&self, double value) @extern("gtk_level_bar_set_value");


// Class Functions



<* Maps to GtkLinkButton *>
distinct LinkButton = void*;

// Class to parent cast.
fn Button* LinkButton.as_Button(&self) => (Button*)(self);

// Class Constructors

<* Maps to new of LinkButton *>
extern fn Widget* link_button_new(ZString uri) @extern("gtk_link_button_new");

<* Maps to new_with_label of LinkButton *>
extern fn Widget* link_button_new_with_label(ZString uri, ZString label) @extern("gtk_link_button_new_with_label");



// Class Methods

<* Maps to LinkButton::get_uri *>
extern fn ZString LinkButton.get_uri(&self, ) @extern("gtk_link_button_get_uri");

<* Maps to LinkButton::get_visited *>
extern fn bool LinkButton.get_visited(&self, ) @extern("gtk_link_button_get_visited");

<* Maps to LinkButton::set_uri *>
extern fn void LinkButton.set_uri(&self, ZString uri) @extern("gtk_link_button_set_uri");

<* Maps to LinkButton::set_visited *>
extern fn void LinkButton.set_visited(&self, bool visited) @extern("gtk_link_button_set_visited");


// Class Functions



<* Maps to GtkListBase *>
distinct ListBase = void*;

// Class to parent cast.
fn Widget* ListBase.as_Widget(&self) => (Widget*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GtkListBox *>
distinct ListBox = void*;

// Class to parent cast.
fn Widget* ListBox.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ListBox *>
extern fn Widget* list_box_new() @extern("gtk_list_box_new");



// Class Methods

<* Maps to ListBox::append *>
extern fn void ListBox.append(&self, Widget* child) @extern("gtk_list_box_append");

<* Maps to ListBox::bind_model *>
extern fn void ListBox.bind_model(&self, gio::ListModel* model, ListBoxCreateWidgetFunc create_widget_func, void* user_data, glib::DestroyNotify user_data_free_func) @extern("gtk_list_box_bind_model");

<* Maps to ListBox::drag_highlight_row *>
extern fn void ListBox.drag_highlight_row(&self, ListBoxRow* row) @extern("gtk_list_box_drag_highlight_row");

<* Maps to ListBox::drag_unhighlight_row *>
extern fn void ListBox.drag_unhighlight_row(&self, ) @extern("gtk_list_box_drag_unhighlight_row");

<* Maps to ListBox::get_activate_on_single_click *>
extern fn bool ListBox.get_activate_on_single_click(&self, ) @extern("gtk_list_box_get_activate_on_single_click");

<* Maps to ListBox::get_adjustment *>
extern fn Adjustment* ListBox.get_adjustment(&self, ) @extern("gtk_list_box_get_adjustment");

<* Maps to ListBox::get_row_at_index *>
extern fn ListBoxRow* ListBox.get_row_at_index(&self, int index_) @extern("gtk_list_box_get_row_at_index");

<* Maps to ListBox::get_row_at_y *>
extern fn ListBoxRow* ListBox.get_row_at_y(&self, int y) @extern("gtk_list_box_get_row_at_y");

<* Maps to ListBox::get_selected_row *>
extern fn ListBoxRow* ListBox.get_selected_row(&self, ) @extern("gtk_list_box_get_selected_row");

<* Maps to ListBox::get_selected_rows *>
extern fn glib::List* ListBox.get_selected_rows(&self, ) @extern("gtk_list_box_get_selected_rows");

<* Maps to ListBox::get_selection_mode *>
extern fn SelectionMode ListBox.get_selection_mode(&self, ) @extern("gtk_list_box_get_selection_mode");

<* Maps to ListBox::get_show_separators *>
extern fn bool ListBox.get_show_separators(&self, ) @extern("gtk_list_box_get_show_separators");

<* Maps to ListBox::insert *>
extern fn void ListBox.insert(&self, Widget* child, int position) @extern("gtk_list_box_insert");

<* Maps to ListBox::invalidate_filter *>
extern fn void ListBox.invalidate_filter(&self, ) @extern("gtk_list_box_invalidate_filter");

<* Maps to ListBox::invalidate_headers *>
extern fn void ListBox.invalidate_headers(&self, ) @extern("gtk_list_box_invalidate_headers");

<* Maps to ListBox::invalidate_sort *>
extern fn void ListBox.invalidate_sort(&self, ) @extern("gtk_list_box_invalidate_sort");

<* Maps to ListBox::prepend *>
extern fn void ListBox.prepend(&self, Widget* child) @extern("gtk_list_box_prepend");

<* Maps to ListBox::remove *>
extern fn void ListBox.remove(&self, Widget* child) @extern("gtk_list_box_remove");

<* Maps to ListBox::remove_all *>
extern fn void ListBox.remove_all(&self, ) @extern("gtk_list_box_remove_all");

<* Maps to ListBox::select_all *>
extern fn void ListBox.select_all(&self, ) @extern("gtk_list_box_select_all");

<* Maps to ListBox::select_row *>
extern fn void ListBox.select_row(&self, ListBoxRow* row) @extern("gtk_list_box_select_row");

<* Maps to ListBox::selected_foreach *>
extern fn void ListBox.selected_foreach(&self, ListBoxForeachFunc func, void* data) @extern("gtk_list_box_selected_foreach");

<* Maps to ListBox::set_activate_on_single_click *>
extern fn void ListBox.set_activate_on_single_click(&self, bool single) @extern("gtk_list_box_set_activate_on_single_click");

<* Maps to ListBox::set_adjustment *>
extern fn void ListBox.set_adjustment(&self, Adjustment* adjustment) @extern("gtk_list_box_set_adjustment");

<* Maps to ListBox::set_filter_func *>
extern fn void ListBox.set_filter_func(&self, ListBoxFilterFunc filter_func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_list_box_set_filter_func");

<* Maps to ListBox::set_header_func *>
extern fn void ListBox.set_header_func(&self, ListBoxUpdateHeaderFunc update_header, void* user_data, glib::DestroyNotify destroy) @extern("gtk_list_box_set_header_func");

<* Maps to ListBox::set_placeholder *>
extern fn void ListBox.set_placeholder(&self, Widget* placeholder) @extern("gtk_list_box_set_placeholder");

<* Maps to ListBox::set_selection_mode *>
extern fn void ListBox.set_selection_mode(&self, SelectionMode mode) @extern("gtk_list_box_set_selection_mode");

<* Maps to ListBox::set_show_separators *>
extern fn void ListBox.set_show_separators(&self, bool show_separators) @extern("gtk_list_box_set_show_separators");

<* Maps to ListBox::set_sort_func *>
extern fn void ListBox.set_sort_func(&self, ListBoxSortFunc sort_func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_list_box_set_sort_func");

<* Maps to ListBox::unselect_all *>
extern fn void ListBox.unselect_all(&self, ) @extern("gtk_list_box_unselect_all");

<* Maps to ListBox::unselect_row *>
extern fn void ListBox.unselect_row(&self, ListBoxRow* row) @extern("gtk_list_box_unselect_row");


// Class Functions



<* Maps to GtkListBoxRow *>
distinct ListBoxRow = void*;

// Class to parent cast.
fn Widget* ListBoxRow.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ListBoxRow *>
extern fn Widget* list_box_row_new() @extern("gtk_list_box_row_new");



// Class Methods

<* Maps to ListBoxRow::changed *>
extern fn void ListBoxRow.changed(&self, ) @extern("gtk_list_box_row_changed");

<* Maps to ListBoxRow::get_activatable *>
extern fn bool ListBoxRow.get_activatable(&self, ) @extern("gtk_list_box_row_get_activatable");

<* Maps to ListBoxRow::get_child *>
extern fn Widget* ListBoxRow.get_child(&self, ) @extern("gtk_list_box_row_get_child");

<* Maps to ListBoxRow::get_header *>
extern fn Widget* ListBoxRow.get_header(&self, ) @extern("gtk_list_box_row_get_header");

<* Maps to ListBoxRow::get_index *>
extern fn int ListBoxRow.get_index(&self, ) @extern("gtk_list_box_row_get_index");

<* Maps to ListBoxRow::get_selectable *>
extern fn bool ListBoxRow.get_selectable(&self, ) @extern("gtk_list_box_row_get_selectable");

<* Maps to ListBoxRow::is_selected *>
extern fn bool ListBoxRow.is_selected(&self, ) @extern("gtk_list_box_row_is_selected");

<* Maps to ListBoxRow::set_activatable *>
extern fn void ListBoxRow.set_activatable(&self, bool activatable) @extern("gtk_list_box_row_set_activatable");

<* Maps to ListBoxRow::set_child *>
extern fn void ListBoxRow.set_child(&self, Widget* child) @extern("gtk_list_box_row_set_child");

<* Maps to ListBoxRow::set_header *>
extern fn void ListBoxRow.set_header(&self, Widget* header) @extern("gtk_list_box_row_set_header");

<* Maps to ListBoxRow::set_selectable *>
extern fn void ListBoxRow.set_selectable(&self, bool selectable) @extern("gtk_list_box_row_set_selectable");


// Class Functions



<* Maps to GtkListHeader *>
distinct ListHeader = void*;

// Class to parent cast.
fn gobject::Object* ListHeader.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to ListHeader::get_child *>
extern fn Widget* ListHeader.get_child(&self, ) @extern("gtk_list_header_get_child");

<* Maps to ListHeader::get_end *>
extern fn uint ListHeader.get_end(&self, ) @extern("gtk_list_header_get_end");

<* Maps to ListHeader::get_item *>
extern fn gobject::Object* ListHeader.get_item(&self, ) @extern("gtk_list_header_get_item");

<* Maps to ListHeader::get_n_items *>
extern fn uint ListHeader.get_n_items(&self, ) @extern("gtk_list_header_get_n_items");

<* Maps to ListHeader::get_start *>
extern fn uint ListHeader.get_start(&self, ) @extern("gtk_list_header_get_start");

<* Maps to ListHeader::set_child *>
extern fn void ListHeader.set_child(&self, Widget* child) @extern("gtk_list_header_set_child");


// Class Functions



<* Maps to GtkListItem *>
distinct ListItem = void*;

// Class to parent cast.
fn gobject::Object* ListItem.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to ListItem::get_accessible_description *>
extern fn ZString ListItem.get_accessible_description(&self, ) @extern("gtk_list_item_get_accessible_description");

<* Maps to ListItem::get_accessible_label *>
extern fn ZString ListItem.get_accessible_label(&self, ) @extern("gtk_list_item_get_accessible_label");

<* Maps to ListItem::get_activatable *>
extern fn bool ListItem.get_activatable(&self, ) @extern("gtk_list_item_get_activatable");

<* Maps to ListItem::get_child *>
extern fn Widget* ListItem.get_child(&self, ) @extern("gtk_list_item_get_child");

<* Maps to ListItem::get_focusable *>
extern fn bool ListItem.get_focusable(&self, ) @extern("gtk_list_item_get_focusable");

<* Maps to ListItem::get_item *>
extern fn gobject::Object* ListItem.get_item(&self, ) @extern("gtk_list_item_get_item");

<* Maps to ListItem::get_position *>
extern fn uint ListItem.get_position(&self, ) @extern("gtk_list_item_get_position");

<* Maps to ListItem::get_selectable *>
extern fn bool ListItem.get_selectable(&self, ) @extern("gtk_list_item_get_selectable");

<* Maps to ListItem::get_selected *>
extern fn bool ListItem.get_selected(&self, ) @extern("gtk_list_item_get_selected");

<* Maps to ListItem::set_accessible_description *>
extern fn void ListItem.set_accessible_description(&self, ZString description) @extern("gtk_list_item_set_accessible_description");

<* Maps to ListItem::set_accessible_label *>
extern fn void ListItem.set_accessible_label(&self, ZString label) @extern("gtk_list_item_set_accessible_label");

<* Maps to ListItem::set_activatable *>
extern fn void ListItem.set_activatable(&self, bool activatable) @extern("gtk_list_item_set_activatable");

<* Maps to ListItem::set_child *>
extern fn void ListItem.set_child(&self, Widget* child) @extern("gtk_list_item_set_child");

<* Maps to ListItem::set_focusable *>
extern fn void ListItem.set_focusable(&self, bool focusable) @extern("gtk_list_item_set_focusable");

<* Maps to ListItem::set_selectable *>
extern fn void ListItem.set_selectable(&self, bool selectable) @extern("gtk_list_item_set_selectable");


// Class Functions



<* Maps to GtkListItemFactory *>
distinct ListItemFactory = void*;

// Class to parent cast.
fn gobject::Object* ListItemFactory.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GtkListStore *>
distinct ListStore = void*;

// Class to parent cast.
fn gobject::Object* ListStore.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of ListStore *>
extern fn ListStore* list_store_new(int n_columns, any rest) @extern("gtk_list_store_new");

<* Maps to newv of ListStore *>
extern fn ListStore* list_store_newv(int n_columns, usz types) @extern("gtk_list_store_newv");



// Class Methods

<* Maps to ListStore::append *>
extern fn void ListStore.append(&self, TreeIter* iter) @extern("gtk_list_store_append");

<* Maps to ListStore::clear *>
extern fn void ListStore.clear(&self, ) @extern("gtk_list_store_clear");

<* Maps to ListStore::insert *>
extern fn void ListStore.insert(&self, TreeIter* iter, int position) @extern("gtk_list_store_insert");

<* Maps to ListStore::insert_after *>
extern fn void ListStore.insert_after(&self, TreeIter* iter, TreeIter* sibling) @extern("gtk_list_store_insert_after");

<* Maps to ListStore::insert_before *>
extern fn void ListStore.insert_before(&self, TreeIter* iter, TreeIter* sibling) @extern("gtk_list_store_insert_before");

<* Maps to ListStore::insert_with_values *>
extern fn void ListStore.insert_with_values(&self, TreeIter* iter, int position, any rest) @extern("gtk_list_store_insert_with_values");

<* Maps to ListStore::insert_with_valuesv *>
extern fn void ListStore.insert_with_valuesv(&self, TreeIter* iter, int position, int columns, gobject::Value values, int n_values) @extern("gtk_list_store_insert_with_valuesv");

<* Maps to ListStore::iter_is_valid *>
extern fn bool ListStore.iter_is_valid(&self, TreeIter* iter) @extern("gtk_list_store_iter_is_valid");

<* Maps to ListStore::move_after *>
extern fn void ListStore.move_after(&self, TreeIter* iter, TreeIter* position) @extern("gtk_list_store_move_after");

<* Maps to ListStore::move_before *>
extern fn void ListStore.move_before(&self, TreeIter* iter, TreeIter* position) @extern("gtk_list_store_move_before");

<* Maps to ListStore::prepend *>
extern fn void ListStore.prepend(&self, TreeIter* iter) @extern("gtk_list_store_prepend");

<* Maps to ListStore::remove *>
extern fn bool ListStore.remove(&self, TreeIter* iter) @extern("gtk_list_store_remove");

<* Maps to ListStore::reorder *>
extern fn void ListStore.reorder(&self, int new_order) @extern("gtk_list_store_reorder");

<* Maps to ListStore::set *>
extern fn void ListStore.set(&self, TreeIter* iter, any rest) @extern("gtk_list_store_set");

<* Maps to ListStore::set_column_types *>
extern fn void ListStore.set_column_types(&self, int n_columns, usz types) @extern("gtk_list_store_set_column_types");

<* Maps to ListStore::set_value *>
extern fn void ListStore.set_value(&self, TreeIter* iter, int column, gobject::Value* value) @extern("gtk_list_store_set_value");

<* Maps to ListStore::set_valuesv *>
extern fn void ListStore.set_valuesv(&self, TreeIter* iter, int columns, gobject::Value values, int n_values) @extern("gtk_list_store_set_valuesv");

<* Maps to ListStore::swap *>
extern fn void ListStore.swap(&self, TreeIter* a, TreeIter* b) @extern("gtk_list_store_swap");


// Class Functions



<* Maps to GtkListView *>
distinct ListView = void*;

// Class to parent cast.
fn ListBase* ListView.as_ListBase(&self) => (ListBase*)(self);

// Class Constructors

<* Maps to new of ListView *>
extern fn Widget* list_view_new(SelectionModel* model, ListItemFactory* factory) @extern("gtk_list_view_new");



// Class Methods

<* Maps to ListView::get_enable_rubberband *>
extern fn bool ListView.get_enable_rubberband(&self, ) @extern("gtk_list_view_get_enable_rubberband");

<* Maps to ListView::get_factory *>
extern fn ListItemFactory* ListView.get_factory(&self, ) @extern("gtk_list_view_get_factory");

<* Maps to ListView::get_header_factory *>
extern fn ListItemFactory* ListView.get_header_factory(&self, ) @extern("gtk_list_view_get_header_factory");

<* Maps to ListView::get_model *>
extern fn SelectionModel* ListView.get_model(&self, ) @extern("gtk_list_view_get_model");

<* Maps to ListView::get_show_separators *>
extern fn bool ListView.get_show_separators(&self, ) @extern("gtk_list_view_get_show_separators");

<* Maps to ListView::get_single_click_activate *>
extern fn bool ListView.get_single_click_activate(&self, ) @extern("gtk_list_view_get_single_click_activate");

<* Maps to ListView::get_tab_behavior *>
extern fn ListTabBehavior ListView.get_tab_behavior(&self, ) @extern("gtk_list_view_get_tab_behavior");

<* Maps to ListView::scroll_to *>
extern fn void ListView.scroll_to(&self, uint pos, ListScrollFlags flags, ScrollInfo* scroll) @extern("gtk_list_view_scroll_to");

<* Maps to ListView::set_enable_rubberband *>
extern fn void ListView.set_enable_rubberband(&self, bool enable_rubberband) @extern("gtk_list_view_set_enable_rubberband");

<* Maps to ListView::set_factory *>
extern fn void ListView.set_factory(&self, ListItemFactory* factory) @extern("gtk_list_view_set_factory");

<* Maps to ListView::set_header_factory *>
extern fn void ListView.set_header_factory(&self, ListItemFactory* factory) @extern("gtk_list_view_set_header_factory");

<* Maps to ListView::set_model *>
extern fn void ListView.set_model(&self, SelectionModel* model) @extern("gtk_list_view_set_model");

<* Maps to ListView::set_show_separators *>
extern fn void ListView.set_show_separators(&self, bool show_separators) @extern("gtk_list_view_set_show_separators");

<* Maps to ListView::set_single_click_activate *>
extern fn void ListView.set_single_click_activate(&self, bool single_click_activate) @extern("gtk_list_view_set_single_click_activate");

<* Maps to ListView::set_tab_behavior *>
extern fn void ListView.set_tab_behavior(&self, ListTabBehavior tab_behavior) @extern("gtk_list_view_set_tab_behavior");


// Class Functions



<* Maps to GtkLockButton *>
distinct LockButton = void*;

// Class to parent cast.
fn Button* LockButton.as_Button(&self) => (Button*)(self);

// Class Constructors

<* Maps to new of LockButton *>
extern fn Widget* lock_button_new(gio::Permission* permission) @extern("gtk_lock_button_new");



// Class Methods

<* Maps to LockButton::get_permission *>
extern fn gio::Permission* LockButton.get_permission(&self, ) @extern("gtk_lock_button_get_permission");

<* Maps to LockButton::set_permission *>
extern fn void LockButton.set_permission(&self, gio::Permission* permission) @extern("gtk_lock_button_set_permission");


// Class Functions



<* Maps to GtkMapListModel *>
distinct MapListModel = void*;

// Class to parent cast.
fn gobject::Object* MapListModel.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of MapListModel *>
extern fn MapListModel* map_list_model_new(gio::ListModel* model, MapListModelMapFunc map_func, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_map_list_model_new");



// Class Methods

<* Maps to MapListModel::get_model *>
extern fn gio::ListModel* MapListModel.get_model(&self, ) @extern("gtk_map_list_model_get_model");

<* Maps to MapListModel::has_map *>
extern fn bool MapListModel.has_map(&self, ) @extern("gtk_map_list_model_has_map");

<* Maps to MapListModel::set_map_func *>
extern fn void MapListModel.set_map_func(&self, MapListModelMapFunc map_func, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_map_list_model_set_map_func");

<* Maps to MapListModel::set_model *>
extern fn void MapListModel.set_model(&self, gio::ListModel* model) @extern("gtk_map_list_model_set_model");


// Class Functions



<* Maps to GtkMediaControls *>
distinct MediaControls = void*;

// Class to parent cast.
fn Widget* MediaControls.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of MediaControls *>
extern fn Widget* media_controls_new(MediaStream* stream) @extern("gtk_media_controls_new");



// Class Methods

<* Maps to MediaControls::get_media_stream *>
extern fn MediaStream* MediaControls.get_media_stream(&self, ) @extern("gtk_media_controls_get_media_stream");

<* Maps to MediaControls::set_media_stream *>
extern fn void MediaControls.set_media_stream(&self, MediaStream* stream) @extern("gtk_media_controls_set_media_stream");


// Class Functions



<* Maps to GtkMediaFile *>
distinct MediaFile = void*;

// Class to parent cast.
fn MediaStream* MediaFile.as_MediaStream(&self) => (MediaStream*)(self);

// Class Constructors

<* Maps to new of MediaFile *>
extern fn MediaFile* media_file_new() @extern("gtk_media_file_new");

<* Maps to new_for_file of MediaFile *>
extern fn MediaFile* media_file_new_for_file(gio::File* file) @extern("gtk_media_file_new_for_file");

<* Maps to new_for_filename of MediaFile *>
extern fn MediaFile* media_file_new_for_filename(ZString filename) @extern("gtk_media_file_new_for_filename");

<* Maps to new_for_input_stream of MediaFile *>
extern fn MediaFile* media_file_new_for_input_stream(gio::InputStream* stream) @extern("gtk_media_file_new_for_input_stream");

<* Maps to new_for_resource of MediaFile *>
extern fn MediaFile* media_file_new_for_resource(ZString resource_path) @extern("gtk_media_file_new_for_resource");



// Class Methods

<* Maps to MediaFile::clear *>
extern fn void MediaFile.clear(&self, ) @extern("gtk_media_file_clear");

<* Maps to MediaFile::get_file *>
extern fn gio::File* MediaFile.get_file(&self, ) @extern("gtk_media_file_get_file");

<* Maps to MediaFile::get_input_stream *>
extern fn gio::InputStream* MediaFile.get_input_stream(&self, ) @extern("gtk_media_file_get_input_stream");

<* Maps to MediaFile::set_file *>
extern fn void MediaFile.set_file(&self, gio::File* file) @extern("gtk_media_file_set_file");

<* Maps to MediaFile::set_filename *>
extern fn void MediaFile.set_filename(&self, ZString filename) @extern("gtk_media_file_set_filename");

<* Maps to MediaFile::set_input_stream *>
extern fn void MediaFile.set_input_stream(&self, gio::InputStream* stream) @extern("gtk_media_file_set_input_stream");

<* Maps to MediaFile::set_resource *>
extern fn void MediaFile.set_resource(&self, ZString resource_path) @extern("gtk_media_file_set_resource");


// Class Functions



<* Maps to GtkMediaStream *>
distinct MediaStream = void*;

// Class to parent cast.
fn gobject::Object* MediaStream.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to MediaStream::ended *>
extern fn void MediaStream.ended(&self, ) @extern("gtk_media_stream_ended");

<* Maps to MediaStream::error *>
extern fn void MediaStream.error(&self, glib::Quark domain, int code, ZString format, any rest) @extern("gtk_media_stream_error");

<* Maps to MediaStream::gerror *>
extern fn void MediaStream.gerror(&self, glib::Error* error) @extern("gtk_media_stream_gerror");

<* Maps to MediaStream::get_duration *>
extern fn long MediaStream.get_duration(&self, ) @extern("gtk_media_stream_get_duration");

<* Maps to MediaStream::get_ended *>
extern fn bool MediaStream.get_ended(&self, ) @extern("gtk_media_stream_get_ended");

<* Maps to MediaStream::get_error *>
extern fn glib::Error* MediaStream.get_error(&self, ) @extern("gtk_media_stream_get_error");

<* Maps to MediaStream::get_loop *>
extern fn bool MediaStream.get_loop(&self, ) @extern("gtk_media_stream_get_loop");

<* Maps to MediaStream::get_muted *>
extern fn bool MediaStream.get_muted(&self, ) @extern("gtk_media_stream_get_muted");

<* Maps to MediaStream::get_playing *>
extern fn bool MediaStream.get_playing(&self, ) @extern("gtk_media_stream_get_playing");

<* Maps to MediaStream::get_timestamp *>
extern fn long MediaStream.get_timestamp(&self, ) @extern("gtk_media_stream_get_timestamp");

<* Maps to MediaStream::get_volume *>
extern fn double MediaStream.get_volume(&self, ) @extern("gtk_media_stream_get_volume");

<* Maps to MediaStream::has_audio *>
extern fn bool MediaStream.has_audio(&self, ) @extern("gtk_media_stream_has_audio");

<* Maps to MediaStream::has_video *>
extern fn bool MediaStream.has_video(&self, ) @extern("gtk_media_stream_has_video");

<* Maps to MediaStream::is_prepared *>
extern fn bool MediaStream.is_prepared(&self, ) @extern("gtk_media_stream_is_prepared");

<* Maps to MediaStream::is_seekable *>
extern fn bool MediaStream.is_seekable(&self, ) @extern("gtk_media_stream_is_seekable");

<* Maps to MediaStream::is_seeking *>
extern fn bool MediaStream.is_seeking(&self, ) @extern("gtk_media_stream_is_seeking");

<* Maps to MediaStream::pause *>
extern fn void MediaStream.pause(&self, ) @extern("gtk_media_stream_pause");

<* Maps to MediaStream::play *>
extern fn void MediaStream.play(&self, ) @extern("gtk_media_stream_play");

<* Maps to MediaStream::prepared *>
extern fn void MediaStream.prepared(&self, bool has_audio, bool has_video, bool seekable, long duration) @extern("gtk_media_stream_prepared");

<* Maps to MediaStream::realize *>
extern fn void MediaStream.realize(&self, gdk::Surface* surface) @extern("gtk_media_stream_realize");

<* Maps to MediaStream::seek *>
extern fn void MediaStream.seek(&self, long timestamp) @extern("gtk_media_stream_seek");

<* Maps to MediaStream::seek_failed *>
extern fn void MediaStream.seek_failed(&self, ) @extern("gtk_media_stream_seek_failed");

<* Maps to MediaStream::seek_success *>
extern fn void MediaStream.seek_success(&self, ) @extern("gtk_media_stream_seek_success");

<* Maps to MediaStream::set_loop *>
extern fn void MediaStream.set_loop(&self, bool loop) @extern("gtk_media_stream_set_loop");

<* Maps to MediaStream::set_muted *>
extern fn void MediaStream.set_muted(&self, bool muted) @extern("gtk_media_stream_set_muted");

<* Maps to MediaStream::set_playing *>
extern fn void MediaStream.set_playing(&self, bool playing) @extern("gtk_media_stream_set_playing");

<* Maps to MediaStream::set_volume *>
extern fn void MediaStream.set_volume(&self, double volume) @extern("gtk_media_stream_set_volume");

<* Maps to MediaStream::stream_ended *>
extern fn void MediaStream.stream_ended(&self, ) @extern("gtk_media_stream_stream_ended");

<* Maps to MediaStream::stream_prepared *>
extern fn void MediaStream.stream_prepared(&self, bool has_audio, bool has_video, bool seekable, long duration) @extern("gtk_media_stream_stream_prepared");

<* Maps to MediaStream::stream_unprepared *>
extern fn void MediaStream.stream_unprepared(&self, ) @extern("gtk_media_stream_stream_unprepared");

<* Maps to MediaStream::unprepared *>
extern fn void MediaStream.unprepared(&self, ) @extern("gtk_media_stream_unprepared");

<* Maps to MediaStream::unrealize *>
extern fn void MediaStream.unrealize(&self, gdk::Surface* surface) @extern("gtk_media_stream_unrealize");

<* Maps to MediaStream::update *>
extern fn void MediaStream.update(&self, long timestamp) @extern("gtk_media_stream_update");


// Class Functions



<* Maps to GtkMenuButton *>
distinct MenuButton = void*;

// Class to parent cast.
fn Widget* MenuButton.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of MenuButton *>
extern fn Widget* menu_button_new() @extern("gtk_menu_button_new");



// Class Methods

<* Maps to MenuButton::get_active *>
extern fn bool MenuButton.get_active(&self, ) @extern("gtk_menu_button_get_active");

<* Maps to MenuButton::get_always_show_arrow *>
extern fn bool MenuButton.get_always_show_arrow(&self, ) @extern("gtk_menu_button_get_always_show_arrow");

<* Maps to MenuButton::get_can_shrink *>
extern fn bool MenuButton.get_can_shrink(&self, ) @extern("gtk_menu_button_get_can_shrink");

<* Maps to MenuButton::get_child *>
extern fn Widget* MenuButton.get_child(&self, ) @extern("gtk_menu_button_get_child");

<* Maps to MenuButton::get_direction *>
extern fn ArrowType MenuButton.get_direction(&self, ) @extern("gtk_menu_button_get_direction");

<* Maps to MenuButton::get_has_frame *>
extern fn bool MenuButton.get_has_frame(&self, ) @extern("gtk_menu_button_get_has_frame");

<* Maps to MenuButton::get_icon_name *>
extern fn ZString MenuButton.get_icon_name(&self, ) @extern("gtk_menu_button_get_icon_name");

<* Maps to MenuButton::get_label *>
extern fn ZString MenuButton.get_label(&self, ) @extern("gtk_menu_button_get_label");

<* Maps to MenuButton::get_menu_model *>
extern fn gio::MenuModel* MenuButton.get_menu_model(&self, ) @extern("gtk_menu_button_get_menu_model");

<* Maps to MenuButton::get_popover *>
extern fn Popover* MenuButton.get_popover(&self, ) @extern("gtk_menu_button_get_popover");

<* Maps to MenuButton::get_primary *>
extern fn bool MenuButton.get_primary(&self, ) @extern("gtk_menu_button_get_primary");

<* Maps to MenuButton::get_use_underline *>
extern fn bool MenuButton.get_use_underline(&self, ) @extern("gtk_menu_button_get_use_underline");

<* Maps to MenuButton::popdown *>
extern fn void MenuButton.popdown(&self, ) @extern("gtk_menu_button_popdown");

<* Maps to MenuButton::popup *>
extern fn void MenuButton.popup(&self, ) @extern("gtk_menu_button_popup");

<* Maps to MenuButton::set_active *>
extern fn void MenuButton.set_active(&self, bool active) @extern("gtk_menu_button_set_active");

<* Maps to MenuButton::set_always_show_arrow *>
extern fn void MenuButton.set_always_show_arrow(&self, bool always_show_arrow) @extern("gtk_menu_button_set_always_show_arrow");

<* Maps to MenuButton::set_can_shrink *>
extern fn void MenuButton.set_can_shrink(&self, bool can_shrink) @extern("gtk_menu_button_set_can_shrink");

<* Maps to MenuButton::set_child *>
extern fn void MenuButton.set_child(&self, Widget* child) @extern("gtk_menu_button_set_child");

<* Maps to MenuButton::set_create_popup_func *>
extern fn void MenuButton.set_create_popup_func(&self, MenuButtonCreatePopupFunc func, void* user_data, glib::DestroyNotify destroy_notify) @extern("gtk_menu_button_set_create_popup_func");

<* Maps to MenuButton::set_direction *>
extern fn void MenuButton.set_direction(&self, ArrowType direction) @extern("gtk_menu_button_set_direction");

<* Maps to MenuButton::set_has_frame *>
extern fn void MenuButton.set_has_frame(&self, bool has_frame) @extern("gtk_menu_button_set_has_frame");

<* Maps to MenuButton::set_icon_name *>
extern fn void MenuButton.set_icon_name(&self, ZString icon_name) @extern("gtk_menu_button_set_icon_name");

<* Maps to MenuButton::set_label *>
extern fn void MenuButton.set_label(&self, ZString label) @extern("gtk_menu_button_set_label");

<* Maps to MenuButton::set_menu_model *>
extern fn void MenuButton.set_menu_model(&self, gio::MenuModel* menu_model) @extern("gtk_menu_button_set_menu_model");

<* Maps to MenuButton::set_popover *>
extern fn void MenuButton.set_popover(&self, Widget* popover) @extern("gtk_menu_button_set_popover");

<* Maps to MenuButton::set_primary *>
extern fn void MenuButton.set_primary(&self, bool primary) @extern("gtk_menu_button_set_primary");

<* Maps to MenuButton::set_use_underline *>
extern fn void MenuButton.set_use_underline(&self, bool use_underline) @extern("gtk_menu_button_set_use_underline");


// Class Functions



<* Maps to GtkMessageDialog *>
distinct MessageDialog = void*;

// Class to parent cast.
fn Dialog* MessageDialog.as_Dialog(&self) => (Dialog*)(self);

// Class Constructors

<* Maps to new of MessageDialog *>
extern fn Widget* message_dialog_new(Window* parent, DialogFlags flags, MessageType type, ButtonsType buttons, ZString message_format, any rest) @extern("gtk_message_dialog_new");

<* Maps to new_with_markup of MessageDialog *>
extern fn Widget* message_dialog_new_with_markup(Window* parent, DialogFlags flags, MessageType type, ButtonsType buttons, ZString message_format, any rest) @extern("gtk_message_dialog_new_with_markup");



// Class Methods

<* Maps to MessageDialog::format_secondary_markup *>
extern fn void MessageDialog.format_secondary_markup(&self, ZString message_format, any rest) @extern("gtk_message_dialog_format_secondary_markup");

<* Maps to MessageDialog::format_secondary_text *>
extern fn void MessageDialog.format_secondary_text(&self, ZString message_format, any rest) @extern("gtk_message_dialog_format_secondary_text");

<* Maps to MessageDialog::get_message_area *>
extern fn Widget* MessageDialog.get_message_area(&self, ) @extern("gtk_message_dialog_get_message_area");

<* Maps to MessageDialog::set_markup *>
extern fn void MessageDialog.set_markup(&self, ZString str) @extern("gtk_message_dialog_set_markup");


// Class Functions



<* Maps to GtkMnemonicAction *>
distinct MnemonicAction = void*;

// Class to parent cast.
fn ShortcutAction* MnemonicAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);

// Class Constructors



// Class Methods


// Class Functions

<* Maps to get of MnemonicAction *>
extern fn MnemonicAction* mnemonic_action_get() @extern("gtk_mnemonic_action_get");



<* Maps to GtkMnemonicTrigger *>
distinct MnemonicTrigger = void*;

// Class to parent cast.
fn ShortcutTrigger* MnemonicTrigger.as_ShortcutTrigger(&self) => (ShortcutTrigger*)(self);

// Class Constructors

<* Maps to new of MnemonicTrigger *>
extern fn MnemonicTrigger* mnemonic_trigger_new(uint keyval) @extern("gtk_mnemonic_trigger_new");



// Class Methods

<* Maps to MnemonicTrigger::get_keyval *>
extern fn uint MnemonicTrigger.get_keyval(&self, ) @extern("gtk_mnemonic_trigger_get_keyval");


// Class Functions



<* Maps to GtkMountOperation *>
distinct MountOperation = void*;

// Class to parent cast.
fn gio::MountOperation* MountOperation.as_gio_MountOperation(&self) => (gio::MountOperation*)(self);

// Class Constructors

<* Maps to new of MountOperation *>
extern fn gio::MountOperation* mount_operation_new(Window* parent) @extern("gtk_mount_operation_new");



// Class Methods

<* Maps to MountOperation::get_display *>
extern fn gdk::Display* MountOperation.get_display(&self, ) @extern("gtk_mount_operation_get_display");

<* Maps to MountOperation::get_parent *>
extern fn Window* MountOperation.get_parent(&self, ) @extern("gtk_mount_operation_get_parent");

<* Maps to MountOperation::is_showing *>
extern fn bool MountOperation.is_showing(&self, ) @extern("gtk_mount_operation_is_showing");

<* Maps to MountOperation::set_display *>
extern fn void MountOperation.set_display(&self, gdk::Display* display) @extern("gtk_mount_operation_set_display");

<* Maps to MountOperation::set_parent *>
extern fn void MountOperation.set_parent(&self, Window* parent) @extern("gtk_mount_operation_set_parent");


// Class Functions



<* Maps to GtkMultiFilter *>
distinct MultiFilter = void*;

// Class to parent cast.
fn Filter* MultiFilter.as_Filter(&self) => (Filter*)(self);

// Class Constructors



// Class Methods

<* Maps to MultiFilter::append *>
extern fn void MultiFilter.append(&self, Filter* filter) @extern("gtk_multi_filter_append");

<* Maps to MultiFilter::remove *>
extern fn void MultiFilter.remove(&self, uint position) @extern("gtk_multi_filter_remove");


// Class Functions



<* Maps to GtkMultiSelection *>
distinct MultiSelection = void*;

// Class to parent cast.
fn gobject::Object* MultiSelection.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of MultiSelection *>
extern fn MultiSelection* multi_selection_new(gio::ListModel* model) @extern("gtk_multi_selection_new");



// Class Methods

<* Maps to MultiSelection::get_model *>
extern fn gio::ListModel* MultiSelection.get_model(&self, ) @extern("gtk_multi_selection_get_model");

<* Maps to MultiSelection::set_model *>
extern fn void MultiSelection.set_model(&self, gio::ListModel* model) @extern("gtk_multi_selection_set_model");


// Class Functions



<* Maps to GtkMultiSorter *>
distinct MultiSorter = void*;

// Class to parent cast.
fn Sorter* MultiSorter.as_Sorter(&self) => (Sorter*)(self);

// Class Constructors

<* Maps to new of MultiSorter *>
extern fn MultiSorter* multi_sorter_new() @extern("gtk_multi_sorter_new");



// Class Methods

<* Maps to MultiSorter::append *>
extern fn void MultiSorter.append(&self, Sorter* sorter) @extern("gtk_multi_sorter_append");

<* Maps to MultiSorter::remove *>
extern fn void MultiSorter.remove(&self, uint position) @extern("gtk_multi_sorter_remove");


// Class Functions



<* Maps to GtkNamedAction *>
distinct NamedAction = void*;

// Class to parent cast.
fn ShortcutAction* NamedAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);

// Class Constructors

<* Maps to new of NamedAction *>
extern fn NamedAction* named_action_new(ZString name) @extern("gtk_named_action_new");



// Class Methods

<* Maps to NamedAction::get_action_name *>
extern fn ZString NamedAction.get_action_name(&self, ) @extern("gtk_named_action_get_action_name");


// Class Functions



<* Maps to GtkNativeDialog *>
distinct NativeDialog = void*;

// Class to parent cast.
fn gobject::Object* NativeDialog.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to NativeDialog::destroy *>
extern fn void NativeDialog.destroy(&self, ) @extern("gtk_native_dialog_destroy");

<* Maps to NativeDialog::get_modal *>
extern fn bool NativeDialog.get_modal(&self, ) @extern("gtk_native_dialog_get_modal");

<* Maps to NativeDialog::get_title *>
extern fn ZString NativeDialog.get_title(&self, ) @extern("gtk_native_dialog_get_title");

<* Maps to NativeDialog::get_transient_for *>
extern fn Window* NativeDialog.get_transient_for(&self, ) @extern("gtk_native_dialog_get_transient_for");

<* Maps to NativeDialog::get_visible *>
extern fn bool NativeDialog.get_visible(&self, ) @extern("gtk_native_dialog_get_visible");

<* Maps to NativeDialog::hide *>
extern fn void NativeDialog.hide(&self, ) @extern("gtk_native_dialog_hide");

<* Maps to NativeDialog::set_modal *>
extern fn void NativeDialog.set_modal(&self, bool modal) @extern("gtk_native_dialog_set_modal");

<* Maps to NativeDialog::set_title *>
extern fn void NativeDialog.set_title(&self, ZString title) @extern("gtk_native_dialog_set_title");

<* Maps to NativeDialog::set_transient_for *>
extern fn void NativeDialog.set_transient_for(&self, Window* parent) @extern("gtk_native_dialog_set_transient_for");

<* Maps to NativeDialog::show *>
extern fn void NativeDialog.show(&self, ) @extern("gtk_native_dialog_show");


// Class Functions



<* Maps to GtkNeverTrigger *>
distinct NeverTrigger = void*;

// Class to parent cast.
fn ShortcutTrigger* NeverTrigger.as_ShortcutTrigger(&self) => (ShortcutTrigger*)(self);

// Class Constructors



// Class Methods


// Class Functions

<* Maps to get of NeverTrigger *>
extern fn NeverTrigger* never_trigger_get() @extern("gtk_never_trigger_get");



<* Maps to GtkNoSelection *>
distinct NoSelection = void*;

// Class to parent cast.
fn gobject::Object* NoSelection.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of NoSelection *>
extern fn NoSelection* no_selection_new(gio::ListModel* model) @extern("gtk_no_selection_new");



// Class Methods

<* Maps to NoSelection::get_model *>
extern fn gio::ListModel* NoSelection.get_model(&self, ) @extern("gtk_no_selection_get_model");

<* Maps to NoSelection::set_model *>
extern fn void NoSelection.set_model(&self, gio::ListModel* model) @extern("gtk_no_selection_set_model");


// Class Functions



<* Maps to GtkNotebook *>
distinct Notebook = void*;

// Class to parent cast.
fn Widget* Notebook.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Notebook *>
extern fn Widget* notebook_new() @extern("gtk_notebook_new");



// Class Methods

<* Maps to Notebook::append_page *>
extern fn int Notebook.append_page(&self, Widget* child, Widget* tab_label) @extern("gtk_notebook_append_page");

<* Maps to Notebook::append_page_menu *>
extern fn int Notebook.append_page_menu(&self, Widget* child, Widget* tab_label, Widget* menu_label) @extern("gtk_notebook_append_page_menu");

<* Maps to Notebook::detach_tab *>
extern fn void Notebook.detach_tab(&self, Widget* child) @extern("gtk_notebook_detach_tab");

<* Maps to Notebook::get_action_widget *>
extern fn Widget* Notebook.get_action_widget(&self, PackType pack_type) @extern("gtk_notebook_get_action_widget");

<* Maps to Notebook::get_current_page *>
extern fn int Notebook.get_current_page(&self, ) @extern("gtk_notebook_get_current_page");

<* Maps to Notebook::get_group_name *>
extern fn ZString Notebook.get_group_name(&self, ) @extern("gtk_notebook_get_group_name");

<* Maps to Notebook::get_menu_label *>
extern fn Widget* Notebook.get_menu_label(&self, Widget* child) @extern("gtk_notebook_get_menu_label");

<* Maps to Notebook::get_menu_label_text *>
extern fn ZString Notebook.get_menu_label_text(&self, Widget* child) @extern("gtk_notebook_get_menu_label_text");

<* Maps to Notebook::get_n_pages *>
extern fn int Notebook.get_n_pages(&self, ) @extern("gtk_notebook_get_n_pages");

<* Maps to Notebook::get_nth_page *>
extern fn Widget* Notebook.get_nth_page(&self, int page_num) @extern("gtk_notebook_get_nth_page");

<* Maps to Notebook::get_page *>
extern fn NotebookPage* Notebook.get_page(&self, Widget* child) @extern("gtk_notebook_get_page");

<* Maps to Notebook::get_pages *>
extern fn gio::ListModel* Notebook.get_pages(&self, ) @extern("gtk_notebook_get_pages");

<* Maps to Notebook::get_scrollable *>
extern fn bool Notebook.get_scrollable(&self, ) @extern("gtk_notebook_get_scrollable");

<* Maps to Notebook::get_show_border *>
extern fn bool Notebook.get_show_border(&self, ) @extern("gtk_notebook_get_show_border");

<* Maps to Notebook::get_show_tabs *>
extern fn bool Notebook.get_show_tabs(&self, ) @extern("gtk_notebook_get_show_tabs");

<* Maps to Notebook::get_tab_detachable *>
extern fn bool Notebook.get_tab_detachable(&self, Widget* child) @extern("gtk_notebook_get_tab_detachable");

<* Maps to Notebook::get_tab_label *>
extern fn Widget* Notebook.get_tab_label(&self, Widget* child) @extern("gtk_notebook_get_tab_label");

<* Maps to Notebook::get_tab_label_text *>
extern fn ZString Notebook.get_tab_label_text(&self, Widget* child) @extern("gtk_notebook_get_tab_label_text");

<* Maps to Notebook::get_tab_pos *>
extern fn PositionType Notebook.get_tab_pos(&self, ) @extern("gtk_notebook_get_tab_pos");

<* Maps to Notebook::get_tab_reorderable *>
extern fn bool Notebook.get_tab_reorderable(&self, Widget* child) @extern("gtk_notebook_get_tab_reorderable");

<* Maps to Notebook::insert_page *>
extern fn int Notebook.insert_page(&self, Widget* child, Widget* tab_label, int position) @extern("gtk_notebook_insert_page");

<* Maps to Notebook::insert_page_menu *>
extern fn int Notebook.insert_page_menu(&self, Widget* child, Widget* tab_label, Widget* menu_label, int position) @extern("gtk_notebook_insert_page_menu");

<* Maps to Notebook::next_page *>
extern fn void Notebook.next_page(&self, ) @extern("gtk_notebook_next_page");

<* Maps to Notebook::page_num *>
extern fn int Notebook.page_num(&self, Widget* child) @extern("gtk_notebook_page_num");

<* Maps to Notebook::popup_disable *>
extern fn void Notebook.popup_disable(&self, ) @extern("gtk_notebook_popup_disable");

<* Maps to Notebook::popup_enable *>
extern fn void Notebook.popup_enable(&self, ) @extern("gtk_notebook_popup_enable");

<* Maps to Notebook::prepend_page *>
extern fn int Notebook.prepend_page(&self, Widget* child, Widget* tab_label) @extern("gtk_notebook_prepend_page");

<* Maps to Notebook::prepend_page_menu *>
extern fn int Notebook.prepend_page_menu(&self, Widget* child, Widget* tab_label, Widget* menu_label) @extern("gtk_notebook_prepend_page_menu");

<* Maps to Notebook::prev_page *>
extern fn void Notebook.prev_page(&self, ) @extern("gtk_notebook_prev_page");

<* Maps to Notebook::remove_page *>
extern fn void Notebook.remove_page(&self, int page_num) @extern("gtk_notebook_remove_page");

<* Maps to Notebook::reorder_child *>
extern fn void Notebook.reorder_child(&self, Widget* child, int position) @extern("gtk_notebook_reorder_child");

<* Maps to Notebook::set_action_widget *>
extern fn void Notebook.set_action_widget(&self, Widget* widget, PackType pack_type) @extern("gtk_notebook_set_action_widget");

<* Maps to Notebook::set_current_page *>
extern fn void Notebook.set_current_page(&self, int page_num) @extern("gtk_notebook_set_current_page");

<* Maps to Notebook::set_group_name *>
extern fn void Notebook.set_group_name(&self, ZString group_name) @extern("gtk_notebook_set_group_name");

<* Maps to Notebook::set_menu_label *>
extern fn void Notebook.set_menu_label(&self, Widget* child, Widget* menu_label) @extern("gtk_notebook_set_menu_label");

<* Maps to Notebook::set_menu_label_text *>
extern fn void Notebook.set_menu_label_text(&self, Widget* child, ZString menu_text) @extern("gtk_notebook_set_menu_label_text");

<* Maps to Notebook::set_scrollable *>
extern fn void Notebook.set_scrollable(&self, bool scrollable) @extern("gtk_notebook_set_scrollable");

<* Maps to Notebook::set_show_border *>
extern fn void Notebook.set_show_border(&self, bool show_border) @extern("gtk_notebook_set_show_border");

<* Maps to Notebook::set_show_tabs *>
extern fn void Notebook.set_show_tabs(&self, bool show_tabs) @extern("gtk_notebook_set_show_tabs");

<* Maps to Notebook::set_tab_detachable *>
extern fn void Notebook.set_tab_detachable(&self, Widget* child, bool detachable) @extern("gtk_notebook_set_tab_detachable");

<* Maps to Notebook::set_tab_label *>
extern fn void Notebook.set_tab_label(&self, Widget* child, Widget* tab_label) @extern("gtk_notebook_set_tab_label");

<* Maps to Notebook::set_tab_label_text *>
extern fn void Notebook.set_tab_label_text(&self, Widget* child, ZString tab_text) @extern("gtk_notebook_set_tab_label_text");

<* Maps to Notebook::set_tab_pos *>
extern fn void Notebook.set_tab_pos(&self, PositionType pos) @extern("gtk_notebook_set_tab_pos");

<* Maps to Notebook::set_tab_reorderable *>
extern fn void Notebook.set_tab_reorderable(&self, Widget* child, bool reorderable) @extern("gtk_notebook_set_tab_reorderable");


// Class Functions



<* Maps to GtkNotebookPage *>
distinct NotebookPage = void*;

// Class to parent cast.
fn gobject::Object* NotebookPage.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to NotebookPage::get_child *>
extern fn Widget* NotebookPage.get_child(&self, ) @extern("gtk_notebook_page_get_child");


// Class Functions



<* Maps to GtkNothingAction *>
distinct NothingAction = void*;

// Class to parent cast.
fn ShortcutAction* NothingAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);

// Class Constructors



// Class Methods


// Class Functions

<* Maps to get of NothingAction *>
extern fn NothingAction* nothing_action_get() @extern("gtk_nothing_action_get");



<* Maps to GtkNumericSorter *>
distinct NumericSorter = void*;

// Class to parent cast.
fn Sorter* NumericSorter.as_Sorter(&self) => (Sorter*)(self);

// Class Constructors

<* Maps to new of NumericSorter *>
extern fn NumericSorter* numeric_sorter_new(Expression* expression) @extern("gtk_numeric_sorter_new");



// Class Methods

<* Maps to NumericSorter::get_expression *>
extern fn Expression* NumericSorter.get_expression(&self, ) @extern("gtk_numeric_sorter_get_expression");

<* Maps to NumericSorter::get_sort_order *>
extern fn SortType NumericSorter.get_sort_order(&self, ) @extern("gtk_numeric_sorter_get_sort_order");

<* Maps to NumericSorter::set_expression *>
extern fn void NumericSorter.set_expression(&self, Expression* expression) @extern("gtk_numeric_sorter_set_expression");

<* Maps to NumericSorter::set_sort_order *>
extern fn void NumericSorter.set_sort_order(&self, SortType sort_order) @extern("gtk_numeric_sorter_set_sort_order");


// Class Functions



<* Maps to GtkObjectExpression *>
distinct ObjectExpression = void*;

// Class to parent cast.
fn Expression* ObjectExpression.as_Expression(&self) => (Expression*)(self);

// Class Constructors

<* Maps to new of ObjectExpression *>
extern fn ObjectExpression* object_expression_new(gobject::Object* object) @extern("gtk_object_expression_new");



// Class Methods

<* Maps to ObjectExpression::get_object *>
extern fn gobject::Object* ObjectExpression.get_object(&self, ) @extern("gtk_object_expression_get_object");


// Class Functions



<* Maps to GtkOverlay *>
distinct Overlay = void*;

// Class to parent cast.
fn Widget* Overlay.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Overlay *>
extern fn Widget* overlay_new() @extern("gtk_overlay_new");



// Class Methods

<* Maps to Overlay::add_overlay *>
extern fn void Overlay.add_overlay(&self, Widget* widget) @extern("gtk_overlay_add_overlay");

<* Maps to Overlay::get_child *>
extern fn Widget* Overlay.get_child(&self, ) @extern("gtk_overlay_get_child");

<* Maps to Overlay::get_clip_overlay *>
extern fn bool Overlay.get_clip_overlay(&self, Widget* widget) @extern("gtk_overlay_get_clip_overlay");

<* Maps to Overlay::get_measure_overlay *>
extern fn bool Overlay.get_measure_overlay(&self, Widget* widget) @extern("gtk_overlay_get_measure_overlay");

<* Maps to Overlay::remove_overlay *>
extern fn void Overlay.remove_overlay(&self, Widget* widget) @extern("gtk_overlay_remove_overlay");

<* Maps to Overlay::set_child *>
extern fn void Overlay.set_child(&self, Widget* child) @extern("gtk_overlay_set_child");

<* Maps to Overlay::set_clip_overlay *>
extern fn void Overlay.set_clip_overlay(&self, Widget* widget, bool clip_overlay) @extern("gtk_overlay_set_clip_overlay");

<* Maps to Overlay::set_measure_overlay *>
extern fn void Overlay.set_measure_overlay(&self, Widget* widget, bool measure) @extern("gtk_overlay_set_measure_overlay");


// Class Functions



<* Maps to GtkOverlayLayout *>
distinct OverlayLayout = void*;

// Class to parent cast.
fn LayoutManager* OverlayLayout.as_LayoutManager(&self) => (LayoutManager*)(self);

// Class Constructors

<* Maps to new of OverlayLayout *>
extern fn LayoutManager* overlay_layout_new() @extern("gtk_overlay_layout_new");



// Class Methods


// Class Functions



<* Maps to GtkOverlayLayoutChild *>
distinct OverlayLayoutChild = void*;

// Class to parent cast.
fn LayoutChild* OverlayLayoutChild.as_LayoutChild(&self) => (LayoutChild*)(self);

// Class Constructors



// Class Methods

<* Maps to OverlayLayoutChild::get_clip_overlay *>
extern fn bool OverlayLayoutChild.get_clip_overlay(&self, ) @extern("gtk_overlay_layout_child_get_clip_overlay");

<* Maps to OverlayLayoutChild::get_measure *>
extern fn bool OverlayLayoutChild.get_measure(&self, ) @extern("gtk_overlay_layout_child_get_measure");

<* Maps to OverlayLayoutChild::set_clip_overlay *>
extern fn void OverlayLayoutChild.set_clip_overlay(&self, bool clip_overlay) @extern("gtk_overlay_layout_child_set_clip_overlay");

<* Maps to OverlayLayoutChild::set_measure *>
extern fn void OverlayLayoutChild.set_measure(&self, bool measure) @extern("gtk_overlay_layout_child_set_measure");


// Class Functions



<* Maps to GtkPadController *>
distinct PadController = void*;

// Class to parent cast.
fn EventController* PadController.as_EventController(&self) => (EventController*)(self);

// Class Constructors

<* Maps to new of PadController *>
extern fn PadController* pad_controller_new(gio::ActionGroup* group, gdk::Device* pad) @extern("gtk_pad_controller_new");



// Class Methods

<* Maps to PadController::set_action *>
extern fn void PadController.set_action(&self, PadActionType type, int index, int mode, ZString label, ZString action_name) @extern("gtk_pad_controller_set_action");

<* Maps to PadController::set_action_entries *>
extern fn void PadController.set_action_entries(&self, PadActionEntry entries, int n_entries) @extern("gtk_pad_controller_set_action_entries");


// Class Functions



<* Maps to GtkPageSetup *>
distinct PageSetup = void*;

// Class to parent cast.
fn gobject::Object* PageSetup.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of PageSetup *>
extern fn PageSetup* page_setup_new() @extern("gtk_page_setup_new");

<* Maps to new_from_file of PageSetup *>
extern fn PageSetup* page_setup_new_from_file(ZString file_name) @extern("gtk_page_setup_new_from_file");

<* Maps to new_from_gvariant of PageSetup *>
extern fn PageSetup* page_setup_new_from_gvariant(glib::Variant* variant) @extern("gtk_page_setup_new_from_gvariant");

<* Maps to new_from_key_file of PageSetup *>
extern fn PageSetup* page_setup_new_from_key_file(glib::KeyFile* key_file, ZString group_name) @extern("gtk_page_setup_new_from_key_file");



// Class Methods

<* Maps to PageSetup::copy *>
extern fn PageSetup* PageSetup.copy(&self, ) @extern("gtk_page_setup_copy");

<* Maps to PageSetup::get_bottom_margin *>
extern fn double PageSetup.get_bottom_margin(&self, Unit unit) @extern("gtk_page_setup_get_bottom_margin");

<* Maps to PageSetup::get_left_margin *>
extern fn double PageSetup.get_left_margin(&self, Unit unit) @extern("gtk_page_setup_get_left_margin");

<* Maps to PageSetup::get_orientation *>
extern fn PageOrientation PageSetup.get_orientation(&self, ) @extern("gtk_page_setup_get_orientation");

<* Maps to PageSetup::get_page_height *>
extern fn double PageSetup.get_page_height(&self, Unit unit) @extern("gtk_page_setup_get_page_height");

<* Maps to PageSetup::get_page_width *>
extern fn double PageSetup.get_page_width(&self, Unit unit) @extern("gtk_page_setup_get_page_width");

<* Maps to PageSetup::get_paper_height *>
extern fn double PageSetup.get_paper_height(&self, Unit unit) @extern("gtk_page_setup_get_paper_height");

<* Maps to PageSetup::get_paper_size *>
extern fn PaperSize* PageSetup.get_paper_size(&self, ) @extern("gtk_page_setup_get_paper_size");

<* Maps to PageSetup::get_paper_width *>
extern fn double PageSetup.get_paper_width(&self, Unit unit) @extern("gtk_page_setup_get_paper_width");

<* Maps to PageSetup::get_right_margin *>
extern fn double PageSetup.get_right_margin(&self, Unit unit) @extern("gtk_page_setup_get_right_margin");

<* Maps to PageSetup::get_top_margin *>
extern fn double PageSetup.get_top_margin(&self, Unit unit) @extern("gtk_page_setup_get_top_margin");

<* Maps to PageSetup::load_file *>
extern fn bool PageSetup.load_file(&self, ZString file_name) @extern("gtk_page_setup_load_file");

<* Maps to PageSetup::load_key_file *>
extern fn bool PageSetup.load_key_file(&self, glib::KeyFile* key_file, ZString group_name) @extern("gtk_page_setup_load_key_file");

<* Maps to PageSetup::set_bottom_margin *>
extern fn void PageSetup.set_bottom_margin(&self, double margin, Unit unit) @extern("gtk_page_setup_set_bottom_margin");

<* Maps to PageSetup::set_left_margin *>
extern fn void PageSetup.set_left_margin(&self, double margin, Unit unit) @extern("gtk_page_setup_set_left_margin");

<* Maps to PageSetup::set_orientation *>
extern fn void PageSetup.set_orientation(&self, PageOrientation orientation) @extern("gtk_page_setup_set_orientation");

<* Maps to PageSetup::set_paper_size *>
extern fn void PageSetup.set_paper_size(&self, PaperSize* size) @extern("gtk_page_setup_set_paper_size");

<* Maps to PageSetup::set_paper_size_and_default_margins *>
extern fn void PageSetup.set_paper_size_and_default_margins(&self, PaperSize* size) @extern("gtk_page_setup_set_paper_size_and_default_margins");

<* Maps to PageSetup::set_right_margin *>
extern fn void PageSetup.set_right_margin(&self, double margin, Unit unit) @extern("gtk_page_setup_set_right_margin");

<* Maps to PageSetup::set_top_margin *>
extern fn void PageSetup.set_top_margin(&self, double margin, Unit unit) @extern("gtk_page_setup_set_top_margin");

<* Maps to PageSetup::to_file *>
extern fn bool PageSetup.to_file(&self, ZString file_name) @extern("gtk_page_setup_to_file");

<* Maps to PageSetup::to_gvariant *>
extern fn glib::Variant* PageSetup.to_gvariant(&self, ) @extern("gtk_page_setup_to_gvariant");

<* Maps to PageSetup::to_key_file *>
extern fn void PageSetup.to_key_file(&self, glib::KeyFile* key_file, ZString group_name) @extern("gtk_page_setup_to_key_file");


// Class Functions



<* Maps to GtkPageSetupUnixDialog *>
distinct PageSetupUnixDialog = void*;

// Class to parent cast.
fn Dialog* PageSetupUnixDialog.as_Dialog(&self) => (Dialog*)(self);

// Class Constructors

<* Maps to new of PageSetupUnixDialog *>
extern fn Widget* page_setup_unix_dialog_new(ZString title, Window* parent) @extern("gtk_page_setup_unix_dialog_new");



// Class Methods

<* Maps to PageSetupUnixDialog::get_page_setup *>
extern fn PageSetup* PageSetupUnixDialog.get_page_setup(&self, ) @extern("gtk_page_setup_unix_dialog_get_page_setup");

<* Maps to PageSetupUnixDialog::get_print_settings *>
extern fn PrintSettings* PageSetupUnixDialog.get_print_settings(&self, ) @extern("gtk_page_setup_unix_dialog_get_print_settings");

<* Maps to PageSetupUnixDialog::set_page_setup *>
extern fn void PageSetupUnixDialog.set_page_setup(&self, PageSetup* page_setup) @extern("gtk_page_setup_unix_dialog_set_page_setup");

<* Maps to PageSetupUnixDialog::set_print_settings *>
extern fn void PageSetupUnixDialog.set_print_settings(&self, PrintSettings* print_settings) @extern("gtk_page_setup_unix_dialog_set_print_settings");


// Class Functions



<* Maps to GtkPaned *>
distinct Paned = void*;

// Class to parent cast.
fn Widget* Paned.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Paned *>
extern fn Widget* paned_new(Orientation orientation) @extern("gtk_paned_new");



// Class Methods

<* Maps to Paned::get_end_child *>
extern fn Widget* Paned.get_end_child(&self, ) @extern("gtk_paned_get_end_child");

<* Maps to Paned::get_position *>
extern fn int Paned.get_position(&self, ) @extern("gtk_paned_get_position");

<* Maps to Paned::get_resize_end_child *>
extern fn bool Paned.get_resize_end_child(&self, ) @extern("gtk_paned_get_resize_end_child");

<* Maps to Paned::get_resize_start_child *>
extern fn bool Paned.get_resize_start_child(&self, ) @extern("gtk_paned_get_resize_start_child");

<* Maps to Paned::get_shrink_end_child *>
extern fn bool Paned.get_shrink_end_child(&self, ) @extern("gtk_paned_get_shrink_end_child");

<* Maps to Paned::get_shrink_start_child *>
extern fn bool Paned.get_shrink_start_child(&self, ) @extern("gtk_paned_get_shrink_start_child");

<* Maps to Paned::get_start_child *>
extern fn Widget* Paned.get_start_child(&self, ) @extern("gtk_paned_get_start_child");

<* Maps to Paned::get_wide_handle *>
extern fn bool Paned.get_wide_handle(&self, ) @extern("gtk_paned_get_wide_handle");

<* Maps to Paned::set_end_child *>
extern fn void Paned.set_end_child(&self, Widget* child) @extern("gtk_paned_set_end_child");

<* Maps to Paned::set_position *>
extern fn void Paned.set_position(&self, int position) @extern("gtk_paned_set_position");

<* Maps to Paned::set_resize_end_child *>
extern fn void Paned.set_resize_end_child(&self, bool resize) @extern("gtk_paned_set_resize_end_child");

<* Maps to Paned::set_resize_start_child *>
extern fn void Paned.set_resize_start_child(&self, bool resize) @extern("gtk_paned_set_resize_start_child");

<* Maps to Paned::set_shrink_end_child *>
extern fn void Paned.set_shrink_end_child(&self, bool resize) @extern("gtk_paned_set_shrink_end_child");

<* Maps to Paned::set_shrink_start_child *>
extern fn void Paned.set_shrink_start_child(&self, bool resize) @extern("gtk_paned_set_shrink_start_child");

<* Maps to Paned::set_start_child *>
extern fn void Paned.set_start_child(&self, Widget* child) @extern("gtk_paned_set_start_child");

<* Maps to Paned::set_wide_handle *>
extern fn void Paned.set_wide_handle(&self, bool wide) @extern("gtk_paned_set_wide_handle");


// Class Functions



<* Maps to GtkParamSpecExpression *>
distinct ParamSpecExpression = void*;

// Class to parent cast.
fn gobject::ParamSpec* ParamSpecExpression.as_gobject_ParamSpec(&self) => (gobject::ParamSpec*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GtkPasswordEntry *>
distinct PasswordEntry = void*;

// Class to parent cast.
fn Widget* PasswordEntry.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of PasswordEntry *>
extern fn Widget* password_entry_new() @extern("gtk_password_entry_new");



// Class Methods

<* Maps to PasswordEntry::get_extra_menu *>
extern fn gio::MenuModel* PasswordEntry.get_extra_menu(&self, ) @extern("gtk_password_entry_get_extra_menu");

<* Maps to PasswordEntry::get_show_peek_icon *>
extern fn bool PasswordEntry.get_show_peek_icon(&self, ) @extern("gtk_password_entry_get_show_peek_icon");

<* Maps to PasswordEntry::set_extra_menu *>
extern fn void PasswordEntry.set_extra_menu(&self, gio::MenuModel* model) @extern("gtk_password_entry_set_extra_menu");

<* Maps to PasswordEntry::set_show_peek_icon *>
extern fn void PasswordEntry.set_show_peek_icon(&self, bool show_peek_icon) @extern("gtk_password_entry_set_show_peek_icon");


// Class Functions



<* Maps to GtkPasswordEntryBuffer *>
distinct PasswordEntryBuffer = void*;

// Class to parent cast.
fn EntryBuffer* PasswordEntryBuffer.as_EntryBuffer(&self) => (EntryBuffer*)(self);

// Class Constructors

<* Maps to new of PasswordEntryBuffer *>
extern fn EntryBuffer* password_entry_buffer_new() @extern("gtk_password_entry_buffer_new");



// Class Methods


// Class Functions



<* Maps to GtkPicture *>
distinct Picture = void*;

// Class to parent cast.
fn Widget* Picture.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Picture *>
extern fn Widget* picture_new() @extern("gtk_picture_new");

<* Maps to new_for_file of Picture *>
extern fn Widget* picture_new_for_file(gio::File* file) @extern("gtk_picture_new_for_file");

<* Maps to new_for_filename of Picture *>
extern fn Widget* picture_new_for_filename(ZString filename) @extern("gtk_picture_new_for_filename");

<* Maps to new_for_paintable of Picture *>
extern fn Widget* picture_new_for_paintable(gdk::Paintable* paintable) @extern("gtk_picture_new_for_paintable");

<* Maps to new_for_pixbuf of Picture *>
extern fn Widget* picture_new_for_pixbuf(gdkpixbuf::Pixbuf* pixbuf) @extern("gtk_picture_new_for_pixbuf");

<* Maps to new_for_resource of Picture *>
extern fn Widget* picture_new_for_resource(ZString resource_path) @extern("gtk_picture_new_for_resource");



// Class Methods

<* Maps to Picture::get_alternative_text *>
extern fn ZString Picture.get_alternative_text(&self, ) @extern("gtk_picture_get_alternative_text");

<* Maps to Picture::get_can_shrink *>
extern fn bool Picture.get_can_shrink(&self, ) @extern("gtk_picture_get_can_shrink");

<* Maps to Picture::get_content_fit *>
extern fn ContentFit Picture.get_content_fit(&self, ) @extern("gtk_picture_get_content_fit");

<* Maps to Picture::get_file *>
extern fn gio::File* Picture.get_file(&self, ) @extern("gtk_picture_get_file");

<* Maps to Picture::get_keep_aspect_ratio *>
extern fn bool Picture.get_keep_aspect_ratio(&self, ) @extern("gtk_picture_get_keep_aspect_ratio");

<* Maps to Picture::get_paintable *>
extern fn gdk::Paintable* Picture.get_paintable(&self, ) @extern("gtk_picture_get_paintable");

<* Maps to Picture::set_alternative_text *>
extern fn void Picture.set_alternative_text(&self, ZString alternative_text) @extern("gtk_picture_set_alternative_text");

<* Maps to Picture::set_can_shrink *>
extern fn void Picture.set_can_shrink(&self, bool can_shrink) @extern("gtk_picture_set_can_shrink");

<* Maps to Picture::set_content_fit *>
extern fn void Picture.set_content_fit(&self, ContentFit content_fit) @extern("gtk_picture_set_content_fit");

<* Maps to Picture::set_file *>
extern fn void Picture.set_file(&self, gio::File* file) @extern("gtk_picture_set_file");

<* Maps to Picture::set_filename *>
extern fn void Picture.set_filename(&self, ZString filename) @extern("gtk_picture_set_filename");

<* Maps to Picture::set_keep_aspect_ratio *>
extern fn void Picture.set_keep_aspect_ratio(&self, bool keep_aspect_ratio) @extern("gtk_picture_set_keep_aspect_ratio");

<* Maps to Picture::set_paintable *>
extern fn void Picture.set_paintable(&self, gdk::Paintable* paintable) @extern("gtk_picture_set_paintable");

<* Maps to Picture::set_pixbuf *>
extern fn void Picture.set_pixbuf(&self, gdkpixbuf::Pixbuf* pixbuf) @extern("gtk_picture_set_pixbuf");

<* Maps to Picture::set_resource *>
extern fn void Picture.set_resource(&self, ZString resource_path) @extern("gtk_picture_set_resource");


// Class Functions



<* Maps to GtkPopover *>
distinct Popover = void*;

// Class to parent cast.
fn Widget* Popover.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Popover *>
extern fn Widget* popover_new() @extern("gtk_popover_new");



// Class Methods

<* Maps to Popover::get_autohide *>
extern fn bool Popover.get_autohide(&self, ) @extern("gtk_popover_get_autohide");

<* Maps to Popover::get_cascade_popdown *>
extern fn bool Popover.get_cascade_popdown(&self, ) @extern("gtk_popover_get_cascade_popdown");

<* Maps to Popover::get_child *>
extern fn Widget* Popover.get_child(&self, ) @extern("gtk_popover_get_child");

<* Maps to Popover::get_has_arrow *>
extern fn bool Popover.get_has_arrow(&self, ) @extern("gtk_popover_get_has_arrow");

<* Maps to Popover::get_mnemonics_visible *>
extern fn bool Popover.get_mnemonics_visible(&self, ) @extern("gtk_popover_get_mnemonics_visible");

<* Maps to Popover::get_offset *>
extern fn void Popover.get_offset(&self, int* x_offset, int* y_offset) @extern("gtk_popover_get_offset");

<* Maps to Popover::get_pointing_to *>
extern fn bool Popover.get_pointing_to(&self, gdk::Rectangle* rect) @extern("gtk_popover_get_pointing_to");

<* Maps to Popover::get_position *>
extern fn PositionType Popover.get_position(&self, ) @extern("gtk_popover_get_position");

<* Maps to Popover::popdown *>
extern fn void Popover.popdown(&self, ) @extern("gtk_popover_popdown");

<* Maps to Popover::popup *>
extern fn void Popover.popup(&self, ) @extern("gtk_popover_popup");

<* Maps to Popover::present *>
extern fn void Popover.present(&self, ) @extern("gtk_popover_present");

<* Maps to Popover::set_autohide *>
extern fn void Popover.set_autohide(&self, bool autohide) @extern("gtk_popover_set_autohide");

<* Maps to Popover::set_cascade_popdown *>
extern fn void Popover.set_cascade_popdown(&self, bool cascade_popdown) @extern("gtk_popover_set_cascade_popdown");

<* Maps to Popover::set_child *>
extern fn void Popover.set_child(&self, Widget* child) @extern("gtk_popover_set_child");

<* Maps to Popover::set_default_widget *>
extern fn void Popover.set_default_widget(&self, Widget* widget) @extern("gtk_popover_set_default_widget");

<* Maps to Popover::set_has_arrow *>
extern fn void Popover.set_has_arrow(&self, bool has_arrow) @extern("gtk_popover_set_has_arrow");

<* Maps to Popover::set_mnemonics_visible *>
extern fn void Popover.set_mnemonics_visible(&self, bool mnemonics_visible) @extern("gtk_popover_set_mnemonics_visible");

<* Maps to Popover::set_offset *>
extern fn void Popover.set_offset(&self, int x_offset, int y_offset) @extern("gtk_popover_set_offset");

<* Maps to Popover::set_pointing_to *>
extern fn void Popover.set_pointing_to(&self, gdk::Rectangle* rect) @extern("gtk_popover_set_pointing_to");

<* Maps to Popover::set_position *>
extern fn void Popover.set_position(&self, PositionType position) @extern("gtk_popover_set_position");


// Class Functions



<* Maps to GtkPopoverMenu *>
distinct PopoverMenu = void*;

// Class to parent cast.
fn Popover* PopoverMenu.as_Popover(&self) => (Popover*)(self);

// Class Constructors

<* Maps to new_from_model of PopoverMenu *>
extern fn Widget* popover_menu_new_from_model(gio::MenuModel* model) @extern("gtk_popover_menu_new_from_model");

<* Maps to new_from_model_full of PopoverMenu *>
extern fn Widget* popover_menu_new_from_model_full(gio::MenuModel* model, PopoverMenuFlags flags) @extern("gtk_popover_menu_new_from_model_full");



// Class Methods

<* Maps to PopoverMenu::add_child *>
extern fn bool PopoverMenu.add_child(&self, Widget* child, ZString id) @extern("gtk_popover_menu_add_child");

<* Maps to PopoverMenu::get_flags *>
extern fn PopoverMenuFlags PopoverMenu.get_flags(&self, ) @extern("gtk_popover_menu_get_flags");

<* Maps to PopoverMenu::get_menu_model *>
extern fn gio::MenuModel* PopoverMenu.get_menu_model(&self, ) @extern("gtk_popover_menu_get_menu_model");

<* Maps to PopoverMenu::remove_child *>
extern fn bool PopoverMenu.remove_child(&self, Widget* child) @extern("gtk_popover_menu_remove_child");

<* Maps to PopoverMenu::set_flags *>
extern fn void PopoverMenu.set_flags(&self, PopoverMenuFlags flags) @extern("gtk_popover_menu_set_flags");

<* Maps to PopoverMenu::set_menu_model *>
extern fn void PopoverMenu.set_menu_model(&self, gio::MenuModel* model) @extern("gtk_popover_menu_set_menu_model");


// Class Functions



<* Maps to GtkPopoverMenuBar *>
distinct PopoverMenuBar = void*;

// Class to parent cast.
fn Widget* PopoverMenuBar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new_from_model of PopoverMenuBar *>
extern fn Widget* popover_menu_bar_new_from_model(gio::MenuModel* model) @extern("gtk_popover_menu_bar_new_from_model");



// Class Methods

<* Maps to PopoverMenuBar::add_child *>
extern fn bool PopoverMenuBar.add_child(&self, Widget* child, ZString id) @extern("gtk_popover_menu_bar_add_child");

<* Maps to PopoverMenuBar::get_menu_model *>
extern fn gio::MenuModel* PopoverMenuBar.get_menu_model(&self, ) @extern("gtk_popover_menu_bar_get_menu_model");

<* Maps to PopoverMenuBar::remove_child *>
extern fn bool PopoverMenuBar.remove_child(&self, Widget* child) @extern("gtk_popover_menu_bar_remove_child");

<* Maps to PopoverMenuBar::set_menu_model *>
extern fn void PopoverMenuBar.set_menu_model(&self, gio::MenuModel* model) @extern("gtk_popover_menu_bar_set_menu_model");


// Class Functions



<* Maps to GtkPrintContext *>
distinct PrintContext = void*;

// Class to parent cast.
fn gobject::Object* PrintContext.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to PrintContext::create_pango_context *>
extern fn pango::Context* PrintContext.create_pango_context(&self, ) @extern("gtk_print_context_create_pango_context");

<* Maps to PrintContext::create_pango_layout *>
extern fn pango::Layout* PrintContext.create_pango_layout(&self, ) @extern("gtk_print_context_create_pango_layout");

<* Maps to PrintContext::get_cairo_context *>
extern fn cairo::Context* PrintContext.get_cairo_context(&self, ) @extern("gtk_print_context_get_cairo_context");

<* Maps to PrintContext::get_dpi_x *>
extern fn double PrintContext.get_dpi_x(&self, ) @extern("gtk_print_context_get_dpi_x");

<* Maps to PrintContext::get_dpi_y *>
extern fn double PrintContext.get_dpi_y(&self, ) @extern("gtk_print_context_get_dpi_y");

<* Maps to PrintContext::get_hard_margins *>
extern fn bool PrintContext.get_hard_margins(&self, double* top, double* bottom, double* left, double* right) @extern("gtk_print_context_get_hard_margins");

<* Maps to PrintContext::get_height *>
extern fn double PrintContext.get_height(&self, ) @extern("gtk_print_context_get_height");

<* Maps to PrintContext::get_page_setup *>
extern fn PageSetup* PrintContext.get_page_setup(&self, ) @extern("gtk_print_context_get_page_setup");

<* Maps to PrintContext::get_pango_fontmap *>
extern fn pango::FontMap* PrintContext.get_pango_fontmap(&self, ) @extern("gtk_print_context_get_pango_fontmap");

<* Maps to PrintContext::get_width *>
extern fn double PrintContext.get_width(&self, ) @extern("gtk_print_context_get_width");

<* Maps to PrintContext::set_cairo_context *>
extern fn void PrintContext.set_cairo_context(&self, cairo::Context* cr, double dpi_x, double dpi_y) @extern("gtk_print_context_set_cairo_context");


// Class Functions



<* Maps to GtkPrintDialog *>
distinct PrintDialog = void*;

// Class to parent cast.
fn gobject::Object* PrintDialog.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of PrintDialog *>
extern fn PrintDialog* print_dialog_new() @extern("gtk_print_dialog_new");



// Class Methods

<* Maps to PrintDialog::get_accept_label *>
extern fn ZString PrintDialog.get_accept_label(&self, ) @extern("gtk_print_dialog_get_accept_label");

<* Maps to PrintDialog::get_modal *>
extern fn bool PrintDialog.get_modal(&self, ) @extern("gtk_print_dialog_get_modal");

<* Maps to PrintDialog::get_page_setup *>
extern fn PageSetup* PrintDialog.get_page_setup(&self, ) @extern("gtk_print_dialog_get_page_setup");

<* Maps to PrintDialog::get_print_settings *>
extern fn PrintSettings* PrintDialog.get_print_settings(&self, ) @extern("gtk_print_dialog_get_print_settings");

<* Maps to PrintDialog::get_title *>
extern fn ZString PrintDialog.get_title(&self, ) @extern("gtk_print_dialog_get_title");

<* Maps to PrintDialog::print *>
extern fn void PrintDialog.print(&self, Window* parent, PrintSetup* setup, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_print_dialog_print");

<* Maps to PrintDialog::print_file *>
extern fn void PrintDialog.print_file(&self, Window* parent, PrintSetup* setup, gio::File* file, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_print_dialog_print_file");

<* Maps to PrintDialog::print_file_finish *>
extern fn bool PrintDialog.print_file_finish(&self, gio::AsyncResult* result) @extern("gtk_print_dialog_print_file_finish");

<* Maps to PrintDialog::print_finish *>
extern fn gio::OutputStream* PrintDialog.print_finish(&self, gio::AsyncResult* result) @extern("gtk_print_dialog_print_finish");

<* Maps to PrintDialog::set_accept_label *>
extern fn void PrintDialog.set_accept_label(&self, ZString accept_label) @extern("gtk_print_dialog_set_accept_label");

<* Maps to PrintDialog::set_modal *>
extern fn void PrintDialog.set_modal(&self, bool modal) @extern("gtk_print_dialog_set_modal");

<* Maps to PrintDialog::set_page_setup *>
extern fn void PrintDialog.set_page_setup(&self, PageSetup* page_setup) @extern("gtk_print_dialog_set_page_setup");

<* Maps to PrintDialog::set_print_settings *>
extern fn void PrintDialog.set_print_settings(&self, PrintSettings* print_settings) @extern("gtk_print_dialog_set_print_settings");

<* Maps to PrintDialog::set_title *>
extern fn void PrintDialog.set_title(&self, ZString title) @extern("gtk_print_dialog_set_title");

<* Maps to PrintDialog::setup *>
extern fn void PrintDialog.setup(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_print_dialog_setup");

<* Maps to PrintDialog::setup_finish *>
extern fn PrintSetup* PrintDialog.setup_finish(&self, gio::AsyncResult* result) @extern("gtk_print_dialog_setup_finish");


// Class Functions



<* Maps to GtkPrintJob *>
distinct PrintJob = void*;

// Class to parent cast.
fn gobject::Object* PrintJob.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of PrintJob *>
extern fn PrintJob* print_job_new(ZString title, Printer* printer, PrintSettings* settings, PageSetup* page_setup) @extern("gtk_print_job_new");



// Class Methods

<* Maps to PrintJob::get_collate *>
extern fn bool PrintJob.get_collate(&self, ) @extern("gtk_print_job_get_collate");

<* Maps to PrintJob::get_n_up *>
extern fn uint PrintJob.get_n_up(&self, ) @extern("gtk_print_job_get_n_up");

<* Maps to PrintJob::get_n_up_layout *>
extern fn NumberUpLayout PrintJob.get_n_up_layout(&self, ) @extern("gtk_print_job_get_n_up_layout");

<* Maps to PrintJob::get_num_copies *>
extern fn int PrintJob.get_num_copies(&self, ) @extern("gtk_print_job_get_num_copies");

<* Maps to PrintJob::get_page_ranges *>
extern fn PageRange PrintJob.get_page_ranges(&self, int* n_ranges) @extern("gtk_print_job_get_page_ranges");

<* Maps to PrintJob::get_page_set *>
extern fn PageSet PrintJob.get_page_set(&self, ) @extern("gtk_print_job_get_page_set");

<* Maps to PrintJob::get_pages *>
extern fn PrintPages PrintJob.get_pages(&self, ) @extern("gtk_print_job_get_pages");

<* Maps to PrintJob::get_printer *>
extern fn Printer* PrintJob.get_printer(&self, ) @extern("gtk_print_job_get_printer");

<* Maps to PrintJob::get_reverse *>
extern fn bool PrintJob.get_reverse(&self, ) @extern("gtk_print_job_get_reverse");

<* Maps to PrintJob::get_rotate *>
extern fn bool PrintJob.get_rotate(&self, ) @extern("gtk_print_job_get_rotate");

<* Maps to PrintJob::get_scale *>
extern fn double PrintJob.get_scale(&self, ) @extern("gtk_print_job_get_scale");

<* Maps to PrintJob::get_settings *>
extern fn PrintSettings* PrintJob.get_settings(&self, ) @extern("gtk_print_job_get_settings");

<* Maps to PrintJob::get_status *>
extern fn PrintStatus PrintJob.get_status(&self, ) @extern("gtk_print_job_get_status");

<* Maps to PrintJob::get_surface *>
extern fn cairo::Surface* PrintJob.get_surface(&self, ) @extern("gtk_print_job_get_surface");

<* Maps to PrintJob::get_title *>
extern fn ZString PrintJob.get_title(&self, ) @extern("gtk_print_job_get_title");

<* Maps to PrintJob::get_track_print_status *>
extern fn bool PrintJob.get_track_print_status(&self, ) @extern("gtk_print_job_get_track_print_status");

<* Maps to PrintJob::send *>
extern fn void PrintJob.send(&self, PrintJobCompleteFunc callback, void* user_data, glib::DestroyNotify dnotify) @extern("gtk_print_job_send");

<* Maps to PrintJob::set_collate *>
extern fn void PrintJob.set_collate(&self, bool collate) @extern("gtk_print_job_set_collate");

<* Maps to PrintJob::set_n_up *>
extern fn void PrintJob.set_n_up(&self, uint n_up) @extern("gtk_print_job_set_n_up");

<* Maps to PrintJob::set_n_up_layout *>
extern fn void PrintJob.set_n_up_layout(&self, NumberUpLayout layout) @extern("gtk_print_job_set_n_up_layout");

<* Maps to PrintJob::set_num_copies *>
extern fn void PrintJob.set_num_copies(&self, int num_copies) @extern("gtk_print_job_set_num_copies");

<* Maps to PrintJob::set_page_ranges *>
extern fn void PrintJob.set_page_ranges(&self, PageRange ranges, int n_ranges) @extern("gtk_print_job_set_page_ranges");

<* Maps to PrintJob::set_page_set *>
extern fn void PrintJob.set_page_set(&self, PageSet page_set) @extern("gtk_print_job_set_page_set");

<* Maps to PrintJob::set_pages *>
extern fn void PrintJob.set_pages(&self, PrintPages pages) @extern("gtk_print_job_set_pages");

<* Maps to PrintJob::set_reverse *>
extern fn void PrintJob.set_reverse(&self, bool reverse) @extern("gtk_print_job_set_reverse");

<* Maps to PrintJob::set_rotate *>
extern fn void PrintJob.set_rotate(&self, bool rotate) @extern("gtk_print_job_set_rotate");

<* Maps to PrintJob::set_scale *>
extern fn void PrintJob.set_scale(&self, double scale) @extern("gtk_print_job_set_scale");

<* Maps to PrintJob::set_source_fd *>
extern fn bool PrintJob.set_source_fd(&self, int fd) @extern("gtk_print_job_set_source_fd");

<* Maps to PrintJob::set_source_file *>
extern fn bool PrintJob.set_source_file(&self, ZString filename) @extern("gtk_print_job_set_source_file");

<* Maps to PrintJob::set_track_print_status *>
extern fn void PrintJob.set_track_print_status(&self, bool track_status) @extern("gtk_print_job_set_track_print_status");


// Class Functions



<* Maps to GtkPrintOperation *>
distinct PrintOperation = void*;

// Class to parent cast.
fn gobject::Object* PrintOperation.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of PrintOperation *>
extern fn PrintOperation* print_operation_new() @extern("gtk_print_operation_new");



// Class Methods

<* Maps to PrintOperation::cancel *>
extern fn void PrintOperation.cancel(&self, ) @extern("gtk_print_operation_cancel");

<* Maps to PrintOperation::draw_page_finish *>
extern fn void PrintOperation.draw_page_finish(&self, ) @extern("gtk_print_operation_draw_page_finish");

<* Maps to PrintOperation::get_default_page_setup *>
extern fn PageSetup* PrintOperation.get_default_page_setup(&self, ) @extern("gtk_print_operation_get_default_page_setup");

<* Maps to PrintOperation::get_embed_page_setup *>
extern fn bool PrintOperation.get_embed_page_setup(&self, ) @extern("gtk_print_operation_get_embed_page_setup");

<* Maps to PrintOperation::get_error *>
extern fn void PrintOperation.get_error(&self, ) @extern("gtk_print_operation_get_error");

<* Maps to PrintOperation::get_has_selection *>
extern fn bool PrintOperation.get_has_selection(&self, ) @extern("gtk_print_operation_get_has_selection");

<* Maps to PrintOperation::get_n_pages_to_print *>
extern fn int PrintOperation.get_n_pages_to_print(&self, ) @extern("gtk_print_operation_get_n_pages_to_print");

<* Maps to PrintOperation::get_print_settings *>
extern fn PrintSettings* PrintOperation.get_print_settings(&self, ) @extern("gtk_print_operation_get_print_settings");

<* Maps to PrintOperation::get_status *>
extern fn PrintStatus PrintOperation.get_status(&self, ) @extern("gtk_print_operation_get_status");

<* Maps to PrintOperation::get_status_string *>
extern fn ZString PrintOperation.get_status_string(&self, ) @extern("gtk_print_operation_get_status_string");

<* Maps to PrintOperation::get_support_selection *>
extern fn bool PrintOperation.get_support_selection(&self, ) @extern("gtk_print_operation_get_support_selection");

<* Maps to PrintOperation::is_finished *>
extern fn bool PrintOperation.is_finished(&self, ) @extern("gtk_print_operation_is_finished");

<* Maps to PrintOperation::run *>
extern fn PrintOperationResult PrintOperation.run(&self, PrintOperationAction action, Window* parent) @extern("gtk_print_operation_run");

<* Maps to PrintOperation::set_allow_async *>
extern fn void PrintOperation.set_allow_async(&self, bool allow_async) @extern("gtk_print_operation_set_allow_async");

<* Maps to PrintOperation::set_current_page *>
extern fn void PrintOperation.set_current_page(&self, int current_page) @extern("gtk_print_operation_set_current_page");

<* Maps to PrintOperation::set_custom_tab_label *>
extern fn void PrintOperation.set_custom_tab_label(&self, ZString label) @extern("gtk_print_operation_set_custom_tab_label");

<* Maps to PrintOperation::set_default_page_setup *>
extern fn void PrintOperation.set_default_page_setup(&self, PageSetup* default_page_setup) @extern("gtk_print_operation_set_default_page_setup");

<* Maps to PrintOperation::set_defer_drawing *>
extern fn void PrintOperation.set_defer_drawing(&self, ) @extern("gtk_print_operation_set_defer_drawing");

<* Maps to PrintOperation::set_embed_page_setup *>
extern fn void PrintOperation.set_embed_page_setup(&self, bool embed) @extern("gtk_print_operation_set_embed_page_setup");

<* Maps to PrintOperation::set_export_filename *>
extern fn void PrintOperation.set_export_filename(&self, ZString filename) @extern("gtk_print_operation_set_export_filename");

<* Maps to PrintOperation::set_has_selection *>
extern fn void PrintOperation.set_has_selection(&self, bool has_selection) @extern("gtk_print_operation_set_has_selection");

<* Maps to PrintOperation::set_job_name *>
extern fn void PrintOperation.set_job_name(&self, ZString job_name) @extern("gtk_print_operation_set_job_name");

<* Maps to PrintOperation::set_n_pages *>
extern fn void PrintOperation.set_n_pages(&self, int n_pages) @extern("gtk_print_operation_set_n_pages");

<* Maps to PrintOperation::set_print_settings *>
extern fn void PrintOperation.set_print_settings(&self, PrintSettings* print_settings) @extern("gtk_print_operation_set_print_settings");

<* Maps to PrintOperation::set_show_progress *>
extern fn void PrintOperation.set_show_progress(&self, bool show_progress) @extern("gtk_print_operation_set_show_progress");

<* Maps to PrintOperation::set_support_selection *>
extern fn void PrintOperation.set_support_selection(&self, bool support_selection) @extern("gtk_print_operation_set_support_selection");

<* Maps to PrintOperation::set_track_print_status *>
extern fn void PrintOperation.set_track_print_status(&self, bool track_status) @extern("gtk_print_operation_set_track_print_status");

<* Maps to PrintOperation::set_unit *>
extern fn void PrintOperation.set_unit(&self, Unit unit) @extern("gtk_print_operation_set_unit");

<* Maps to PrintOperation::set_use_full_page *>
extern fn void PrintOperation.set_use_full_page(&self, bool full_page) @extern("gtk_print_operation_set_use_full_page");


// Class Functions



<* Maps to GtkPrintSettings *>
distinct PrintSettings = void*;

// Class to parent cast.
fn gobject::Object* PrintSettings.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of PrintSettings *>
extern fn PrintSettings* print_settings_new() @extern("gtk_print_settings_new");

<* Maps to new_from_file of PrintSettings *>
extern fn PrintSettings* print_settings_new_from_file(ZString file_name) @extern("gtk_print_settings_new_from_file");

<* Maps to new_from_gvariant of PrintSettings *>
extern fn PrintSettings* print_settings_new_from_gvariant(glib::Variant* variant) @extern("gtk_print_settings_new_from_gvariant");

<* Maps to new_from_key_file of PrintSettings *>
extern fn PrintSettings* print_settings_new_from_key_file(glib::KeyFile* key_file, ZString group_name) @extern("gtk_print_settings_new_from_key_file");



// Class Methods

<* Maps to PrintSettings::copy *>
extern fn PrintSettings* PrintSettings.copy(&self, ) @extern("gtk_print_settings_copy");

<* Maps to PrintSettings::for_each *>
extern fn void PrintSettings.for_each(&self, PrintSettingsFunc func, void* user_data) @extern("gtk_print_settings_foreach");

<* Maps to PrintSettings::get *>
extern fn ZString PrintSettings.get(&self, ZString key) @extern("gtk_print_settings_get");

<* Maps to PrintSettings::get_bool *>
extern fn bool PrintSettings.get_bool(&self, ZString key) @extern("gtk_print_settings_get_bool");

<* Maps to PrintSettings::get_collate *>
extern fn bool PrintSettings.get_collate(&self, ) @extern("gtk_print_settings_get_collate");

<* Maps to PrintSettings::get_default_source *>
extern fn ZString PrintSettings.get_default_source(&self, ) @extern("gtk_print_settings_get_default_source");

<* Maps to PrintSettings::get_dither *>
extern fn ZString PrintSettings.get_dither(&self, ) @extern("gtk_print_settings_get_dither");

<* Maps to PrintSettings::get_double *>
extern fn double PrintSettings.get_double(&self, ZString key) @extern("gtk_print_settings_get_double");

<* Maps to PrintSettings::get_double_with_default *>
extern fn double PrintSettings.get_double_with_default(&self, ZString key, double defaultValue) @extern("gtk_print_settings_get_double_with_default");

<* Maps to PrintSettings::get_duplex *>
extern fn PrintDuplex PrintSettings.get_duplex(&self, ) @extern("gtk_print_settings_get_duplex");

<* Maps to PrintSettings::get_finishings *>
extern fn ZString PrintSettings.get_finishings(&self, ) @extern("gtk_print_settings_get_finishings");

<* Maps to PrintSettings::get_int *>
extern fn int PrintSettings.get_int(&self, ZString key) @extern("gtk_print_settings_get_int");

<* Maps to PrintSettings::get_int_with_default *>
extern fn int PrintSettings.get_int_with_default(&self, ZString key, int defaultValue) @extern("gtk_print_settings_get_int_with_default");

<* Maps to PrintSettings::get_length *>
extern fn double PrintSettings.get_length(&self, ZString key, Unit unit) @extern("gtk_print_settings_get_length");

<* Maps to PrintSettings::get_media_type *>
extern fn ZString PrintSettings.get_media_type(&self, ) @extern("gtk_print_settings_get_media_type");

<* Maps to PrintSettings::get_n_copies *>
extern fn int PrintSettings.get_n_copies(&self, ) @extern("gtk_print_settings_get_n_copies");

<* Maps to PrintSettings::get_number_up *>
extern fn int PrintSettings.get_number_up(&self, ) @extern("gtk_print_settings_get_number_up");

<* Maps to PrintSettings::get_number_up_layout *>
extern fn NumberUpLayout PrintSettings.get_number_up_layout(&self, ) @extern("gtk_print_settings_get_number_up_layout");

<* Maps to PrintSettings::get_orientation *>
extern fn PageOrientation PrintSettings.get_orientation(&self, ) @extern("gtk_print_settings_get_orientation");

<* Maps to PrintSettings::get_output_bin *>
extern fn ZString PrintSettings.get_output_bin(&self, ) @extern("gtk_print_settings_get_output_bin");

<* Maps to PrintSettings::get_page_ranges *>
extern fn PageRange PrintSettings.get_page_ranges(&self, int* num_ranges) @extern("gtk_print_settings_get_page_ranges");

<* Maps to PrintSettings::get_page_set *>
extern fn PageSet PrintSettings.get_page_set(&self, ) @extern("gtk_print_settings_get_page_set");

<* Maps to PrintSettings::get_paper_height *>
extern fn double PrintSettings.get_paper_height(&self, Unit unit) @extern("gtk_print_settings_get_paper_height");

<* Maps to PrintSettings::get_paper_size *>
extern fn PaperSize* PrintSettings.get_paper_size(&self, ) @extern("gtk_print_settings_get_paper_size");

<* Maps to PrintSettings::get_paper_width *>
extern fn double PrintSettings.get_paper_width(&self, Unit unit) @extern("gtk_print_settings_get_paper_width");

<* Maps to PrintSettings::get_print_pages *>
extern fn PrintPages PrintSettings.get_print_pages(&self, ) @extern("gtk_print_settings_get_print_pages");

<* Maps to PrintSettings::get_printer *>
extern fn ZString PrintSettings.get_printer(&self, ) @extern("gtk_print_settings_get_printer");

<* Maps to PrintSettings::get_printer_lpi *>
extern fn double PrintSettings.get_printer_lpi(&self, ) @extern("gtk_print_settings_get_printer_lpi");

<* Maps to PrintSettings::get_quality *>
extern fn PrintQuality PrintSettings.get_quality(&self, ) @extern("gtk_print_settings_get_quality");

<* Maps to PrintSettings::get_resolution *>
extern fn int PrintSettings.get_resolution(&self, ) @extern("gtk_print_settings_get_resolution");

<* Maps to PrintSettings::get_resolution_x *>
extern fn int PrintSettings.get_resolution_x(&self, ) @extern("gtk_print_settings_get_resolution_x");

<* Maps to PrintSettings::get_resolution_y *>
extern fn int PrintSettings.get_resolution_y(&self, ) @extern("gtk_print_settings_get_resolution_y");

<* Maps to PrintSettings::get_reverse *>
extern fn bool PrintSettings.get_reverse(&self, ) @extern("gtk_print_settings_get_reverse");

<* Maps to PrintSettings::get_scale *>
extern fn double PrintSettings.get_scale(&self, ) @extern("gtk_print_settings_get_scale");

<* Maps to PrintSettings::get_use_color *>
extern fn bool PrintSettings.get_use_color(&self, ) @extern("gtk_print_settings_get_use_color");

<* Maps to PrintSettings::has_key *>
extern fn bool PrintSettings.has_key(&self, ZString key) @extern("gtk_print_settings_has_key");

<* Maps to PrintSettings::load_file *>
extern fn bool PrintSettings.load_file(&self, ZString file_name) @extern("gtk_print_settings_load_file");

<* Maps to PrintSettings::load_key_file *>
extern fn bool PrintSettings.load_key_file(&self, glib::KeyFile* key_file, ZString group_name) @extern("gtk_print_settings_load_key_file");

<* Maps to PrintSettings::set *>
extern fn void PrintSettings.set(&self, ZString key, ZString value) @extern("gtk_print_settings_set");

<* Maps to PrintSettings::set_bool *>
extern fn void PrintSettings.set_bool(&self, ZString key, bool value) @extern("gtk_print_settings_set_bool");

<* Maps to PrintSettings::set_collate *>
extern fn void PrintSettings.set_collate(&self, bool collate) @extern("gtk_print_settings_set_collate");

<* Maps to PrintSettings::set_default_source *>
extern fn void PrintSettings.set_default_source(&self, ZString default_source) @extern("gtk_print_settings_set_default_source");

<* Maps to PrintSettings::set_dither *>
extern fn void PrintSettings.set_dither(&self, ZString dither) @extern("gtk_print_settings_set_dither");

<* Maps to PrintSettings::set_double *>
extern fn void PrintSettings.set_double(&self, ZString key, double value) @extern("gtk_print_settings_set_double");

<* Maps to PrintSettings::set_duplex *>
extern fn void PrintSettings.set_duplex(&self, PrintDuplex duplex) @extern("gtk_print_settings_set_duplex");

<* Maps to PrintSettings::set_finishings *>
extern fn void PrintSettings.set_finishings(&self, ZString finishings) @extern("gtk_print_settings_set_finishings");

<* Maps to PrintSettings::set_int *>
extern fn void PrintSettings.set_int(&self, ZString key, int value) @extern("gtk_print_settings_set_int");

<* Maps to PrintSettings::set_length *>
extern fn void PrintSettings.set_length(&self, ZString key, double value, Unit unit) @extern("gtk_print_settings_set_length");

<* Maps to PrintSettings::set_media_type *>
extern fn void PrintSettings.set_media_type(&self, ZString media_type) @extern("gtk_print_settings_set_media_type");

<* Maps to PrintSettings::set_n_copies *>
extern fn void PrintSettings.set_n_copies(&self, int num_copies) @extern("gtk_print_settings_set_n_copies");

<* Maps to PrintSettings::set_number_up *>
extern fn void PrintSettings.set_number_up(&self, int number_up) @extern("gtk_print_settings_set_number_up");

<* Maps to PrintSettings::set_number_up_layout *>
extern fn void PrintSettings.set_number_up_layout(&self, NumberUpLayout number_up_layout) @extern("gtk_print_settings_set_number_up_layout");

<* Maps to PrintSettings::set_orientation *>
extern fn void PrintSettings.set_orientation(&self, PageOrientation orientation) @extern("gtk_print_settings_set_orientation");

<* Maps to PrintSettings::set_output_bin *>
extern fn void PrintSettings.set_output_bin(&self, ZString output_bin) @extern("gtk_print_settings_set_output_bin");

<* Maps to PrintSettings::set_page_ranges *>
extern fn void PrintSettings.set_page_ranges(&self, PageRange page_ranges, int num_ranges) @extern("gtk_print_settings_set_page_ranges");

<* Maps to PrintSettings::set_page_set *>
extern fn void PrintSettings.set_page_set(&self, PageSet page_set) @extern("gtk_print_settings_set_page_set");

<* Maps to PrintSettings::set_paper_height *>
extern fn void PrintSettings.set_paper_height(&self, double height, Unit unit) @extern("gtk_print_settings_set_paper_height");

<* Maps to PrintSettings::set_paper_size *>
extern fn void PrintSettings.set_paper_size(&self, PaperSize* paper_size) @extern("gtk_print_settings_set_paper_size");

<* Maps to PrintSettings::set_paper_width *>
extern fn void PrintSettings.set_paper_width(&self, double width, Unit unit) @extern("gtk_print_settings_set_paper_width");

<* Maps to PrintSettings::set_print_pages *>
extern fn void PrintSettings.set_print_pages(&self, PrintPages pages) @extern("gtk_print_settings_set_print_pages");

<* Maps to PrintSettings::set_printer *>
extern fn void PrintSettings.set_printer(&self, ZString printer) @extern("gtk_print_settings_set_printer");

<* Maps to PrintSettings::set_printer_lpi *>
extern fn void PrintSettings.set_printer_lpi(&self, double lpi) @extern("gtk_print_settings_set_printer_lpi");

<* Maps to PrintSettings::set_quality *>
extern fn void PrintSettings.set_quality(&self, PrintQuality quality) @extern("gtk_print_settings_set_quality");

<* Maps to PrintSettings::set_resolution *>
extern fn void PrintSettings.set_resolution(&self, int resolution) @extern("gtk_print_settings_set_resolution");

<* Maps to PrintSettings::set_resolution_xy *>
extern fn void PrintSettings.set_resolution_xy(&self, int resolution_x, int resolution_y) @extern("gtk_print_settings_set_resolution_xy");

<* Maps to PrintSettings::set_reverse *>
extern fn void PrintSettings.set_reverse(&self, bool reverse) @extern("gtk_print_settings_set_reverse");

<* Maps to PrintSettings::set_scale *>
extern fn void PrintSettings.set_scale(&self, double scale) @extern("gtk_print_settings_set_scale");

<* Maps to PrintSettings::set_use_color *>
extern fn void PrintSettings.set_use_color(&self, bool use_color) @extern("gtk_print_settings_set_use_color");

<* Maps to PrintSettings::to_file *>
extern fn bool PrintSettings.to_file(&self, ZString file_name) @extern("gtk_print_settings_to_file");

<* Maps to PrintSettings::to_gvariant *>
extern fn glib::Variant* PrintSettings.to_gvariant(&self, ) @extern("gtk_print_settings_to_gvariant");

<* Maps to PrintSettings::to_key_file *>
extern fn void PrintSettings.to_key_file(&self, glib::KeyFile* key_file, ZString group_name) @extern("gtk_print_settings_to_key_file");

<* Maps to PrintSettings::unset *>
extern fn void PrintSettings.unset(&self, ZString key) @extern("gtk_print_settings_unset");


// Class Functions



<* Maps to GtkPrintUnixDialog *>
distinct PrintUnixDialog = void*;

// Class to parent cast.
fn Dialog* PrintUnixDialog.as_Dialog(&self) => (Dialog*)(self);

// Class Constructors

<* Maps to new of PrintUnixDialog *>
extern fn Widget* print_unix_dialog_new(ZString title, Window* parent) @extern("gtk_print_unix_dialog_new");



// Class Methods

<* Maps to PrintUnixDialog::add_custom_tab *>
extern fn void PrintUnixDialog.add_custom_tab(&self, Widget* child, Widget* tab_label) @extern("gtk_print_unix_dialog_add_custom_tab");

<* Maps to PrintUnixDialog::get_current_page *>
extern fn int PrintUnixDialog.get_current_page(&self, ) @extern("gtk_print_unix_dialog_get_current_page");

<* Maps to PrintUnixDialog::get_embed_page_setup *>
extern fn bool PrintUnixDialog.get_embed_page_setup(&self, ) @extern("gtk_print_unix_dialog_get_embed_page_setup");

<* Maps to PrintUnixDialog::get_has_selection *>
extern fn bool PrintUnixDialog.get_has_selection(&self, ) @extern("gtk_print_unix_dialog_get_has_selection");

<* Maps to PrintUnixDialog::get_manual_capabilities *>
extern fn PrintCapabilities PrintUnixDialog.get_manual_capabilities(&self, ) @extern("gtk_print_unix_dialog_get_manual_capabilities");

<* Maps to PrintUnixDialog::get_page_setup *>
extern fn PageSetup* PrintUnixDialog.get_page_setup(&self, ) @extern("gtk_print_unix_dialog_get_page_setup");

<* Maps to PrintUnixDialog::get_page_setup_set *>
extern fn bool PrintUnixDialog.get_page_setup_set(&self, ) @extern("gtk_print_unix_dialog_get_page_setup_set");

<* Maps to PrintUnixDialog::get_selected_printer *>
extern fn Printer* PrintUnixDialog.get_selected_printer(&self, ) @extern("gtk_print_unix_dialog_get_selected_printer");

<* Maps to PrintUnixDialog::get_settings *>
extern fn PrintSettings* PrintUnixDialog.get_settings(&self, ) @extern("gtk_print_unix_dialog_get_settings");

<* Maps to PrintUnixDialog::get_support_selection *>
extern fn bool PrintUnixDialog.get_support_selection(&self, ) @extern("gtk_print_unix_dialog_get_support_selection");

<* Maps to PrintUnixDialog::set_current_page *>
extern fn void PrintUnixDialog.set_current_page(&self, int current_page) @extern("gtk_print_unix_dialog_set_current_page");

<* Maps to PrintUnixDialog::set_embed_page_setup *>
extern fn void PrintUnixDialog.set_embed_page_setup(&self, bool embed) @extern("gtk_print_unix_dialog_set_embed_page_setup");

<* Maps to PrintUnixDialog::set_has_selection *>
extern fn void PrintUnixDialog.set_has_selection(&self, bool has_selection) @extern("gtk_print_unix_dialog_set_has_selection");

<* Maps to PrintUnixDialog::set_manual_capabilities *>
extern fn void PrintUnixDialog.set_manual_capabilities(&self, PrintCapabilities capabilities) @extern("gtk_print_unix_dialog_set_manual_capabilities");

<* Maps to PrintUnixDialog::set_page_setup *>
extern fn void PrintUnixDialog.set_page_setup(&self, PageSetup* page_setup) @extern("gtk_print_unix_dialog_set_page_setup");

<* Maps to PrintUnixDialog::set_settings *>
extern fn void PrintUnixDialog.set_settings(&self, PrintSettings* settings) @extern("gtk_print_unix_dialog_set_settings");

<* Maps to PrintUnixDialog::set_support_selection *>
extern fn void PrintUnixDialog.set_support_selection(&self, bool support_selection) @extern("gtk_print_unix_dialog_set_support_selection");


// Class Functions



<* Maps to GtkPrinter *>
distinct Printer = void*;

// Class to parent cast.
fn gobject::Object* Printer.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Printer *>
extern fn Printer* printer_new(ZString name, PrintBackend* backend, bool virtual_) @extern("gtk_printer_new");



// Class Methods

<* Maps to Printer::accepts_pdf *>
extern fn bool Printer.accepts_pdf(&self, ) @extern("gtk_printer_accepts_pdf");

<* Maps to Printer::accepts_ps *>
extern fn bool Printer.accepts_ps(&self, ) @extern("gtk_printer_accepts_ps");

<* Maps to Printer::compare *>
extern fn int Printer.compare(&self, Printer* b) @extern("gtk_printer_compare");

<* Maps to Printer::get_backend *>
extern fn PrintBackend* Printer.get_backend(&self, ) @extern("gtk_printer_get_backend");

<* Maps to Printer::get_capabilities *>
extern fn PrintCapabilities Printer.get_capabilities(&self, ) @extern("gtk_printer_get_capabilities");

<* Maps to Printer::get_default_page_size *>
extern fn PageSetup* Printer.get_default_page_size(&self, ) @extern("gtk_printer_get_default_page_size");

<* Maps to Printer::get_description *>
extern fn ZString Printer.get_description(&self, ) @extern("gtk_printer_get_description");

<* Maps to Printer::get_hard_margins *>
extern fn bool Printer.get_hard_margins(&self, double* top, double* bottom, double* left, double* right) @extern("gtk_printer_get_hard_margins");

<* Maps to Printer::get_hard_margins_for_paper_size *>
extern fn bool Printer.get_hard_margins_for_paper_size(&self, PaperSize* paper_size, double* top, double* bottom, double* left, double* right) @extern("gtk_printer_get_hard_margins_for_paper_size");

<* Maps to Printer::get_icon_name *>
extern fn ZString Printer.get_icon_name(&self, ) @extern("gtk_printer_get_icon_name");

<* Maps to Printer::get_job_count *>
extern fn int Printer.get_job_count(&self, ) @extern("gtk_printer_get_job_count");

<* Maps to Printer::get_location *>
extern fn ZString Printer.get_location(&self, ) @extern("gtk_printer_get_location");

<* Maps to Printer::get_name *>
extern fn ZString Printer.get_name(&self, ) @extern("gtk_printer_get_name");

<* Maps to Printer::get_state_message *>
extern fn ZString Printer.get_state_message(&self, ) @extern("gtk_printer_get_state_message");

<* Maps to Printer::has_details *>
extern fn bool Printer.has_details(&self, ) @extern("gtk_printer_has_details");

<* Maps to Printer::is_accepting_jobs *>
extern fn bool Printer.is_accepting_jobs(&self, ) @extern("gtk_printer_is_accepting_jobs");

<* Maps to Printer::is_active *>
extern fn bool Printer.is_active(&self, ) @extern("gtk_printer_is_active");

<* Maps to Printer::is_default *>
extern fn bool Printer.is_default(&self, ) @extern("gtk_printer_is_default");

<* Maps to Printer::is_paused *>
extern fn bool Printer.is_paused(&self, ) @extern("gtk_printer_is_paused");

<* Maps to Printer::is_virtual *>
extern fn bool Printer.is_virtual(&self, ) @extern("gtk_printer_is_virtual");

<* Maps to Printer::list_papers *>
extern fn glib::List* Printer.list_papers(&self, ) @extern("gtk_printer_list_papers");

<* Maps to Printer::request_details *>
extern fn void Printer.request_details(&self, ) @extern("gtk_printer_request_details");


// Class Functions



<* Maps to GtkProgressBar *>
distinct ProgressBar = void*;

// Class to parent cast.
fn Widget* ProgressBar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ProgressBar *>
extern fn Widget* progress_bar_new() @extern("gtk_progress_bar_new");



// Class Methods

<* Maps to ProgressBar::get_ellipsize *>
extern fn pango::EllipsizeMode ProgressBar.get_ellipsize(&self, ) @extern("gtk_progress_bar_get_ellipsize");

<* Maps to ProgressBar::get_fraction *>
extern fn double ProgressBar.get_fraction(&self, ) @extern("gtk_progress_bar_get_fraction");

<* Maps to ProgressBar::get_inverted *>
extern fn bool ProgressBar.get_inverted(&self, ) @extern("gtk_progress_bar_get_inverted");

<* Maps to ProgressBar::get_pulse_step *>
extern fn double ProgressBar.get_pulse_step(&self, ) @extern("gtk_progress_bar_get_pulse_step");

<* Maps to ProgressBar::get_show_text *>
extern fn bool ProgressBar.get_show_text(&self, ) @extern("gtk_progress_bar_get_show_text");

<* Maps to ProgressBar::get_text *>
extern fn ZString ProgressBar.get_text(&self, ) @extern("gtk_progress_bar_get_text");

<* Maps to ProgressBar::pulse *>
extern fn void ProgressBar.pulse(&self, ) @extern("gtk_progress_bar_pulse");

<* Maps to ProgressBar::set_ellipsize *>
extern fn void ProgressBar.set_ellipsize(&self, pango::EllipsizeMode mode) @extern("gtk_progress_bar_set_ellipsize");

<* Maps to ProgressBar::set_fraction *>
extern fn void ProgressBar.set_fraction(&self, double fraction) @extern("gtk_progress_bar_set_fraction");

<* Maps to ProgressBar::set_inverted *>
extern fn void ProgressBar.set_inverted(&self, bool inverted) @extern("gtk_progress_bar_set_inverted");

<* Maps to ProgressBar::set_pulse_step *>
extern fn void ProgressBar.set_pulse_step(&self, double fraction) @extern("gtk_progress_bar_set_pulse_step");

<* Maps to ProgressBar::set_show_text *>
extern fn void ProgressBar.set_show_text(&self, bool show_text) @extern("gtk_progress_bar_set_show_text");

<* Maps to ProgressBar::set_text *>
extern fn void ProgressBar.set_text(&self, ZString text) @extern("gtk_progress_bar_set_text");


// Class Functions



<* Maps to GtkPropertyExpression *>
distinct PropertyExpression = void*;

// Class to parent cast.
fn Expression* PropertyExpression.as_Expression(&self) => (Expression*)(self);

// Class Constructors

<* Maps to new of PropertyExpression *>
extern fn PropertyExpression* property_expression_new(usz this_type, Expression* expression, ZString property_name) @extern("gtk_property_expression_new");

<* Maps to new_for_pspec of PropertyExpression *>
extern fn PropertyExpression* property_expression_new_for_pspec(Expression* expression, gobject::ParamSpec* pspec) @extern("gtk_property_expression_new_for_pspec");



// Class Methods

<* Maps to PropertyExpression::get_expression *>
extern fn Expression* PropertyExpression.get_expression(&self, ) @extern("gtk_property_expression_get_expression");

<* Maps to PropertyExpression::get_pspec *>
extern fn gobject::ParamSpec* PropertyExpression.get_pspec(&self, ) @extern("gtk_property_expression_get_pspec");


// Class Functions



<* Maps to GtkRange *>
distinct Range = void*;

// Class to parent cast.
fn Widget* Range.as_Widget(&self) => (Widget*)(self);

// Class Constructors



// Class Methods

<* Maps to Range::get_adjustment *>
extern fn Adjustment* Range.get_adjustment(&self, ) @extern("gtk_range_get_adjustment");

<* Maps to Range::get_fill_level *>
extern fn double Range.get_fill_level(&self, ) @extern("gtk_range_get_fill_level");

<* Maps to Range::get_flippable *>
extern fn bool Range.get_flippable(&self, ) @extern("gtk_range_get_flippable");

<* Maps to Range::get_inverted *>
extern fn bool Range.get_inverted(&self, ) @extern("gtk_range_get_inverted");

<* Maps to Range::get_range_rect *>
extern fn void Range.get_range_rect(&self, gdk::Rectangle* range_rect) @extern("gtk_range_get_range_rect");

<* Maps to Range::get_restrict_to_fill_level *>
extern fn bool Range.get_restrict_to_fill_level(&self, ) @extern("gtk_range_get_restrict_to_fill_level");

<* Maps to Range::get_round_digits *>
extern fn int Range.get_round_digits(&self, ) @extern("gtk_range_get_round_digits");

<* Maps to Range::get_show_fill_level *>
extern fn bool Range.get_show_fill_level(&self, ) @extern("gtk_range_get_show_fill_level");

<* Maps to Range::get_slider_range *>
extern fn void Range.get_slider_range(&self, int* slider_start, int* slider_end) @extern("gtk_range_get_slider_range");

<* Maps to Range::get_slider_size_fixed *>
extern fn bool Range.get_slider_size_fixed(&self, ) @extern("gtk_range_get_slider_size_fixed");

<* Maps to Range::get_value *>
extern fn double Range.get_value(&self, ) @extern("gtk_range_get_value");

<* Maps to Range::set_adjustment *>
extern fn void Range.set_adjustment(&self, Adjustment* adjustment) @extern("gtk_range_set_adjustment");

<* Maps to Range::set_fill_level *>
extern fn void Range.set_fill_level(&self, double fill_level) @extern("gtk_range_set_fill_level");

<* Maps to Range::set_flippable *>
extern fn void Range.set_flippable(&self, bool flippable) @extern("gtk_range_set_flippable");

<* Maps to Range::set_increments *>
extern fn void Range.set_increments(&self, double step, double page) @extern("gtk_range_set_increments");

<* Maps to Range::set_inverted *>
extern fn void Range.set_inverted(&self, bool setting) @extern("gtk_range_set_inverted");

<* Maps to Range::set_range *>
extern fn void Range.set_range(&self, double min, double max) @extern("gtk_range_set_range");

<* Maps to Range::set_restrict_to_fill_level *>
extern fn void Range.set_restrict_to_fill_level(&self, bool restrict_to_fill_level) @extern("gtk_range_set_restrict_to_fill_level");

<* Maps to Range::set_round_digits *>
extern fn void Range.set_round_digits(&self, int round_digits) @extern("gtk_range_set_round_digits");

<* Maps to Range::set_show_fill_level *>
extern fn void Range.set_show_fill_level(&self, bool show_fill_level) @extern("gtk_range_set_show_fill_level");

<* Maps to Range::set_slider_size_fixed *>
extern fn void Range.set_slider_size_fixed(&self, bool size_fixed) @extern("gtk_range_set_slider_size_fixed");

<* Maps to Range::set_value *>
extern fn void Range.set_value(&self, double value) @extern("gtk_range_set_value");


// Class Functions



<* Maps to GtkRecentManager *>
distinct RecentManager = void*;

// Class to parent cast.
fn gobject::Object* RecentManager.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of RecentManager *>
extern fn RecentManager* recent_manager_new() @extern("gtk_recent_manager_new");



// Class Methods

<* Maps to RecentManager::add_full *>
extern fn bool RecentManager.add_full(&self, ZString uri, RecentData* recent_data) @extern("gtk_recent_manager_add_full");

<* Maps to RecentManager::add_item *>
extern fn bool RecentManager.add_item(&self, ZString uri) @extern("gtk_recent_manager_add_item");

<* Maps to RecentManager::get_items *>
extern fn glib::List* RecentManager.get_items(&self, ) @extern("gtk_recent_manager_get_items");

<* Maps to RecentManager::has_item *>
extern fn bool RecentManager.has_item(&self, ZString uri) @extern("gtk_recent_manager_has_item");

<* Maps to RecentManager::lookup_item *>
extern fn RecentInfo* RecentManager.lookup_item(&self, ZString uri) @extern("gtk_recent_manager_lookup_item");

<* Maps to RecentManager::move_item *>
extern fn bool RecentManager.move_item(&self, ZString uri, ZString new_uri) @extern("gtk_recent_manager_move_item");

<* Maps to RecentManager::purge_items *>
extern fn int RecentManager.purge_items(&self, ) @extern("gtk_recent_manager_purge_items");

<* Maps to RecentManager::remove_item *>
extern fn bool RecentManager.remove_item(&self, ZString uri) @extern("gtk_recent_manager_remove_item");


// Class Functions

<* Maps to get_default of RecentManager *>
extern fn RecentManager* recent_manager_get_default() @extern("gtk_recent_manager_get_default");



<* Maps to GtkRevealer *>
distinct Revealer = void*;

// Class to parent cast.
fn Widget* Revealer.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Revealer *>
extern fn Widget* revealer_new() @extern("gtk_revealer_new");



// Class Methods

<* Maps to Revealer::get_child *>
extern fn Widget* Revealer.get_child(&self, ) @extern("gtk_revealer_get_child");

<* Maps to Revealer::get_child_revealed *>
extern fn bool Revealer.get_child_revealed(&self, ) @extern("gtk_revealer_get_child_revealed");

<* Maps to Revealer::get_reveal_child *>
extern fn bool Revealer.get_reveal_child(&self, ) @extern("gtk_revealer_get_reveal_child");

<* Maps to Revealer::get_transition_duration *>
extern fn uint Revealer.get_transition_duration(&self, ) @extern("gtk_revealer_get_transition_duration");

<* Maps to Revealer::get_transition_type *>
extern fn RevealerTransitionType Revealer.get_transition_type(&self, ) @extern("gtk_revealer_get_transition_type");

<* Maps to Revealer::set_child *>
extern fn void Revealer.set_child(&self, Widget* child) @extern("gtk_revealer_set_child");

<* Maps to Revealer::set_reveal_child *>
extern fn void Revealer.set_reveal_child(&self, bool reveal_child) @extern("gtk_revealer_set_reveal_child");

<* Maps to Revealer::set_transition_duration *>
extern fn void Revealer.set_transition_duration(&self, uint duration) @extern("gtk_revealer_set_transition_duration");

<* Maps to Revealer::set_transition_type *>
extern fn void Revealer.set_transition_type(&self, RevealerTransitionType transition) @extern("gtk_revealer_set_transition_type");


// Class Functions



<* Maps to GtkScale *>
distinct Scale = void*;

// Class to parent cast.
fn Range* Scale.as_Range(&self) => (Range*)(self);

// Class Constructors

<* Maps to new of Scale *>
extern fn Widget* scale_new(Orientation orientation, Adjustment* adjustment) @extern("gtk_scale_new");

<* Maps to new_with_range of Scale *>
extern fn Widget* scale_new_with_range(Orientation orientation, double min, double max, double step) @extern("gtk_scale_new_with_range");



// Class Methods

<* Maps to Scale::add_mark *>
extern fn void Scale.add_mark(&self, double value, PositionType position, ZString markup) @extern("gtk_scale_add_mark");

<* Maps to Scale::clear_marks *>
extern fn void Scale.clear_marks(&self, ) @extern("gtk_scale_clear_marks");

<* Maps to Scale::get_digits *>
extern fn int Scale.get_digits(&self, ) @extern("gtk_scale_get_digits");

<* Maps to Scale::get_draw_value *>
extern fn bool Scale.get_draw_value(&self, ) @extern("gtk_scale_get_draw_value");

<* Maps to Scale::get_has_origin *>
extern fn bool Scale.get_has_origin(&self, ) @extern("gtk_scale_get_has_origin");

<* Maps to Scale::get_layout *>
extern fn pango::Layout* Scale.get_layout(&self, ) @extern("gtk_scale_get_layout");

<* Maps to Scale::get_layout_offsets *>
extern fn void Scale.get_layout_offsets(&self, int* x, int* y) @extern("gtk_scale_get_layout_offsets");

<* Maps to Scale::get_value_pos *>
extern fn PositionType Scale.get_value_pos(&self, ) @extern("gtk_scale_get_value_pos");

<* Maps to Scale::set_digits *>
extern fn void Scale.set_digits(&self, int digits) @extern("gtk_scale_set_digits");

<* Maps to Scale::set_draw_value *>
extern fn void Scale.set_draw_value(&self, bool draw_value) @extern("gtk_scale_set_draw_value");

<* Maps to Scale::set_format_value_func *>
extern fn void Scale.set_format_value_func(&self, ScaleFormatValueFunc func, void* user_data, glib::DestroyNotify destroy_notify) @extern("gtk_scale_set_format_value_func");

<* Maps to Scale::set_has_origin *>
extern fn void Scale.set_has_origin(&self, bool has_origin) @extern("gtk_scale_set_has_origin");

<* Maps to Scale::set_value_pos *>
extern fn void Scale.set_value_pos(&self, PositionType pos) @extern("gtk_scale_set_value_pos");


// Class Functions



<* Maps to GtkScaleButton *>
distinct ScaleButton = void*;

// Class to parent cast.
fn Widget* ScaleButton.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ScaleButton *>
extern fn Widget* scale_button_new(double min, double max, double step, ZString* icons) @extern("gtk_scale_button_new");



// Class Methods

<* Maps to ScaleButton::get_active *>
extern fn bool ScaleButton.get_active(&self, ) @extern("gtk_scale_button_get_active");

<* Maps to ScaleButton::get_adjustment *>
extern fn Adjustment* ScaleButton.get_adjustment(&self, ) @extern("gtk_scale_button_get_adjustment");

<* Maps to ScaleButton::get_has_frame *>
extern fn bool ScaleButton.get_has_frame(&self, ) @extern("gtk_scale_button_get_has_frame");

<* Maps to ScaleButton::get_minus_button *>
extern fn Button* ScaleButton.get_minus_button(&self, ) @extern("gtk_scale_button_get_minus_button");

<* Maps to ScaleButton::get_plus_button *>
extern fn Button* ScaleButton.get_plus_button(&self, ) @extern("gtk_scale_button_get_plus_button");

<* Maps to ScaleButton::get_popup *>
extern fn Widget* ScaleButton.get_popup(&self, ) @extern("gtk_scale_button_get_popup");

<* Maps to ScaleButton::get_value *>
extern fn double ScaleButton.get_value(&self, ) @extern("gtk_scale_button_get_value");

<* Maps to ScaleButton::set_adjustment *>
extern fn void ScaleButton.set_adjustment(&self, Adjustment* adjustment) @extern("gtk_scale_button_set_adjustment");

<* Maps to ScaleButton::set_has_frame *>
extern fn void ScaleButton.set_has_frame(&self, bool has_frame) @extern("gtk_scale_button_set_has_frame");

<* Maps to ScaleButton::set_icons *>
extern fn void ScaleButton.set_icons(&self, ZString* icons) @extern("gtk_scale_button_set_icons");

<* Maps to ScaleButton::set_value *>
extern fn void ScaleButton.set_value(&self, double value) @extern("gtk_scale_button_set_value");


// Class Functions



<* Maps to GtkScrollbar *>
distinct Scrollbar = void*;

// Class to parent cast.
fn Widget* Scrollbar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Scrollbar *>
extern fn Widget* scrollbar_new(Orientation orientation, Adjustment* adjustment) @extern("gtk_scrollbar_new");



// Class Methods

<* Maps to Scrollbar::get_adjustment *>
extern fn Adjustment* Scrollbar.get_adjustment(&self, ) @extern("gtk_scrollbar_get_adjustment");

<* Maps to Scrollbar::set_adjustment *>
extern fn void Scrollbar.set_adjustment(&self, Adjustment* adjustment) @extern("gtk_scrollbar_set_adjustment");


// Class Functions



<* Maps to GtkScrolledWindow *>
distinct ScrolledWindow = void*;

// Class to parent cast.
fn Widget* ScrolledWindow.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ScrolledWindow *>
extern fn Widget* scrolled_window_new() @extern("gtk_scrolled_window_new");



// Class Methods

<* Maps to ScrolledWindow::get_child *>
extern fn Widget* ScrolledWindow.get_child(&self, ) @extern("gtk_scrolled_window_get_child");

<* Maps to ScrolledWindow::get_hadjustment *>
extern fn Adjustment* ScrolledWindow.get_hadjustment(&self, ) @extern("gtk_scrolled_window_get_hadjustment");

<* Maps to ScrolledWindow::get_has_frame *>
extern fn bool ScrolledWindow.get_has_frame(&self, ) @extern("gtk_scrolled_window_get_has_frame");

<* Maps to ScrolledWindow::get_hscrollbar *>
extern fn Widget* ScrolledWindow.get_hscrollbar(&self, ) @extern("gtk_scrolled_window_get_hscrollbar");

<* Maps to ScrolledWindow::get_kinetic_scrolling *>
extern fn bool ScrolledWindow.get_kinetic_scrolling(&self, ) @extern("gtk_scrolled_window_get_kinetic_scrolling");

<* Maps to ScrolledWindow::get_max_content_height *>
extern fn int ScrolledWindow.get_max_content_height(&self, ) @extern("gtk_scrolled_window_get_max_content_height");

<* Maps to ScrolledWindow::get_max_content_width *>
extern fn int ScrolledWindow.get_max_content_width(&self, ) @extern("gtk_scrolled_window_get_max_content_width");

<* Maps to ScrolledWindow::get_min_content_height *>
extern fn int ScrolledWindow.get_min_content_height(&self, ) @extern("gtk_scrolled_window_get_min_content_height");

<* Maps to ScrolledWindow::get_min_content_width *>
extern fn int ScrolledWindow.get_min_content_width(&self, ) @extern("gtk_scrolled_window_get_min_content_width");

<* Maps to ScrolledWindow::get_overlay_scrolling *>
extern fn bool ScrolledWindow.get_overlay_scrolling(&self, ) @extern("gtk_scrolled_window_get_overlay_scrolling");

<* Maps to ScrolledWindow::get_placement *>
extern fn CornerType ScrolledWindow.get_placement(&self, ) @extern("gtk_scrolled_window_get_placement");

<* Maps to ScrolledWindow::get_policy *>
extern fn void ScrolledWindow.get_policy(&self, PolicyType* hscrollbar_policy, PolicyType* vscrollbar_policy) @extern("gtk_scrolled_window_get_policy");

<* Maps to ScrolledWindow::get_propagate_natural_height *>
extern fn bool ScrolledWindow.get_propagate_natural_height(&self, ) @extern("gtk_scrolled_window_get_propagate_natural_height");

<* Maps to ScrolledWindow::get_propagate_natural_width *>
extern fn bool ScrolledWindow.get_propagate_natural_width(&self, ) @extern("gtk_scrolled_window_get_propagate_natural_width");

<* Maps to ScrolledWindow::get_vadjustment *>
extern fn Adjustment* ScrolledWindow.get_vadjustment(&self, ) @extern("gtk_scrolled_window_get_vadjustment");

<* Maps to ScrolledWindow::get_vscrollbar *>
extern fn Widget* ScrolledWindow.get_vscrollbar(&self, ) @extern("gtk_scrolled_window_get_vscrollbar");

<* Maps to ScrolledWindow::set_child *>
extern fn void ScrolledWindow.set_child(&self, Widget* child) @extern("gtk_scrolled_window_set_child");

<* Maps to ScrolledWindow::set_hadjustment *>
extern fn void ScrolledWindow.set_hadjustment(&self, Adjustment* hadjustment) @extern("gtk_scrolled_window_set_hadjustment");

<* Maps to ScrolledWindow::set_has_frame *>
extern fn void ScrolledWindow.set_has_frame(&self, bool has_frame) @extern("gtk_scrolled_window_set_has_frame");

<* Maps to ScrolledWindow::set_kinetic_scrolling *>
extern fn void ScrolledWindow.set_kinetic_scrolling(&self, bool kinetic_scrolling) @extern("gtk_scrolled_window_set_kinetic_scrolling");

<* Maps to ScrolledWindow::set_max_content_height *>
extern fn void ScrolledWindow.set_max_content_height(&self, int height) @extern("gtk_scrolled_window_set_max_content_height");

<* Maps to ScrolledWindow::set_max_content_width *>
extern fn void ScrolledWindow.set_max_content_width(&self, int width) @extern("gtk_scrolled_window_set_max_content_width");

<* Maps to ScrolledWindow::set_min_content_height *>
extern fn void ScrolledWindow.set_min_content_height(&self, int height) @extern("gtk_scrolled_window_set_min_content_height");

<* Maps to ScrolledWindow::set_min_content_width *>
extern fn void ScrolledWindow.set_min_content_width(&self, int width) @extern("gtk_scrolled_window_set_min_content_width");

<* Maps to ScrolledWindow::set_overlay_scrolling *>
extern fn void ScrolledWindow.set_overlay_scrolling(&self, bool overlay_scrolling) @extern("gtk_scrolled_window_set_overlay_scrolling");

<* Maps to ScrolledWindow::set_placement *>
extern fn void ScrolledWindow.set_placement(&self, CornerType window_placement) @extern("gtk_scrolled_window_set_placement");

<* Maps to ScrolledWindow::set_policy *>
extern fn void ScrolledWindow.set_policy(&self, PolicyType hscrollbar_policy, PolicyType vscrollbar_policy) @extern("gtk_scrolled_window_set_policy");

<* Maps to ScrolledWindow::set_propagate_natural_height *>
extern fn void ScrolledWindow.set_propagate_natural_height(&self, bool propagate) @extern("gtk_scrolled_window_set_propagate_natural_height");

<* Maps to ScrolledWindow::set_propagate_natural_width *>
extern fn void ScrolledWindow.set_propagate_natural_width(&self, bool propagate) @extern("gtk_scrolled_window_set_propagate_natural_width");

<* Maps to ScrolledWindow::set_vadjustment *>
extern fn void ScrolledWindow.set_vadjustment(&self, Adjustment* vadjustment) @extern("gtk_scrolled_window_set_vadjustment");

<* Maps to ScrolledWindow::unset_placement *>
extern fn void ScrolledWindow.unset_placement(&self, ) @extern("gtk_scrolled_window_unset_placement");


// Class Functions



<* Maps to GtkSearchBar *>
distinct SearchBar = void*;

// Class to parent cast.
fn Widget* SearchBar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of SearchBar *>
extern fn Widget* search_bar_new() @extern("gtk_search_bar_new");



// Class Methods

<* Maps to SearchBar::connect_entry *>
extern fn void SearchBar.connect_entry(&self, Editable* entry) @extern("gtk_search_bar_connect_entry");

<* Maps to SearchBar::get_child *>
extern fn Widget* SearchBar.get_child(&self, ) @extern("gtk_search_bar_get_child");

<* Maps to SearchBar::get_key_capture_widget *>
extern fn Widget* SearchBar.get_key_capture_widget(&self, ) @extern("gtk_search_bar_get_key_capture_widget");

<* Maps to SearchBar::get_search_mode *>
extern fn bool SearchBar.get_search_mode(&self, ) @extern("gtk_search_bar_get_search_mode");

<* Maps to SearchBar::get_show_close_button *>
extern fn bool SearchBar.get_show_close_button(&self, ) @extern("gtk_search_bar_get_show_close_button");

<* Maps to SearchBar::set_child *>
extern fn void SearchBar.set_child(&self, Widget* child) @extern("gtk_search_bar_set_child");

<* Maps to SearchBar::set_key_capture_widget *>
extern fn void SearchBar.set_key_capture_widget(&self, Widget* widget) @extern("gtk_search_bar_set_key_capture_widget");

<* Maps to SearchBar::set_search_mode *>
extern fn void SearchBar.set_search_mode(&self, bool search_mode) @extern("gtk_search_bar_set_search_mode");

<* Maps to SearchBar::set_show_close_button *>
extern fn void SearchBar.set_show_close_button(&self, bool visible) @extern("gtk_search_bar_set_show_close_button");


// Class Functions



<* Maps to GtkSearchEntry *>
distinct SearchEntry = void*;

// Class to parent cast.
fn Widget* SearchEntry.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of SearchEntry *>
extern fn Widget* search_entry_new() @extern("gtk_search_entry_new");



// Class Methods

<* Maps to SearchEntry::get_input_hints *>
extern fn InputHints SearchEntry.get_input_hints(&self, ) @extern("gtk_search_entry_get_input_hints");

<* Maps to SearchEntry::get_input_purpose *>
extern fn InputPurpose SearchEntry.get_input_purpose(&self, ) @extern("gtk_search_entry_get_input_purpose");

<* Maps to SearchEntry::get_key_capture_widget *>
extern fn Widget* SearchEntry.get_key_capture_widget(&self, ) @extern("gtk_search_entry_get_key_capture_widget");

<* Maps to SearchEntry::get_placeholder_text *>
extern fn ZString SearchEntry.get_placeholder_text(&self, ) @extern("gtk_search_entry_get_placeholder_text");

<* Maps to SearchEntry::get_search_delay *>
extern fn uint SearchEntry.get_search_delay(&self, ) @extern("gtk_search_entry_get_search_delay");

<* Maps to SearchEntry::set_input_hints *>
extern fn void SearchEntry.set_input_hints(&self, InputHints hints) @extern("gtk_search_entry_set_input_hints");

<* Maps to SearchEntry::set_input_purpose *>
extern fn void SearchEntry.set_input_purpose(&self, InputPurpose purpose) @extern("gtk_search_entry_set_input_purpose");

<* Maps to SearchEntry::set_key_capture_widget *>
extern fn void SearchEntry.set_key_capture_widget(&self, Widget* widget) @extern("gtk_search_entry_set_key_capture_widget");

<* Maps to SearchEntry::set_placeholder_text *>
extern fn void SearchEntry.set_placeholder_text(&self, ZString text) @extern("gtk_search_entry_set_placeholder_text");

<* Maps to SearchEntry::set_search_delay *>
extern fn void SearchEntry.set_search_delay(&self, uint delay) @extern("gtk_search_entry_set_search_delay");


// Class Functions



<* Maps to GtkSelectionFilterModel *>
distinct SelectionFilterModel = void*;

// Class to parent cast.
fn gobject::Object* SelectionFilterModel.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SelectionFilterModel *>
extern fn SelectionFilterModel* selection_filter_model_new(SelectionModel* model) @extern("gtk_selection_filter_model_new");



// Class Methods

<* Maps to SelectionFilterModel::get_model *>
extern fn SelectionModel* SelectionFilterModel.get_model(&self, ) @extern("gtk_selection_filter_model_get_model");

<* Maps to SelectionFilterModel::set_model *>
extern fn void SelectionFilterModel.set_model(&self, SelectionModel* model) @extern("gtk_selection_filter_model_set_model");


// Class Functions



<* Maps to GtkSeparator *>
distinct Separator = void*;

// Class to parent cast.
fn Widget* Separator.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Separator *>
extern fn Widget* separator_new(Orientation orientation) @extern("gtk_separator_new");



// Class Methods


// Class Functions



<* Maps to GtkSettings *>
distinct Settings = void*;

// Class to parent cast.
fn gobject::Object* Settings.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Settings::reset_property *>
extern fn void Settings.reset_property(&self, ZString name) @extern("gtk_settings_reset_property");


// Class Functions

<* Maps to get_default of Settings *>
extern fn Settings* settings_get_default() @extern("gtk_settings_get_default");

<* Maps to get_for_display of Settings *>
extern fn Settings* settings_get_for_display(gdk::Display* display) @extern("gtk_settings_get_for_display");



<* Maps to GtkShortcut *>
distinct Shortcut = void*;

// Class to parent cast.
fn gobject::Object* Shortcut.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Shortcut *>
extern fn Shortcut* shortcut_new(ShortcutTrigger* trigger, ShortcutAction* action) @extern("gtk_shortcut_new");

<* Maps to new_with_arguments of Shortcut *>
extern fn Shortcut* shortcut_new_with_arguments(ShortcutTrigger* trigger, ShortcutAction* action, ZString format_string, any rest) @extern("gtk_shortcut_new_with_arguments");



// Class Methods

<* Maps to Shortcut::get_action *>
extern fn ShortcutAction* Shortcut.get_action(&self, ) @extern("gtk_shortcut_get_action");

<* Maps to Shortcut::get_arguments *>
extern fn glib::Variant* Shortcut.get_arguments(&self, ) @extern("gtk_shortcut_get_arguments");

<* Maps to Shortcut::get_trigger *>
extern fn ShortcutTrigger* Shortcut.get_trigger(&self, ) @extern("gtk_shortcut_get_trigger");

<* Maps to Shortcut::set_action *>
extern fn void Shortcut.set_action(&self, ShortcutAction* action) @extern("gtk_shortcut_set_action");

<* Maps to Shortcut::set_arguments *>
extern fn void Shortcut.set_arguments(&self, glib::Variant* args) @extern("gtk_shortcut_set_arguments");

<* Maps to Shortcut::set_trigger *>
extern fn void Shortcut.set_trigger(&self, ShortcutTrigger* trigger) @extern("gtk_shortcut_set_trigger");


// Class Functions



<* Maps to GtkShortcutAction *>
distinct ShortcutAction = void*;

// Class to parent cast.
fn gobject::Object* ShortcutAction.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to parse_string of ShortcutAction *>
extern fn ShortcutAction* shortcut_action_parse_string(ZString string) @extern("gtk_shortcut_action_parse_string");



// Class Methods

<* Maps to ShortcutAction::activate *>
extern fn bool ShortcutAction.activate(&self, ShortcutActionFlags flags, Widget* widget, glib::Variant* args) @extern("gtk_shortcut_action_activate");

<* Maps to ShortcutAction::print *>
extern fn void ShortcutAction.print(&self, glib::String* string) @extern("gtk_shortcut_action_print");

<* Maps to ShortcutAction::to_string *>
extern fn ZString* ShortcutAction.to_string(&self, ) @extern("gtk_shortcut_action_to_string");


// Class Functions



<* Maps to GtkShortcutController *>
distinct ShortcutController = void*;

// Class to parent cast.
fn EventController* ShortcutController.as_EventController(&self) => (EventController*)(self);

// Class Constructors

<* Maps to new of ShortcutController *>
extern fn EventController* shortcut_controller_new() @extern("gtk_shortcut_controller_new");

<* Maps to new_for_model of ShortcutController *>
extern fn EventController* shortcut_controller_new_for_model(gio::ListModel* model) @extern("gtk_shortcut_controller_new_for_model");



// Class Methods

<* Maps to ShortcutController::add_shortcut *>
extern fn void ShortcutController.add_shortcut(&self, Shortcut* shortcut) @extern("gtk_shortcut_controller_add_shortcut");

<* Maps to ShortcutController::get_mnemonics_modifiers *>
extern fn gdk::ModifierType ShortcutController.get_mnemonics_modifiers(&self, ) @extern("gtk_shortcut_controller_get_mnemonics_modifiers");

<* Maps to ShortcutController::get_scope *>
extern fn ShortcutScope ShortcutController.get_scope(&self, ) @extern("gtk_shortcut_controller_get_scope");

<* Maps to ShortcutController::remove_shortcut *>
extern fn void ShortcutController.remove_shortcut(&self, Shortcut* shortcut) @extern("gtk_shortcut_controller_remove_shortcut");

<* Maps to ShortcutController::set_mnemonics_modifiers *>
extern fn void ShortcutController.set_mnemonics_modifiers(&self, gdk::ModifierType modifiers) @extern("gtk_shortcut_controller_set_mnemonics_modifiers");

<* Maps to ShortcutController::set_scope *>
extern fn void ShortcutController.set_scope(&self, ShortcutScope scope) @extern("gtk_shortcut_controller_set_scope");


// Class Functions



<* Maps to GtkShortcutLabel *>
distinct ShortcutLabel = void*;

// Class to parent cast.
fn Widget* ShortcutLabel.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of ShortcutLabel *>
extern fn Widget* shortcut_label_new(ZString accelerator) @extern("gtk_shortcut_label_new");



// Class Methods

<* Maps to ShortcutLabel::get_accelerator *>
extern fn ZString ShortcutLabel.get_accelerator(&self, ) @extern("gtk_shortcut_label_get_accelerator");

<* Maps to ShortcutLabel::get_disabled_text *>
extern fn ZString ShortcutLabel.get_disabled_text(&self, ) @extern("gtk_shortcut_label_get_disabled_text");

<* Maps to ShortcutLabel::set_accelerator *>
extern fn void ShortcutLabel.set_accelerator(&self, ZString accelerator) @extern("gtk_shortcut_label_set_accelerator");

<* Maps to ShortcutLabel::set_disabled_text *>
extern fn void ShortcutLabel.set_disabled_text(&self, ZString disabled_text) @extern("gtk_shortcut_label_set_disabled_text");


// Class Functions



<* Maps to GtkShortcutTrigger *>
distinct ShortcutTrigger = void*;

// Class to parent cast.
fn gobject::Object* ShortcutTrigger.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to parse_string of ShortcutTrigger *>
extern fn ShortcutTrigger* shortcut_trigger_parse_string(ZString string) @extern("gtk_shortcut_trigger_parse_string");



// Class Methods

<* Maps to ShortcutTrigger::compare *>
extern fn int ShortcutTrigger.compare(&self, ShortcutTrigger* trigger2) @extern("gtk_shortcut_trigger_compare");

<* Maps to ShortcutTrigger::equal *>
extern fn bool ShortcutTrigger.equal(&self, ShortcutTrigger* trigger2) @extern("gtk_shortcut_trigger_equal");

<* Maps to ShortcutTrigger::hash *>
extern fn uint ShortcutTrigger.hash(&self, ) @extern("gtk_shortcut_trigger_hash");

<* Maps to ShortcutTrigger::print *>
extern fn void ShortcutTrigger.print(&self, glib::String* string) @extern("gtk_shortcut_trigger_print");

<* Maps to ShortcutTrigger::print_label *>
extern fn bool ShortcutTrigger.print_label(&self, gdk::Display* display, glib::String* string) @extern("gtk_shortcut_trigger_print_label");

<* Maps to ShortcutTrigger::to_label *>
extern fn ZString* ShortcutTrigger.to_label(&self, gdk::Display* display) @extern("gtk_shortcut_trigger_to_label");

<* Maps to ShortcutTrigger::to_string *>
extern fn ZString* ShortcutTrigger.to_string(&self, ) @extern("gtk_shortcut_trigger_to_string");

<* Maps to ShortcutTrigger::trigger *>
extern fn gdk::KeyMatch ShortcutTrigger.trigger(&self, gdk::Event* event, bool enable_mnemonics) @extern("gtk_shortcut_trigger_trigger");


// Class Functions



<* Maps to GtkShortcutsGroup *>
distinct ShortcutsGroup = void*;

// Class to parent cast.
fn Box* ShortcutsGroup.as_Box(&self) => (Box*)(self);

// Class Constructors



// Class Methods

<* Maps to ShortcutsGroup::add_shortcut *>
extern fn void ShortcutsGroup.add_shortcut(&self, ShortcutsShortcut* shortcut) @extern("gtk_shortcuts_group_add_shortcut");


// Class Functions



<* Maps to GtkShortcutsSection *>
distinct ShortcutsSection = void*;

// Class to parent cast.
fn Box* ShortcutsSection.as_Box(&self) => (Box*)(self);

// Class Constructors



// Class Methods

<* Maps to ShortcutsSection::add_group *>
extern fn void ShortcutsSection.add_group(&self, ShortcutsGroup* group) @extern("gtk_shortcuts_section_add_group");


// Class Functions



<* Maps to GtkShortcutsShortcut *>
distinct ShortcutsShortcut = void*;

// Class to parent cast.
fn Widget* ShortcutsShortcut.as_Widget(&self) => (Widget*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GtkShortcutsWindow *>
distinct ShortcutsWindow = void*;

// Class to parent cast.
fn Window* ShortcutsWindow.as_Window(&self) => (Window*)(self);

// Class Constructors



// Class Methods

<* Maps to ShortcutsWindow::add_section *>
extern fn void ShortcutsWindow.add_section(&self, ShortcutsSection* section) @extern("gtk_shortcuts_window_add_section");


// Class Functions



<* Maps to GtkSignalAction *>
distinct SignalAction = void*;

// Class to parent cast.
fn ShortcutAction* SignalAction.as_ShortcutAction(&self) => (ShortcutAction*)(self);

// Class Constructors

<* Maps to new of SignalAction *>
extern fn SignalAction* signal_action_new(ZString signal_name) @extern("gtk_signal_action_new");



// Class Methods

<* Maps to SignalAction::get_signal_name *>
extern fn ZString SignalAction.get_signal_name(&self, ) @extern("gtk_signal_action_get_signal_name");


// Class Functions



<* Maps to GtkSignalListItemFactory *>
distinct SignalListItemFactory = void*;

// Class to parent cast.
fn ListItemFactory* SignalListItemFactory.as_ListItemFactory(&self) => (ListItemFactory*)(self);

// Class Constructors

<* Maps to new of SignalListItemFactory *>
extern fn ListItemFactory* signal_list_item_factory_new() @extern("gtk_signal_list_item_factory_new");



// Class Methods


// Class Functions



<* Maps to GtkSingleSelection *>
distinct SingleSelection = void*;

// Class to parent cast.
fn gobject::Object* SingleSelection.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SingleSelection *>
extern fn SingleSelection* single_selection_new(gio::ListModel* model) @extern("gtk_single_selection_new");



// Class Methods

<* Maps to SingleSelection::get_autoselect *>
extern fn bool SingleSelection.get_autoselect(&self, ) @extern("gtk_single_selection_get_autoselect");

<* Maps to SingleSelection::get_can_unselect *>
extern fn bool SingleSelection.get_can_unselect(&self, ) @extern("gtk_single_selection_get_can_unselect");

<* Maps to SingleSelection::get_model *>
extern fn gio::ListModel* SingleSelection.get_model(&self, ) @extern("gtk_single_selection_get_model");

<* Maps to SingleSelection::get_selected *>
extern fn uint SingleSelection.get_selected(&self, ) @extern("gtk_single_selection_get_selected");

<* Maps to SingleSelection::get_selected_item *>
extern fn gobject::Object* SingleSelection.get_selected_item(&self, ) @extern("gtk_single_selection_get_selected_item");

<* Maps to SingleSelection::set_autoselect *>
extern fn void SingleSelection.set_autoselect(&self, bool autoselect) @extern("gtk_single_selection_set_autoselect");

<* Maps to SingleSelection::set_can_unselect *>
extern fn void SingleSelection.set_can_unselect(&self, bool can_unselect) @extern("gtk_single_selection_set_can_unselect");

<* Maps to SingleSelection::set_model *>
extern fn void SingleSelection.set_model(&self, gio::ListModel* model) @extern("gtk_single_selection_set_model");

<* Maps to SingleSelection::set_selected *>
extern fn void SingleSelection.set_selected(&self, uint position) @extern("gtk_single_selection_set_selected");


// Class Functions



<* Maps to GtkSizeGroup *>
distinct SizeGroup = void*;

// Class to parent cast.
fn gobject::Object* SizeGroup.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SizeGroup *>
extern fn SizeGroup* size_group_new(SizeGroupMode mode) @extern("gtk_size_group_new");



// Class Methods

<* Maps to SizeGroup::add_widget *>
extern fn void SizeGroup.add_widget(&self, Widget* widget) @extern("gtk_size_group_add_widget");

<* Maps to SizeGroup::get_mode *>
extern fn SizeGroupMode SizeGroup.get_mode(&self, ) @extern("gtk_size_group_get_mode");

<* Maps to SizeGroup::get_widgets *>
extern fn glib::SList* SizeGroup.get_widgets(&self, ) @extern("gtk_size_group_get_widgets");

<* Maps to SizeGroup::remove_widget *>
extern fn void SizeGroup.remove_widget(&self, Widget* widget) @extern("gtk_size_group_remove_widget");

<* Maps to SizeGroup::set_mode *>
extern fn void SizeGroup.set_mode(&self, SizeGroupMode mode) @extern("gtk_size_group_set_mode");


// Class Functions



<* Maps to GtkSliceListModel *>
distinct SliceListModel = void*;

// Class to parent cast.
fn gobject::Object* SliceListModel.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SliceListModel *>
extern fn SliceListModel* slice_list_model_new(gio::ListModel* model, uint offset, uint size) @extern("gtk_slice_list_model_new");



// Class Methods

<* Maps to SliceListModel::get_model *>
extern fn gio::ListModel* SliceListModel.get_model(&self, ) @extern("gtk_slice_list_model_get_model");

<* Maps to SliceListModel::get_offset *>
extern fn uint SliceListModel.get_offset(&self, ) @extern("gtk_slice_list_model_get_offset");

<* Maps to SliceListModel::get_size *>
extern fn uint SliceListModel.get_size(&self, ) @extern("gtk_slice_list_model_get_size");

<* Maps to SliceListModel::set_model *>
extern fn void SliceListModel.set_model(&self, gio::ListModel* model) @extern("gtk_slice_list_model_set_model");

<* Maps to SliceListModel::set_offset *>
extern fn void SliceListModel.set_offset(&self, uint offset) @extern("gtk_slice_list_model_set_offset");

<* Maps to SliceListModel::set_size *>
extern fn void SliceListModel.set_size(&self, uint size) @extern("gtk_slice_list_model_set_size");


// Class Functions



<* Maps to  *>
distinct Snapshot = void*;

// Class to parent cast.
fn gdk::Snapshot* Snapshot.as_gdk_Snapshot(&self) => (gdk::Snapshot*)(self);

// Class Constructors

<* Maps to new of Snapshot *>
extern fn Snapshot* snapshot_new() @extern("gtk_snapshot_new");



// Class Methods

<* Maps to Snapshot::append_border *>
extern fn void Snapshot.append_border(&self, gsk::RoundedRect* outline, float border_width, gdk::Rgba border_color) @extern("gtk_snapshot_append_border");

<* Maps to Snapshot::append_cairo *>
extern fn cairo::Context* Snapshot.append_cairo(&self, graphene::Rect* bounds) @extern("gtk_snapshot_append_cairo");

<* Maps to Snapshot::append_color *>
extern fn void Snapshot.append_color(&self, gdk::Rgba* color, graphene::Rect* bounds) @extern("gtk_snapshot_append_color");

<* Maps to Snapshot::append_conic_gradient *>
extern fn void Snapshot.append_conic_gradient(&self, graphene::Rect* bounds, graphene::Point* center, float rotation, gsk::ColorStop stops, usz n_stops) @extern("gtk_snapshot_append_conic_gradient");

<* Maps to Snapshot::append_fill *>
extern fn void Snapshot.append_fill(&self, gsk::Path* path, gsk::FillRule fill_rule, gdk::Rgba* color) @extern("gtk_snapshot_append_fill");

<* Maps to Snapshot::append_inset_shadow *>
extern fn void Snapshot.append_inset_shadow(&self, gsk::RoundedRect* outline, gdk::Rgba* color, float dx, float dy, float spread, float blur_radius) @extern("gtk_snapshot_append_inset_shadow");

<* Maps to Snapshot::append_layout *>
extern fn void Snapshot.append_layout(&self, pango::Layout* layout, gdk::Rgba* color) @extern("gtk_snapshot_append_layout");

<* Maps to Snapshot::append_linear_gradient *>
extern fn void Snapshot.append_linear_gradient(&self, graphene::Rect* bounds, graphene::Point* start_point, graphene::Point* end_point, gsk::ColorStop stops, usz n_stops) @extern("gtk_snapshot_append_linear_gradient");

<* Maps to Snapshot::append_node *>
extern fn void Snapshot.append_node(&self, gsk::RenderNode* node) @extern("gtk_snapshot_append_node");

<* Maps to Snapshot::append_outset_shadow *>
extern fn void Snapshot.append_outset_shadow(&self, gsk::RoundedRect* outline, gdk::Rgba* color, float dx, float dy, float spread, float blur_radius) @extern("gtk_snapshot_append_outset_shadow");

<* Maps to Snapshot::append_radial_gradient *>
extern fn void Snapshot.append_radial_gradient(&self, graphene::Rect* bounds, graphene::Point* center, float hradius, float vradius, float start, float end, gsk::ColorStop stops, usz n_stops) @extern("gtk_snapshot_append_radial_gradient");

<* Maps to Snapshot::append_repeating_linear_gradient *>
extern fn void Snapshot.append_repeating_linear_gradient(&self, graphene::Rect* bounds, graphene::Point* start_point, graphene::Point* end_point, gsk::ColorStop stops, usz n_stops) @extern("gtk_snapshot_append_repeating_linear_gradient");

<* Maps to Snapshot::append_repeating_radial_gradient *>
extern fn void Snapshot.append_repeating_radial_gradient(&self, graphene::Rect* bounds, graphene::Point* center, float hradius, float vradius, float start, float end, gsk::ColorStop stops, usz n_stops) @extern("gtk_snapshot_append_repeating_radial_gradient");

<* Maps to Snapshot::append_scaled_texture *>
extern fn void Snapshot.append_scaled_texture(&self, gdk::Texture* texture, gsk::ScalingFilter filter, graphene::Rect* bounds) @extern("gtk_snapshot_append_scaled_texture");

<* Maps to Snapshot::append_stroke *>
extern fn void Snapshot.append_stroke(&self, gsk::Path* path, gsk::Stroke* stroke, gdk::Rgba* color) @extern("gtk_snapshot_append_stroke");

<* Maps to Snapshot::append_texture *>
extern fn void Snapshot.append_texture(&self, gdk::Texture* texture, graphene::Rect* bounds) @extern("gtk_snapshot_append_texture");

<* Maps to Snapshot::free_to_node *>
extern fn gsk::RenderNode* Snapshot.free_to_node(&self, ) @extern("gtk_snapshot_free_to_node");

<* Maps to Snapshot::free_to_paintable *>
extern fn gdk::Paintable* Snapshot.free_to_paintable(&self, graphene::Size* size) @extern("gtk_snapshot_free_to_paintable");

<* Maps to Snapshot::gl_shader_pop_texture *>
extern fn void Snapshot.gl_shader_pop_texture(&self, ) @extern("gtk_snapshot_gl_shader_pop_texture");

<* Maps to Snapshot::perspective *>
extern fn void Snapshot.perspective(&self, float depth) @extern("gtk_snapshot_perspective");

<* Maps to Snapshot::pop *>
extern fn void Snapshot.pop(&self, ) @extern("gtk_snapshot_pop");

<* Maps to Snapshot::push_blend *>
extern fn void Snapshot.push_blend(&self, gsk::BlendMode blend_mode) @extern("gtk_snapshot_push_blend");

<* Maps to Snapshot::push_blur *>
extern fn void Snapshot.push_blur(&self, double radius) @extern("gtk_snapshot_push_blur");

<* Maps to Snapshot::push_clip *>
extern fn void Snapshot.push_clip(&self, graphene::Rect* bounds) @extern("gtk_snapshot_push_clip");

<* Maps to Snapshot::push_color_matrix *>
extern fn void Snapshot.push_color_matrix(&self, graphene::Matrix* color_matrix, graphene::Vec4* color_offset) @extern("gtk_snapshot_push_color_matrix");

<* Maps to Snapshot::push_cross_fade *>
extern fn void Snapshot.push_cross_fade(&self, double progress) @extern("gtk_snapshot_push_cross_fade");

<* Maps to Snapshot::push_debug *>
extern fn void Snapshot.push_debug(&self, ZString message, any rest) @extern("gtk_snapshot_push_debug");

<* Maps to Snapshot::push_fill *>
extern fn void Snapshot.push_fill(&self, gsk::Path* path, gsk::FillRule fill_rule) @extern("gtk_snapshot_push_fill");

<* Maps to Snapshot::push_gl_shader *>
extern fn void Snapshot.push_gl_shader(&self, gsk::GLShader* shader, graphene::Rect* bounds, glib::Bytes* take_args) @extern("gtk_snapshot_push_gl_shader");

<* Maps to Snapshot::push_mask *>
extern fn void Snapshot.push_mask(&self, gsk::MaskMode mask_mode) @extern("gtk_snapshot_push_mask");

<* Maps to Snapshot::push_opacity *>
extern fn void Snapshot.push_opacity(&self, double opacity) @extern("gtk_snapshot_push_opacity");

<* Maps to Snapshot::push_repeat *>
extern fn void Snapshot.push_repeat(&self, graphene::Rect* bounds, graphene::Rect* child_bounds) @extern("gtk_snapshot_push_repeat");

<* Maps to Snapshot::push_rounded_clip *>
extern fn void Snapshot.push_rounded_clip(&self, gsk::RoundedRect* bounds) @extern("gtk_snapshot_push_rounded_clip");

<* Maps to Snapshot::push_shadow *>
extern fn void Snapshot.push_shadow(&self, gsk::Shadow shadow, usz n_shadows) @extern("gtk_snapshot_push_shadow");

<* Maps to Snapshot::push_stroke *>
extern fn void Snapshot.push_stroke(&self, gsk::Path* path, gsk::Stroke* stroke) @extern("gtk_snapshot_push_stroke");

<* Maps to Snapshot::render_background *>
extern fn void Snapshot.render_background(&self, StyleContext* context, double x, double y, double width, double height) @extern("gtk_snapshot_render_background");

<* Maps to Snapshot::render_focus *>
extern fn void Snapshot.render_focus(&self, StyleContext* context, double x, double y, double width, double height) @extern("gtk_snapshot_render_focus");

<* Maps to Snapshot::render_frame *>
extern fn void Snapshot.render_frame(&self, StyleContext* context, double x, double y, double width, double height) @extern("gtk_snapshot_render_frame");

<* Maps to Snapshot::render_insertion_cursor *>
extern fn void Snapshot.render_insertion_cursor(&self, StyleContext* context, double x, double y, pango::Layout* layout, int index, pango::Direction direction) @extern("gtk_snapshot_render_insertion_cursor");

<* Maps to Snapshot::render_layout *>
extern fn void Snapshot.render_layout(&self, StyleContext* context, double x, double y, pango::Layout* layout) @extern("gtk_snapshot_render_layout");

<* Maps to Snapshot::restore *>
extern fn void Snapshot.restore(&self, ) @extern("gtk_snapshot_restore");

<* Maps to Snapshot::rotate *>
extern fn void Snapshot.rotate(&self, float angle) @extern("gtk_snapshot_rotate");

<* Maps to Snapshot::rotate_3d *>
extern fn void Snapshot.rotate_3d(&self, float angle, graphene::Vec3* axis) @extern("gtk_snapshot_rotate_3d");

<* Maps to Snapshot::save *>
extern fn void Snapshot.save(&self, ) @extern("gtk_snapshot_save");

<* Maps to Snapshot::scale *>
extern fn void Snapshot.scale(&self, float factor_x, float factor_y) @extern("gtk_snapshot_scale");

<* Maps to Snapshot::scale_3d *>
extern fn void Snapshot.scale_3d(&self, float factor_x, float factor_y, float factor_z) @extern("gtk_snapshot_scale_3d");

<* Maps to Snapshot::to_node *>
extern fn gsk::RenderNode* Snapshot.to_node(&self, ) @extern("gtk_snapshot_to_node");

<* Maps to Snapshot::to_paintable *>
extern fn gdk::Paintable* Snapshot.to_paintable(&self, graphene::Size* size) @extern("gtk_snapshot_to_paintable");

<* Maps to Snapshot::transform *>
extern fn void Snapshot.transform(&self, gsk::Transform* transform) @extern("gtk_snapshot_transform");

<* Maps to Snapshot::transform_matrix *>
extern fn void Snapshot.transform_matrix(&self, graphene::Matrix* matrix) @extern("gtk_snapshot_transform_matrix");

<* Maps to Snapshot::translate *>
extern fn void Snapshot.translate(&self, graphene::Point* point) @extern("gtk_snapshot_translate");

<* Maps to Snapshot::translate_3d *>
extern fn void Snapshot.translate_3d(&self, graphene::Point3D* point) @extern("gtk_snapshot_translate_3d");


// Class Functions



<* Maps to GtkSortListModel *>
distinct SortListModel = void*;

// Class to parent cast.
fn gobject::Object* SortListModel.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SortListModel *>
extern fn SortListModel* sort_list_model_new(gio::ListModel* model, Sorter* sorter) @extern("gtk_sort_list_model_new");



// Class Methods

<* Maps to SortListModel::get_incremental *>
extern fn bool SortListModel.get_incremental(&self, ) @extern("gtk_sort_list_model_get_incremental");

<* Maps to SortListModel::get_model *>
extern fn gio::ListModel* SortListModel.get_model(&self, ) @extern("gtk_sort_list_model_get_model");

<* Maps to SortListModel::get_pending *>
extern fn uint SortListModel.get_pending(&self, ) @extern("gtk_sort_list_model_get_pending");

<* Maps to SortListModel::get_section_sorter *>
extern fn Sorter* SortListModel.get_section_sorter(&self, ) @extern("gtk_sort_list_model_get_section_sorter");

<* Maps to SortListModel::get_sorter *>
extern fn Sorter* SortListModel.get_sorter(&self, ) @extern("gtk_sort_list_model_get_sorter");

<* Maps to SortListModel::set_incremental *>
extern fn void SortListModel.set_incremental(&self, bool incremental) @extern("gtk_sort_list_model_set_incremental");

<* Maps to SortListModel::set_model *>
extern fn void SortListModel.set_model(&self, gio::ListModel* model) @extern("gtk_sort_list_model_set_model");

<* Maps to SortListModel::set_section_sorter *>
extern fn void SortListModel.set_section_sorter(&self, Sorter* sorter) @extern("gtk_sort_list_model_set_section_sorter");

<* Maps to SortListModel::set_sorter *>
extern fn void SortListModel.set_sorter(&self, Sorter* sorter) @extern("gtk_sort_list_model_set_sorter");


// Class Functions



<* Maps to GtkSorter *>
distinct Sorter = void*;

// Class to parent cast.
fn gobject::Object* Sorter.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Sorter::changed *>
extern fn void Sorter.changed(&self, SorterChange change) @extern("gtk_sorter_changed");

<* Maps to Sorter::compare *>
extern fn Ordering Sorter.compare(&self, gobject::Object* item1, gobject::Object* item2) @extern("gtk_sorter_compare");

<* Maps to Sorter::get_order *>
extern fn SorterOrder Sorter.get_order(&self, ) @extern("gtk_sorter_get_order");


// Class Functions



<* Maps to GtkSpinButton *>
distinct SpinButton = void*;

// Class to parent cast.
fn Widget* SpinButton.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of SpinButton *>
extern fn Widget* spin_button_new(Adjustment* adjustment, double climb_rate, uint digits) @extern("gtk_spin_button_new");

<* Maps to new_with_range of SpinButton *>
extern fn Widget* spin_button_new_with_range(double min, double max, double step) @extern("gtk_spin_button_new_with_range");



// Class Methods

<* Maps to SpinButton::configure *>
extern fn void SpinButton.configure(&self, Adjustment* adjustment, double climb_rate, uint digits) @extern("gtk_spin_button_configure");

<* Maps to SpinButton::get_activates_default *>
extern fn bool SpinButton.get_activates_default(&self, ) @extern("gtk_spin_button_get_activates_default");

<* Maps to SpinButton::get_adjustment *>
extern fn Adjustment* SpinButton.get_adjustment(&self, ) @extern("gtk_spin_button_get_adjustment");

<* Maps to SpinButton::get_climb_rate *>
extern fn double SpinButton.get_climb_rate(&self, ) @extern("gtk_spin_button_get_climb_rate");

<* Maps to SpinButton::get_digits *>
extern fn uint SpinButton.get_digits(&self, ) @extern("gtk_spin_button_get_digits");

<* Maps to SpinButton::get_increments *>
extern fn void SpinButton.get_increments(&self, double* step, double* page) @extern("gtk_spin_button_get_increments");

<* Maps to SpinButton::get_numeric *>
extern fn bool SpinButton.get_numeric(&self, ) @extern("gtk_spin_button_get_numeric");

<* Maps to SpinButton::get_range *>
extern fn void SpinButton.get_range(&self, double* min, double* max) @extern("gtk_spin_button_get_range");

<* Maps to SpinButton::get_snap_to_ticks *>
extern fn bool SpinButton.get_snap_to_ticks(&self, ) @extern("gtk_spin_button_get_snap_to_ticks");

<* Maps to SpinButton::get_update_policy *>
extern fn SpinButtonUpdatePolicy SpinButton.get_update_policy(&self, ) @extern("gtk_spin_button_get_update_policy");

<* Maps to SpinButton::get_value *>
extern fn double SpinButton.get_value(&self, ) @extern("gtk_spin_button_get_value");

<* Maps to SpinButton::get_value_as_int *>
extern fn int SpinButton.get_value_as_int(&self, ) @extern("gtk_spin_button_get_value_as_int");

<* Maps to SpinButton::get_wrap *>
extern fn bool SpinButton.get_wrap(&self, ) @extern("gtk_spin_button_get_wrap");

<* Maps to SpinButton::set_activates_default *>
extern fn void SpinButton.set_activates_default(&self, bool activates_default) @extern("gtk_spin_button_set_activates_default");

<* Maps to SpinButton::set_adjustment *>
extern fn void SpinButton.set_adjustment(&self, Adjustment* adjustment) @extern("gtk_spin_button_set_adjustment");

<* Maps to SpinButton::set_climb_rate *>
extern fn void SpinButton.set_climb_rate(&self, double climb_rate) @extern("gtk_spin_button_set_climb_rate");

<* Maps to SpinButton::set_digits *>
extern fn void SpinButton.set_digits(&self, uint digits) @extern("gtk_spin_button_set_digits");

<* Maps to SpinButton::set_increments *>
extern fn void SpinButton.set_increments(&self, double step, double page) @extern("gtk_spin_button_set_increments");

<* Maps to SpinButton::set_numeric *>
extern fn void SpinButton.set_numeric(&self, bool numeric) @extern("gtk_spin_button_set_numeric");

<* Maps to SpinButton::set_range *>
extern fn void SpinButton.set_range(&self, double min, double max) @extern("gtk_spin_button_set_range");

<* Maps to SpinButton::set_snap_to_ticks *>
extern fn void SpinButton.set_snap_to_ticks(&self, bool snap_to_ticks) @extern("gtk_spin_button_set_snap_to_ticks");

<* Maps to SpinButton::set_update_policy *>
extern fn void SpinButton.set_update_policy(&self, SpinButtonUpdatePolicy policy) @extern("gtk_spin_button_set_update_policy");

<* Maps to SpinButton::set_value *>
extern fn void SpinButton.set_value(&self, double value) @extern("gtk_spin_button_set_value");

<* Maps to SpinButton::set_wrap *>
extern fn void SpinButton.set_wrap(&self, bool wrap) @extern("gtk_spin_button_set_wrap");

<* Maps to SpinButton::spin *>
extern fn void SpinButton.spin(&self, SpinType direction, double increment) @extern("gtk_spin_button_spin");

<* Maps to SpinButton::update *>
extern fn void SpinButton.update(&self, ) @extern("gtk_spin_button_update");


// Class Functions



<* Maps to GtkSpinner *>
distinct Spinner = void*;

// Class to parent cast.
fn Widget* Spinner.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Spinner *>
extern fn Widget* spinner_new() @extern("gtk_spinner_new");



// Class Methods

<* Maps to Spinner::get_spinning *>
extern fn bool Spinner.get_spinning(&self, ) @extern("gtk_spinner_get_spinning");

<* Maps to Spinner::set_spinning *>
extern fn void Spinner.set_spinning(&self, bool spinning) @extern("gtk_spinner_set_spinning");

<* Maps to Spinner::start *>
extern fn void Spinner.start(&self, ) @extern("gtk_spinner_start");

<* Maps to Spinner::stop *>
extern fn void Spinner.stop(&self, ) @extern("gtk_spinner_stop");


// Class Functions



<* Maps to GtkStack *>
distinct Stack = void*;

// Class to parent cast.
fn Widget* Stack.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Stack *>
extern fn Widget* stack_new() @extern("gtk_stack_new");



// Class Methods

<* Maps to Stack::add_child *>
extern fn StackPage* Stack.add_child(&self, Widget* child) @extern("gtk_stack_add_child");

<* Maps to Stack::add_named *>
extern fn StackPage* Stack.add_named(&self, Widget* child, ZString name) @extern("gtk_stack_add_named");

<* Maps to Stack::add_titled *>
extern fn StackPage* Stack.add_titled(&self, Widget* child, ZString name, ZString title) @extern("gtk_stack_add_titled");

<* Maps to Stack::get_child_by_name *>
extern fn Widget* Stack.get_child_by_name(&self, ZString name) @extern("gtk_stack_get_child_by_name");

<* Maps to Stack::get_hhomogeneous *>
extern fn bool Stack.get_hhomogeneous(&self, ) @extern("gtk_stack_get_hhomogeneous");

<* Maps to Stack::get_interpolate_size *>
extern fn bool Stack.get_interpolate_size(&self, ) @extern("gtk_stack_get_interpolate_size");

<* Maps to Stack::get_page *>
extern fn StackPage* Stack.get_page(&self, Widget* child) @extern("gtk_stack_get_page");

<* Maps to Stack::get_pages *>
extern fn SelectionModel* Stack.get_pages(&self, ) @extern("gtk_stack_get_pages");

<* Maps to Stack::get_transition_duration *>
extern fn uint Stack.get_transition_duration(&self, ) @extern("gtk_stack_get_transition_duration");

<* Maps to Stack::get_transition_running *>
extern fn bool Stack.get_transition_running(&self, ) @extern("gtk_stack_get_transition_running");

<* Maps to Stack::get_transition_type *>
extern fn StackTransitionType Stack.get_transition_type(&self, ) @extern("gtk_stack_get_transition_type");

<* Maps to Stack::get_vhomogeneous *>
extern fn bool Stack.get_vhomogeneous(&self, ) @extern("gtk_stack_get_vhomogeneous");

<* Maps to Stack::get_visible_child *>
extern fn Widget* Stack.get_visible_child(&self, ) @extern("gtk_stack_get_visible_child");

<* Maps to Stack::get_visible_child_name *>
extern fn ZString Stack.get_visible_child_name(&self, ) @extern("gtk_stack_get_visible_child_name");

<* Maps to Stack::remove *>
extern fn void Stack.remove(&self, Widget* child) @extern("gtk_stack_remove");

<* Maps to Stack::set_hhomogeneous *>
extern fn void Stack.set_hhomogeneous(&self, bool hhomogeneous) @extern("gtk_stack_set_hhomogeneous");

<* Maps to Stack::set_interpolate_size *>
extern fn void Stack.set_interpolate_size(&self, bool interpolate_size) @extern("gtk_stack_set_interpolate_size");

<* Maps to Stack::set_transition_duration *>
extern fn void Stack.set_transition_duration(&self, uint duration) @extern("gtk_stack_set_transition_duration");

<* Maps to Stack::set_transition_type *>
extern fn void Stack.set_transition_type(&self, StackTransitionType transition) @extern("gtk_stack_set_transition_type");

<* Maps to Stack::set_vhomogeneous *>
extern fn void Stack.set_vhomogeneous(&self, bool vhomogeneous) @extern("gtk_stack_set_vhomogeneous");

<* Maps to Stack::set_visible_child *>
extern fn void Stack.set_visible_child(&self, Widget* child) @extern("gtk_stack_set_visible_child");

<* Maps to Stack::set_visible_child_full *>
extern fn void Stack.set_visible_child_full(&self, ZString name, StackTransitionType transition) @extern("gtk_stack_set_visible_child_full");

<* Maps to Stack::set_visible_child_name *>
extern fn void Stack.set_visible_child_name(&self, ZString name) @extern("gtk_stack_set_visible_child_name");


// Class Functions



<* Maps to GtkStackPage *>
distinct StackPage = void*;

// Class to parent cast.
fn gobject::Object* StackPage.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to StackPage::get_child *>
extern fn Widget* StackPage.get_child(&self, ) @extern("gtk_stack_page_get_child");

<* Maps to StackPage::get_icon_name *>
extern fn ZString StackPage.get_icon_name(&self, ) @extern("gtk_stack_page_get_icon_name");

<* Maps to StackPage::get_name *>
extern fn ZString StackPage.get_name(&self, ) @extern("gtk_stack_page_get_name");

<* Maps to StackPage::get_needs_attention *>
extern fn bool StackPage.get_needs_attention(&self, ) @extern("gtk_stack_page_get_needs_attention");

<* Maps to StackPage::get_title *>
extern fn ZString StackPage.get_title(&self, ) @extern("gtk_stack_page_get_title");

<* Maps to StackPage::get_use_underline *>
extern fn bool StackPage.get_use_underline(&self, ) @extern("gtk_stack_page_get_use_underline");

<* Maps to StackPage::get_visible *>
extern fn bool StackPage.get_visible(&self, ) @extern("gtk_stack_page_get_visible");

<* Maps to StackPage::set_icon_name *>
extern fn void StackPage.set_icon_name(&self, ZString setting) @extern("gtk_stack_page_set_icon_name");

<* Maps to StackPage::set_name *>
extern fn void StackPage.set_name(&self, ZString setting) @extern("gtk_stack_page_set_name");

<* Maps to StackPage::set_needs_attention *>
extern fn void StackPage.set_needs_attention(&self, bool setting) @extern("gtk_stack_page_set_needs_attention");

<* Maps to StackPage::set_title *>
extern fn void StackPage.set_title(&self, ZString setting) @extern("gtk_stack_page_set_title");

<* Maps to StackPage::set_use_underline *>
extern fn void StackPage.set_use_underline(&self, bool setting) @extern("gtk_stack_page_set_use_underline");

<* Maps to StackPage::set_visible *>
extern fn void StackPage.set_visible(&self, bool visible) @extern("gtk_stack_page_set_visible");


// Class Functions



<* Maps to GtkStackSidebar *>
distinct StackSidebar = void*;

// Class to parent cast.
fn Widget* StackSidebar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of StackSidebar *>
extern fn Widget* stack_sidebar_new() @extern("gtk_stack_sidebar_new");



// Class Methods

<* Maps to StackSidebar::get_stack *>
extern fn Stack* StackSidebar.get_stack(&self, ) @extern("gtk_stack_sidebar_get_stack");

<* Maps to StackSidebar::set_stack *>
extern fn void StackSidebar.set_stack(&self, Stack* stack) @extern("gtk_stack_sidebar_set_stack");


// Class Functions



<* Maps to GtkStackSwitcher *>
distinct StackSwitcher = void*;

// Class to parent cast.
fn Widget* StackSwitcher.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of StackSwitcher *>
extern fn Widget* stack_switcher_new() @extern("gtk_stack_switcher_new");



// Class Methods

<* Maps to StackSwitcher::get_stack *>
extern fn Stack* StackSwitcher.get_stack(&self, ) @extern("gtk_stack_switcher_get_stack");

<* Maps to StackSwitcher::set_stack *>
extern fn void StackSwitcher.set_stack(&self, Stack* stack) @extern("gtk_stack_switcher_set_stack");


// Class Functions



<* Maps to GtkStatusbar *>
distinct Statusbar = void*;

// Class to parent cast.
fn Widget* Statusbar.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Statusbar *>
extern fn Widget* statusbar_new() @extern("gtk_statusbar_new");



// Class Methods

<* Maps to Statusbar::get_context_id *>
extern fn uint Statusbar.get_context_id(&self, ZString context_description) @extern("gtk_statusbar_get_context_id");

<* Maps to Statusbar::pop *>
extern fn void Statusbar.pop(&self, uint context_id) @extern("gtk_statusbar_pop");

<* Maps to Statusbar::push *>
extern fn uint Statusbar.push(&self, uint context_id, ZString text) @extern("gtk_statusbar_push");

<* Maps to Statusbar::remove *>
extern fn void Statusbar.remove(&self, uint context_id, uint message_id) @extern("gtk_statusbar_remove");

<* Maps to Statusbar::remove_all *>
extern fn void Statusbar.remove_all(&self, uint context_id) @extern("gtk_statusbar_remove_all");


// Class Functions



<* Maps to GtkStringFilter *>
distinct StringFilter = void*;

// Class to parent cast.
fn Filter* StringFilter.as_Filter(&self) => (Filter*)(self);

// Class Constructors

<* Maps to new of StringFilter *>
extern fn StringFilter* string_filter_new(Expression* expression) @extern("gtk_string_filter_new");



// Class Methods

<* Maps to StringFilter::get_expression *>
extern fn Expression* StringFilter.get_expression(&self, ) @extern("gtk_string_filter_get_expression");

<* Maps to StringFilter::get_ignore_case *>
extern fn bool StringFilter.get_ignore_case(&self, ) @extern("gtk_string_filter_get_ignore_case");

<* Maps to StringFilter::get_match_mode *>
extern fn StringFilterMatchMode StringFilter.get_match_mode(&self, ) @extern("gtk_string_filter_get_match_mode");

<* Maps to StringFilter::get_search *>
extern fn ZString StringFilter.get_search(&self, ) @extern("gtk_string_filter_get_search");

<* Maps to StringFilter::set_expression *>
extern fn void StringFilter.set_expression(&self, Expression* expression) @extern("gtk_string_filter_set_expression");

<* Maps to StringFilter::set_ignore_case *>
extern fn void StringFilter.set_ignore_case(&self, bool ignore_case) @extern("gtk_string_filter_set_ignore_case");

<* Maps to StringFilter::set_match_mode *>
extern fn void StringFilter.set_match_mode(&self, StringFilterMatchMode mode) @extern("gtk_string_filter_set_match_mode");

<* Maps to StringFilter::set_search *>
extern fn void StringFilter.set_search(&self, ZString search) @extern("gtk_string_filter_set_search");


// Class Functions



<* Maps to GtkStringList *>
distinct StringList = void*;

// Class to parent cast.
fn gobject::Object* StringList.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of StringList *>
extern fn StringList* string_list_new(ZString* strings) @extern("gtk_string_list_new");



// Class Methods

<* Maps to StringList::append *>
extern fn void StringList.append(&self, ZString string) @extern("gtk_string_list_append");

<* Maps to StringList::get_string *>
extern fn ZString StringList.get_string(&self, uint position) @extern("gtk_string_list_get_string");

<* Maps to StringList::remove *>
extern fn void StringList.remove(&self, uint position) @extern("gtk_string_list_remove");

<* Maps to StringList::splice *>
extern fn void StringList.splice(&self, uint position, uint n_removals, ZString* additions) @extern("gtk_string_list_splice");

<* Maps to StringList::take *>
extern fn void StringList.take(&self, ZString* string) @extern("gtk_string_list_take");


// Class Functions



<* Maps to GtkStringObject *>
distinct StringObject = void*;

// Class to parent cast.
fn gobject::Object* StringObject.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of StringObject *>
extern fn StringObject* string_object_new(ZString string) @extern("gtk_string_object_new");



// Class Methods

<* Maps to StringObject::get_string *>
extern fn ZString StringObject.get_string(&self, ) @extern("gtk_string_object_get_string");


// Class Functions



<* Maps to GtkStringSorter *>
distinct StringSorter = void*;

// Class to parent cast.
fn Sorter* StringSorter.as_Sorter(&self) => (Sorter*)(self);

// Class Constructors

<* Maps to new of StringSorter *>
extern fn StringSorter* string_sorter_new(Expression* expression) @extern("gtk_string_sorter_new");



// Class Methods

<* Maps to StringSorter::get_collation *>
extern fn Collation StringSorter.get_collation(&self, ) @extern("gtk_string_sorter_get_collation");

<* Maps to StringSorter::get_expression *>
extern fn Expression* StringSorter.get_expression(&self, ) @extern("gtk_string_sorter_get_expression");

<* Maps to StringSorter::get_ignore_case *>
extern fn bool StringSorter.get_ignore_case(&self, ) @extern("gtk_string_sorter_get_ignore_case");

<* Maps to StringSorter::set_collation *>
extern fn void StringSorter.set_collation(&self, Collation collation) @extern("gtk_string_sorter_set_collation");

<* Maps to StringSorter::set_expression *>
extern fn void StringSorter.set_expression(&self, Expression* expression) @extern("gtk_string_sorter_set_expression");

<* Maps to StringSorter::set_ignore_case *>
extern fn void StringSorter.set_ignore_case(&self, bool ignore_case) @extern("gtk_string_sorter_set_ignore_case");


// Class Functions



<* Maps to GtkStyleContext *>
distinct StyleContext = void*;

// Class to parent cast.
fn gobject::Object* StyleContext.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to StyleContext::add_class *>
extern fn void StyleContext.add_class(&self, ZString class_name) @extern("gtk_style_context_add_class");

<* Maps to StyleContext::add_provider *>
extern fn void StyleContext.add_provider(&self, StyleProvider* provider, uint priority) @extern("gtk_style_context_add_provider");

<* Maps to StyleContext::get_border *>
extern fn void StyleContext.get_border(&self, Border* border) @extern("gtk_style_context_get_border");

<* Maps to StyleContext::get_color *>
extern fn void StyleContext.get_color(&self, gdk::Rgba* color) @extern("gtk_style_context_get_color");

<* Maps to StyleContext::get_display *>
extern fn gdk::Display* StyleContext.get_display(&self, ) @extern("gtk_style_context_get_display");

<* Maps to StyleContext::get_margin *>
extern fn void StyleContext.get_margin(&self, Border* margin) @extern("gtk_style_context_get_margin");

<* Maps to StyleContext::get_padding *>
extern fn void StyleContext.get_padding(&self, Border* padding) @extern("gtk_style_context_get_padding");

<* Maps to StyleContext::get_scale *>
extern fn int StyleContext.get_scale(&self, ) @extern("gtk_style_context_get_scale");

<* Maps to StyleContext::get_state *>
extern fn StateFlags StyleContext.get_state(&self, ) @extern("gtk_style_context_get_state");

<* Maps to StyleContext::has_class *>
extern fn bool StyleContext.has_class(&self, ZString class_name) @extern("gtk_style_context_has_class");

<* Maps to StyleContext::lookup_color *>
extern fn bool StyleContext.lookup_color(&self, ZString color_name, gdk::Rgba* color) @extern("gtk_style_context_lookup_color");

<* Maps to StyleContext::remove_class *>
extern fn void StyleContext.remove_class(&self, ZString class_name) @extern("gtk_style_context_remove_class");

<* Maps to StyleContext::remove_provider *>
extern fn void StyleContext.remove_provider(&self, StyleProvider* provider) @extern("gtk_style_context_remove_provider");

<* Maps to StyleContext::restore *>
extern fn void StyleContext.restore(&self, ) @extern("gtk_style_context_restore");

<* Maps to StyleContext::save *>
extern fn void StyleContext.save(&self, ) @extern("gtk_style_context_save");

<* Maps to StyleContext::set_display *>
extern fn void StyleContext.set_display(&self, gdk::Display* display) @extern("gtk_style_context_set_display");

<* Maps to StyleContext::set_scale *>
extern fn void StyleContext.set_scale(&self, int scale) @extern("gtk_style_context_set_scale");

<* Maps to StyleContext::set_state *>
extern fn void StyleContext.set_state(&self, StateFlags flags) @extern("gtk_style_context_set_state");

<* Maps to StyleContext::to_string *>
extern fn ZString* StyleContext.to_string(&self, StyleContextPrintFlags flags) @extern("gtk_style_context_to_string");


// Class Functions

<* Maps to add_provider_for_display of StyleContext *>
extern fn void style_context_add_provider_for_display(gdk::Display* display, StyleProvider* provider, uint priority) @extern("gtk_style_context_add_provider_for_display");

<* Maps to remove_provider_for_display of StyleContext *>
extern fn void style_context_remove_provider_for_display(gdk::Display* display, StyleProvider* provider) @extern("gtk_style_context_remove_provider_for_display");



<* Maps to GtkSwitch *>
distinct Switch = void*;

// Class to parent cast.
fn Widget* Switch.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Switch *>
extern fn Widget* switch_new() @extern("gtk_switch_new");



// Class Methods

<* Maps to Switch::get_active *>
extern fn bool Switch.get_active(&self, ) @extern("gtk_switch_get_active");

<* Maps to Switch::get_state *>
extern fn bool Switch.get_state(&self, ) @extern("gtk_switch_get_state");

<* Maps to Switch::set_active *>
extern fn void Switch.set_active(&self, bool is_active) @extern("gtk_switch_set_active");

<* Maps to Switch::set_state *>
extern fn void Switch.set_state(&self, bool state) @extern("gtk_switch_set_state");


// Class Functions



<* Maps to GtkText *>
distinct Text = void*;

// Class to parent cast.
fn Widget* Text.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Text *>
extern fn Widget* text_new() @extern("gtk_text_new");

<* Maps to new_with_buffer of Text *>
extern fn Widget* text_new_with_buffer(EntryBuffer* buffer) @extern("gtk_text_new_with_buffer");



// Class Methods

<* Maps to Text::compute_cursor_extents *>
extern fn void Text.compute_cursor_extents(&self, usz position, graphene::Rect* strong, graphene::Rect* weak) @extern("gtk_text_compute_cursor_extents");

<* Maps to Text::get_activates_default *>
extern fn bool Text.get_activates_default(&self, ) @extern("gtk_text_get_activates_default");

<* Maps to Text::get_attributes *>
extern fn pango::AttrList* Text.get_attributes(&self, ) @extern("gtk_text_get_attributes");

<* Maps to Text::get_buffer *>
extern fn EntryBuffer* Text.get_buffer(&self, ) @extern("gtk_text_get_buffer");

<* Maps to Text::get_enable_emoji_completion *>
extern fn bool Text.get_enable_emoji_completion(&self, ) @extern("gtk_text_get_enable_emoji_completion");

<* Maps to Text::get_extra_menu *>
extern fn gio::MenuModel* Text.get_extra_menu(&self, ) @extern("gtk_text_get_extra_menu");

<* Maps to Text::get_input_hints *>
extern fn InputHints Text.get_input_hints(&self, ) @extern("gtk_text_get_input_hints");

<* Maps to Text::get_input_purpose *>
extern fn InputPurpose Text.get_input_purpose(&self, ) @extern("gtk_text_get_input_purpose");

<* Maps to Text::get_invisible_char *>
extern fn uint Text.get_invisible_char(&self, ) @extern("gtk_text_get_invisible_char");

<* Maps to Text::get_max_length *>
extern fn int Text.get_max_length(&self, ) @extern("gtk_text_get_max_length");

<* Maps to Text::get_overwrite_mode *>
extern fn bool Text.get_overwrite_mode(&self, ) @extern("gtk_text_get_overwrite_mode");

<* Maps to Text::get_placeholder_text *>
extern fn ZString Text.get_placeholder_text(&self, ) @extern("gtk_text_get_placeholder_text");

<* Maps to Text::get_propagate_text_width *>
extern fn bool Text.get_propagate_text_width(&self, ) @extern("gtk_text_get_propagate_text_width");

<* Maps to Text::get_tabs *>
extern fn pango::TabArray* Text.get_tabs(&self, ) @extern("gtk_text_get_tabs");

<* Maps to Text::get_text_length *>
extern fn ushort Text.get_text_length(&self, ) @extern("gtk_text_get_text_length");

<* Maps to Text::get_truncate_multiline *>
extern fn bool Text.get_truncate_multiline(&self, ) @extern("gtk_text_get_truncate_multiline");

<* Maps to Text::get_visibility *>
extern fn bool Text.get_visibility(&self, ) @extern("gtk_text_get_visibility");

<* Maps to Text::grab_focus_without_selecting *>
extern fn bool Text.grab_focus_without_selecting(&self, ) @extern("gtk_text_grab_focus_without_selecting");

<* Maps to Text::set_activates_default *>
extern fn void Text.set_activates_default(&self, bool activates) @extern("gtk_text_set_activates_default");

<* Maps to Text::set_attributes *>
extern fn void Text.set_attributes(&self, pango::AttrList* attrs) @extern("gtk_text_set_attributes");

<* Maps to Text::set_buffer *>
extern fn void Text.set_buffer(&self, EntryBuffer* buffer) @extern("gtk_text_set_buffer");

<* Maps to Text::set_enable_emoji_completion *>
extern fn void Text.set_enable_emoji_completion(&self, bool enable_emoji_completion) @extern("gtk_text_set_enable_emoji_completion");

<* Maps to Text::set_extra_menu *>
extern fn void Text.set_extra_menu(&self, gio::MenuModel* model) @extern("gtk_text_set_extra_menu");

<* Maps to Text::set_input_hints *>
extern fn void Text.set_input_hints(&self, InputHints hints) @extern("gtk_text_set_input_hints");

<* Maps to Text::set_input_purpose *>
extern fn void Text.set_input_purpose(&self, InputPurpose purpose) @extern("gtk_text_set_input_purpose");

<* Maps to Text::set_invisible_char *>
extern fn void Text.set_invisible_char(&self, uint ch) @extern("gtk_text_set_invisible_char");

<* Maps to Text::set_max_length *>
extern fn void Text.set_max_length(&self, int length) @extern("gtk_text_set_max_length");

<* Maps to Text::set_overwrite_mode *>
extern fn void Text.set_overwrite_mode(&self, bool overwrite) @extern("gtk_text_set_overwrite_mode");

<* Maps to Text::set_placeholder_text *>
extern fn void Text.set_placeholder_text(&self, ZString text) @extern("gtk_text_set_placeholder_text");

<* Maps to Text::set_propagate_text_width *>
extern fn void Text.set_propagate_text_width(&self, bool propagate_text_width) @extern("gtk_text_set_propagate_text_width");

<* Maps to Text::set_tabs *>
extern fn void Text.set_tabs(&self, pango::TabArray* tabs) @extern("gtk_text_set_tabs");

<* Maps to Text::set_truncate_multiline *>
extern fn void Text.set_truncate_multiline(&self, bool truncate_multiline) @extern("gtk_text_set_truncate_multiline");

<* Maps to Text::set_visibility *>
extern fn void Text.set_visibility(&self, bool visible) @extern("gtk_text_set_visibility");

<* Maps to Text::unset_invisible_char *>
extern fn void Text.unset_invisible_char(&self, ) @extern("gtk_text_unset_invisible_char");


// Class Functions



<* Maps to GtkTextBuffer *>
distinct TextBuffer = void*;

// Class to parent cast.
fn gobject::Object* TextBuffer.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of TextBuffer *>
extern fn TextBuffer* text_buffer_new(TextTagTable* table) @extern("gtk_text_buffer_new");



// Class Methods

<* Maps to TextBuffer::add_commit_notify *>
extern fn uint TextBuffer.add_commit_notify(&self, TextBufferNotifyFlags flags, TextBufferCommitNotify commit_notify, void* user_data, glib::DestroyNotify destroy) @extern("gtk_text_buffer_add_commit_notify");

<* Maps to TextBuffer::add_mark *>
extern fn void TextBuffer.add_mark(&self, TextMark* mark, TextIter* where) @extern("gtk_text_buffer_add_mark");

<* Maps to TextBuffer::add_selection_clipboard *>
extern fn void TextBuffer.add_selection_clipboard(&self, gdk::Clipboard* clipboard) @extern("gtk_text_buffer_add_selection_clipboard");

<* Maps to TextBuffer::apply_tag *>
extern fn void TextBuffer.apply_tag(&self, TextTag* tag, TextIter* start, TextIter* end) @extern("gtk_text_buffer_apply_tag");

<* Maps to TextBuffer::apply_tag_by_name *>
extern fn void TextBuffer.apply_tag_by_name(&self, ZString name, TextIter* start, TextIter* end) @extern("gtk_text_buffer_apply_tag_by_name");

<* Maps to TextBuffer::backspace *>
extern fn bool TextBuffer.backspace(&self, TextIter* iter, bool interactive, bool default_editable) @extern("gtk_text_buffer_backspace");

<* Maps to TextBuffer::begin_irreversible_action *>
extern fn void TextBuffer.begin_irreversible_action(&self, ) @extern("gtk_text_buffer_begin_irreversible_action");

<* Maps to TextBuffer::begin_user_action *>
extern fn void TextBuffer.begin_user_action(&self, ) @extern("gtk_text_buffer_begin_user_action");

<* Maps to TextBuffer::copy_clipboard *>
extern fn void TextBuffer.copy_clipboard(&self, gdk::Clipboard* clipboard) @extern("gtk_text_buffer_copy_clipboard");

<* Maps to TextBuffer::create_child_anchor *>
extern fn TextChildAnchor* TextBuffer.create_child_anchor(&self, TextIter* iter) @extern("gtk_text_buffer_create_child_anchor");

<* Maps to TextBuffer::create_mark *>
extern fn TextMark* TextBuffer.create_mark(&self, ZString mark_name, TextIter* where, bool left_gravity) @extern("gtk_text_buffer_create_mark");

<* Maps to TextBuffer::create_tag *>
extern fn TextTag* TextBuffer.create_tag(&self, ZString tag_name, ZString first_property_name, any rest) @extern("gtk_text_buffer_create_tag");

<* Maps to TextBuffer::cut_clipboard *>
extern fn void TextBuffer.cut_clipboard(&self, gdk::Clipboard* clipboard, bool default_editable) @extern("gtk_text_buffer_cut_clipboard");

<* Maps to TextBuffer::delete *>
extern fn void TextBuffer.delete(&self, TextIter* start, TextIter* end) @extern("gtk_text_buffer_delete");

<* Maps to TextBuffer::delete_interactive *>
extern fn bool TextBuffer.delete_interactive(&self, TextIter* start_iter, TextIter* end_iter, bool default_editable) @extern("gtk_text_buffer_delete_interactive");

<* Maps to TextBuffer::delete_mark *>
extern fn void TextBuffer.delete_mark(&self, TextMark* mark) @extern("gtk_text_buffer_delete_mark");

<* Maps to TextBuffer::delete_mark_by_name *>
extern fn void TextBuffer.delete_mark_by_name(&self, ZString name) @extern("gtk_text_buffer_delete_mark_by_name");

<* Maps to TextBuffer::delete_selection *>
extern fn bool TextBuffer.delete_selection(&self, bool interactive, bool default_editable) @extern("gtk_text_buffer_delete_selection");

<* Maps to TextBuffer::end_irreversible_action *>
extern fn void TextBuffer.end_irreversible_action(&self, ) @extern("gtk_text_buffer_end_irreversible_action");

<* Maps to TextBuffer::end_user_action *>
extern fn void TextBuffer.end_user_action(&self, ) @extern("gtk_text_buffer_end_user_action");

<* Maps to TextBuffer::get_bounds *>
extern fn void TextBuffer.get_bounds(&self, TextIter* start, TextIter* end) @extern("gtk_text_buffer_get_bounds");

<* Maps to TextBuffer::get_can_redo *>
extern fn bool TextBuffer.get_can_redo(&self, ) @extern("gtk_text_buffer_get_can_redo");

<* Maps to TextBuffer::get_can_undo *>
extern fn bool TextBuffer.get_can_undo(&self, ) @extern("gtk_text_buffer_get_can_undo");

<* Maps to TextBuffer::get_char_count *>
extern fn int TextBuffer.get_char_count(&self, ) @extern("gtk_text_buffer_get_char_count");

<* Maps to TextBuffer::get_enable_undo *>
extern fn bool TextBuffer.get_enable_undo(&self, ) @extern("gtk_text_buffer_get_enable_undo");

<* Maps to TextBuffer::get_end_iter *>
extern fn void TextBuffer.get_end_iter(&self, TextIter* iter) @extern("gtk_text_buffer_get_end_iter");

<* Maps to TextBuffer::get_has_selection *>
extern fn bool TextBuffer.get_has_selection(&self, ) @extern("gtk_text_buffer_get_has_selection");

<* Maps to TextBuffer::get_insert *>
extern fn TextMark* TextBuffer.get_insert(&self, ) @extern("gtk_text_buffer_get_insert");

<* Maps to TextBuffer::get_iter_at_child_anchor *>
extern fn void TextBuffer.get_iter_at_child_anchor(&self, TextIter* iter, TextChildAnchor* anchor) @extern("gtk_text_buffer_get_iter_at_child_anchor");

<* Maps to TextBuffer::get_iter_at_line *>
extern fn bool TextBuffer.get_iter_at_line(&self, TextIter* iter, int line_number) @extern("gtk_text_buffer_get_iter_at_line");

<* Maps to TextBuffer::get_iter_at_line_index *>
extern fn bool TextBuffer.get_iter_at_line_index(&self, TextIter* iter, int line_number, int byte_index) @extern("gtk_text_buffer_get_iter_at_line_index");

<* Maps to TextBuffer::get_iter_at_line_offset *>
extern fn bool TextBuffer.get_iter_at_line_offset(&self, TextIter* iter, int line_number, int char_offset) @extern("gtk_text_buffer_get_iter_at_line_offset");

<* Maps to TextBuffer::get_iter_at_mark *>
extern fn void TextBuffer.get_iter_at_mark(&self, TextIter* iter, TextMark* mark) @extern("gtk_text_buffer_get_iter_at_mark");

<* Maps to TextBuffer::get_iter_at_offset *>
extern fn void TextBuffer.get_iter_at_offset(&self, TextIter* iter, int char_offset) @extern("gtk_text_buffer_get_iter_at_offset");

<* Maps to TextBuffer::get_line_count *>
extern fn int TextBuffer.get_line_count(&self, ) @extern("gtk_text_buffer_get_line_count");

<* Maps to TextBuffer::get_mark *>
extern fn TextMark* TextBuffer.get_mark(&self, ZString name) @extern("gtk_text_buffer_get_mark");

<* Maps to TextBuffer::get_max_undo_levels *>
extern fn uint TextBuffer.get_max_undo_levels(&self, ) @extern("gtk_text_buffer_get_max_undo_levels");

<* Maps to TextBuffer::get_modified *>
extern fn bool TextBuffer.get_modified(&self, ) @extern("gtk_text_buffer_get_modified");

<* Maps to TextBuffer::get_selection_bound *>
extern fn TextMark* TextBuffer.get_selection_bound(&self, ) @extern("gtk_text_buffer_get_selection_bound");

<* Maps to TextBuffer::get_selection_bounds *>
extern fn bool TextBuffer.get_selection_bounds(&self, TextIter* start, TextIter* end) @extern("gtk_text_buffer_get_selection_bounds");

<* Maps to TextBuffer::get_selection_content *>
extern fn gdk::ContentProvider* TextBuffer.get_selection_content(&self, ) @extern("gtk_text_buffer_get_selection_content");

<* Maps to TextBuffer::get_slice *>
extern fn ZString* TextBuffer.get_slice(&self, TextIter* start, TextIter* end, bool include_hidden_chars) @extern("gtk_text_buffer_get_slice");

<* Maps to TextBuffer::get_start_iter *>
extern fn void TextBuffer.get_start_iter(&self, TextIter* iter) @extern("gtk_text_buffer_get_start_iter");

<* Maps to TextBuffer::get_tag_table *>
extern fn TextTagTable* TextBuffer.get_tag_table(&self, ) @extern("gtk_text_buffer_get_tag_table");

<* Maps to TextBuffer::get_text *>
extern fn ZString* TextBuffer.get_text(&self, TextIter* start, TextIter* end, bool include_hidden_chars) @extern("gtk_text_buffer_get_text");

<* Maps to TextBuffer::insert *>
extern fn void TextBuffer.insert(&self, TextIter* iter, ZString text, int len) @extern("gtk_text_buffer_insert");

<* Maps to TextBuffer::insert_at_cursor *>
extern fn void TextBuffer.insert_at_cursor(&self, ZString text, int len) @extern("gtk_text_buffer_insert_at_cursor");

<* Maps to TextBuffer::insert_child_anchor *>
extern fn void TextBuffer.insert_child_anchor(&self, TextIter* iter, TextChildAnchor* anchor) @extern("gtk_text_buffer_insert_child_anchor");

<* Maps to TextBuffer::insert_interactive *>
extern fn bool TextBuffer.insert_interactive(&self, TextIter* iter, ZString text, int len, bool default_editable) @extern("gtk_text_buffer_insert_interactive");

<* Maps to TextBuffer::insert_interactive_at_cursor *>
extern fn bool TextBuffer.insert_interactive_at_cursor(&self, ZString text, int len, bool default_editable) @extern("gtk_text_buffer_insert_interactive_at_cursor");

<* Maps to TextBuffer::insert_markup *>
extern fn void TextBuffer.insert_markup(&self, TextIter* iter, ZString markup, int len) @extern("gtk_text_buffer_insert_markup");

<* Maps to TextBuffer::insert_paintable *>
extern fn void TextBuffer.insert_paintable(&self, TextIter* iter, gdk::Paintable* paintable) @extern("gtk_text_buffer_insert_paintable");

<* Maps to TextBuffer::insert_range *>
extern fn void TextBuffer.insert_range(&self, TextIter* iter, TextIter* start, TextIter* end) @extern("gtk_text_buffer_insert_range");

<* Maps to TextBuffer::insert_range_interactive *>
extern fn bool TextBuffer.insert_range_interactive(&self, TextIter* iter, TextIter* start, TextIter* end, bool default_editable) @extern("gtk_text_buffer_insert_range_interactive");

<* Maps to TextBuffer::insert_with_tags *>
extern fn void TextBuffer.insert_with_tags(&self, TextIter* iter, ZString text, int len, TextTag* first_tag, any rest) @extern("gtk_text_buffer_insert_with_tags");

<* Maps to TextBuffer::insert_with_tags_by_name *>
extern fn void TextBuffer.insert_with_tags_by_name(&self, TextIter* iter, ZString text, int len, ZString first_tag_name, any rest) @extern("gtk_text_buffer_insert_with_tags_by_name");

<* Maps to TextBuffer::move_mark *>
extern fn void TextBuffer.move_mark(&self, TextMark* mark, TextIter* where) @extern("gtk_text_buffer_move_mark");

<* Maps to TextBuffer::move_mark_by_name *>
extern fn void TextBuffer.move_mark_by_name(&self, ZString name, TextIter* where) @extern("gtk_text_buffer_move_mark_by_name");

<* Maps to TextBuffer::paste_clipboard *>
extern fn void TextBuffer.paste_clipboard(&self, gdk::Clipboard* clipboard, TextIter* override_location, bool default_editable) @extern("gtk_text_buffer_paste_clipboard");

<* Maps to TextBuffer::place_cursor *>
extern fn void TextBuffer.place_cursor(&self, TextIter* where) @extern("gtk_text_buffer_place_cursor");

<* Maps to TextBuffer::redo *>
extern fn void TextBuffer.redo(&self, ) @extern("gtk_text_buffer_redo");

<* Maps to TextBuffer::remove_all_tags *>
extern fn void TextBuffer.remove_all_tags(&self, TextIter* start, TextIter* end) @extern("gtk_text_buffer_remove_all_tags");

<* Maps to TextBuffer::remove_commit_notify *>
extern fn void TextBuffer.remove_commit_notify(&self, uint commit_notify_handler) @extern("gtk_text_buffer_remove_commit_notify");

<* Maps to TextBuffer::remove_selection_clipboard *>
extern fn void TextBuffer.remove_selection_clipboard(&self, gdk::Clipboard* clipboard) @extern("gtk_text_buffer_remove_selection_clipboard");

<* Maps to TextBuffer::remove_tag *>
extern fn void TextBuffer.remove_tag(&self, TextTag* tag, TextIter* start, TextIter* end) @extern("gtk_text_buffer_remove_tag");

<* Maps to TextBuffer::remove_tag_by_name *>
extern fn void TextBuffer.remove_tag_by_name(&self, ZString name, TextIter* start, TextIter* end) @extern("gtk_text_buffer_remove_tag_by_name");

<* Maps to TextBuffer::select_range *>
extern fn void TextBuffer.select_range(&self, TextIter* ins, TextIter* bound) @extern("gtk_text_buffer_select_range");

<* Maps to TextBuffer::set_enable_undo *>
extern fn void TextBuffer.set_enable_undo(&self, bool enable_undo) @extern("gtk_text_buffer_set_enable_undo");

<* Maps to TextBuffer::set_max_undo_levels *>
extern fn void TextBuffer.set_max_undo_levels(&self, uint max_undo_levels) @extern("gtk_text_buffer_set_max_undo_levels");

<* Maps to TextBuffer::set_modified *>
extern fn void TextBuffer.set_modified(&self, bool setting) @extern("gtk_text_buffer_set_modified");

<* Maps to TextBuffer::set_text *>
extern fn void TextBuffer.set_text(&self, ZString text, int len) @extern("gtk_text_buffer_set_text");

<* Maps to TextBuffer::undo *>
extern fn void TextBuffer.undo(&self, ) @extern("gtk_text_buffer_undo");


// Class Functions



<* Maps to GtkTextChildAnchor *>
distinct TextChildAnchor = void*;

// Class to parent cast.
fn gobject::Object* TextChildAnchor.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of TextChildAnchor *>
extern fn TextChildAnchor* text_child_anchor_new() @extern("gtk_text_child_anchor_new");

<* Maps to new_with_replacement of TextChildAnchor *>
extern fn TextChildAnchor* text_child_anchor_new_with_replacement(ZString character) @extern("gtk_text_child_anchor_new_with_replacement");



// Class Methods

<* Maps to TextChildAnchor::get_deleted *>
extern fn bool TextChildAnchor.get_deleted(&self, ) @extern("gtk_text_child_anchor_get_deleted");

<* Maps to TextChildAnchor::get_widgets *>
extern fn Widget* TextChildAnchor.get_widgets(&self, uint* out_len) @extern("gtk_text_child_anchor_get_widgets");


// Class Functions



<* Maps to GtkTextMark *>
distinct TextMark = void*;

// Class to parent cast.
fn gobject::Object* TextMark.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of TextMark *>
extern fn TextMark* text_mark_new(ZString name, bool left_gravity) @extern("gtk_text_mark_new");



// Class Methods

<* Maps to TextMark::get_buffer *>
extern fn TextBuffer* TextMark.get_buffer(&self, ) @extern("gtk_text_mark_get_buffer");

<* Maps to TextMark::get_deleted *>
extern fn bool TextMark.get_deleted(&self, ) @extern("gtk_text_mark_get_deleted");

<* Maps to TextMark::get_left_gravity *>
extern fn bool TextMark.get_left_gravity(&self, ) @extern("gtk_text_mark_get_left_gravity");

<* Maps to TextMark::get_name *>
extern fn ZString TextMark.get_name(&self, ) @extern("gtk_text_mark_get_name");

<* Maps to TextMark::get_visible *>
extern fn bool TextMark.get_visible(&self, ) @extern("gtk_text_mark_get_visible");

<* Maps to TextMark::set_visible *>
extern fn void TextMark.set_visible(&self, bool setting) @extern("gtk_text_mark_set_visible");


// Class Functions



<* Maps to GtkTextTag *>
distinct TextTag = void*;

// Class to parent cast.
fn gobject::Object* TextTag.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of TextTag *>
extern fn TextTag* text_tag_new(ZString name) @extern("gtk_text_tag_new");



// Class Methods

<* Maps to TextTag::changed *>
extern fn void TextTag.changed(&self, bool size_changed) @extern("gtk_text_tag_changed");

<* Maps to TextTag::get_priority *>
extern fn int TextTag.get_priority(&self, ) @extern("gtk_text_tag_get_priority");

<* Maps to TextTag::set_priority *>
extern fn void TextTag.set_priority(&self, int priority) @extern("gtk_text_tag_set_priority");


// Class Functions



<* Maps to GtkTextTagTable *>
distinct TextTagTable = void*;

// Class to parent cast.
fn gobject::Object* TextTagTable.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of TextTagTable *>
extern fn TextTagTable* text_tag_table_new() @extern("gtk_text_tag_table_new");



// Class Methods

<* Maps to TextTagTable::add *>
extern fn bool TextTagTable.add(&self, TextTag* tag) @extern("gtk_text_tag_table_add");

<* Maps to TextTagTable::for_each *>
extern fn void TextTagTable.for_each(&self, TextTagTableForeach func, void* data) @extern("gtk_text_tag_table_foreach");

<* Maps to TextTagTable::get_size *>
extern fn int TextTagTable.get_size(&self, ) @extern("gtk_text_tag_table_get_size");

<* Maps to TextTagTable::lookup *>
extern fn TextTag* TextTagTable.lookup(&self, ZString name) @extern("gtk_text_tag_table_lookup");

<* Maps to TextTagTable::remove *>
extern fn void TextTagTable.remove(&self, TextTag* tag) @extern("gtk_text_tag_table_remove");


// Class Functions



<* Maps to GtkTextView *>
distinct TextView = void*;

// Class to parent cast.
fn Widget* TextView.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of TextView *>
extern fn Widget* text_view_new() @extern("gtk_text_view_new");

<* Maps to new_with_buffer of TextView *>
extern fn Widget* text_view_new_with_buffer(TextBuffer* buffer) @extern("gtk_text_view_new_with_buffer");



// Class Methods

<* Maps to TextView::add_child_at_anchor *>
extern fn void TextView.add_child_at_anchor(&self, Widget* child, TextChildAnchor* anchor) @extern("gtk_text_view_add_child_at_anchor");

<* Maps to TextView::add_overlay *>
extern fn void TextView.add_overlay(&self, Widget* child, int xpos, int ypos) @extern("gtk_text_view_add_overlay");

<* Maps to TextView::backward_display_line *>
extern fn bool TextView.backward_display_line(&self, TextIter* iter) @extern("gtk_text_view_backward_display_line");

<* Maps to TextView::backward_display_line_start *>
extern fn bool TextView.backward_display_line_start(&self, TextIter* iter) @extern("gtk_text_view_backward_display_line_start");

<* Maps to TextView::buffer_to_window_coords *>
extern fn void TextView.buffer_to_window_coords(&self, TextWindowType win, int buffer_x, int buffer_y, int* window_x, int* window_y) @extern("gtk_text_view_buffer_to_window_coords");

<* Maps to TextView::forward_display_line *>
extern fn bool TextView.forward_display_line(&self, TextIter* iter) @extern("gtk_text_view_forward_display_line");

<* Maps to TextView::forward_display_line_end *>
extern fn bool TextView.forward_display_line_end(&self, TextIter* iter) @extern("gtk_text_view_forward_display_line_end");

<* Maps to TextView::get_accepts_tab *>
extern fn bool TextView.get_accepts_tab(&self, ) @extern("gtk_text_view_get_accepts_tab");

<* Maps to TextView::get_bottom_margin *>
extern fn int TextView.get_bottom_margin(&self, ) @extern("gtk_text_view_get_bottom_margin");

<* Maps to TextView::get_buffer *>
extern fn TextBuffer* TextView.get_buffer(&self, ) @extern("gtk_text_view_get_buffer");

<* Maps to TextView::get_cursor_locations *>
extern fn void TextView.get_cursor_locations(&self, TextIter* iter, gdk::Rectangle* strong, gdk::Rectangle* weak) @extern("gtk_text_view_get_cursor_locations");

<* Maps to TextView::get_cursor_visible *>
extern fn bool TextView.get_cursor_visible(&self, ) @extern("gtk_text_view_get_cursor_visible");

<* Maps to TextView::get_editable *>
extern fn bool TextView.get_editable(&self, ) @extern("gtk_text_view_get_editable");

<* Maps to TextView::get_extra_menu *>
extern fn gio::MenuModel* TextView.get_extra_menu(&self, ) @extern("gtk_text_view_get_extra_menu");

<* Maps to TextView::get_gutter *>
extern fn Widget* TextView.get_gutter(&self, TextWindowType win) @extern("gtk_text_view_get_gutter");

<* Maps to TextView::get_indent *>
extern fn int TextView.get_indent(&self, ) @extern("gtk_text_view_get_indent");

<* Maps to TextView::get_input_hints *>
extern fn InputHints TextView.get_input_hints(&self, ) @extern("gtk_text_view_get_input_hints");

<* Maps to TextView::get_input_purpose *>
extern fn InputPurpose TextView.get_input_purpose(&self, ) @extern("gtk_text_view_get_input_purpose");

<* Maps to TextView::get_iter_at_location *>
extern fn bool TextView.get_iter_at_location(&self, TextIter* iter, int x, int y) @extern("gtk_text_view_get_iter_at_location");

<* Maps to TextView::get_iter_at_position *>
extern fn bool TextView.get_iter_at_position(&self, TextIter* iter, int* trailing, int x, int y) @extern("gtk_text_view_get_iter_at_position");

<* Maps to TextView::get_iter_location *>
extern fn void TextView.get_iter_location(&self, TextIter* iter, gdk::Rectangle* location) @extern("gtk_text_view_get_iter_location");

<* Maps to TextView::get_justification *>
extern fn Justification TextView.get_justification(&self, ) @extern("gtk_text_view_get_justification");

<* Maps to TextView::get_left_margin *>
extern fn int TextView.get_left_margin(&self, ) @extern("gtk_text_view_get_left_margin");

<* Maps to TextView::get_line_at_y *>
extern fn void TextView.get_line_at_y(&self, TextIter* target_iter, int y, int* line_top) @extern("gtk_text_view_get_line_at_y");

<* Maps to TextView::get_line_yrange *>
extern fn void TextView.get_line_yrange(&self, TextIter* iter, int* y, int* height) @extern("gtk_text_view_get_line_yrange");

<* Maps to TextView::get_ltr_context *>
extern fn pango::Context* TextView.get_ltr_context(&self, ) @extern("gtk_text_view_get_ltr_context");

<* Maps to TextView::get_monospace *>
extern fn bool TextView.get_monospace(&self, ) @extern("gtk_text_view_get_monospace");

<* Maps to TextView::get_overwrite *>
extern fn bool TextView.get_overwrite(&self, ) @extern("gtk_text_view_get_overwrite");

<* Maps to TextView::get_pixels_above_lines *>
extern fn int TextView.get_pixels_above_lines(&self, ) @extern("gtk_text_view_get_pixels_above_lines");

<* Maps to TextView::get_pixels_below_lines *>
extern fn int TextView.get_pixels_below_lines(&self, ) @extern("gtk_text_view_get_pixels_below_lines");

<* Maps to TextView::get_pixels_inside_wrap *>
extern fn int TextView.get_pixels_inside_wrap(&self, ) @extern("gtk_text_view_get_pixels_inside_wrap");

<* Maps to TextView::get_right_margin *>
extern fn int TextView.get_right_margin(&self, ) @extern("gtk_text_view_get_right_margin");

<* Maps to TextView::get_rtl_context *>
extern fn pango::Context* TextView.get_rtl_context(&self, ) @extern("gtk_text_view_get_rtl_context");

<* Maps to TextView::get_tabs *>
extern fn pango::TabArray* TextView.get_tabs(&self, ) @extern("gtk_text_view_get_tabs");

<* Maps to TextView::get_top_margin *>
extern fn int TextView.get_top_margin(&self, ) @extern("gtk_text_view_get_top_margin");

<* Maps to TextView::get_visible_rect *>
extern fn void TextView.get_visible_rect(&self, gdk::Rectangle* visible_rect) @extern("gtk_text_view_get_visible_rect");

<* Maps to TextView::get_wrap_mode *>
extern fn WrapMode TextView.get_wrap_mode(&self, ) @extern("gtk_text_view_get_wrap_mode");

<* Maps to TextView::im_context_filter_keypress *>
extern fn bool TextView.im_context_filter_keypress(&self, gdk::Event* event) @extern("gtk_text_view_im_context_filter_keypress");

<* Maps to TextView::move_mark_onscreen *>
extern fn bool TextView.move_mark_onscreen(&self, TextMark* mark) @extern("gtk_text_view_move_mark_onscreen");

<* Maps to TextView::move_overlay *>
extern fn void TextView.move_overlay(&self, Widget* child, int xpos, int ypos) @extern("gtk_text_view_move_overlay");

<* Maps to TextView::move_visually *>
extern fn bool TextView.move_visually(&self, TextIter* iter, int count) @extern("gtk_text_view_move_visually");

<* Maps to TextView::place_cursor_onscreen *>
extern fn bool TextView.place_cursor_onscreen(&self, ) @extern("gtk_text_view_place_cursor_onscreen");

<* Maps to TextView::remove *>
extern fn void TextView.remove(&self, Widget* child) @extern("gtk_text_view_remove");

<* Maps to TextView::reset_cursor_blink *>
extern fn void TextView.reset_cursor_blink(&self, ) @extern("gtk_text_view_reset_cursor_blink");

<* Maps to TextView::reset_im_context *>
extern fn void TextView.reset_im_context(&self, ) @extern("gtk_text_view_reset_im_context");

<* Maps to TextView::scroll_mark_onscreen *>
extern fn void TextView.scroll_mark_onscreen(&self, TextMark* mark) @extern("gtk_text_view_scroll_mark_onscreen");

<* Maps to TextView::scroll_to_iter *>
extern fn bool TextView.scroll_to_iter(&self, TextIter* iter, double within_margin, bool use_align, double xalign, double yalign) @extern("gtk_text_view_scroll_to_iter");

<* Maps to TextView::scroll_to_mark *>
extern fn void TextView.scroll_to_mark(&self, TextMark* mark, double within_margin, bool use_align, double xalign, double yalign) @extern("gtk_text_view_scroll_to_mark");

<* Maps to TextView::set_accepts_tab *>
extern fn void TextView.set_accepts_tab(&self, bool accepts_tab) @extern("gtk_text_view_set_accepts_tab");

<* Maps to TextView::set_bottom_margin *>
extern fn void TextView.set_bottom_margin(&self, int bottom_margin) @extern("gtk_text_view_set_bottom_margin");

<* Maps to TextView::set_buffer *>
extern fn void TextView.set_buffer(&self, TextBuffer* buffer) @extern("gtk_text_view_set_buffer");

<* Maps to TextView::set_cursor_visible *>
extern fn void TextView.set_cursor_visible(&self, bool setting) @extern("gtk_text_view_set_cursor_visible");

<* Maps to TextView::set_editable *>
extern fn void TextView.set_editable(&self, bool setting) @extern("gtk_text_view_set_editable");

<* Maps to TextView::set_extra_menu *>
extern fn void TextView.set_extra_menu(&self, gio::MenuModel* model) @extern("gtk_text_view_set_extra_menu");

<* Maps to TextView::set_gutter *>
extern fn void TextView.set_gutter(&self, TextWindowType win, Widget* widget) @extern("gtk_text_view_set_gutter");

<* Maps to TextView::set_indent *>
extern fn void TextView.set_indent(&self, int indent) @extern("gtk_text_view_set_indent");

<* Maps to TextView::set_input_hints *>
extern fn void TextView.set_input_hints(&self, InputHints hints) @extern("gtk_text_view_set_input_hints");

<* Maps to TextView::set_input_purpose *>
extern fn void TextView.set_input_purpose(&self, InputPurpose purpose) @extern("gtk_text_view_set_input_purpose");

<* Maps to TextView::set_justification *>
extern fn void TextView.set_justification(&self, Justification justification) @extern("gtk_text_view_set_justification");

<* Maps to TextView::set_left_margin *>
extern fn void TextView.set_left_margin(&self, int left_margin) @extern("gtk_text_view_set_left_margin");

<* Maps to TextView::set_monospace *>
extern fn void TextView.set_monospace(&self, bool monospace) @extern("gtk_text_view_set_monospace");

<* Maps to TextView::set_overwrite *>
extern fn void TextView.set_overwrite(&self, bool overwrite) @extern("gtk_text_view_set_overwrite");

<* Maps to TextView::set_pixels_above_lines *>
extern fn void TextView.set_pixels_above_lines(&self, int pixels_above_lines) @extern("gtk_text_view_set_pixels_above_lines");

<* Maps to TextView::set_pixels_below_lines *>
extern fn void TextView.set_pixels_below_lines(&self, int pixels_below_lines) @extern("gtk_text_view_set_pixels_below_lines");

<* Maps to TextView::set_pixels_inside_wrap *>
extern fn void TextView.set_pixels_inside_wrap(&self, int pixels_inside_wrap) @extern("gtk_text_view_set_pixels_inside_wrap");

<* Maps to TextView::set_right_margin *>
extern fn void TextView.set_right_margin(&self, int right_margin) @extern("gtk_text_view_set_right_margin");

<* Maps to TextView::set_tabs *>
extern fn void TextView.set_tabs(&self, pango::TabArray* tabs) @extern("gtk_text_view_set_tabs");

<* Maps to TextView::set_top_margin *>
extern fn void TextView.set_top_margin(&self, int top_margin) @extern("gtk_text_view_set_top_margin");

<* Maps to TextView::set_wrap_mode *>
extern fn void TextView.set_wrap_mode(&self, WrapMode wrap_mode) @extern("gtk_text_view_set_wrap_mode");

<* Maps to TextView::starts_display_line *>
extern fn bool TextView.starts_display_line(&self, TextIter* iter) @extern("gtk_text_view_starts_display_line");

<* Maps to TextView::window_to_buffer_coords *>
extern fn void TextView.window_to_buffer_coords(&self, TextWindowType win, int window_x, int window_y, int* buffer_x, int* buffer_y) @extern("gtk_text_view_window_to_buffer_coords");


// Class Functions



<* Maps to GtkToggleButton *>
distinct ToggleButton = void*;

// Class to parent cast.
fn Button* ToggleButton.as_Button(&self) => (Button*)(self);

// Class Constructors

<* Maps to new of ToggleButton *>
extern fn Widget* toggle_button_new() @extern("gtk_toggle_button_new");

<* Maps to new_with_label of ToggleButton *>
extern fn Widget* toggle_button_new_with_label(ZString label) @extern("gtk_toggle_button_new_with_label");

<* Maps to new_with_mnemonic of ToggleButton *>
extern fn Widget* toggle_button_new_with_mnemonic(ZString label) @extern("gtk_toggle_button_new_with_mnemonic");



// Class Methods

<* Maps to ToggleButton::get_active *>
extern fn bool ToggleButton.get_active(&self, ) @extern("gtk_toggle_button_get_active");

<* Maps to ToggleButton::set_active *>
extern fn void ToggleButton.set_active(&self, bool is_active) @extern("gtk_toggle_button_set_active");

<* Maps to ToggleButton::set_group *>
extern fn void ToggleButton.set_group(&self, ToggleButton* group) @extern("gtk_toggle_button_set_group");

<* Maps to ToggleButton::toggled *>
extern fn void ToggleButton.toggled(&self, ) @extern("gtk_toggle_button_toggled");


// Class Functions



<* Maps to GtkTooltip *>
distinct Tooltip = void*;

// Class to parent cast.
fn gobject::Object* Tooltip.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Tooltip::set_custom *>
extern fn void Tooltip.set_custom(&self, Widget* custom_widget) @extern("gtk_tooltip_set_custom");

<* Maps to Tooltip::set_icon *>
extern fn void Tooltip.set_icon(&self, gdk::Paintable* paintable) @extern("gtk_tooltip_set_icon");

<* Maps to Tooltip::set_icon_from_gicon *>
extern fn void Tooltip.set_icon_from_gicon(&self, gio::Icon* gicon) @extern("gtk_tooltip_set_icon_from_gicon");

<* Maps to Tooltip::set_icon_from_icon_name *>
extern fn void Tooltip.set_icon_from_icon_name(&self, ZString icon_name) @extern("gtk_tooltip_set_icon_from_icon_name");

<* Maps to Tooltip::set_markup *>
extern fn void Tooltip.set_markup(&self, ZString markup) @extern("gtk_tooltip_set_markup");

<* Maps to Tooltip::set_text *>
extern fn void Tooltip.set_text(&self, ZString text) @extern("gtk_tooltip_set_text");

<* Maps to Tooltip::set_tip_area *>
extern fn void Tooltip.set_tip_area(&self, gdk::Rectangle* rect) @extern("gtk_tooltip_set_tip_area");


// Class Functions



<* Maps to GtkTreeExpander *>
distinct TreeExpander = void*;

// Class to parent cast.
fn Widget* TreeExpander.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of TreeExpander *>
extern fn Widget* tree_expander_new() @extern("gtk_tree_expander_new");



// Class Methods

<* Maps to TreeExpander::get_child *>
extern fn Widget* TreeExpander.get_child(&self, ) @extern("gtk_tree_expander_get_child");

<* Maps to TreeExpander::get_hide_expander *>
extern fn bool TreeExpander.get_hide_expander(&self, ) @extern("gtk_tree_expander_get_hide_expander");

<* Maps to TreeExpander::get_indent_for_depth *>
extern fn bool TreeExpander.get_indent_for_depth(&self, ) @extern("gtk_tree_expander_get_indent_for_depth");

<* Maps to TreeExpander::get_indent_for_icon *>
extern fn bool TreeExpander.get_indent_for_icon(&self, ) @extern("gtk_tree_expander_get_indent_for_icon");

<* Maps to TreeExpander::get_item *>
extern fn gobject::Object* TreeExpander.get_item(&self, ) @extern("gtk_tree_expander_get_item");

<* Maps to TreeExpander::get_list_row *>
extern fn TreeListRow* TreeExpander.get_list_row(&self, ) @extern("gtk_tree_expander_get_list_row");

<* Maps to TreeExpander::set_child *>
extern fn void TreeExpander.set_child(&self, Widget* child) @extern("gtk_tree_expander_set_child");

<* Maps to TreeExpander::set_hide_expander *>
extern fn void TreeExpander.set_hide_expander(&self, bool hide_expander) @extern("gtk_tree_expander_set_hide_expander");

<* Maps to TreeExpander::set_indent_for_depth *>
extern fn void TreeExpander.set_indent_for_depth(&self, bool indent_for_depth) @extern("gtk_tree_expander_set_indent_for_depth");

<* Maps to TreeExpander::set_indent_for_icon *>
extern fn void TreeExpander.set_indent_for_icon(&self, bool indent_for_icon) @extern("gtk_tree_expander_set_indent_for_icon");

<* Maps to TreeExpander::set_list_row *>
extern fn void TreeExpander.set_list_row(&self, TreeListRow* list_row) @extern("gtk_tree_expander_set_list_row");


// Class Functions



<* Maps to GtkTreeListModel *>
distinct TreeListModel = void*;

// Class to parent cast.
fn gobject::Object* TreeListModel.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of TreeListModel *>
extern fn TreeListModel* tree_list_model_new(gio::ListModel* root, bool passthrough, bool autoexpand, TreeListModelCreateModelFunc create_func, void* user_data, glib::DestroyNotify user_destroy) @extern("gtk_tree_list_model_new");



// Class Methods

<* Maps to TreeListModel::get_autoexpand *>
extern fn bool TreeListModel.get_autoexpand(&self, ) @extern("gtk_tree_list_model_get_autoexpand");

<* Maps to TreeListModel::get_child_row *>
extern fn TreeListRow* TreeListModel.get_child_row(&self, uint position) @extern("gtk_tree_list_model_get_child_row");

<* Maps to TreeListModel::get_model *>
extern fn gio::ListModel* TreeListModel.get_model(&self, ) @extern("gtk_tree_list_model_get_model");

<* Maps to TreeListModel::get_passthrough *>
extern fn bool TreeListModel.get_passthrough(&self, ) @extern("gtk_tree_list_model_get_passthrough");

<* Maps to TreeListModel::get_row *>
extern fn TreeListRow* TreeListModel.get_row(&self, uint position) @extern("gtk_tree_list_model_get_row");

<* Maps to TreeListModel::set_autoexpand *>
extern fn void TreeListModel.set_autoexpand(&self, bool autoexpand) @extern("gtk_tree_list_model_set_autoexpand");


// Class Functions



<* Maps to GtkTreeListRow *>
distinct TreeListRow = void*;

// Class to parent cast.
fn gobject::Object* TreeListRow.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to TreeListRow::get_child_row *>
extern fn TreeListRow* TreeListRow.get_child_row(&self, uint position) @extern("gtk_tree_list_row_get_child_row");

<* Maps to TreeListRow::get_children *>
extern fn gio::ListModel* TreeListRow.get_children(&self, ) @extern("gtk_tree_list_row_get_children");

<* Maps to TreeListRow::get_depth *>
extern fn uint TreeListRow.get_depth(&self, ) @extern("gtk_tree_list_row_get_depth");

<* Maps to TreeListRow::get_expanded *>
extern fn bool TreeListRow.get_expanded(&self, ) @extern("gtk_tree_list_row_get_expanded");

<* Maps to TreeListRow::get_item *>
extern fn gobject::Object* TreeListRow.get_item(&self, ) @extern("gtk_tree_list_row_get_item");

<* Maps to TreeListRow::get_parent *>
extern fn TreeListRow* TreeListRow.get_parent(&self, ) @extern("gtk_tree_list_row_get_parent");

<* Maps to TreeListRow::get_position *>
extern fn uint TreeListRow.get_position(&self, ) @extern("gtk_tree_list_row_get_position");

<* Maps to TreeListRow::is_expandable *>
extern fn bool TreeListRow.is_expandable(&self, ) @extern("gtk_tree_list_row_is_expandable");

<* Maps to TreeListRow::set_expanded *>
extern fn void TreeListRow.set_expanded(&self, bool expanded) @extern("gtk_tree_list_row_set_expanded");


// Class Functions



<* Maps to GtkTreeListRowSorter *>
distinct TreeListRowSorter = void*;

// Class to parent cast.
fn Sorter* TreeListRowSorter.as_Sorter(&self) => (Sorter*)(self);

// Class Constructors

<* Maps to new of TreeListRowSorter *>
extern fn TreeListRowSorter* tree_list_row_sorter_new(Sorter* sorter) @extern("gtk_tree_list_row_sorter_new");



// Class Methods

<* Maps to TreeListRowSorter::get_sorter *>
extern fn Sorter* TreeListRowSorter.get_sorter(&self, ) @extern("gtk_tree_list_row_sorter_get_sorter");

<* Maps to TreeListRowSorter::set_sorter *>
extern fn void TreeListRowSorter.set_sorter(&self, Sorter* sorter) @extern("gtk_tree_list_row_sorter_set_sorter");


// Class Functions



<* Maps to GtkTreeModelFilter *>
distinct TreeModelFilter = void*;

// Class to parent cast.
fn gobject::Object* TreeModelFilter.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to TreeModelFilter::clear_cache *>
extern fn void TreeModelFilter.clear_cache(&self, ) @extern("gtk_tree_model_filter_clear_cache");

<* Maps to TreeModelFilter::convert_child_iter_to_iter *>
extern fn bool TreeModelFilter.convert_child_iter_to_iter(&self, TreeIter* filter_iter, TreeIter* child_iter) @extern("gtk_tree_model_filter_convert_child_iter_to_iter");

<* Maps to TreeModelFilter::convert_child_path_to_path *>
extern fn TreePath* TreeModelFilter.convert_child_path_to_path(&self, TreePath* child_path) @extern("gtk_tree_model_filter_convert_child_path_to_path");

<* Maps to TreeModelFilter::convert_iter_to_child_iter *>
extern fn void TreeModelFilter.convert_iter_to_child_iter(&self, TreeIter* child_iter, TreeIter* filter_iter) @extern("gtk_tree_model_filter_convert_iter_to_child_iter");

<* Maps to TreeModelFilter::convert_path_to_child_path *>
extern fn TreePath* TreeModelFilter.convert_path_to_child_path(&self, TreePath* filter_path) @extern("gtk_tree_model_filter_convert_path_to_child_path");

<* Maps to TreeModelFilter::get_model *>
extern fn TreeModel* TreeModelFilter.get_model(&self, ) @extern("gtk_tree_model_filter_get_model");

<* Maps to TreeModelFilter::refilter *>
extern fn void TreeModelFilter.refilter(&self, ) @extern("gtk_tree_model_filter_refilter");

<* Maps to TreeModelFilter::set_modify_func *>
extern fn void TreeModelFilter.set_modify_func(&self, int n_columns, usz types, TreeModelFilterModifyFunc func, void* data, glib::DestroyNotify destroy) @extern("gtk_tree_model_filter_set_modify_func");

<* Maps to TreeModelFilter::set_visible_column *>
extern fn void TreeModelFilter.set_visible_column(&self, int column) @extern("gtk_tree_model_filter_set_visible_column");

<* Maps to TreeModelFilter::set_visible_func *>
extern fn void TreeModelFilter.set_visible_func(&self, TreeModelFilterVisibleFunc func, void* data, glib::DestroyNotify destroy) @extern("gtk_tree_model_filter_set_visible_func");


// Class Functions



<* Maps to GtkTreeModelSort *>
distinct TreeModelSort = void*;

// Class to parent cast.
fn gobject::Object* TreeModelSort.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_with_model of TreeModelSort *>
extern fn TreeModelSort* tree_model_sort_new_with_model(TreeModel* child_model) @extern("gtk_tree_model_sort_new_with_model");



// Class Methods

<* Maps to TreeModelSort::clear_cache *>
extern fn void TreeModelSort.clear_cache(&self, ) @extern("gtk_tree_model_sort_clear_cache");

<* Maps to TreeModelSort::convert_child_iter_to_iter *>
extern fn bool TreeModelSort.convert_child_iter_to_iter(&self, TreeIter* sort_iter, TreeIter* child_iter) @extern("gtk_tree_model_sort_convert_child_iter_to_iter");

<* Maps to TreeModelSort::convert_child_path_to_path *>
extern fn TreePath* TreeModelSort.convert_child_path_to_path(&self, TreePath* child_path) @extern("gtk_tree_model_sort_convert_child_path_to_path");

<* Maps to TreeModelSort::convert_iter_to_child_iter *>
extern fn void TreeModelSort.convert_iter_to_child_iter(&self, TreeIter* child_iter, TreeIter* sorted_iter) @extern("gtk_tree_model_sort_convert_iter_to_child_iter");

<* Maps to TreeModelSort::convert_path_to_child_path *>
extern fn TreePath* TreeModelSort.convert_path_to_child_path(&self, TreePath* sorted_path) @extern("gtk_tree_model_sort_convert_path_to_child_path");

<* Maps to TreeModelSort::get_model *>
extern fn TreeModel* TreeModelSort.get_model(&self, ) @extern("gtk_tree_model_sort_get_model");

<* Maps to TreeModelSort::iter_is_valid *>
extern fn bool TreeModelSort.iter_is_valid(&self, TreeIter* iter) @extern("gtk_tree_model_sort_iter_is_valid");

<* Maps to TreeModelSort::reset_default_sort_func *>
extern fn void TreeModelSort.reset_default_sort_func(&self, ) @extern("gtk_tree_model_sort_reset_default_sort_func");


// Class Functions



<* Maps to GtkTreeSelection *>
distinct TreeSelection = void*;

// Class to parent cast.
fn gobject::Object* TreeSelection.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to TreeSelection::count_selected_rows *>
extern fn int TreeSelection.count_selected_rows(&self, ) @extern("gtk_tree_selection_count_selected_rows");

<* Maps to TreeSelection::get_mode *>
extern fn SelectionMode TreeSelection.get_mode(&self, ) @extern("gtk_tree_selection_get_mode");

<* Maps to TreeSelection::get_select_function *>
extern fn TreeSelectionFunc TreeSelection.get_select_function(&self, ) @extern("gtk_tree_selection_get_select_function");

<* Maps to TreeSelection::get_selected *>
extern fn bool TreeSelection.get_selected(&self, TreeModel* model, TreeIter* iter) @extern("gtk_tree_selection_get_selected");

<* Maps to TreeSelection::get_selected_rows *>
extern fn glib::List* TreeSelection.get_selected_rows(&self, TreeModel* model) @extern("gtk_tree_selection_get_selected_rows");

<* Maps to TreeSelection::get_tree_view *>
extern fn TreeView* TreeSelection.get_tree_view(&self, ) @extern("gtk_tree_selection_get_tree_view");

<* Maps to TreeSelection::get_user_data *>
extern fn void* TreeSelection.get_user_data(&self, ) @extern("gtk_tree_selection_get_user_data");

<* Maps to TreeSelection::iter_is_selected *>
extern fn bool TreeSelection.iter_is_selected(&self, TreeIter* iter) @extern("gtk_tree_selection_iter_is_selected");

<* Maps to TreeSelection::path_is_selected *>
extern fn bool TreeSelection.path_is_selected(&self, TreePath* path) @extern("gtk_tree_selection_path_is_selected");

<* Maps to TreeSelection::select_all *>
extern fn void TreeSelection.select_all(&self, ) @extern("gtk_tree_selection_select_all");

<* Maps to TreeSelection::select_iter *>
extern fn void TreeSelection.select_iter(&self, TreeIter* iter) @extern("gtk_tree_selection_select_iter");

<* Maps to TreeSelection::select_path *>
extern fn void TreeSelection.select_path(&self, TreePath* path) @extern("gtk_tree_selection_select_path");

<* Maps to TreeSelection::select_range *>
extern fn void TreeSelection.select_range(&self, TreePath* start_path, TreePath* end_path) @extern("gtk_tree_selection_select_range");

<* Maps to TreeSelection::selected_foreach *>
extern fn void TreeSelection.selected_foreach(&self, TreeSelectionForeachFunc func, void* data) @extern("gtk_tree_selection_selected_foreach");

<* Maps to TreeSelection::set_mode *>
extern fn void TreeSelection.set_mode(&self, SelectionMode type) @extern("gtk_tree_selection_set_mode");

<* Maps to TreeSelection::set_select_function *>
extern fn void TreeSelection.set_select_function(&self, TreeSelectionFunc func, void* data, glib::DestroyNotify destroy) @extern("gtk_tree_selection_set_select_function");

<* Maps to TreeSelection::unselect_all *>
extern fn void TreeSelection.unselect_all(&self, ) @extern("gtk_tree_selection_unselect_all");

<* Maps to TreeSelection::unselect_iter *>
extern fn void TreeSelection.unselect_iter(&self, TreeIter* iter) @extern("gtk_tree_selection_unselect_iter");

<* Maps to TreeSelection::unselect_path *>
extern fn void TreeSelection.unselect_path(&self, TreePath* path) @extern("gtk_tree_selection_unselect_path");

<* Maps to TreeSelection::unselect_range *>
extern fn void TreeSelection.unselect_range(&self, TreePath* start_path, TreePath* end_path) @extern("gtk_tree_selection_unselect_range");


// Class Functions



<* Maps to GtkTreeStore *>
distinct TreeStore = void*;

// Class to parent cast.
fn gobject::Object* TreeStore.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of TreeStore *>
extern fn TreeStore* tree_store_new(int n_columns, any rest) @extern("gtk_tree_store_new");

<* Maps to newv of TreeStore *>
extern fn TreeStore* tree_store_newv(int n_columns, usz types) @extern("gtk_tree_store_newv");



// Class Methods

<* Maps to TreeStore::append *>
extern fn void TreeStore.append(&self, TreeIter* iter, TreeIter* parent) @extern("gtk_tree_store_append");

<* Maps to TreeStore::clear *>
extern fn void TreeStore.clear(&self, ) @extern("gtk_tree_store_clear");

<* Maps to TreeStore::insert *>
extern fn void TreeStore.insert(&self, TreeIter* iter, TreeIter* parent, int position) @extern("gtk_tree_store_insert");

<* Maps to TreeStore::insert_after *>
extern fn void TreeStore.insert_after(&self, TreeIter* iter, TreeIter* parent, TreeIter* sibling) @extern("gtk_tree_store_insert_after");

<* Maps to TreeStore::insert_before *>
extern fn void TreeStore.insert_before(&self, TreeIter* iter, TreeIter* parent, TreeIter* sibling) @extern("gtk_tree_store_insert_before");

<* Maps to TreeStore::insert_with_values *>
extern fn void TreeStore.insert_with_values(&self, TreeIter* iter, TreeIter* parent, int position, any rest) @extern("gtk_tree_store_insert_with_values");

<* Maps to TreeStore::insert_with_valuesv *>
extern fn void TreeStore.insert_with_valuesv(&self, TreeIter* iter, TreeIter* parent, int position, int columns, gobject::Value values, int n_values) @extern("gtk_tree_store_insert_with_valuesv");

<* Maps to TreeStore::is_ancestor *>
extern fn bool TreeStore.is_ancestor(&self, TreeIter* iter, TreeIter* descendant) @extern("gtk_tree_store_is_ancestor");

<* Maps to TreeStore::iter_depth *>
extern fn int TreeStore.iter_depth(&self, TreeIter* iter) @extern("gtk_tree_store_iter_depth");

<* Maps to TreeStore::iter_is_valid *>
extern fn bool TreeStore.iter_is_valid(&self, TreeIter* iter) @extern("gtk_tree_store_iter_is_valid");

<* Maps to TreeStore::move_after *>
extern fn void TreeStore.move_after(&self, TreeIter* iter, TreeIter* position) @extern("gtk_tree_store_move_after");

<* Maps to TreeStore::move_before *>
extern fn void TreeStore.move_before(&self, TreeIter* iter, TreeIter* position) @extern("gtk_tree_store_move_before");

<* Maps to TreeStore::prepend *>
extern fn void TreeStore.prepend(&self, TreeIter* iter, TreeIter* parent) @extern("gtk_tree_store_prepend");

<* Maps to TreeStore::remove *>
extern fn bool TreeStore.remove(&self, TreeIter* iter) @extern("gtk_tree_store_remove");

<* Maps to TreeStore::reorder *>
extern fn void TreeStore.reorder(&self, TreeIter* parent, int new_order) @extern("gtk_tree_store_reorder");

<* Maps to TreeStore::set *>
extern fn void TreeStore.set(&self, TreeIter* iter, any rest) @extern("gtk_tree_store_set");

<* Maps to TreeStore::set_column_types *>
extern fn void TreeStore.set_column_types(&self, int n_columns, usz types) @extern("gtk_tree_store_set_column_types");

<* Maps to TreeStore::set_value *>
extern fn void TreeStore.set_value(&self, TreeIter* iter, int column, gobject::Value* value) @extern("gtk_tree_store_set_value");

<* Maps to TreeStore::set_valuesv *>
extern fn void TreeStore.set_valuesv(&self, TreeIter* iter, int columns, gobject::Value values, int n_values) @extern("gtk_tree_store_set_valuesv");

<* Maps to TreeStore::swap *>
extern fn void TreeStore.swap(&self, TreeIter* a, TreeIter* b) @extern("gtk_tree_store_swap");


// Class Functions



<* Maps to GtkTreeView *>
distinct TreeView = void*;

// Class to parent cast.
fn Widget* TreeView.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of TreeView *>
extern fn Widget* tree_view_new() @extern("gtk_tree_view_new");

<* Maps to new_with_model of TreeView *>
extern fn Widget* tree_view_new_with_model(TreeModel* model) @extern("gtk_tree_view_new_with_model");



// Class Methods

<* Maps to TreeView::append_column *>
extern fn int TreeView.append_column(&self, TreeViewColumn* column) @extern("gtk_tree_view_append_column");

<* Maps to TreeView::collapse_all *>
extern fn void TreeView.collapse_all(&self, ) @extern("gtk_tree_view_collapse_all");

<* Maps to TreeView::collapse_row *>
extern fn bool TreeView.collapse_row(&self, TreePath* path) @extern("gtk_tree_view_collapse_row");

<* Maps to TreeView::columns_autosize *>
extern fn void TreeView.columns_autosize(&self, ) @extern("gtk_tree_view_columns_autosize");

<* Maps to TreeView::convert_bin_window_to_tree_coords *>
extern fn void TreeView.convert_bin_window_to_tree_coords(&self, int bx, int by, int* tx, int* ty) @extern("gtk_tree_view_convert_bin_window_to_tree_coords");

<* Maps to TreeView::convert_bin_window_to_widget_coords *>
extern fn void TreeView.convert_bin_window_to_widget_coords(&self, int bx, int by, int* wx, int* wy) @extern("gtk_tree_view_convert_bin_window_to_widget_coords");

<* Maps to TreeView::convert_tree_to_bin_window_coords *>
extern fn void TreeView.convert_tree_to_bin_window_coords(&self, int tx, int ty, int* bx, int* by) @extern("gtk_tree_view_convert_tree_to_bin_window_coords");

<* Maps to TreeView::convert_tree_to_widget_coords *>
extern fn void TreeView.convert_tree_to_widget_coords(&self, int tx, int ty, int* wx, int* wy) @extern("gtk_tree_view_convert_tree_to_widget_coords");

<* Maps to TreeView::convert_widget_to_bin_window_coords *>
extern fn void TreeView.convert_widget_to_bin_window_coords(&self, int wx, int wy, int* bx, int* by) @extern("gtk_tree_view_convert_widget_to_bin_window_coords");

<* Maps to TreeView::convert_widget_to_tree_coords *>
extern fn void TreeView.convert_widget_to_tree_coords(&self, int wx, int wy, int* tx, int* ty) @extern("gtk_tree_view_convert_widget_to_tree_coords");

<* Maps to TreeView::create_row_drag_icon *>
extern fn gdk::Paintable* TreeView.create_row_drag_icon(&self, TreePath* path) @extern("gtk_tree_view_create_row_drag_icon");

<* Maps to TreeView::enable_model_drag_dest *>
extern fn void TreeView.enable_model_drag_dest(&self, gdk::ContentFormats* formats, gdk::DragAction actions) @extern("gtk_tree_view_enable_model_drag_dest");

<* Maps to TreeView::enable_model_drag_source *>
extern fn void TreeView.enable_model_drag_source(&self, gdk::ModifierType start_button_mask, gdk::ContentFormats* formats, gdk::DragAction actions) @extern("gtk_tree_view_enable_model_drag_source");

<* Maps to TreeView::expand_all *>
extern fn void TreeView.expand_all(&self, ) @extern("gtk_tree_view_expand_all");

<* Maps to TreeView::expand_row *>
extern fn bool TreeView.expand_row(&self, TreePath* path, bool open_all) @extern("gtk_tree_view_expand_row");

<* Maps to TreeView::expand_to_path *>
extern fn void TreeView.expand_to_path(&self, TreePath* path) @extern("gtk_tree_view_expand_to_path");

<* Maps to TreeView::get_activate_on_single_click *>
extern fn bool TreeView.get_activate_on_single_click(&self, ) @extern("gtk_tree_view_get_activate_on_single_click");

<* Maps to TreeView::get_background_area *>
extern fn void TreeView.get_background_area(&self, TreePath* path, TreeViewColumn* column, gdk::Rectangle* rect) @extern("gtk_tree_view_get_background_area");

<* Maps to TreeView::get_cell_area *>
extern fn void TreeView.get_cell_area(&self, TreePath* path, TreeViewColumn* column, gdk::Rectangle* rect) @extern("gtk_tree_view_get_cell_area");

<* Maps to TreeView::get_column *>
extern fn TreeViewColumn* TreeView.get_column(&self, int n) @extern("gtk_tree_view_get_column");

<* Maps to TreeView::get_columns *>
extern fn glib::List* TreeView.get_columns(&self, ) @extern("gtk_tree_view_get_columns");

<* Maps to TreeView::get_cursor *>
extern fn void TreeView.get_cursor(&self, TreePath* path, TreeViewColumn* focus_column) @extern("gtk_tree_view_get_cursor");

<* Maps to TreeView::get_dest_row_at_pos *>
extern fn bool TreeView.get_dest_row_at_pos(&self, int drag_x, int drag_y, TreePath* path, TreeViewDropPosition* pos) @extern("gtk_tree_view_get_dest_row_at_pos");

<* Maps to TreeView::get_drag_dest_row *>
extern fn void TreeView.get_drag_dest_row(&self, TreePath* path, TreeViewDropPosition* pos) @extern("gtk_tree_view_get_drag_dest_row");

<* Maps to TreeView::get_enable_search *>
extern fn bool TreeView.get_enable_search(&self, ) @extern("gtk_tree_view_get_enable_search");

<* Maps to TreeView::get_enable_tree_lines *>
extern fn bool TreeView.get_enable_tree_lines(&self, ) @extern("gtk_tree_view_get_enable_tree_lines");

<* Maps to TreeView::get_expander_column *>
extern fn TreeViewColumn* TreeView.get_expander_column(&self, ) @extern("gtk_tree_view_get_expander_column");

<* Maps to TreeView::get_fixed_height_mode *>
extern fn bool TreeView.get_fixed_height_mode(&self, ) @extern("gtk_tree_view_get_fixed_height_mode");

<* Maps to TreeView::get_grid_lines *>
extern fn TreeViewGridLines TreeView.get_grid_lines(&self, ) @extern("gtk_tree_view_get_grid_lines");

<* Maps to TreeView::get_headers_clickable *>
extern fn bool TreeView.get_headers_clickable(&self, ) @extern("gtk_tree_view_get_headers_clickable");

<* Maps to TreeView::get_headers_visible *>
extern fn bool TreeView.get_headers_visible(&self, ) @extern("gtk_tree_view_get_headers_visible");

<* Maps to TreeView::get_hover_expand *>
extern fn bool TreeView.get_hover_expand(&self, ) @extern("gtk_tree_view_get_hover_expand");

<* Maps to TreeView::get_hover_selection *>
extern fn bool TreeView.get_hover_selection(&self, ) @extern("gtk_tree_view_get_hover_selection");

<* Maps to TreeView::get_level_indentation *>
extern fn int TreeView.get_level_indentation(&self, ) @extern("gtk_tree_view_get_level_indentation");

<* Maps to TreeView::get_model *>
extern fn TreeModel* TreeView.get_model(&self, ) @extern("gtk_tree_view_get_model");

<* Maps to TreeView::get_n_columns *>
extern fn uint TreeView.get_n_columns(&self, ) @extern("gtk_tree_view_get_n_columns");

<* Maps to TreeView::get_path_at_pos *>
extern fn bool TreeView.get_path_at_pos(&self, int x, int y, TreePath* path, TreeViewColumn* column, int* cell_x, int* cell_y) @extern("gtk_tree_view_get_path_at_pos");

<* Maps to TreeView::get_reorderable *>
extern fn bool TreeView.get_reorderable(&self, ) @extern("gtk_tree_view_get_reorderable");

<* Maps to TreeView::get_row_separator_func *>
extern fn TreeViewRowSeparatorFunc TreeView.get_row_separator_func(&self, ) @extern("gtk_tree_view_get_row_separator_func");

<* Maps to TreeView::get_rubber_banding *>
extern fn bool TreeView.get_rubber_banding(&self, ) @extern("gtk_tree_view_get_rubber_banding");

<* Maps to TreeView::get_search_column *>
extern fn int TreeView.get_search_column(&self, ) @extern("gtk_tree_view_get_search_column");

<* Maps to TreeView::get_search_entry *>
extern fn Editable* TreeView.get_search_entry(&self, ) @extern("gtk_tree_view_get_search_entry");

<* Maps to TreeView::get_search_equal_func *>
extern fn TreeViewSearchEqualFunc TreeView.get_search_equal_func(&self, ) @extern("gtk_tree_view_get_search_equal_func");

<* Maps to TreeView::get_selection *>
extern fn TreeSelection* TreeView.get_selection(&self, ) @extern("gtk_tree_view_get_selection");

<* Maps to TreeView::get_show_expanders *>
extern fn bool TreeView.get_show_expanders(&self, ) @extern("gtk_tree_view_get_show_expanders");

<* Maps to TreeView::get_tooltip_column *>
extern fn int TreeView.get_tooltip_column(&self, ) @extern("gtk_tree_view_get_tooltip_column");

<* Maps to TreeView::get_tooltip_context *>
extern fn bool TreeView.get_tooltip_context(&self, int x, int y, bool keyboard_tip, TreeModel* model, TreePath* path, TreeIter* iter) @extern("gtk_tree_view_get_tooltip_context");

<* Maps to TreeView::get_visible_range *>
extern fn bool TreeView.get_visible_range(&self, TreePath* start_path, TreePath* end_path) @extern("gtk_tree_view_get_visible_range");

<* Maps to TreeView::get_visible_rect *>
extern fn void TreeView.get_visible_rect(&self, gdk::Rectangle* visible_rect) @extern("gtk_tree_view_get_visible_rect");

<* Maps to TreeView::insert_column *>
extern fn int TreeView.insert_column(&self, TreeViewColumn* column, int position) @extern("gtk_tree_view_insert_column");

<* Maps to TreeView::insert_column_with_attributes *>
extern fn int TreeView.insert_column_with_attributes(&self, int position, ZString title, CellRenderer* cell, any rest) @extern("gtk_tree_view_insert_column_with_attributes");

<* Maps to TreeView::insert_column_with_data_func *>
extern fn int TreeView.insert_column_with_data_func(&self, int position, ZString title, CellRenderer* cell, TreeCellDataFunc func, void* data, glib::DestroyNotify dnotify) @extern("gtk_tree_view_insert_column_with_data_func");

<* Maps to TreeView::is_blank_at_pos *>
extern fn bool TreeView.is_blank_at_pos(&self, int x, int y, TreePath* path, TreeViewColumn* column, int* cell_x, int* cell_y) @extern("gtk_tree_view_is_blank_at_pos");

<* Maps to TreeView::is_rubber_banding_active *>
extern fn bool TreeView.is_rubber_banding_active(&self, ) @extern("gtk_tree_view_is_rubber_banding_active");

<* Maps to TreeView::map_expanded_rows *>
extern fn void TreeView.map_expanded_rows(&self, TreeViewMappingFunc func, void* data) @extern("gtk_tree_view_map_expanded_rows");

<* Maps to TreeView::move_column_after *>
extern fn void TreeView.move_column_after(&self, TreeViewColumn* column, TreeViewColumn* base_column) @extern("gtk_tree_view_move_column_after");

<* Maps to TreeView::remove_column *>
extern fn int TreeView.remove_column(&self, TreeViewColumn* column) @extern("gtk_tree_view_remove_column");

<* Maps to TreeView::row_activated *>
extern fn void TreeView.row_activated(&self, TreePath* path, TreeViewColumn* column) @extern("gtk_tree_view_row_activated");

<* Maps to TreeView::row_expanded *>
extern fn bool TreeView.row_expanded(&self, TreePath* path) @extern("gtk_tree_view_row_expanded");

<* Maps to TreeView::scroll_to_cell *>
extern fn void TreeView.scroll_to_cell(&self, TreePath* path, TreeViewColumn* column, bool use_align, float row_align, float col_align) @extern("gtk_tree_view_scroll_to_cell");

<* Maps to TreeView::scroll_to_point *>
extern fn void TreeView.scroll_to_point(&self, int tree_x, int tree_y) @extern("gtk_tree_view_scroll_to_point");

<* Maps to TreeView::set_activate_on_single_click *>
extern fn void TreeView.set_activate_on_single_click(&self, bool single) @extern("gtk_tree_view_set_activate_on_single_click");

<* Maps to TreeView::set_column_drag_function *>
extern fn void TreeView.set_column_drag_function(&self, TreeViewColumnDropFunc func, void* user_data, glib::DestroyNotify destroy) @extern("gtk_tree_view_set_column_drag_function");

<* Maps to TreeView::set_cursor *>
extern fn void TreeView.set_cursor(&self, TreePath* path, TreeViewColumn* focus_column, bool start_editing) @extern("gtk_tree_view_set_cursor");

<* Maps to TreeView::set_cursor_on_cell *>
extern fn void TreeView.set_cursor_on_cell(&self, TreePath* path, TreeViewColumn* focus_column, CellRenderer* focus_cell, bool start_editing) @extern("gtk_tree_view_set_cursor_on_cell");

<* Maps to TreeView::set_drag_dest_row *>
extern fn void TreeView.set_drag_dest_row(&self, TreePath* path, TreeViewDropPosition pos) @extern("gtk_tree_view_set_drag_dest_row");

<* Maps to TreeView::set_enable_search *>
extern fn void TreeView.set_enable_search(&self, bool enable_search) @extern("gtk_tree_view_set_enable_search");

<* Maps to TreeView::set_enable_tree_lines *>
extern fn void TreeView.set_enable_tree_lines(&self, bool enabled) @extern("gtk_tree_view_set_enable_tree_lines");

<* Maps to TreeView::set_expander_column *>
extern fn void TreeView.set_expander_column(&self, TreeViewColumn* column) @extern("gtk_tree_view_set_expander_column");

<* Maps to TreeView::set_fixed_height_mode *>
extern fn void TreeView.set_fixed_height_mode(&self, bool enable) @extern("gtk_tree_view_set_fixed_height_mode");

<* Maps to TreeView::set_grid_lines *>
extern fn void TreeView.set_grid_lines(&self, TreeViewGridLines grid_lines) @extern("gtk_tree_view_set_grid_lines");

<* Maps to TreeView::set_headers_clickable *>
extern fn void TreeView.set_headers_clickable(&self, bool setting) @extern("gtk_tree_view_set_headers_clickable");

<* Maps to TreeView::set_headers_visible *>
extern fn void TreeView.set_headers_visible(&self, bool headers_visible) @extern("gtk_tree_view_set_headers_visible");

<* Maps to TreeView::set_hover_expand *>
extern fn void TreeView.set_hover_expand(&self, bool expand) @extern("gtk_tree_view_set_hover_expand");

<* Maps to TreeView::set_hover_selection *>
extern fn void TreeView.set_hover_selection(&self, bool hover) @extern("gtk_tree_view_set_hover_selection");

<* Maps to TreeView::set_level_indentation *>
extern fn void TreeView.set_level_indentation(&self, int indentation) @extern("gtk_tree_view_set_level_indentation");

<* Maps to TreeView::set_model *>
extern fn void TreeView.set_model(&self, TreeModel* model) @extern("gtk_tree_view_set_model");

<* Maps to TreeView::set_reorderable *>
extern fn void TreeView.set_reorderable(&self, bool reorderable) @extern("gtk_tree_view_set_reorderable");

<* Maps to TreeView::set_row_separator_func *>
extern fn void TreeView.set_row_separator_func(&self, TreeViewRowSeparatorFunc func, void* data, glib::DestroyNotify destroy) @extern("gtk_tree_view_set_row_separator_func");

<* Maps to TreeView::set_rubber_banding *>
extern fn void TreeView.set_rubber_banding(&self, bool enable) @extern("gtk_tree_view_set_rubber_banding");

<* Maps to TreeView::set_search_column *>
extern fn void TreeView.set_search_column(&self, int column) @extern("gtk_tree_view_set_search_column");

<* Maps to TreeView::set_search_entry *>
extern fn void TreeView.set_search_entry(&self, Editable* entry) @extern("gtk_tree_view_set_search_entry");

<* Maps to TreeView::set_search_equal_func *>
extern fn void TreeView.set_search_equal_func(&self, TreeViewSearchEqualFunc search_equal_func, void* search_user_data, glib::DestroyNotify search_destroy) @extern("gtk_tree_view_set_search_equal_func");

<* Maps to TreeView::set_show_expanders *>
extern fn void TreeView.set_show_expanders(&self, bool enabled) @extern("gtk_tree_view_set_show_expanders");

<* Maps to TreeView::set_tooltip_cell *>
extern fn void TreeView.set_tooltip_cell(&self, Tooltip* tooltip, TreePath* path, TreeViewColumn* column, CellRenderer* cell) @extern("gtk_tree_view_set_tooltip_cell");

<* Maps to TreeView::set_tooltip_column *>
extern fn void TreeView.set_tooltip_column(&self, int column) @extern("gtk_tree_view_set_tooltip_column");

<* Maps to TreeView::set_tooltip_row *>
extern fn void TreeView.set_tooltip_row(&self, Tooltip* tooltip, TreePath* path) @extern("gtk_tree_view_set_tooltip_row");

<* Maps to TreeView::unset_rows_drag_dest *>
extern fn void TreeView.unset_rows_drag_dest(&self, ) @extern("gtk_tree_view_unset_rows_drag_dest");

<* Maps to TreeView::unset_rows_drag_source *>
extern fn void TreeView.unset_rows_drag_source(&self, ) @extern("gtk_tree_view_unset_rows_drag_source");


// Class Functions



<* Maps to GtkTreeViewColumn *>
distinct TreeViewColumn = void*;

// Class to parent cast.
fn gobject::InitiallyUnowned* TreeViewColumn.as_gobject_InitiallyUnowned(&self) => (gobject::InitiallyUnowned*)(self);

// Class Constructors

<* Maps to new of TreeViewColumn *>
extern fn TreeViewColumn* tree_view_column_new() @extern("gtk_tree_view_column_new");

<* Maps to new_with_area of TreeViewColumn *>
extern fn TreeViewColumn* tree_view_column_new_with_area(CellArea* area) @extern("gtk_tree_view_column_new_with_area");

<* Maps to new_with_attributes of TreeViewColumn *>
extern fn TreeViewColumn* tree_view_column_new_with_attributes(ZString title, CellRenderer* cell, any rest) @extern("gtk_tree_view_column_new_with_attributes");



// Class Methods

<* Maps to TreeViewColumn::add_attribute *>
extern fn void TreeViewColumn.add_attribute(&self, CellRenderer* cell_renderer, ZString attribute, int column) @extern("gtk_tree_view_column_add_attribute");

<* Maps to TreeViewColumn::cell_get_position *>
extern fn bool TreeViewColumn.cell_get_position(&self, CellRenderer* cell_renderer, int* x_offset, int* width) @extern("gtk_tree_view_column_cell_get_position");

<* Maps to TreeViewColumn::cell_get_size *>
extern fn void TreeViewColumn.cell_get_size(&self, int* x_offset, int* y_offset, int* width, int* height) @extern("gtk_tree_view_column_cell_get_size");

<* Maps to TreeViewColumn::cell_is_visible *>
extern fn bool TreeViewColumn.cell_is_visible(&self, ) @extern("gtk_tree_view_column_cell_is_visible");

<* Maps to TreeViewColumn::cell_set_cell_data *>
extern fn void TreeViewColumn.cell_set_cell_data(&self, TreeModel* tree_model, TreeIter* iter, bool is_expander, bool is_expanded) @extern("gtk_tree_view_column_cell_set_cell_data");

<* Maps to TreeViewColumn::clear *>
extern fn void TreeViewColumn.clear(&self, ) @extern("gtk_tree_view_column_clear");

<* Maps to TreeViewColumn::clear_attributes *>
extern fn void TreeViewColumn.clear_attributes(&self, CellRenderer* cell_renderer) @extern("gtk_tree_view_column_clear_attributes");

<* Maps to TreeViewColumn::clicked *>
extern fn void TreeViewColumn.clicked(&self, ) @extern("gtk_tree_view_column_clicked");

<* Maps to TreeViewColumn::focus_cell *>
extern fn void TreeViewColumn.focus_cell(&self, CellRenderer* cell) @extern("gtk_tree_view_column_focus_cell");

<* Maps to TreeViewColumn::get_alignment *>
extern fn float TreeViewColumn.get_alignment(&self, ) @extern("gtk_tree_view_column_get_alignment");

<* Maps to TreeViewColumn::get_button *>
extern fn Widget* TreeViewColumn.get_button(&self, ) @extern("gtk_tree_view_column_get_button");

<* Maps to TreeViewColumn::get_clickable *>
extern fn bool TreeViewColumn.get_clickable(&self, ) @extern("gtk_tree_view_column_get_clickable");

<* Maps to TreeViewColumn::get_expand *>
extern fn bool TreeViewColumn.get_expand(&self, ) @extern("gtk_tree_view_column_get_expand");

<* Maps to TreeViewColumn::get_fixed_width *>
extern fn int TreeViewColumn.get_fixed_width(&self, ) @extern("gtk_tree_view_column_get_fixed_width");

<* Maps to TreeViewColumn::get_max_width *>
extern fn int TreeViewColumn.get_max_width(&self, ) @extern("gtk_tree_view_column_get_max_width");

<* Maps to TreeViewColumn::get_min_width *>
extern fn int TreeViewColumn.get_min_width(&self, ) @extern("gtk_tree_view_column_get_min_width");

<* Maps to TreeViewColumn::get_reorderable *>
extern fn bool TreeViewColumn.get_reorderable(&self, ) @extern("gtk_tree_view_column_get_reorderable");

<* Maps to TreeViewColumn::get_resizable *>
extern fn bool TreeViewColumn.get_resizable(&self, ) @extern("gtk_tree_view_column_get_resizable");

<* Maps to TreeViewColumn::get_sizing *>
extern fn TreeViewColumnSizing TreeViewColumn.get_sizing(&self, ) @extern("gtk_tree_view_column_get_sizing");

<* Maps to TreeViewColumn::get_sort_column_id *>
extern fn int TreeViewColumn.get_sort_column_id(&self, ) @extern("gtk_tree_view_column_get_sort_column_id");

<* Maps to TreeViewColumn::get_sort_indicator *>
extern fn bool TreeViewColumn.get_sort_indicator(&self, ) @extern("gtk_tree_view_column_get_sort_indicator");

<* Maps to TreeViewColumn::get_sort_order *>
extern fn SortType TreeViewColumn.get_sort_order(&self, ) @extern("gtk_tree_view_column_get_sort_order");

<* Maps to TreeViewColumn::get_spacing *>
extern fn int TreeViewColumn.get_spacing(&self, ) @extern("gtk_tree_view_column_get_spacing");

<* Maps to TreeViewColumn::get_title *>
extern fn ZString TreeViewColumn.get_title(&self, ) @extern("gtk_tree_view_column_get_title");

<* Maps to TreeViewColumn::get_tree_view *>
extern fn Widget* TreeViewColumn.get_tree_view(&self, ) @extern("gtk_tree_view_column_get_tree_view");

<* Maps to TreeViewColumn::get_visible *>
extern fn bool TreeViewColumn.get_visible(&self, ) @extern("gtk_tree_view_column_get_visible");

<* Maps to TreeViewColumn::get_widget *>
extern fn Widget* TreeViewColumn.get_widget(&self, ) @extern("gtk_tree_view_column_get_widget");

<* Maps to TreeViewColumn::get_width *>
extern fn int TreeViewColumn.get_width(&self, ) @extern("gtk_tree_view_column_get_width");

<* Maps to TreeViewColumn::get_x_offset *>
extern fn int TreeViewColumn.get_x_offset(&self, ) @extern("gtk_tree_view_column_get_x_offset");

<* Maps to TreeViewColumn::pack_end *>
extern fn void TreeViewColumn.pack_end(&self, CellRenderer* cell, bool expand) @extern("gtk_tree_view_column_pack_end");

<* Maps to TreeViewColumn::pack_start *>
extern fn void TreeViewColumn.pack_start(&self, CellRenderer* cell, bool expand) @extern("gtk_tree_view_column_pack_start");

<* Maps to TreeViewColumn::queue_resize *>
extern fn void TreeViewColumn.queue_resize(&self, ) @extern("gtk_tree_view_column_queue_resize");

<* Maps to TreeViewColumn::set_alignment *>
extern fn void TreeViewColumn.set_alignment(&self, float xalign) @extern("gtk_tree_view_column_set_alignment");

<* Maps to TreeViewColumn::set_attributes *>
extern fn void TreeViewColumn.set_attributes(&self, CellRenderer* cell_renderer, any rest) @extern("gtk_tree_view_column_set_attributes");

<* Maps to TreeViewColumn::set_cell_data_func *>
extern fn void TreeViewColumn.set_cell_data_func(&self, CellRenderer* cell_renderer, TreeCellDataFunc func, void* func_data, glib::DestroyNotify destroy) @extern("gtk_tree_view_column_set_cell_data_func");

<* Maps to TreeViewColumn::set_clickable *>
extern fn void TreeViewColumn.set_clickable(&self, bool clickable) @extern("gtk_tree_view_column_set_clickable");

<* Maps to TreeViewColumn::set_expand *>
extern fn void TreeViewColumn.set_expand(&self, bool expand) @extern("gtk_tree_view_column_set_expand");

<* Maps to TreeViewColumn::set_fixed_width *>
extern fn void TreeViewColumn.set_fixed_width(&self, int fixed_width) @extern("gtk_tree_view_column_set_fixed_width");

<* Maps to TreeViewColumn::set_max_width *>
extern fn void TreeViewColumn.set_max_width(&self, int max_width) @extern("gtk_tree_view_column_set_max_width");

<* Maps to TreeViewColumn::set_min_width *>
extern fn void TreeViewColumn.set_min_width(&self, int min_width) @extern("gtk_tree_view_column_set_min_width");

<* Maps to TreeViewColumn::set_reorderable *>
extern fn void TreeViewColumn.set_reorderable(&self, bool reorderable) @extern("gtk_tree_view_column_set_reorderable");

<* Maps to TreeViewColumn::set_resizable *>
extern fn void TreeViewColumn.set_resizable(&self, bool resizable) @extern("gtk_tree_view_column_set_resizable");

<* Maps to TreeViewColumn::set_sizing *>
extern fn void TreeViewColumn.set_sizing(&self, TreeViewColumnSizing type) @extern("gtk_tree_view_column_set_sizing");

<* Maps to TreeViewColumn::set_sort_column_id *>
extern fn void TreeViewColumn.set_sort_column_id(&self, int sort_column_id) @extern("gtk_tree_view_column_set_sort_column_id");

<* Maps to TreeViewColumn::set_sort_indicator *>
extern fn void TreeViewColumn.set_sort_indicator(&self, bool setting) @extern("gtk_tree_view_column_set_sort_indicator");

<* Maps to TreeViewColumn::set_sort_order *>
extern fn void TreeViewColumn.set_sort_order(&self, SortType order) @extern("gtk_tree_view_column_set_sort_order");

<* Maps to TreeViewColumn::set_spacing *>
extern fn void TreeViewColumn.set_spacing(&self, int spacing) @extern("gtk_tree_view_column_set_spacing");

<* Maps to TreeViewColumn::set_title *>
extern fn void TreeViewColumn.set_title(&self, ZString title) @extern("gtk_tree_view_column_set_title");

<* Maps to TreeViewColumn::set_visible *>
extern fn void TreeViewColumn.set_visible(&self, bool visible) @extern("gtk_tree_view_column_set_visible");

<* Maps to TreeViewColumn::set_widget *>
extern fn void TreeViewColumn.set_widget(&self, Widget* widget) @extern("gtk_tree_view_column_set_widget");


// Class Functions



<* Maps to GtkUriLauncher *>
distinct UriLauncher = void*;

// Class to parent cast.
fn gobject::Object* UriLauncher.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of UriLauncher *>
extern fn UriLauncher* uri_launcher_new(ZString uri) @extern("gtk_uri_launcher_new");



// Class Methods

<* Maps to UriLauncher::get_uri *>
extern fn ZString UriLauncher.get_uri(&self, ) @extern("gtk_uri_launcher_get_uri");

<* Maps to UriLauncher::launch *>
extern fn void UriLauncher.launch(&self, Window* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_uri_launcher_launch");

<* Maps to UriLauncher::launch_finish *>
extern fn bool UriLauncher.launch_finish(&self, gio::AsyncResult* result) @extern("gtk_uri_launcher_launch_finish");

<* Maps to UriLauncher::set_uri *>
extern fn void UriLauncher.set_uri(&self, ZString uri) @extern("gtk_uri_launcher_set_uri");


// Class Functions



<* Maps to GtkVideo *>
distinct Video = void*;

// Class to parent cast.
fn Widget* Video.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Video *>
extern fn Widget* video_new() @extern("gtk_video_new");

<* Maps to new_for_file of Video *>
extern fn Widget* video_new_for_file(gio::File* file) @extern("gtk_video_new_for_file");

<* Maps to new_for_filename of Video *>
extern fn Widget* video_new_for_filename(ZString filename) @extern("gtk_video_new_for_filename");

<* Maps to new_for_media_stream of Video *>
extern fn Widget* video_new_for_media_stream(MediaStream* stream) @extern("gtk_video_new_for_media_stream");

<* Maps to new_for_resource of Video *>
extern fn Widget* video_new_for_resource(ZString resource_path) @extern("gtk_video_new_for_resource");



// Class Methods

<* Maps to Video::get_autoplay *>
extern fn bool Video.get_autoplay(&self, ) @extern("gtk_video_get_autoplay");

<* Maps to Video::get_file *>
extern fn gio::File* Video.get_file(&self, ) @extern("gtk_video_get_file");

<* Maps to Video::get_graphics_offload *>
extern fn GraphicsOffloadEnabled Video.get_graphics_offload(&self, ) @extern("gtk_video_get_graphics_offload");

<* Maps to Video::get_loop *>
extern fn bool Video.get_loop(&self, ) @extern("gtk_video_get_loop");

<* Maps to Video::get_media_stream *>
extern fn MediaStream* Video.get_media_stream(&self, ) @extern("gtk_video_get_media_stream");

<* Maps to Video::set_autoplay *>
extern fn void Video.set_autoplay(&self, bool autoplay) @extern("gtk_video_set_autoplay");

<* Maps to Video::set_file *>
extern fn void Video.set_file(&self, gio::File* file) @extern("gtk_video_set_file");

<* Maps to Video::set_filename *>
extern fn void Video.set_filename(&self, ZString filename) @extern("gtk_video_set_filename");

<* Maps to Video::set_graphics_offload *>
extern fn void Video.set_graphics_offload(&self, GraphicsOffloadEnabled enabled) @extern("gtk_video_set_graphics_offload");

<* Maps to Video::set_loop *>
extern fn void Video.set_loop(&self, bool loop) @extern("gtk_video_set_loop");

<* Maps to Video::set_media_stream *>
extern fn void Video.set_media_stream(&self, MediaStream* stream) @extern("gtk_video_set_media_stream");

<* Maps to Video::set_resource *>
extern fn void Video.set_resource(&self, ZString resource_path) @extern("gtk_video_set_resource");


// Class Functions



<* Maps to GtkViewport *>
distinct Viewport = void*;

// Class to parent cast.
fn Widget* Viewport.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Viewport *>
extern fn Widget* viewport_new(Adjustment* hadjustment, Adjustment* vadjustment) @extern("gtk_viewport_new");



// Class Methods

<* Maps to Viewport::get_child *>
extern fn Widget* Viewport.get_child(&self, ) @extern("gtk_viewport_get_child");

<* Maps to Viewport::get_scroll_to_focus *>
extern fn bool Viewport.get_scroll_to_focus(&self, ) @extern("gtk_viewport_get_scroll_to_focus");

<* Maps to Viewport::scroll_to *>
extern fn void Viewport.scroll_to(&self, Widget* descendant, ScrollInfo* scroll) @extern("gtk_viewport_scroll_to");

<* Maps to Viewport::set_child *>
extern fn void Viewport.set_child(&self, Widget* child) @extern("gtk_viewport_set_child");

<* Maps to Viewport::set_scroll_to_focus *>
extern fn void Viewport.set_scroll_to_focus(&self, bool scroll_to_focus) @extern("gtk_viewport_set_scroll_to_focus");


// Class Functions



<* Maps to GtkVolumeButton *>
distinct VolumeButton = void*;

// Class to parent cast.
fn ScaleButton* VolumeButton.as_ScaleButton(&self) => (ScaleButton*)(self);

// Class Constructors

<* Maps to new of VolumeButton *>
extern fn Widget* volume_button_new() @extern("gtk_volume_button_new");



// Class Methods


// Class Functions



<* Maps to GtkWidget *>
distinct Widget = void*;

// Class to parent cast.
fn gobject::InitiallyUnowned* Widget.as_gobject_InitiallyUnowned(&self) => (gobject::InitiallyUnowned*)(self);

// Class Constructors



// Class Methods

<* Maps to Widget::action_set_enabled *>
extern fn void Widget.action_set_enabled(&self, ZString action_name, bool enabled) @extern("gtk_widget_action_set_enabled");

<* Maps to Widget::activate *>
extern fn bool Widget.activate(&self, ) @extern("gtk_widget_activate");

<* Maps to Widget::activate_action *>
extern fn bool Widget.activate_action(&self, ZString name, ZString format_string, any rest) @extern("gtk_widget_activate_action");

<* Maps to Widget::activate_action_variant *>
extern fn bool Widget.activate_action_variant(&self, ZString name, glib::Variant* args) @extern("gtk_widget_activate_action_variant");

<* Maps to Widget::activate_default *>
extern fn void Widget.activate_default(&self, ) @extern("gtk_widget_activate_default");

<* Maps to Widget::add_controller *>
extern fn void Widget.add_controller(&self, EventController* controller) @extern("gtk_widget_add_controller");

<* Maps to Widget::add_css_class *>
extern fn void Widget.add_css_class(&self, ZString css_class) @extern("gtk_widget_add_css_class");

<* Maps to Widget::add_mnemonic_label *>
extern fn void Widget.add_mnemonic_label(&self, Widget* label) @extern("gtk_widget_add_mnemonic_label");

<* Maps to Widget::add_tick_callback *>
extern fn uint Widget.add_tick_callback(&self, TickCallback callback, void* user_data, glib::DestroyNotify notify) @extern("gtk_widget_add_tick_callback");

<* Maps to Widget::allocate *>
extern fn void Widget.allocate(&self, int width, int height, int baseline, gsk::Transform* transform) @extern("gtk_widget_allocate");

<* Maps to Widget::child_focus *>
extern fn bool Widget.child_focus(&self, DirectionType direction) @extern("gtk_widget_child_focus");

<* Maps to Widget::compute_bounds *>
extern fn bool Widget.compute_bounds(&self, Widget* target, graphene::Rect* out_bounds) @extern("gtk_widget_compute_bounds");

<* Maps to Widget::compute_expand *>
extern fn bool Widget.compute_expand(&self, Orientation orientation) @extern("gtk_widget_compute_expand");

<* Maps to Widget::compute_point *>
extern fn bool Widget.compute_point(&self, Widget* target, graphene::Point* point, graphene::Point* out_point) @extern("gtk_widget_compute_point");

<* Maps to Widget::compute_transform *>
extern fn bool Widget.compute_transform(&self, Widget* target, graphene::Matrix* out_transform) @extern("gtk_widget_compute_transform");

<* Maps to Widget::contains *>
extern fn bool Widget.contains(&self, double x, double y) @extern("gtk_widget_contains");

<* Maps to Widget::create_pango_context *>
extern fn pango::Context* Widget.create_pango_context(&self, ) @extern("gtk_widget_create_pango_context");

<* Maps to Widget::create_pango_layout *>
extern fn pango::Layout* Widget.create_pango_layout(&self, ZString text) @extern("gtk_widget_create_pango_layout");

<* Maps to Widget::dispose_template *>
extern fn void Widget.dispose_template(&self, usz widget_type) @extern("gtk_widget_dispose_template");

<* Maps to Widget::drag_check_threshold *>
extern fn bool Widget.drag_check_threshold(&self, int start_x, int start_y, int current_x, int current_y) @extern("gtk_drag_check_threshold");

<* Maps to Widget::error_bell *>
extern fn void Widget.error_bell(&self, ) @extern("gtk_widget_error_bell");

<* Maps to Widget::get_allocated_baseline *>
extern fn int Widget.get_allocated_baseline(&self, ) @extern("gtk_widget_get_allocated_baseline");

<* Maps to Widget::get_allocated_height *>
extern fn int Widget.get_allocated_height(&self, ) @extern("gtk_widget_get_allocated_height");

<* Maps to Widget::get_allocated_width *>
extern fn int Widget.get_allocated_width(&self, ) @extern("gtk_widget_get_allocated_width");

<* Maps to Widget::get_allocation *>
extern fn void Widget.get_allocation(&self, Allocation* allocation) @extern("gtk_widget_get_allocation");

<* Maps to Widget::get_ancestor *>
extern fn Widget* Widget.get_ancestor(&self, usz widget_type) @extern("gtk_widget_get_ancestor");

<* Maps to Widget::get_baseline *>
extern fn int Widget.get_baseline(&self, ) @extern("gtk_widget_get_baseline");

<* Maps to Widget::get_can_focus *>
extern fn bool Widget.get_can_focus(&self, ) @extern("gtk_widget_get_can_focus");

<* Maps to Widget::get_can_target *>
extern fn bool Widget.get_can_target(&self, ) @extern("gtk_widget_get_can_target");

<* Maps to Widget::get_child_visible *>
extern fn bool Widget.get_child_visible(&self, ) @extern("gtk_widget_get_child_visible");

<* Maps to Widget::get_clipboard *>
extern fn gdk::Clipboard* Widget.get_clipboard(&self, ) @extern("gtk_widget_get_clipboard");

<* Maps to Widget::get_color *>
extern fn void Widget.get_color(&self, gdk::Rgba* color) @extern("gtk_widget_get_color");

<* Maps to Widget::get_css_classes *>
extern fn ZString Widget.get_css_classes(&self, ) @extern("gtk_widget_get_css_classes");

<* Maps to Widget::get_css_name *>
extern fn ZString Widget.get_css_name(&self, ) @extern("gtk_widget_get_css_name");

<* Maps to Widget::get_cursor *>
extern fn gdk::Cursor* Widget.get_cursor(&self, ) @extern("gtk_widget_get_cursor");

<* Maps to Widget::get_direction *>
extern fn TextDirection Widget.get_direction(&self, ) @extern("gtk_widget_get_direction");

<* Maps to Widget::get_display *>
extern fn gdk::Display* Widget.get_display(&self, ) @extern("gtk_widget_get_display");

<* Maps to Widget::get_first_child *>
extern fn Widget* Widget.get_first_child(&self, ) @extern("gtk_widget_get_first_child");

<* Maps to Widget::get_focus_child *>
extern fn Widget* Widget.get_focus_child(&self, ) @extern("gtk_widget_get_focus_child");

<* Maps to Widget::get_focus_on_click *>
extern fn bool Widget.get_focus_on_click(&self, ) @extern("gtk_widget_get_focus_on_click");

<* Maps to Widget::get_focusable *>
extern fn bool Widget.get_focusable(&self, ) @extern("gtk_widget_get_focusable");

<* Maps to Widget::get_font_map *>
extern fn pango::FontMap* Widget.get_font_map(&self, ) @extern("gtk_widget_get_font_map");

<* Maps to Widget::get_font_options *>
extern fn cairo::FontOptions* Widget.get_font_options(&self, ) @extern("gtk_widget_get_font_options");

<* Maps to Widget::get_frame_clock *>
extern fn gdk::FrameClock* Widget.get_frame_clock(&self, ) @extern("gtk_widget_get_frame_clock");

<* Maps to Widget::get_halign *>
extern fn Align Widget.get_halign(&self, ) @extern("gtk_widget_get_halign");

<* Maps to Widget::get_has_tooltip *>
extern fn bool Widget.get_has_tooltip(&self, ) @extern("gtk_widget_get_has_tooltip");

<* Maps to Widget::get_height *>
extern fn int Widget.get_height(&self, ) @extern("gtk_widget_get_height");

<* Maps to Widget::get_hexpand *>
extern fn bool Widget.get_hexpand(&self, ) @extern("gtk_widget_get_hexpand");

<* Maps to Widget::get_hexpand_set *>
extern fn bool Widget.get_hexpand_set(&self, ) @extern("gtk_widget_get_hexpand_set");

<* Maps to Widget::get_last_child *>
extern fn Widget* Widget.get_last_child(&self, ) @extern("gtk_widget_get_last_child");

<* Maps to Widget::get_layout_manager *>
extern fn LayoutManager* Widget.get_layout_manager(&self, ) @extern("gtk_widget_get_layout_manager");

<* Maps to Widget::get_mapped *>
extern fn bool Widget.get_mapped(&self, ) @extern("gtk_widget_get_mapped");

<* Maps to Widget::get_margin_bottom *>
extern fn int Widget.get_margin_bottom(&self, ) @extern("gtk_widget_get_margin_bottom");

<* Maps to Widget::get_margin_end *>
extern fn int Widget.get_margin_end(&self, ) @extern("gtk_widget_get_margin_end");

<* Maps to Widget::get_margin_start *>
extern fn int Widget.get_margin_start(&self, ) @extern("gtk_widget_get_margin_start");

<* Maps to Widget::get_margin_top *>
extern fn int Widget.get_margin_top(&self, ) @extern("gtk_widget_get_margin_top");

<* Maps to Widget::get_name *>
extern fn ZString Widget.get_name(&self, ) @extern("gtk_widget_get_name");

<* Maps to Widget::get_native *>
extern fn Native* Widget.get_native(&self, ) @extern("gtk_widget_get_native");

<* Maps to Widget::get_next_sibling *>
extern fn Widget* Widget.get_next_sibling(&self, ) @extern("gtk_widget_get_next_sibling");

<* Maps to Widget::get_opacity *>
extern fn double Widget.get_opacity(&self, ) @extern("gtk_widget_get_opacity");

<* Maps to Widget::get_overflow *>
extern fn Overflow Widget.get_overflow(&self, ) @extern("gtk_widget_get_overflow");

<* Maps to Widget::get_pango_context *>
extern fn pango::Context* Widget.get_pango_context(&self, ) @extern("gtk_widget_get_pango_context");

<* Maps to Widget::get_parent *>
extern fn Widget* Widget.get_parent(&self, ) @extern("gtk_widget_get_parent");

<* Maps to Widget::get_preferred_size *>
extern fn void Widget.get_preferred_size(&self, Requisition* minimum_size, Requisition* natural_size) @extern("gtk_widget_get_preferred_size");

<* Maps to Widget::get_prev_sibling *>
extern fn Widget* Widget.get_prev_sibling(&self, ) @extern("gtk_widget_get_prev_sibling");

<* Maps to Widget::get_primary_clipboard *>
extern fn gdk::Clipboard* Widget.get_primary_clipboard(&self, ) @extern("gtk_widget_get_primary_clipboard");

<* Maps to Widget::get_realized *>
extern fn bool Widget.get_realized(&self, ) @extern("gtk_widget_get_realized");

<* Maps to Widget::get_receives_default *>
extern fn bool Widget.get_receives_default(&self, ) @extern("gtk_widget_get_receives_default");

<* Maps to Widget::get_request_mode *>
extern fn SizeRequestMode Widget.get_request_mode(&self, ) @extern("gtk_widget_get_request_mode");

<* Maps to Widget::get_root *>
extern fn Root* Widget.get_root(&self, ) @extern("gtk_widget_get_root");

<* Maps to Widget::get_scale_factor *>
extern fn int Widget.get_scale_factor(&self, ) @extern("gtk_widget_get_scale_factor");

<* Maps to Widget::get_sensitive *>
extern fn bool Widget.get_sensitive(&self, ) @extern("gtk_widget_get_sensitive");

<* Maps to Widget::get_settings *>
extern fn Settings* Widget.get_settings(&self, ) @extern("gtk_widget_get_settings");

<* Maps to Widget::get_size *>
extern fn int Widget.get_size(&self, Orientation orientation) @extern("gtk_widget_get_size");

<* Maps to Widget::get_size_request *>
extern fn void Widget.get_size_request(&self, int* width, int* height) @extern("gtk_widget_get_size_request");

<* Maps to Widget::get_state_flags *>
extern fn StateFlags Widget.get_state_flags(&self, ) @extern("gtk_widget_get_state_flags");

<* Maps to Widget::get_style_context *>
extern fn StyleContext* Widget.get_style_context(&self, ) @extern("gtk_widget_get_style_context");

<* Maps to Widget::get_template_child *>
extern fn gobject::Object* Widget.get_template_child(&self, usz widget_type, ZString name) @extern("gtk_widget_get_template_child");

<* Maps to Widget::get_tooltip_markup *>
extern fn ZString Widget.get_tooltip_markup(&self, ) @extern("gtk_widget_get_tooltip_markup");

<* Maps to Widget::get_tooltip_text *>
extern fn ZString Widget.get_tooltip_text(&self, ) @extern("gtk_widget_get_tooltip_text");

<* Maps to Widget::get_valign *>
extern fn Align Widget.get_valign(&self, ) @extern("gtk_widget_get_valign");

<* Maps to Widget::get_vexpand *>
extern fn bool Widget.get_vexpand(&self, ) @extern("gtk_widget_get_vexpand");

<* Maps to Widget::get_vexpand_set *>
extern fn bool Widget.get_vexpand_set(&self, ) @extern("gtk_widget_get_vexpand_set");

<* Maps to Widget::get_visible *>
extern fn bool Widget.get_visible(&self, ) @extern("gtk_widget_get_visible");

<* Maps to Widget::get_width *>
extern fn int Widget.get_width(&self, ) @extern("gtk_widget_get_width");

<* Maps to Widget::grab_focus *>
extern fn bool Widget.grab_focus(&self, ) @extern("gtk_widget_grab_focus");

<* Maps to Widget::has_css_class *>
extern fn bool Widget.has_css_class(&self, ZString css_class) @extern("gtk_widget_has_css_class");

<* Maps to Widget::has_default *>
extern fn bool Widget.has_default(&self, ) @extern("gtk_widget_has_default");

<* Maps to Widget::has_focus *>
extern fn bool Widget.has_focus(&self, ) @extern("gtk_widget_has_focus");

<* Maps to Widget::has_visible_focus *>
extern fn bool Widget.has_visible_focus(&self, ) @extern("gtk_widget_has_visible_focus");

<* Maps to Widget::hide *>
extern fn void Widget.hide(&self, ) @extern("gtk_widget_hide");

<* Maps to Widget::in_destruction *>
extern fn bool Widget.in_destruction(&self, ) @extern("gtk_widget_in_destruction");

<* Maps to Widget::init_template *>
extern fn void Widget.init_template(&self, ) @extern("gtk_widget_init_template");

<* Maps to Widget::insert_action_group *>
extern fn void Widget.insert_action_group(&self, ZString name, gio::ActionGroup* group) @extern("gtk_widget_insert_action_group");

<* Maps to Widget::insert_after *>
extern fn void Widget.insert_after(&self, Widget* parent, Widget* previous_sibling) @extern("gtk_widget_insert_after");

<* Maps to Widget::insert_before *>
extern fn void Widget.insert_before(&self, Widget* parent, Widget* next_sibling) @extern("gtk_widget_insert_before");

<* Maps to Widget::is_ancestor *>
extern fn bool Widget.is_ancestor(&self, Widget* ancestor) @extern("gtk_widget_is_ancestor");

<* Maps to Widget::is_drawable *>
extern fn bool Widget.is_drawable(&self, ) @extern("gtk_widget_is_drawable");

<* Maps to Widget::is_focus *>
extern fn bool Widget.is_focus(&self, ) @extern("gtk_widget_is_focus");

<* Maps to Widget::is_sensitive *>
extern fn bool Widget.is_sensitive(&self, ) @extern("gtk_widget_is_sensitive");

<* Maps to Widget::is_visible *>
extern fn bool Widget.is_visible(&self, ) @extern("gtk_widget_is_visible");

<* Maps to Widget::keynav_failed *>
extern fn bool Widget.keynav_failed(&self, DirectionType direction) @extern("gtk_widget_keynav_failed");

<* Maps to Widget::list_mnemonic_labels *>
extern fn glib::List* Widget.list_mnemonic_labels(&self, ) @extern("gtk_widget_list_mnemonic_labels");

<* Maps to Widget::map *>
extern fn void Widget.map(&self, ) @extern("gtk_widget_map");

<* Maps to Widget::measure *>
extern fn void Widget.measure(&self, Orientation orientation, int for_size, int* minimum, int* natural, int* minimum_baseline, int* natural_baseline) @extern("gtk_widget_measure");

<* Maps to Widget::mnemonic_activate *>
extern fn bool Widget.mnemonic_activate(&self, bool group_cycling) @extern("gtk_widget_mnemonic_activate");

<* Maps to Widget::observe_children *>
extern fn gio::ListModel* Widget.observe_children(&self, ) @extern("gtk_widget_observe_children");

<* Maps to Widget::observe_controllers *>
extern fn gio::ListModel* Widget.observe_controllers(&self, ) @extern("gtk_widget_observe_controllers");

<* Maps to Widget::pick *>
extern fn Widget* Widget.pick(&self, double x, double y, PickFlags flags) @extern("gtk_widget_pick");

<* Maps to Widget::queue_allocate *>
extern fn void Widget.queue_allocate(&self, ) @extern("gtk_widget_queue_allocate");

<* Maps to Widget::queue_draw *>
extern fn void Widget.queue_draw(&self, ) @extern("gtk_widget_queue_draw");

<* Maps to Widget::queue_resize *>
extern fn void Widget.queue_resize(&self, ) @extern("gtk_widget_queue_resize");

<* Maps to Widget::realize *>
extern fn void Widget.realize(&self, ) @extern("gtk_widget_realize");

<* Maps to Widget::remove_controller *>
extern fn void Widget.remove_controller(&self, EventController* controller) @extern("gtk_widget_remove_controller");

<* Maps to Widget::remove_css_class *>
extern fn void Widget.remove_css_class(&self, ZString css_class) @extern("gtk_widget_remove_css_class");

<* Maps to Widget::remove_mnemonic_label *>
extern fn void Widget.remove_mnemonic_label(&self, Widget* label) @extern("gtk_widget_remove_mnemonic_label");

<* Maps to Widget::remove_tick_callback *>
extern fn void Widget.remove_tick_callback(&self, uint id) @extern("gtk_widget_remove_tick_callback");

<* Maps to Widget::set_can_focus *>
extern fn void Widget.set_can_focus(&self, bool can_focus) @extern("gtk_widget_set_can_focus");

<* Maps to Widget::set_can_target *>
extern fn void Widget.set_can_target(&self, bool can_target) @extern("gtk_widget_set_can_target");

<* Maps to Widget::set_child_visible *>
extern fn void Widget.set_child_visible(&self, bool child_visible) @extern("gtk_widget_set_child_visible");

<* Maps to Widget::set_css_classes *>
extern fn void Widget.set_css_classes(&self, ZString* classes) @extern("gtk_widget_set_css_classes");

<* Maps to Widget::set_cursor *>
extern fn void Widget.set_cursor(&self, gdk::Cursor* cursor) @extern("gtk_widget_set_cursor");

<* Maps to Widget::set_cursor_from_name *>
extern fn void Widget.set_cursor_from_name(&self, ZString name) @extern("gtk_widget_set_cursor_from_name");

<* Maps to Widget::set_direction *>
extern fn void Widget.set_direction(&self, TextDirection dir) @extern("gtk_widget_set_direction");

<* Maps to Widget::set_focus_child *>
extern fn void Widget.set_focus_child(&self, Widget* child) @extern("gtk_widget_set_focus_child");

<* Maps to Widget::set_focus_on_click *>
extern fn void Widget.set_focus_on_click(&self, bool focus_on_click) @extern("gtk_widget_set_focus_on_click");

<* Maps to Widget::set_focusable *>
extern fn void Widget.set_focusable(&self, bool focusable) @extern("gtk_widget_set_focusable");

<* Maps to Widget::set_font_map *>
extern fn void Widget.set_font_map(&self, pango::FontMap* font_map) @extern("gtk_widget_set_font_map");

<* Maps to Widget::set_font_options *>
extern fn void Widget.set_font_options(&self, cairo::FontOptions* options) @extern("gtk_widget_set_font_options");

<* Maps to Widget::set_halign *>
extern fn void Widget.set_halign(&self, Align align) @extern("gtk_widget_set_halign");

<* Maps to Widget::set_has_tooltip *>
extern fn void Widget.set_has_tooltip(&self, bool has_tooltip) @extern("gtk_widget_set_has_tooltip");

<* Maps to Widget::set_hexpand *>
extern fn void Widget.set_hexpand(&self, bool expand) @extern("gtk_widget_set_hexpand");

<* Maps to Widget::set_hexpand_set *>
extern fn void Widget.set_hexpand_set(&self, bool set) @extern("gtk_widget_set_hexpand_set");

<* Maps to Widget::set_layout_manager *>
extern fn void Widget.set_layout_manager(&self, LayoutManager* layout_manager) @extern("gtk_widget_set_layout_manager");

<* Maps to Widget::set_margin_bottom *>
extern fn void Widget.set_margin_bottom(&self, int margin) @extern("gtk_widget_set_margin_bottom");

<* Maps to Widget::set_margin_end *>
extern fn void Widget.set_margin_end(&self, int margin) @extern("gtk_widget_set_margin_end");

<* Maps to Widget::set_margin_start *>
extern fn void Widget.set_margin_start(&self, int margin) @extern("gtk_widget_set_margin_start");

<* Maps to Widget::set_margin_top *>
extern fn void Widget.set_margin_top(&self, int margin) @extern("gtk_widget_set_margin_top");

<* Maps to Widget::set_name *>
extern fn void Widget.set_name(&self, ZString name) @extern("gtk_widget_set_name");

<* Maps to Widget::set_opacity *>
extern fn void Widget.set_opacity(&self, double opacity) @extern("gtk_widget_set_opacity");

<* Maps to Widget::set_overflow *>
extern fn void Widget.set_overflow(&self, Overflow overflow) @extern("gtk_widget_set_overflow");

<* Maps to Widget::set_parent *>
extern fn void Widget.set_parent(&self, Widget* parent) @extern("gtk_widget_set_parent");

<* Maps to Widget::set_receives_default *>
extern fn void Widget.set_receives_default(&self, bool receives_default) @extern("gtk_widget_set_receives_default");

<* Maps to Widget::set_sensitive *>
extern fn void Widget.set_sensitive(&self, bool sensitive) @extern("gtk_widget_set_sensitive");

<* Maps to Widget::set_size_request *>
extern fn void Widget.set_size_request(&self, int width, int height) @extern("gtk_widget_set_size_request");

<* Maps to Widget::set_state_flags *>
extern fn void Widget.set_state_flags(&self, StateFlags flags, bool clear) @extern("gtk_widget_set_state_flags");

<* Maps to Widget::set_tooltip_markup *>
extern fn void Widget.set_tooltip_markup(&self, ZString markup) @extern("gtk_widget_set_tooltip_markup");

<* Maps to Widget::set_tooltip_text *>
extern fn void Widget.set_tooltip_text(&self, ZString text) @extern("gtk_widget_set_tooltip_text");

<* Maps to Widget::set_valign *>
extern fn void Widget.set_valign(&self, Align align) @extern("gtk_widget_set_valign");

<* Maps to Widget::set_vexpand *>
extern fn void Widget.set_vexpand(&self, bool expand) @extern("gtk_widget_set_vexpand");

<* Maps to Widget::set_vexpand_set *>
extern fn void Widget.set_vexpand_set(&self, bool set) @extern("gtk_widget_set_vexpand_set");

<* Maps to Widget::set_visible *>
extern fn void Widget.set_visible(&self, bool visible) @extern("gtk_widget_set_visible");

<* Maps to Widget::should_layout *>
extern fn bool Widget.should_layout(&self, ) @extern("gtk_widget_should_layout");

<* Maps to Widget::show *>
extern fn void Widget.show(&self, ) @extern("gtk_widget_show");

<* Maps to Widget::size_allocate *>
extern fn void Widget.size_allocate(&self, Allocation* allocation, int baseline) @extern("gtk_widget_size_allocate");

<* Maps to Widget::snapshot_child *>
extern fn void Widget.snapshot_child(&self, Widget* child, Snapshot* snapshot) @extern("gtk_widget_snapshot_child");

<* Maps to Widget::translate_coordinates *>
extern fn bool Widget.translate_coordinates(&self, Widget* dest_widget, double src_x, double src_y, double* dest_x, double* dest_y) @extern("gtk_widget_translate_coordinates");

<* Maps to Widget::trigger_tooltip_query *>
extern fn void Widget.trigger_tooltip_query(&self, ) @extern("gtk_widget_trigger_tooltip_query");

<* Maps to Widget::unmap *>
extern fn void Widget.unmap(&self, ) @extern("gtk_widget_unmap");

<* Maps to Widget::unparent *>
extern fn void Widget.unparent(&self, ) @extern("gtk_widget_unparent");

<* Maps to Widget::unrealize *>
extern fn void Widget.unrealize(&self, ) @extern("gtk_widget_unrealize");

<* Maps to Widget::unset_state_flags *>
extern fn void Widget.unset_state_flags(&self, StateFlags flags) @extern("gtk_widget_unset_state_flags");


// Class Functions

<* Maps to get_default_direction of Widget *>
extern fn TextDirection widget_get_default_direction() @extern("gtk_widget_get_default_direction");

<* Maps to set_default_direction of Widget *>
extern fn void widget_set_default_direction(TextDirection dir) @extern("gtk_widget_set_default_direction");



<* Maps to GtkWidgetPaintable *>
distinct WidgetPaintable = void*;

// Class to parent cast.
fn gobject::Object* WidgetPaintable.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of WidgetPaintable *>
extern fn WidgetPaintable* widget_paintable_new(Widget* widget) @extern("gtk_widget_paintable_new");



// Class Methods

<* Maps to WidgetPaintable::get_widget *>
extern fn Widget* WidgetPaintable.get_widget(&self, ) @extern("gtk_widget_paintable_get_widget");

<* Maps to WidgetPaintable::set_widget *>
extern fn void WidgetPaintable.set_widget(&self, Widget* widget) @extern("gtk_widget_paintable_set_widget");


// Class Functions



<* Maps to GtkWindow *>
distinct Window = void*;

// Class to parent cast.
fn Widget* Window.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of Window *>
extern fn Widget* window_new() @extern("gtk_window_new");



// Class Methods

<* Maps to Window::close *>
extern fn void Window.close(&self, ) @extern("gtk_window_close");

<* Maps to Window::destroy *>
extern fn void Window.destroy(&self, ) @extern("gtk_window_destroy");

<* Maps to Window::fullscreen *>
extern fn void Window.fullscreen(&self, ) @extern("gtk_window_fullscreen");

<* Maps to Window::fullscreen_on_monitor *>
extern fn void Window.fullscreen_on_monitor(&self, gdk::Monitor* monitor) @extern("gtk_window_fullscreen_on_monitor");

<* Maps to Window::get_application *>
extern fn Application* Window.get_application(&self, ) @extern("gtk_window_get_application");

<* Maps to Window::get_child *>
extern fn Widget* Window.get_child(&self, ) @extern("gtk_window_get_child");

<* Maps to Window::get_decorated *>
extern fn bool Window.get_decorated(&self, ) @extern("gtk_window_get_decorated");

<* Maps to Window::get_default_size *>
extern fn void Window.get_default_size(&self, int* width, int* height) @extern("gtk_window_get_default_size");

<* Maps to Window::get_default_widget *>
extern fn Widget* Window.get_default_widget(&self, ) @extern("gtk_window_get_default_widget");

<* Maps to Window::get_deletable *>
extern fn bool Window.get_deletable(&self, ) @extern("gtk_window_get_deletable");

<* Maps to Window::get_destroy_with_parent *>
extern fn bool Window.get_destroy_with_parent(&self, ) @extern("gtk_window_get_destroy_with_parent");

<* Maps to Window::get_focus *>
extern fn Widget* Window.get_focus(&self, ) @extern("gtk_window_get_focus");

<* Maps to Window::get_focus_visible *>
extern fn bool Window.get_focus_visible(&self, ) @extern("gtk_window_get_focus_visible");

<* Maps to Window::get_group *>
extern fn WindowGroup* Window.get_group(&self, ) @extern("gtk_window_get_group");

<* Maps to Window::get_handle_menubar_accel *>
extern fn bool Window.get_handle_menubar_accel(&self, ) @extern("gtk_window_get_handle_menubar_accel");

<* Maps to Window::get_hide_on_close *>
extern fn bool Window.get_hide_on_close(&self, ) @extern("gtk_window_get_hide_on_close");

<* Maps to Window::get_icon_name *>
extern fn ZString Window.get_icon_name(&self, ) @extern("gtk_window_get_icon_name");

<* Maps to Window::get_mnemonics_visible *>
extern fn bool Window.get_mnemonics_visible(&self, ) @extern("gtk_window_get_mnemonics_visible");

<* Maps to Window::get_modal *>
extern fn bool Window.get_modal(&self, ) @extern("gtk_window_get_modal");

<* Maps to Window::get_resizable *>
extern fn bool Window.get_resizable(&self, ) @extern("gtk_window_get_resizable");

<* Maps to Window::get_title *>
extern fn ZString Window.get_title(&self, ) @extern("gtk_window_get_title");

<* Maps to Window::get_titlebar *>
extern fn Widget* Window.get_titlebar(&self, ) @extern("gtk_window_get_titlebar");

<* Maps to Window::get_transient_for *>
extern fn Window* Window.get_transient_for(&self, ) @extern("gtk_window_get_transient_for");

<* Maps to Window::has_group *>
extern fn bool Window.has_group(&self, ) @extern("gtk_window_has_group");

<* Maps to Window::is_active *>
extern fn bool Window.is_active(&self, ) @extern("gtk_window_is_active");

<* Maps to Window::is_fullscreen *>
extern fn bool Window.is_fullscreen(&self, ) @extern("gtk_window_is_fullscreen");

<* Maps to Window::is_maximized *>
extern fn bool Window.is_maximized(&self, ) @extern("gtk_window_is_maximized");

<* Maps to Window::is_suspended *>
extern fn bool Window.is_suspended(&self, ) @extern("gtk_window_is_suspended");

<* Maps to Window::maximize *>
extern fn void Window.maximize(&self, ) @extern("gtk_window_maximize");

<* Maps to Window::minimize *>
extern fn void Window.minimize(&self, ) @extern("gtk_window_minimize");

<* Maps to Window::present *>
extern fn void Window.present(&self, ) @extern("gtk_window_present");

<* Maps to Window::present_with_time *>
extern fn void Window.present_with_time(&self, uint timestamp) @extern("gtk_window_present_with_time");

<* Maps to Window::set_application *>
extern fn void Window.set_application(&self, Application* application) @extern("gtk_window_set_application");

<* Maps to Window::set_child *>
extern fn void Window.set_child(&self, Widget* child) @extern("gtk_window_set_child");

<* Maps to Window::set_decorated *>
extern fn void Window.set_decorated(&self, bool setting) @extern("gtk_window_set_decorated");

<* Maps to Window::set_default_size *>
extern fn void Window.set_default_size(&self, int width, int height) @extern("gtk_window_set_default_size");

<* Maps to Window::set_default_widget *>
extern fn void Window.set_default_widget(&self, Widget* default_widget) @extern("gtk_window_set_default_widget");

<* Maps to Window::set_deletable *>
extern fn void Window.set_deletable(&self, bool setting) @extern("gtk_window_set_deletable");

<* Maps to Window::set_destroy_with_parent *>
extern fn void Window.set_destroy_with_parent(&self, bool setting) @extern("gtk_window_set_destroy_with_parent");

<* Maps to Window::set_display *>
extern fn void Window.set_display(&self, gdk::Display* display) @extern("gtk_window_set_display");

<* Maps to Window::set_focus *>
extern fn void Window.set_focus(&self, Widget* focus) @extern("gtk_window_set_focus");

<* Maps to Window::set_focus_visible *>
extern fn void Window.set_focus_visible(&self, bool setting) @extern("gtk_window_set_focus_visible");

<* Maps to Window::set_handle_menubar_accel *>
extern fn void Window.set_handle_menubar_accel(&self, bool handle_menubar_accel) @extern("gtk_window_set_handle_menubar_accel");

<* Maps to Window::set_hide_on_close *>
extern fn void Window.set_hide_on_close(&self, bool setting) @extern("gtk_window_set_hide_on_close");

<* Maps to Window::set_icon_name *>
extern fn void Window.set_icon_name(&self, ZString name) @extern("gtk_window_set_icon_name");

<* Maps to Window::set_mnemonics_visible *>
extern fn void Window.set_mnemonics_visible(&self, bool setting) @extern("gtk_window_set_mnemonics_visible");

<* Maps to Window::set_modal *>
extern fn void Window.set_modal(&self, bool modal) @extern("gtk_window_set_modal");

<* Maps to Window::set_resizable *>
extern fn void Window.set_resizable(&self, bool resizable) @extern("gtk_window_set_resizable");

<* Maps to Window::set_startup_id *>
extern fn void Window.set_startup_id(&self, ZString startup_id) @extern("gtk_window_set_startup_id");

<* Maps to Window::set_title *>
extern fn void Window.set_title(&self, ZString title) @extern("gtk_window_set_title");

<* Maps to Window::set_titlebar *>
extern fn void Window.set_titlebar(&self, Widget* titlebar) @extern("gtk_window_set_titlebar");

<* Maps to Window::set_transient_for *>
extern fn void Window.set_transient_for(&self, Window* parent) @extern("gtk_window_set_transient_for");

<* Maps to Window::unfullscreen *>
extern fn void Window.unfullscreen(&self, ) @extern("gtk_window_unfullscreen");

<* Maps to Window::unmaximize *>
extern fn void Window.unmaximize(&self, ) @extern("gtk_window_unmaximize");

<* Maps to Window::unminimize *>
extern fn void Window.unminimize(&self, ) @extern("gtk_window_unminimize");


// Class Functions

<* Maps to get_default_icon_name of Window *>
extern fn ZString window_get_default_icon_name() @extern("gtk_window_get_default_icon_name");

<* Maps to get_toplevels of Window *>
extern fn gio::ListModel* window_get_toplevels() @extern("gtk_window_get_toplevels");

<* Maps to list_toplevels of Window *>
extern fn glib::List* window_list_toplevels() @extern("gtk_window_list_toplevels");

<* Maps to set_auto_startup_notification of Window *>
extern fn void window_set_auto_startup_notification(bool setting) @extern("gtk_window_set_auto_startup_notification");

<* Maps to set_default_icon_name of Window *>
extern fn void window_set_default_icon_name(ZString name) @extern("gtk_window_set_default_icon_name");

<* Maps to set_interactive_debugging of Window *>
extern fn void window_set_interactive_debugging(bool enable) @extern("gtk_window_set_interactive_debugging");



<* Maps to GtkWindowControls *>
distinct WindowControls = void*;

// Class to parent cast.
fn Widget* WindowControls.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of WindowControls *>
extern fn Widget* window_controls_new(PackType side) @extern("gtk_window_controls_new");



// Class Methods

<* Maps to WindowControls::get_decoration_layout *>
extern fn ZString WindowControls.get_decoration_layout(&self, ) @extern("gtk_window_controls_get_decoration_layout");

<* Maps to WindowControls::get_empty *>
extern fn bool WindowControls.get_empty(&self, ) @extern("gtk_window_controls_get_empty");

<* Maps to WindowControls::get_side *>
extern fn PackType WindowControls.get_side(&self, ) @extern("gtk_window_controls_get_side");

<* Maps to WindowControls::set_decoration_layout *>
extern fn void WindowControls.set_decoration_layout(&self, ZString layout) @extern("gtk_window_controls_set_decoration_layout");

<* Maps to WindowControls::set_side *>
extern fn void WindowControls.set_side(&self, PackType side) @extern("gtk_window_controls_set_side");


// Class Functions



<* Maps to GtkWindowGroup *>
distinct WindowGroup = void*;

// Class to parent cast.
fn gobject::Object* WindowGroup.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of WindowGroup *>
extern fn WindowGroup* window_group_new() @extern("gtk_window_group_new");



// Class Methods

<* Maps to WindowGroup::add_window *>
extern fn void WindowGroup.add_window(&self, Window* window) @extern("gtk_window_group_add_window");

<* Maps to WindowGroup::list_windows *>
extern fn glib::List* WindowGroup.list_windows(&self, ) @extern("gtk_window_group_list_windows");

<* Maps to WindowGroup::remove_window *>
extern fn void WindowGroup.remove_window(&self, Window* window) @extern("gtk_window_group_remove_window");


// Class Functions



<* Maps to GtkWindowHandle *>
distinct WindowHandle = void*;

// Class to parent cast.
fn Widget* WindowHandle.as_Widget(&self) => (Widget*)(self);

// Class Constructors

<* Maps to new of WindowHandle *>
extern fn Widget* window_handle_new() @extern("gtk_window_handle_new");



// Class Methods

<* Maps to WindowHandle::get_child *>
extern fn Widget* WindowHandle.get_child(&self, ) @extern("gtk_window_handle_get_child");

<* Maps to WindowHandle::set_child *>
extern fn void WindowHandle.set_child(&self, Widget* child) @extern("gtk_window_handle_set_child");


// Class Functions





<* Maps to GtkAccessible *>
interface Accessible {

  fn void announce(ZString message, AccessibleAnnouncementPriority priority);

  fn Accessible* get_accessible_parent();

  fn AccessibleRole get_accessible_role();

  fn ATContext* get_at_context();

  fn bool get_bounds(int* x, int* y, int* width, int* height);

  fn Accessible* get_first_accessible_child();

  fn Accessible* get_next_accessible_sibling();

  fn bool get_platform_state(AccessiblePlatformState state);

  fn void reset_property(AccessibleProperty property);

  fn void reset_relation(AccessibleRelation relation);

  fn void reset_state(AccessibleState state);

  fn void set_accessible_parent(Accessible* parent, Accessible* next_sibling);

  fn void update_next_accessible_sibling(Accessible* new_sibling);

  fn void update_property(AccessibleProperty first_property, any rest);

  fn void update_property_value(int n_properties, AccessibleProperty properties, gobject::Value values);

  fn void update_relation(AccessibleRelation first_relation, any rest);

  fn void update_relation_value(int n_relations, AccessibleRelation relations, gobject::Value values);

  fn void update_state(AccessibleState first_state, any rest);

  fn void update_state_value(int n_states, AccessibleState states, gobject::Value values);

}

<* Maps to GtkAccessibleRange *>
interface AccessibleRange {

}

<* Maps to GtkAccessibleText *>
interface AccessibleText {

  fn void update_caret_position();

  fn void update_contents(AccessibleTextContentChange change, uint start, uint end);

  fn void update_selection_bound();

}

<* Maps to GtkActionable *>
interface Actionable {

  fn ZString get_action_name();

  fn glib::Variant* get_action_target_value();

  fn void set_action_name(ZString action_name);

  fn void set_action_target(ZString format_string, any rest);

  fn void set_action_target_value(glib::Variant* target_value);

  fn void set_detailed_action_name(ZString detailed_action_name);

}

<* Maps to GtkAppChooser *>
interface AppChooser {

  fn gio::AppInfo* get_app_info();

  fn ZString* get_content_type();

  fn void refresh();

}

<* Maps to GtkBuildable *>
interface Buildable {

  fn ZString get_buildable_id();

}

<* Maps to GtkBuilderScope *>
interface BuilderScope {

}

<* Maps to GtkCellEditable *>
interface CellEditable {

  fn void editing_done();

  fn void remove_widget();

  fn void start_editing(gdk::Event* event);

}

<* Maps to GtkCellLayout *>
interface CellLayout {

  fn void add_attribute(CellRenderer* cell, ZString attribute, int column);

  fn void clear();

  fn void clear_attributes(CellRenderer* cell);

  fn CellArea* get_area();

  fn glib::List* get_cells();

  fn void pack_end(CellRenderer* cell, bool expand);

  fn void pack_start(CellRenderer* cell, bool expand);

  fn void reorder(CellRenderer* cell, int position);

  fn void set_attributes(CellRenderer* cell, any rest);

  fn void set_cell_data_func(CellRenderer* cell, CellLayoutDataFunc func, void* func_data, glib::DestroyNotify destroy);

}

<* Maps to GtkColorChooser *>
interface ColorChooser {

  fn void add_palette(Orientation orientation, int colors_per_line, int n_colors, gdk::Rgba colors);

  fn void get_rgba(gdk::Rgba* color);

  fn bool get_use_alpha();

  fn void set_rgba(gdk::Rgba* color);

  fn void set_use_alpha(bool use_alpha);

}

<* Maps to GtkConstraintTarget *>
interface ConstraintTarget {

}

<* Maps to GtkEditable *>
interface Editable {

  fn bool delegate_get_accessible_platform_state(AccessiblePlatformState state);

  fn void delete_selection();

  fn void delete_text(int start_pos, int end_pos);

  fn void finish_delegate();

  fn float get_alignment();

  fn ZString* get_chars(int start_pos, int end_pos);

  fn Editable* get_delegate();

  fn bool get_editable();

  fn bool get_enable_undo();

  fn int get_max_width_chars();

  fn int get_position();

  fn bool get_selection_bounds(int* start_pos, int* end_pos);

  fn ZString get_text();

  fn int get_width_chars();

  fn void init_delegate();

  fn void insert_text(ZString text, int length, int* position);

  fn void select_region(int start_pos, int end_pos);

  fn void set_alignment(float xalign);

  fn void set_editable(bool is_editable);

  fn void set_enable_undo(bool enable_undo);

  fn void set_max_width_chars(int n_chars);

  fn void set_position(int position);

  fn void set_text(ZString text);

  fn void set_width_chars(int n_chars);

}

<* Maps to GtkFileChooser *>
interface FileChooser {

  fn void add_choice(ZString id, ZString label, ZString* options, ZString* option_labels);

  fn void add_filter(FileFilter* filter);

  fn bool add_shortcut_folder(gio::File* folder);

  fn FileChooserAction get_action();

  fn ZString get_choice(ZString id);

  fn bool get_create_folders();

  fn gio::File* get_current_folder();

  fn ZString* get_current_name();

  fn gio::File* get_file();

  fn gio::ListModel* get_files();

  fn FileFilter* get_filter();

  fn gio::ListModel* get_filters();

  fn bool get_select_multiple();

  fn gio::ListModel* get_shortcut_folders();

  fn void remove_choice(ZString id);

  fn void remove_filter(FileFilter* filter);

  fn bool remove_shortcut_folder(gio::File* folder);

  fn void set_action(FileChooserAction action);

  fn void set_choice(ZString id, ZString option);

  fn void set_create_folders(bool create_folders);

  fn bool set_current_folder(gio::File* file);

  fn void set_current_name(ZString name);

  fn bool set_file(gio::File* file);

  fn void set_filter(FileFilter* filter);

  fn void set_select_multiple(bool select_multiple);

}

<* Maps to GtkFontChooser *>
interface FontChooser {

  fn ZString* get_font();

  fn pango::FontDescription* get_font_desc();

  fn pango::FontFace* get_font_face();

  fn pango::FontFamily* get_font_family();

  fn ZString* get_font_features();

  fn pango::FontMap* get_font_map();

  fn int get_font_size();

  fn ZString* get_language();

  fn FontChooserLevel get_level();

  fn ZString* get_preview_text();

  fn bool get_show_preview_entry();

  fn void set_filter_func(FontFilterFunc filter, void* user_data, glib::DestroyNotify destroy);

  fn void set_font(ZString fontname);

  fn void set_font_desc(pango::FontDescription* font_desc);

  fn void set_font_map(pango::FontMap* fontmap);

  fn void set_language(ZString language);

  fn void set_level(FontChooserLevel level);

  fn void set_preview_text(ZString text);

  fn void set_show_preview_entry(bool show_preview_entry);

}

<* Maps to GtkNative *>
interface Native {

  fn gsk::Renderer* get_renderer();

  fn gdk::Surface* get_surface();

  fn void get_surface_transform(double* x, double* y);

  fn void realize();

  fn void unrealize();

}

<* Maps to GtkOrientable *>
interface Orientable {

  fn Orientation get_orientation();

  fn void set_orientation(Orientation orientation);

}

<* Maps to GtkPrintOperationPreview *>
interface PrintOperationPreview {

  fn void end_preview();

  fn bool is_selected(int page_nr);

  fn void render_page(int page_nr);

}

<* Maps to GtkRoot *>
interface Root {

  fn gdk::Display* get_display();

  fn Widget* get_focus();

  fn void set_focus(Widget* focus);

}

<* Maps to GtkScrollable *>
interface Scrollable {

  fn bool get_border(Border* border);

  fn Adjustment* get_hadjustment();

  fn ScrollablePolicy get_hscroll_policy();

  fn Adjustment* get_vadjustment();

  fn ScrollablePolicy get_vscroll_policy();

  fn void set_hadjustment(Adjustment* hadjustment);

  fn void set_hscroll_policy(ScrollablePolicy policy);

  fn void set_vadjustment(Adjustment* vadjustment);

  fn void set_vscroll_policy(ScrollablePolicy policy);

}

<* Maps to GtkSectionModel *>
interface SectionModel {

  fn void get_section(uint position, uint* out_start, uint* out_end);

  fn void sections_changed(uint position, uint n_items);

}

<* Maps to GtkSelectionModel *>
interface SelectionModel {

  fn Bitset* get_selection();

  fn Bitset* get_selection_in_range(uint position, uint n_items);

  fn bool is_selected(uint position);

  fn bool select_all();

  fn bool select_item(uint position, bool unselect_rest);

  fn bool select_range(uint position, uint n_items, bool unselect_rest);

  fn void selection_changed(uint position, uint n_items);

  fn bool set_selection(Bitset* selected, Bitset* mask);

  fn bool unselect_all();

  fn bool unselect_item(uint position);

  fn bool unselect_range(uint position, uint n_items);

}

<* Maps to GtkShortcutManager *>
interface ShortcutManager {

}

<* Maps to GtkStyleProvider *>
interface StyleProvider {

}

<* Maps to GtkSymbolicPaintable *>
interface SymbolicPaintable {

  fn void snapshot_symbolic(gdk::Snapshot* snapshot, double width, double height, gdk::Rgba colors, usz n_colors);

}

<* Maps to GtkTreeDragDest *>
interface TreeDragDest {

  fn bool drag_data_received(TreePath* dest, gobject::Value* value);

  fn bool row_drop_possible(TreePath* dest_path, gobject::Value* value);

}

<* Maps to GtkTreeDragSource *>
interface TreeDragSource {

  fn bool drag_data_delete(TreePath* path);

  fn gdk::ContentProvider* drag_data_get(TreePath* path);

  fn bool row_draggable(TreePath* path);

}

<* Maps to GtkTreeModel *>
interface TreeModel {

  fn TreeModel* filter_new(TreePath* root);

  fn void for_each(TreeModelForeachFunc func, void* user_data);

  fn void get(TreeIter* iter, any rest);

  fn usz get_column_type(int index_);

  fn TreeModelFlags get_flags();

  fn bool get_iter(TreeIter* iter, TreePath* path);

  fn bool get_iter_first(TreeIter* iter);

  fn bool get_iter_from_string(TreeIter* iter, ZString path_string);

  fn int get_n_columns();

  fn TreePath* get_path(TreeIter* iter);

  fn ZString* get_string_from_iter(TreeIter* iter);

  fn void get_valist(TreeIter* iter, ZString var_args);

  fn void get_value(TreeIter* iter, int column, gobject::Value* value);

  fn bool iter_children(TreeIter* iter, TreeIter* parent);

  fn bool iter_has_child(TreeIter* iter);

  fn int iter_n_children(TreeIter* iter);

  fn bool iter_next(TreeIter* iter);

  fn bool iter_nth_child(TreeIter* iter, TreeIter* parent, int n);

  fn bool iter_parent(TreeIter* iter, TreeIter* child);

  fn bool iter_previous(TreeIter* iter);

  fn void ref_node(TreeIter* iter);

  fn void row_changed(TreePath* path, TreeIter* iter);

  fn void row_deleted(TreePath* path);

  fn void row_has_child_toggled(TreePath* path, TreeIter* iter);

  fn void row_inserted(TreePath* path, TreeIter* iter);

  fn void rows_reordered(TreePath* path, TreeIter* iter, int* new_order);

  fn void rows_reordered_with_length(TreePath* path, TreeIter* iter, int new_order, int length);

  fn void unref_node(TreeIter* iter);

}

<* Maps to GtkTreeSortable *>
interface TreeSortable {

  fn bool get_sort_column_id(int* sort_column_id, SortType* order);

  fn bool has_default_sort_func();

  fn void set_default_sort_func(TreeIterCompareFunc sort_func, void* user_data, glib::DestroyNotify destroy);

  fn void set_sort_column_id(int sort_column_id, SortType order);

  fn void set_sort_func(int sort_column_id, TreeIterCompareFunc sort_func, void* user_data, glib::DestroyNotify destroy);

  fn void sort_column_changed();

}


<* Maps to accelerator_get_default_mod_mask *>
extern fn gdk::ModifierType accelerator_get_default_mod_mask() @extern("gtk_accelerator_get_default_mod_mask");

<* Maps to accelerator_get_label *>
extern fn ZString* accelerator_get_label(uint accelerator_key, gdk::ModifierType accelerator_mods) @extern("gtk_accelerator_get_label");

<* Maps to accelerator_get_label_with_keycode *>
extern fn ZString* accelerator_get_label_with_keycode(gdk::Display* display, uint accelerator_key, uint keycode, gdk::ModifierType accelerator_mods) @extern("gtk_accelerator_get_label_with_keycode");

<* Maps to accelerator_name *>
extern fn ZString* accelerator_name(uint accelerator_key, gdk::ModifierType accelerator_mods) @extern("gtk_accelerator_name");

<* Maps to accelerator_name_with_keycode *>
extern fn ZString* accelerator_name_with_keycode(gdk::Display* display, uint accelerator_key, uint keycode, gdk::ModifierType accelerator_mods) @extern("gtk_accelerator_name_with_keycode");

<* Maps to accelerator_parse *>
extern fn bool accelerator_parse(ZString accelerator, uint* accelerator_key, gdk::ModifierType* accelerator_mods) @extern("gtk_accelerator_parse");

<* Maps to accelerator_parse_with_keycode *>
extern fn bool accelerator_parse_with_keycode(ZString accelerator, gdk::Display* display, uint* accelerator_key, uint* accelerator_codes, gdk::ModifierType* accelerator_mods) @extern("gtk_accelerator_parse_with_keycode");

<* Maps to accelerator_valid *>
extern fn bool accelerator_valid(uint keyval, gdk::ModifierType modifiers) @extern("gtk_accelerator_valid");

<* Maps to accessible_property_init_value *>
extern fn void accessible_property_init_value(AccessibleProperty property, gobject::Value* value) @extern("gtk_accessible_property_init_value");

<* Maps to accessible_relation_init_value *>
extern fn void accessible_relation_init_value(AccessibleRelation relation, gobject::Value* value) @extern("gtk_accessible_relation_init_value");

<* Maps to accessible_state_init_value *>
extern fn void accessible_state_init_value(AccessibleState state, gobject::Value* value) @extern("gtk_accessible_state_init_value");

<* Maps to bitset_iter_init_at *>
extern fn bool bitset_iter_init_at(BitsetIter* iter, Bitset* set, uint target, uint* value) @extern("gtk_bitset_iter_init_at");

<* Maps to bitset_iter_init_first *>
extern fn bool bitset_iter_init_first(BitsetIter* iter, Bitset* set, uint* value) @extern("gtk_bitset_iter_init_first");

<* Maps to bitset_iter_init_last *>
extern fn bool bitset_iter_init_last(BitsetIter* iter, Bitset* set, uint* value) @extern("gtk_bitset_iter_init_last");

<* Maps to builder_error_quark *>
extern fn glib::Quark builder_error_quark() @extern("gtk_builder_error_quark");

<* Maps to check_version *>
extern fn ZString check_version(uint required_major, uint required_minor, uint required_micro) @extern("gtk_check_version");

<* Maps to constraint_vfl_parser_error_quark *>
extern fn glib::Quark constraint_vfl_parser_error_quark() @extern("gtk_constraint_vfl_parser_error_quark");

<* Maps to css_parser_error_quark *>
extern fn glib::Quark css_parser_error_quark() @extern("gtk_css_parser_error_quark");

<* Maps to css_parser_warning_quark *>
extern fn glib::Quark css_parser_warning_quark() @extern("gtk_css_parser_warning_quark");

<* Maps to dialog_error_quark *>
extern fn glib::Quark dialog_error_quark() @extern("gtk_dialog_error_quark");

<* Maps to disable_setlocale *>
extern fn void disable_setlocale() @extern("gtk_disable_setlocale");

<* Maps to distribute_natural_allocation *>
extern fn int distribute_natural_allocation(int extra_space, uint n_requested_sizes, RequestedSize sizes) @extern("gtk_distribute_natural_allocation");

<* Maps to editable_delegate_get_property *>
extern fn bool editable_delegate_get_property(gobject::Object* object, uint prop_id, gobject::Value* value, gobject::ParamSpec* pspec) @extern("gtk_editable_delegate_get_property");

<* Maps to editable_delegate_set_property *>
extern fn bool editable_delegate_set_property(gobject::Object* object, uint prop_id, gobject::Value* value, gobject::ParamSpec* pspec) @extern("gtk_editable_delegate_set_property");

<* Maps to editable_install_properties *>
extern fn uint editable_install_properties(gobject::ObjectClass* object_class, uint first_prop) @extern("gtk_editable_install_properties");

<* Maps to enumerate_printers *>
extern fn void enumerate_printers(PrinterFunc func, void* data, glib::DestroyNotify destroy, bool wait) @extern("gtk_enumerate_printers");

<* Maps to file_chooser_error_quark *>
extern fn glib::Quark file_chooser_error_quark() @extern("gtk_file_chooser_error_quark");

<* Maps to get_binary_age *>
extern fn uint get_binary_age() @extern("gtk_get_binary_age");

<* Maps to get_debug_flags *>
extern fn DebugFlags get_debug_flags() @extern("gtk_get_debug_flags");

<* Maps to get_default_language *>
extern fn pango::Language* get_default_language() @extern("gtk_get_default_language");

<* Maps to get_interface_age *>
extern fn uint get_interface_age() @extern("gtk_get_interface_age");

<* Maps to get_locale_direction *>
extern fn TextDirection get_locale_direction() @extern("gtk_get_locale_direction");

<* Maps to get_major_version *>
extern fn uint get_major_version() @extern("gtk_get_major_version");

<* Maps to get_micro_version *>
extern fn uint get_micro_version() @extern("gtk_get_micro_version");

<* Maps to get_minor_version *>
extern fn uint get_minor_version() @extern("gtk_get_minor_version");

<* Maps to hsv_to_rgb *>
extern fn void hsv_to_rgb(float h, float s, float v, float* r, float* g, float* b) @extern("gtk_hsv_to_rgb");

<* Maps to icon_theme_error_quark *>
extern fn glib::Quark icon_theme_error_quark() @extern("gtk_icon_theme_error_quark");

<* Maps to init *>
extern fn void init() @extern("gtk_init");

<* Maps to init_check *>
extern fn bool init_check() @extern("gtk_init_check");

<* Maps to is_initialized *>
extern fn bool is_initialized() @extern("gtk_is_initialized");

<* Maps to native_get_for_surface *>
extern fn Native* native_get_for_surface(gdk::Surface* surface) @extern("gtk_native_get_for_surface");

<* Maps to ordering_from_cmpfunc *>
extern fn Ordering ordering_from_cmpfunc(int cmpfunc_result) @extern("gtk_ordering_from_cmpfunc");

<* Maps to paper_size_get_default *>
extern fn ZString paper_size_get_default() @extern("gtk_paper_size_get_default");

<* Maps to paper_size_get_paper_sizes *>
extern fn glib::List* paper_size_get_paper_sizes(bool include_custom) @extern("gtk_paper_size_get_paper_sizes");

<* Maps to param_spec_expression *>
extern fn gobject::ParamSpec* param_spec_expression(ZString name, ZString nick, ZString blurb, gobject::ParamFlags flags) @extern("gtk_param_spec_expression");

<* Maps to print_error_quark *>
extern fn glib::Quark print_error_quark() @extern("gtk_print_error_quark");

<* Maps to print_run_page_setup_dialog *>
extern fn PageSetup* print_run_page_setup_dialog(Window* parent, PageSetup* page_setup, PrintSettings* settings) @extern("gtk_print_run_page_setup_dialog");

<* Maps to print_run_page_setup_dialog_async *>
extern fn void print_run_page_setup_dialog_async(Window* parent, PageSetup* page_setup, PrintSettings* settings, PageSetupDoneFunc done_cb, void* data) @extern("gtk_print_run_page_setup_dialog_async");

<* Maps to recent_manager_error_quark *>
extern fn glib::Quark recent_manager_error_quark() @extern("gtk_recent_manager_error_quark");

<* Maps to render_activity *>
extern fn void render_activity(StyleContext* context, cairo::Context* cr, double x, double y, double width, double height) @extern("gtk_render_activity");

<* Maps to render_arrow *>
extern fn void render_arrow(StyleContext* context, cairo::Context* cr, double angle, double x, double y, double size) @extern("gtk_render_arrow");

<* Maps to render_background *>
extern fn void render_background(StyleContext* context, cairo::Context* cr, double x, double y, double width, double height) @extern("gtk_render_background");

<* Maps to render_check *>
extern fn void render_check(StyleContext* context, cairo::Context* cr, double x, double y, double width, double height) @extern("gtk_render_check");

<* Maps to render_expander *>
extern fn void render_expander(StyleContext* context, cairo::Context* cr, double x, double y, double width, double height) @extern("gtk_render_expander");

<* Maps to render_focus *>
extern fn void render_focus(StyleContext* context, cairo::Context* cr, double x, double y, double width, double height) @extern("gtk_render_focus");

<* Maps to render_frame *>
extern fn void render_frame(StyleContext* context, cairo::Context* cr, double x, double y, double width, double height) @extern("gtk_render_frame");

<* Maps to render_handle *>
extern fn void render_handle(StyleContext* context, cairo::Context* cr, double x, double y, double width, double height) @extern("gtk_render_handle");

<* Maps to render_icon *>
extern fn void render_icon(StyleContext* context, cairo::Context* cr, gdk::Texture* texture, double x, double y) @extern("gtk_render_icon");

<* Maps to render_layout *>
extern fn void render_layout(StyleContext* context, cairo::Context* cr, double x, double y, pango::Layout* layout) @extern("gtk_render_layout");

<* Maps to render_line *>
extern fn void render_line(StyleContext* context, cairo::Context* cr, double x0, double y0, double x1, double y1) @extern("gtk_render_line");

<* Maps to render_option *>
extern fn void render_option(StyleContext* context, cairo::Context* cr, double x, double y, double width, double height) @extern("gtk_render_option");

<* Maps to rgb_to_hsv *>
extern fn void rgb_to_hsv(float r, float g, float b, float* h, float* s, float* v) @extern("gtk_rgb_to_hsv");

<* Maps to set_debug_flags *>
extern fn void set_debug_flags(DebugFlags flags) @extern("gtk_set_debug_flags");

<* Maps to show_about_dialog *>
extern fn void show_about_dialog(Window* parent, ZString first_property_name, any rest) @extern("gtk_show_about_dialog");

<* Maps to show_uri *>
extern fn void show_uri(Window* parent, ZString uri, uint timestamp) @extern("gtk_show_uri");

<* Maps to show_uri_full *>
extern fn void show_uri_full(Window* parent, ZString uri, uint timestamp, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("gtk_show_uri_full");

<* Maps to show_uri_full_finish *>
extern fn bool show_uri_full_finish(Window* parent, gio::AsyncResult* result) @extern("gtk_show_uri_full_finish");

<* Maps to test_accessible_assertion_message_role *>
extern fn void test_accessible_assertion_message_role(ZString domain, ZString file, int line, ZString func, ZString expr, Accessible* accessible, AccessibleRole expected_role, AccessibleRole actual_role) @extern("gtk_test_accessible_assertion_message_role");

<* Maps to test_accessible_check_property *>
extern fn ZString* test_accessible_check_property(Accessible* accessible, AccessibleProperty property, any rest) @extern("gtk_test_accessible_check_property");

<* Maps to test_accessible_check_relation *>
extern fn ZString* test_accessible_check_relation(Accessible* accessible, AccessibleRelation relation, any rest) @extern("gtk_test_accessible_check_relation");

<* Maps to test_accessible_check_state *>
extern fn ZString* test_accessible_check_state(Accessible* accessible, AccessibleState state, any rest) @extern("gtk_test_accessible_check_state");

<* Maps to test_accessible_has_property *>
extern fn bool test_accessible_has_property(Accessible* accessible, AccessibleProperty property) @extern("gtk_test_accessible_has_property");

<* Maps to test_accessible_has_relation *>
extern fn bool test_accessible_has_relation(Accessible* accessible, AccessibleRelation relation) @extern("gtk_test_accessible_has_relation");

<* Maps to test_accessible_has_role *>
extern fn bool test_accessible_has_role(Accessible* accessible, AccessibleRole role) @extern("gtk_test_accessible_has_role");

<* Maps to test_accessible_has_state *>
extern fn bool test_accessible_has_state(Accessible* accessible, AccessibleState state) @extern("gtk_test_accessible_has_state");

<* Maps to test_init *>
extern fn void test_init(int* argcp, ZString* argvp, any rest) @extern("gtk_test_init");

<* Maps to test_list_all_types *>
extern fn usz test_list_all_types(uint* n_types) @extern("gtk_test_list_all_types");

<* Maps to test_register_all_types *>
extern fn void test_register_all_types() @extern("gtk_test_register_all_types");

<* Maps to test_widget_wait_for_draw *>
extern fn void test_widget_wait_for_draw(Widget* widget) @extern("gtk_test_widget_wait_for_draw");

<* Maps to tree_create_row_drag_content *>
extern fn gdk::ContentProvider* tree_create_row_drag_content(TreeModel* tree_model, TreePath* path) @extern("gtk_tree_create_row_drag_content");

<* Maps to tree_get_row_drag_data *>
extern fn bool tree_get_row_drag_data(gobject::Value* value, TreeModel* tree_model, TreePath* path) @extern("gtk_tree_get_row_drag_data");

<* Maps to tree_row_reference_deleted *>
extern fn void tree_row_reference_deleted(gobject::Object* proxy, TreePath* path) @extern("gtk_tree_row_reference_deleted");

<* Maps to tree_row_reference_inserted *>
extern fn void tree_row_reference_inserted(gobject::Object* proxy, TreePath* path) @extern("gtk_tree_row_reference_inserted");

<* Maps to tree_row_reference_reordered *>
extern fn void tree_row_reference_reordered(gobject::Object* proxy, TreePath* path, TreeIter* iter, int new_order) @extern("gtk_tree_row_reference_reordered");

<* Maps to value_dup_expression *>
extern fn Expression* value_dup_expression(gobject::Value* value) @extern("gtk_value_dup_expression");

<* Maps to value_get_expression *>
extern fn Expression* value_get_expression(gobject::Value* value) @extern("gtk_value_get_expression");

<* Maps to value_set_expression *>
extern fn void value_set_expression(gobject::Value* value, Expression* expression) @extern("gtk_value_set_expression");

<* Maps to value_take_expression *>
extern fn void value_take_expression(gobject::Value* value, Expression* expression) @extern("gtk_value_take_expression");

///END MODULE gtk
