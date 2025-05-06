
///START MODULE adw
module adw;

import gobject;

import glib;

import gdk;

import pango;

import gio;

import gtk;


typedef TabViewShortcuts = int;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_ALL_SHORTCUTS = 4095;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_ALT_DIGITS = 1024;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_ALT_ZERO = 2048;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_CONTROL_END = 32;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_CONTROL_HOME = 16;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_CONTROL_PAGE_DOWN = 8;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_CONTROL_PAGE_UP = 4;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_CONTROL_SHIFT_END = 512;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_CONTROL_SHIFT_HOME = 256;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_CONTROL_SHIFT_PAGE_DOWN = 128;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_CONTROL_SHIFT_PAGE_UP = 64;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_CONTROL_SHIFT_TAB = 2;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_CONTROL_TAB = 1;
const TabViewShortcuts TAB_VIEW_SHORTCUTS_NONE = 0;

typedef AccentColor = int;
const AccentColor ACCENT_COLOR_BLUE = 0;
const AccentColor ACCENT_COLOR_GREEN = 2;
const AccentColor ACCENT_COLOR_ORANGE = 4;
const AccentColor ACCENT_COLOR_PINK = 6;
const AccentColor ACCENT_COLOR_PURPLE = 7;
const AccentColor ACCENT_COLOR_RED = 5;
const AccentColor ACCENT_COLOR_SLATE = 8;
const AccentColor ACCENT_COLOR_TEAL = 1;
const AccentColor ACCENT_COLOR_YELLOW = 3;

typedef AnimationState = int;
const AnimationState ANIMATION_STATE_FINISHED = 3;
const AnimationState ANIMATION_STATE_IDLE = 0;
const AnimationState ANIMATION_STATE_PAUSED = 1;
const AnimationState ANIMATION_STATE_PLAYING = 2;

typedef BreakpointConditionLengthType = int;
const BreakpointConditionLengthType BREAKPOINT_CONDITION_LENGTH_TYPE_MAX_HEIGHT = 3;
const BreakpointConditionLengthType BREAKPOINT_CONDITION_LENGTH_TYPE_MAX_WIDTH = 1;
const BreakpointConditionLengthType BREAKPOINT_CONDITION_LENGTH_TYPE_MIN_HEIGHT = 2;
const BreakpointConditionLengthType BREAKPOINT_CONDITION_LENGTH_TYPE_MIN_WIDTH = 0;

typedef BreakpointConditionRatioType = int;
const BreakpointConditionRatioType BREAKPOINT_CONDITION_RATIO_TYPE_MAX_ASPECT_RATIO = 1;
const BreakpointConditionRatioType BREAKPOINT_CONDITION_RATIO_TYPE_MIN_ASPECT_RATIO = 0;

typedef CenteringPolicy = int;
const CenteringPolicy CENTERING_POLICY_LOOSE = 0;
const CenteringPolicy CENTERING_POLICY_STRICT = 1;

typedef ColorScheme = int;
const ColorScheme COLOR_SCHEME_DEFAULT = 0;
const ColorScheme COLOR_SCHEME_FORCE_DARK = 4;
const ColorScheme COLOR_SCHEME_FORCE_LIGHT = 1;
const ColorScheme COLOR_SCHEME_PREFER_DARK = 3;
const ColorScheme COLOR_SCHEME_PREFER_LIGHT = 2;

typedef DialogPresentationMode = int;
const DialogPresentationMode DIALOG_PRESENTATION_MODE_AUTO = 0;
const DialogPresentationMode DIALOG_PRESENTATION_MODE_BOTTOM_SHEET = 2;
const DialogPresentationMode DIALOG_PRESENTATION_MODE_FLOATING = 1;

typedef Easing = int;
const Easing EASING_EASE_IN_BACK = 25;
const Easing EASING_EASE_IN_BOUNCE = 28;
const Easing EASING_EASE_IN_CIRC = 19;
const Easing EASING_EASE_IN_CUBIC = 4;
const Easing EASING_EASE_IN_ELASTIC = 22;
const Easing EASING_EASE_IN_EXPO = 16;
const Easing EASING_EASE_IN_OUT_BACK = 27;
const Easing EASING_EASE_IN_OUT_BOUNCE = 30;
const Easing EASING_EASE_IN_OUT_CIRC = 21;
const Easing EASING_EASE_IN_OUT_CUBIC = 6;
const Easing EASING_EASE_IN_OUT_ELASTIC = 24;
const Easing EASING_EASE_IN_OUT_EXPO = 18;
const Easing EASING_EASE_IN_OUT_QUAD = 3;
const Easing EASING_EASE_IN_OUT_QUART = 9;
const Easing EASING_EASE_IN_OUT_QUINT = 12;
const Easing EASING_EASE_IN_OUT_SINE = 15;
const Easing EASING_EASE_IN_QUAD = 1;
const Easing EASING_EASE_IN_QUART = 7;
const Easing EASING_EASE_IN_QUINT = 10;
const Easing EASING_EASE_IN_SINE = 13;
const Easing EASING_EASE_OUT_BACK = 26;
const Easing EASING_EASE_OUT_BOUNCE = 29;
const Easing EASING_EASE_OUT_CIRC = 20;
const Easing EASING_EASE_OUT_CUBIC = 5;
const Easing EASING_EASE_OUT_ELASTIC = 23;
const Easing EASING_EASE_OUT_EXPO = 17;
const Easing EASING_EASE_OUT_QUAD = 2;
const Easing EASING_EASE_OUT_QUART = 8;
const Easing EASING_EASE_OUT_QUINT = 11;
const Easing EASING_EASE_OUT_SINE = 14;
const Easing EASING_LINEAR = 0;

typedef FlapFoldPolicy = int;
const FlapFoldPolicy FLAP_FOLD_POLICY_ALWAYS = 1;
const FlapFoldPolicy FLAP_FOLD_POLICY_AUTO = 2;
const FlapFoldPolicy FLAP_FOLD_POLICY_NEVER = 0;

typedef FlapTransitionType = int;
const FlapTransitionType FLAP_TRANSITION_TYPE_OVER = 0;
const FlapTransitionType FLAP_TRANSITION_TYPE_SLIDE = 2;
const FlapTransitionType FLAP_TRANSITION_TYPE_UNDER = 1;

typedef FoldThresholdPolicy = int;
const FoldThresholdPolicy FOLD_THRESHOLD_POLICY_MINIMUM = 0;
const FoldThresholdPolicy FOLD_THRESHOLD_POLICY_NATURAL = 1;

typedef LeafletTransitionType = int;
const LeafletTransitionType LEAFLET_TRANSITION_TYPE_OVER = 0;
const LeafletTransitionType LEAFLET_TRANSITION_TYPE_SLIDE = 2;
const LeafletTransitionType LEAFLET_TRANSITION_TYPE_UNDER = 1;

typedef LengthUnit = int;
const LengthUnit LENGTH_UNIT_PT = 1;
const LengthUnit LENGTH_UNIT_PX = 0;
const LengthUnit LENGTH_UNIT_SP = 2;

typedef NavigationDirection = int;
const NavigationDirection NAVIGATION_DIRECTION_BACK = 0;
const NavigationDirection NAVIGATION_DIRECTION_FORWARD = 1;

typedef ResponseAppearance = int;
const ResponseAppearance RESPONSE_APPEARANCE_DEFAULT = 0;
const ResponseAppearance RESPONSE_APPEARANCE_DESTRUCTIVE = 2;
const ResponseAppearance RESPONSE_APPEARANCE_SUGGESTED = 1;

typedef SqueezerTransitionType = int;
const SqueezerTransitionType SQUEEZER_TRANSITION_TYPE_CROSSFADE = 1;
const SqueezerTransitionType SQUEEZER_TRANSITION_TYPE_NONE = 0;

typedef ToastPriority = int;
const ToastPriority TOAST_PRIORITY_HIGH = 1;
const ToastPriority TOAST_PRIORITY_NORMAL = 0;

typedef ToolbarStyle = int;
const ToolbarStyle TOOLBAR_STYLE_FLAT = 0;
const ToolbarStyle TOOLBAR_STYLE_RAISED = 1;
const ToolbarStyle TOOLBAR_STYLE_RAISED_BORDER = 2;

typedef ViewSwitcherPolicy = int;
const ViewSwitcherPolicy VIEW_SWITCHER_POLICY_NARROW = 0;
const ViewSwitcherPolicy VIEW_SWITCHER_POLICY_WIDE = 1;



typedef AboutDialogClass = void*;

typedef AboutWindowClass = void*;

typedef ActionRowClass = void*;

typedef AlertDialogClass = void*;

typedef AnimationClass = void*;

typedef AnimationTargetClass = void*;

typedef ApplicationClass = void*;

typedef ApplicationWindowClass = void*;

typedef AvatarClass = void*;

typedef BannerClass = void*;

typedef BinClass = void*;

typedef BottomSheetClass = void*;

typedef BreakpointBinClass = void*;

typedef BreakpointClass = void*;

typedef BreakpointCondition = void*;

typedef ButtonContentClass = void*;

typedef ButtonRowClass = void*;

typedef CallbackAnimationTargetClass = void*;

typedef CarouselClass = void*;

typedef CarouselIndicatorDotsClass = void*;

typedef CarouselIndicatorLinesClass = void*;

typedef ClampClass = void*;

typedef ClampLayoutClass = void*;

typedef ClampScrollableClass = void*;

typedef ComboRowClass = void*;

typedef DialogClass = void*;

typedef EntryRowClass = void*;

typedef EnumListItemClass = void*;

typedef EnumListModelClass = void*;

typedef ExpanderRowClass = void*;

typedef FlapClass = void*;

typedef HeaderBarClass = void*;

typedef LayoutClass = void*;

typedef LayoutSlotClass = void*;

typedef LeafletClass = void*;

typedef LeafletPageClass = void*;

typedef MessageDialogClass = void*;

typedef MultiLayoutViewClass = void*;

typedef NavigationPageClass = void*;

typedef NavigationSplitViewClass = void*;

typedef NavigationViewClass = void*;

typedef OverlaySplitViewClass = void*;

typedef PasswordEntryRowClass = void*;

typedef PreferencesDialogClass = void*;

typedef PreferencesGroupClass = void*;

typedef PreferencesPageClass = void*;

typedef PreferencesRowClass = void*;

typedef PreferencesWindowClass = void*;

typedef PropertyAnimationTargetClass = void*;

typedef SpinRowClass = void*;

typedef SpinnerClass = void*;

typedef SpinnerPaintableClass = void*;

typedef SplitButtonClass = void*;

typedef SpringAnimationClass = void*;

typedef SpringParams = void*;

typedef SqueezerClass = void*;

typedef SqueezerPageClass = void*;

typedef StatusPageClass = void*;

typedef StyleManagerClass = void*;

typedef SwipeTrackerClass = void*;

typedef SwipeableInterface = void*;

typedef SwitchRowClass = void*;

typedef TabBarClass = void*;

typedef TabButtonClass = void*;

typedef TabOverviewClass = void*;

typedef TabPageClass = void*;

typedef TabViewClass = void*;

typedef TimedAnimationClass = void*;

typedef ToastClass = void*;

typedef ToastOverlayClass = void*;

typedef ToolbarViewClass = void*;

typedef ViewStackClass = void*;

typedef ViewStackPageClass = void*;

typedef ViewStackPagesClass = void*;

typedef ViewSwitcherBarClass = void*;

typedef ViewSwitcherClass = void*;

typedef ViewSwitcherTitleClass = void*;

typedef WindowClass = void*;

typedef WindowTitleClass = void*;


alias AnimationTargetFunc = fn void(double value, void* user_data);


<* Maps to AdwAboutDialog *>
typedef AboutDialog = void*;

// Class to parent cast.
fn Dialog* AboutDialog.as_Dialog(&self) => (Dialog*)(self);

// Class Constructors

<* Maps to new of AboutDialog *>
extern fn Dialog* about_dialog_new() @extern("adw_about_dialog_new");

<* Maps to new_from_appdata of AboutDialog *>
extern fn Dialog* about_dialog_new_from_appdata(ZString resource_path, ZString release_notes_version) @extern("adw_about_dialog_new_from_appdata");



// Class Methods

<* Maps to AboutDialog::add_acknowledgement_section *>
extern fn void AboutDialog.add_acknowledgement_section(&self, ZString name, ZString* people) @extern("adw_about_dialog_add_acknowledgement_section");

<* Maps to AboutDialog::add_credit_section *>
extern fn void AboutDialog.add_credit_section(&self, ZString name, ZString* people) @extern("adw_about_dialog_add_credit_section");

<* Maps to AboutDialog::add_legal_section *>
extern fn void AboutDialog.add_legal_section(&self, ZString title, ZString copyright, gtk::License license_type, ZString license) @extern("adw_about_dialog_add_legal_section");

<* Maps to AboutDialog::add_link *>
extern fn void AboutDialog.add_link(&self, ZString title, ZString url) @extern("adw_about_dialog_add_link");

<* Maps to AboutDialog::get_application_icon *>
extern fn ZString AboutDialog.get_application_icon(&self, ) @extern("adw_about_dialog_get_application_icon");

<* Maps to AboutDialog::get_application_name *>
extern fn ZString AboutDialog.get_application_name(&self, ) @extern("adw_about_dialog_get_application_name");

<* Maps to AboutDialog::get_artists *>
extern fn ZString AboutDialog.get_artists(&self, ) @extern("adw_about_dialog_get_artists");

<* Maps to AboutDialog::get_comments *>
extern fn ZString AboutDialog.get_comments(&self, ) @extern("adw_about_dialog_get_comments");

<* Maps to AboutDialog::get_copyright *>
extern fn ZString AboutDialog.get_copyright(&self, ) @extern("adw_about_dialog_get_copyright");

<* Maps to AboutDialog::get_debug_info *>
extern fn ZString AboutDialog.get_debug_info(&self, ) @extern("adw_about_dialog_get_debug_info");

<* Maps to AboutDialog::get_debug_info_filename *>
extern fn ZString AboutDialog.get_debug_info_filename(&self, ) @extern("adw_about_dialog_get_debug_info_filename");

<* Maps to AboutDialog::get_designers *>
extern fn ZString AboutDialog.get_designers(&self, ) @extern("adw_about_dialog_get_designers");

<* Maps to AboutDialog::get_developer_name *>
extern fn ZString AboutDialog.get_developer_name(&self, ) @extern("adw_about_dialog_get_developer_name");

<* Maps to AboutDialog::get_developers *>
extern fn ZString AboutDialog.get_developers(&self, ) @extern("adw_about_dialog_get_developers");

<* Maps to AboutDialog::get_documenters *>
extern fn ZString AboutDialog.get_documenters(&self, ) @extern("adw_about_dialog_get_documenters");

<* Maps to AboutDialog::get_issue_url *>
extern fn ZString AboutDialog.get_issue_url(&self, ) @extern("adw_about_dialog_get_issue_url");

<* Maps to AboutDialog::get_license *>
extern fn ZString AboutDialog.get_license(&self, ) @extern("adw_about_dialog_get_license");

<* Maps to AboutDialog::get_license_type *>
extern fn gtk::License AboutDialog.get_license_type(&self, ) @extern("adw_about_dialog_get_license_type");

<* Maps to AboutDialog::get_release_notes *>
extern fn ZString AboutDialog.get_release_notes(&self, ) @extern("adw_about_dialog_get_release_notes");

<* Maps to AboutDialog::get_release_notes_version *>
extern fn ZString AboutDialog.get_release_notes_version(&self, ) @extern("adw_about_dialog_get_release_notes_version");

<* Maps to AboutDialog::get_support_url *>
extern fn ZString AboutDialog.get_support_url(&self, ) @extern("adw_about_dialog_get_support_url");

<* Maps to AboutDialog::get_translator_credits *>
extern fn ZString AboutDialog.get_translator_credits(&self, ) @extern("adw_about_dialog_get_translator_credits");

<* Maps to AboutDialog::get_version *>
extern fn ZString AboutDialog.get_version(&self, ) @extern("adw_about_dialog_get_version");

<* Maps to AboutDialog::get_website *>
extern fn ZString AboutDialog.get_website(&self, ) @extern("adw_about_dialog_get_website");

<* Maps to AboutDialog::set_application_icon *>
extern fn void AboutDialog.set_application_icon(&self, ZString application_icon) @extern("adw_about_dialog_set_application_icon");

<* Maps to AboutDialog::set_application_name *>
extern fn void AboutDialog.set_application_name(&self, ZString application_name) @extern("adw_about_dialog_set_application_name");

<* Maps to AboutDialog::set_artists *>
extern fn void AboutDialog.set_artists(&self, ZString* artists) @extern("adw_about_dialog_set_artists");

<* Maps to AboutDialog::set_comments *>
extern fn void AboutDialog.set_comments(&self, ZString comments) @extern("adw_about_dialog_set_comments");

<* Maps to AboutDialog::set_copyright *>
extern fn void AboutDialog.set_copyright(&self, ZString copyright) @extern("adw_about_dialog_set_copyright");

<* Maps to AboutDialog::set_debug_info *>
extern fn void AboutDialog.set_debug_info(&self, ZString debug_info) @extern("adw_about_dialog_set_debug_info");

<* Maps to AboutDialog::set_debug_info_filename *>
extern fn void AboutDialog.set_debug_info_filename(&self, ZString filename) @extern("adw_about_dialog_set_debug_info_filename");

<* Maps to AboutDialog::set_designers *>
extern fn void AboutDialog.set_designers(&self, ZString* designers) @extern("adw_about_dialog_set_designers");

<* Maps to AboutDialog::set_developer_name *>
extern fn void AboutDialog.set_developer_name(&self, ZString developer_name) @extern("adw_about_dialog_set_developer_name");

<* Maps to AboutDialog::set_developers *>
extern fn void AboutDialog.set_developers(&self, ZString* developers) @extern("adw_about_dialog_set_developers");

<* Maps to AboutDialog::set_documenters *>
extern fn void AboutDialog.set_documenters(&self, ZString* documenters) @extern("adw_about_dialog_set_documenters");

<* Maps to AboutDialog::set_issue_url *>
extern fn void AboutDialog.set_issue_url(&self, ZString issue_url) @extern("adw_about_dialog_set_issue_url");

<* Maps to AboutDialog::set_license *>
extern fn void AboutDialog.set_license(&self, ZString license) @extern("adw_about_dialog_set_license");

<* Maps to AboutDialog::set_license_type *>
extern fn void AboutDialog.set_license_type(&self, gtk::License license_type) @extern("adw_about_dialog_set_license_type");

<* Maps to AboutDialog::set_release_notes *>
extern fn void AboutDialog.set_release_notes(&self, ZString release_notes) @extern("adw_about_dialog_set_release_notes");

<* Maps to AboutDialog::set_release_notes_version *>
extern fn void AboutDialog.set_release_notes_version(&self, ZString version) @extern("adw_about_dialog_set_release_notes_version");

<* Maps to AboutDialog::set_support_url *>
extern fn void AboutDialog.set_support_url(&self, ZString support_url) @extern("adw_about_dialog_set_support_url");

<* Maps to AboutDialog::set_translator_credits *>
extern fn void AboutDialog.set_translator_credits(&self, ZString translator_credits) @extern("adw_about_dialog_set_translator_credits");

<* Maps to AboutDialog::set_version *>
extern fn void AboutDialog.set_version(&self, ZString version) @extern("adw_about_dialog_set_version");

<* Maps to AboutDialog::set_website *>
extern fn void AboutDialog.set_website(&self, ZString website) @extern("adw_about_dialog_set_website");


// Class Functions



<* Maps to AdwAboutWindow *>
typedef AboutWindow = void*;

// Class to parent cast.
fn Window* AboutWindow.as_Window(&self) => (Window*)(self);

// Class Constructors

<* Maps to new of AboutWindow *>
extern fn gtk::Widget* about_window_new() @extern("adw_about_window_new");

<* Maps to new_from_appdata of AboutWindow *>
extern fn gtk::Widget* about_window_new_from_appdata(ZString resource_path, ZString release_notes_version) @extern("adw_about_window_new_from_appdata");



// Class Methods

<* Maps to AboutWindow::add_acknowledgement_section *>
extern fn void AboutWindow.add_acknowledgement_section(&self, ZString name, ZString* people) @extern("adw_about_window_add_acknowledgement_section");

<* Maps to AboutWindow::add_credit_section *>
extern fn void AboutWindow.add_credit_section(&self, ZString name, ZString* people) @extern("adw_about_window_add_credit_section");

<* Maps to AboutWindow::add_legal_section *>
extern fn void AboutWindow.add_legal_section(&self, ZString title, ZString copyright, gtk::License license_type, ZString license) @extern("adw_about_window_add_legal_section");

<* Maps to AboutWindow::add_link *>
extern fn void AboutWindow.add_link(&self, ZString title, ZString url) @extern("adw_about_window_add_link");

<* Maps to AboutWindow::get_application_icon *>
extern fn ZString AboutWindow.get_application_icon(&self, ) @extern("adw_about_window_get_application_icon");

<* Maps to AboutWindow::get_application_name *>
extern fn ZString AboutWindow.get_application_name(&self, ) @extern("adw_about_window_get_application_name");

<* Maps to AboutWindow::get_artists *>
extern fn ZString AboutWindow.get_artists(&self, ) @extern("adw_about_window_get_artists");

<* Maps to AboutWindow::get_comments *>
extern fn ZString AboutWindow.get_comments(&self, ) @extern("adw_about_window_get_comments");

<* Maps to AboutWindow::get_copyright *>
extern fn ZString AboutWindow.get_copyright(&self, ) @extern("adw_about_window_get_copyright");

<* Maps to AboutWindow::get_debug_info *>
extern fn ZString AboutWindow.get_debug_info(&self, ) @extern("adw_about_window_get_debug_info");

<* Maps to AboutWindow::get_debug_info_filename *>
extern fn ZString AboutWindow.get_debug_info_filename(&self, ) @extern("adw_about_window_get_debug_info_filename");

<* Maps to AboutWindow::get_designers *>
extern fn ZString AboutWindow.get_designers(&self, ) @extern("adw_about_window_get_designers");

<* Maps to AboutWindow::get_developer_name *>
extern fn ZString AboutWindow.get_developer_name(&self, ) @extern("adw_about_window_get_developer_name");

<* Maps to AboutWindow::get_developers *>
extern fn ZString AboutWindow.get_developers(&self, ) @extern("adw_about_window_get_developers");

<* Maps to AboutWindow::get_documenters *>
extern fn ZString AboutWindow.get_documenters(&self, ) @extern("adw_about_window_get_documenters");

<* Maps to AboutWindow::get_issue_url *>
extern fn ZString AboutWindow.get_issue_url(&self, ) @extern("adw_about_window_get_issue_url");

<* Maps to AboutWindow::get_license *>
extern fn ZString AboutWindow.get_license(&self, ) @extern("adw_about_window_get_license");

<* Maps to AboutWindow::get_license_type *>
extern fn gtk::License AboutWindow.get_license_type(&self, ) @extern("adw_about_window_get_license_type");

<* Maps to AboutWindow::get_release_notes *>
extern fn ZString AboutWindow.get_release_notes(&self, ) @extern("adw_about_window_get_release_notes");

<* Maps to AboutWindow::get_release_notes_version *>
extern fn ZString AboutWindow.get_release_notes_version(&self, ) @extern("adw_about_window_get_release_notes_version");

<* Maps to AboutWindow::get_support_url *>
extern fn ZString AboutWindow.get_support_url(&self, ) @extern("adw_about_window_get_support_url");

<* Maps to AboutWindow::get_translator_credits *>
extern fn ZString AboutWindow.get_translator_credits(&self, ) @extern("adw_about_window_get_translator_credits");

<* Maps to AboutWindow::get_version *>
extern fn ZString AboutWindow.get_version(&self, ) @extern("adw_about_window_get_version");

<* Maps to AboutWindow::get_website *>
extern fn ZString AboutWindow.get_website(&self, ) @extern("adw_about_window_get_website");

<* Maps to AboutWindow::set_application_icon *>
extern fn void AboutWindow.set_application_icon(&self, ZString application_icon) @extern("adw_about_window_set_application_icon");

<* Maps to AboutWindow::set_application_name *>
extern fn void AboutWindow.set_application_name(&self, ZString application_name) @extern("adw_about_window_set_application_name");

<* Maps to AboutWindow::set_artists *>
extern fn void AboutWindow.set_artists(&self, ZString* artists) @extern("adw_about_window_set_artists");

<* Maps to AboutWindow::set_comments *>
extern fn void AboutWindow.set_comments(&self, ZString comments) @extern("adw_about_window_set_comments");

<* Maps to AboutWindow::set_copyright *>
extern fn void AboutWindow.set_copyright(&self, ZString copyright) @extern("adw_about_window_set_copyright");

<* Maps to AboutWindow::set_debug_info *>
extern fn void AboutWindow.set_debug_info(&self, ZString debug_info) @extern("adw_about_window_set_debug_info");

<* Maps to AboutWindow::set_debug_info_filename *>
extern fn void AboutWindow.set_debug_info_filename(&self, ZString filename) @extern("adw_about_window_set_debug_info_filename");

<* Maps to AboutWindow::set_designers *>
extern fn void AboutWindow.set_designers(&self, ZString* designers) @extern("adw_about_window_set_designers");

<* Maps to AboutWindow::set_developer_name *>
extern fn void AboutWindow.set_developer_name(&self, ZString developer_name) @extern("adw_about_window_set_developer_name");

<* Maps to AboutWindow::set_developers *>
extern fn void AboutWindow.set_developers(&self, ZString* developers) @extern("adw_about_window_set_developers");

<* Maps to AboutWindow::set_documenters *>
extern fn void AboutWindow.set_documenters(&self, ZString* documenters) @extern("adw_about_window_set_documenters");

<* Maps to AboutWindow::set_issue_url *>
extern fn void AboutWindow.set_issue_url(&self, ZString issue_url) @extern("adw_about_window_set_issue_url");

<* Maps to AboutWindow::set_license *>
extern fn void AboutWindow.set_license(&self, ZString license) @extern("adw_about_window_set_license");

<* Maps to AboutWindow::set_license_type *>
extern fn void AboutWindow.set_license_type(&self, gtk::License license_type) @extern("adw_about_window_set_license_type");

<* Maps to AboutWindow::set_release_notes *>
extern fn void AboutWindow.set_release_notes(&self, ZString release_notes) @extern("adw_about_window_set_release_notes");

<* Maps to AboutWindow::set_release_notes_version *>
extern fn void AboutWindow.set_release_notes_version(&self, ZString version) @extern("adw_about_window_set_release_notes_version");

<* Maps to AboutWindow::set_support_url *>
extern fn void AboutWindow.set_support_url(&self, ZString support_url) @extern("adw_about_window_set_support_url");

<* Maps to AboutWindow::set_translator_credits *>
extern fn void AboutWindow.set_translator_credits(&self, ZString translator_credits) @extern("adw_about_window_set_translator_credits");

<* Maps to AboutWindow::set_version *>
extern fn void AboutWindow.set_version(&self, ZString version) @extern("adw_about_window_set_version");

<* Maps to AboutWindow::set_website *>
extern fn void AboutWindow.set_website(&self, ZString website) @extern("adw_about_window_set_website");


// Class Functions



<* Maps to AdwActionRow *>
typedef ActionRow = void*;

// Class to parent cast.
fn PreferencesRow* ActionRow.as_PreferencesRow(&self) => (PreferencesRow*)(self);

// Class Constructors

<* Maps to new of ActionRow *>
extern fn gtk::Widget* action_row_new() @extern("adw_action_row_new");



// Class Methods

<* Maps to ActionRow::activate *>
extern fn void ActionRow.activate(&self, ) @extern("adw_action_row_activate");

<* Maps to ActionRow::add_prefix *>
extern fn void ActionRow.add_prefix(&self, gtk::Widget* widget) @extern("adw_action_row_add_prefix");

<* Maps to ActionRow::add_suffix *>
extern fn void ActionRow.add_suffix(&self, gtk::Widget* widget) @extern("adw_action_row_add_suffix");

<* Maps to ActionRow::get_activatable_widget *>
extern fn gtk::Widget* ActionRow.get_activatable_widget(&self, ) @extern("adw_action_row_get_activatable_widget");

<* Maps to ActionRow::get_icon_name *>
extern fn ZString ActionRow.get_icon_name(&self, ) @extern("adw_action_row_get_icon_name");

<* Maps to ActionRow::get_subtitle *>
extern fn ZString ActionRow.get_subtitle(&self, ) @extern("adw_action_row_get_subtitle");

<* Maps to ActionRow::get_subtitle_lines *>
extern fn int ActionRow.get_subtitle_lines(&self, ) @extern("adw_action_row_get_subtitle_lines");

<* Maps to ActionRow::get_subtitle_selectable *>
extern fn bool ActionRow.get_subtitle_selectable(&self, ) @extern("adw_action_row_get_subtitle_selectable");

<* Maps to ActionRow::get_title_lines *>
extern fn int ActionRow.get_title_lines(&self, ) @extern("adw_action_row_get_title_lines");

<* Maps to ActionRow::remove *>
extern fn void ActionRow.remove(&self, gtk::Widget* widget) @extern("adw_action_row_remove");

<* Maps to ActionRow::set_activatable_widget *>
extern fn void ActionRow.set_activatable_widget(&self, gtk::Widget* widget) @extern("adw_action_row_set_activatable_widget");

<* Maps to ActionRow::set_icon_name *>
extern fn void ActionRow.set_icon_name(&self, ZString icon_name) @extern("adw_action_row_set_icon_name");

<* Maps to ActionRow::set_subtitle *>
extern fn void ActionRow.set_subtitle(&self, ZString subtitle) @extern("adw_action_row_set_subtitle");

<* Maps to ActionRow::set_subtitle_lines *>
extern fn void ActionRow.set_subtitle_lines(&self, int subtitle_lines) @extern("adw_action_row_set_subtitle_lines");

<* Maps to ActionRow::set_subtitle_selectable *>
extern fn void ActionRow.set_subtitle_selectable(&self, bool subtitle_selectable) @extern("adw_action_row_set_subtitle_selectable");

<* Maps to ActionRow::set_title_lines *>
extern fn void ActionRow.set_title_lines(&self, int title_lines) @extern("adw_action_row_set_title_lines");


// Class Functions



<* Maps to AdwAlertDialog *>
typedef AlertDialog = void*;

// Class to parent cast.
fn Dialog* AlertDialog.as_Dialog(&self) => (Dialog*)(self);

// Class Constructors

<* Maps to new of AlertDialog *>
extern fn Dialog* alert_dialog_new(ZString heading, ZString body) @extern("adw_alert_dialog_new");



// Class Methods

<* Maps to AlertDialog::add_response *>
extern fn void AlertDialog.add_response(&self, ZString id, ZString label) @extern("adw_alert_dialog_add_response");

<* Maps to AlertDialog::add_responses *>
extern fn void AlertDialog.add_responses(&self, ZString first_id, any rest) @extern("adw_alert_dialog_add_responses");

<* Maps to AlertDialog::choose *>
extern fn void AlertDialog.choose(&self, gtk::Widget* parent, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("adw_alert_dialog_choose");

<* Maps to AlertDialog::choose_finish *>
extern fn ZString AlertDialog.choose_finish(&self, gio::AsyncResult* result) @extern("adw_alert_dialog_choose_finish");

<* Maps to AlertDialog::format_body *>
extern fn void AlertDialog.format_body(&self, ZString format, any rest) @extern("adw_alert_dialog_format_body");

<* Maps to AlertDialog::format_body_markup *>
extern fn void AlertDialog.format_body_markup(&self, ZString format, any rest) @extern("adw_alert_dialog_format_body_markup");

<* Maps to AlertDialog::format_heading *>
extern fn void AlertDialog.format_heading(&self, ZString format, any rest) @extern("adw_alert_dialog_format_heading");

<* Maps to AlertDialog::format_heading_markup *>
extern fn void AlertDialog.format_heading_markup(&self, ZString format, any rest) @extern("adw_alert_dialog_format_heading_markup");

<* Maps to AlertDialog::get_body *>
extern fn ZString AlertDialog.get_body(&self, ) @extern("adw_alert_dialog_get_body");

<* Maps to AlertDialog::get_body_use_markup *>
extern fn bool AlertDialog.get_body_use_markup(&self, ) @extern("adw_alert_dialog_get_body_use_markup");

<* Maps to AlertDialog::get_close_response *>
extern fn ZString AlertDialog.get_close_response(&self, ) @extern("adw_alert_dialog_get_close_response");

<* Maps to AlertDialog::get_default_response *>
extern fn ZString AlertDialog.get_default_response(&self, ) @extern("adw_alert_dialog_get_default_response");

<* Maps to AlertDialog::get_extra_child *>
extern fn gtk::Widget* AlertDialog.get_extra_child(&self, ) @extern("adw_alert_dialog_get_extra_child");

<* Maps to AlertDialog::get_heading *>
extern fn ZString AlertDialog.get_heading(&self, ) @extern("adw_alert_dialog_get_heading");

<* Maps to AlertDialog::get_heading_use_markup *>
extern fn bool AlertDialog.get_heading_use_markup(&self, ) @extern("adw_alert_dialog_get_heading_use_markup");

<* Maps to AlertDialog::get_prefer_wide_layout *>
extern fn bool AlertDialog.get_prefer_wide_layout(&self, ) @extern("adw_alert_dialog_get_prefer_wide_layout");

<* Maps to AlertDialog::get_response_appearance *>
extern fn ResponseAppearance AlertDialog.get_response_appearance(&self, ZString response) @extern("adw_alert_dialog_get_response_appearance");

<* Maps to AlertDialog::get_response_enabled *>
extern fn bool AlertDialog.get_response_enabled(&self, ZString response) @extern("adw_alert_dialog_get_response_enabled");

<* Maps to AlertDialog::get_response_label *>
extern fn ZString AlertDialog.get_response_label(&self, ZString response) @extern("adw_alert_dialog_get_response_label");

<* Maps to AlertDialog::has_response *>
extern fn bool AlertDialog.has_response(&self, ZString response) @extern("adw_alert_dialog_has_response");

<* Maps to AlertDialog::remove_response *>
extern fn void AlertDialog.remove_response(&self, ZString id) @extern("adw_alert_dialog_remove_response");

<* Maps to AlertDialog::set_body *>
extern fn void AlertDialog.set_body(&self, ZString body) @extern("adw_alert_dialog_set_body");

<* Maps to AlertDialog::set_body_use_markup *>
extern fn void AlertDialog.set_body_use_markup(&self, bool use_markup) @extern("adw_alert_dialog_set_body_use_markup");

<* Maps to AlertDialog::set_close_response *>
extern fn void AlertDialog.set_close_response(&self, ZString response) @extern("adw_alert_dialog_set_close_response");

<* Maps to AlertDialog::set_default_response *>
extern fn void AlertDialog.set_default_response(&self, ZString response) @extern("adw_alert_dialog_set_default_response");

<* Maps to AlertDialog::set_extra_child *>
extern fn void AlertDialog.set_extra_child(&self, gtk::Widget* child) @extern("adw_alert_dialog_set_extra_child");

<* Maps to AlertDialog::set_heading *>
extern fn void AlertDialog.set_heading(&self, ZString heading) @extern("adw_alert_dialog_set_heading");

<* Maps to AlertDialog::set_heading_use_markup *>
extern fn void AlertDialog.set_heading_use_markup(&self, bool use_markup) @extern("adw_alert_dialog_set_heading_use_markup");

<* Maps to AlertDialog::set_prefer_wide_layout *>
extern fn void AlertDialog.set_prefer_wide_layout(&self, bool prefer_wide_layout) @extern("adw_alert_dialog_set_prefer_wide_layout");

<* Maps to AlertDialog::set_response_appearance *>
extern fn void AlertDialog.set_response_appearance(&self, ZString response, ResponseAppearance appearance) @extern("adw_alert_dialog_set_response_appearance");

<* Maps to AlertDialog::set_response_enabled *>
extern fn void AlertDialog.set_response_enabled(&self, ZString response, bool enabled) @extern("adw_alert_dialog_set_response_enabled");

<* Maps to AlertDialog::set_response_label *>
extern fn void AlertDialog.set_response_label(&self, ZString response, ZString label) @extern("adw_alert_dialog_set_response_label");


// Class Functions



<* Maps to AdwAnimation *>
typedef Animation = void*;

// Class to parent cast.
fn gobject::Object* Animation.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Animation::get_follow_enable_animations_setting *>
extern fn bool Animation.get_follow_enable_animations_setting(&self, ) @extern("adw_animation_get_follow_enable_animations_setting");

<* Maps to Animation::get_state *>
extern fn AnimationState Animation.get_state(&self, ) @extern("adw_animation_get_state");

<* Maps to Animation::get_target *>
extern fn AnimationTarget* Animation.get_target(&self, ) @extern("adw_animation_get_target");

<* Maps to Animation::get_value *>
extern fn double Animation.get_value(&self, ) @extern("adw_animation_get_value");

<* Maps to Animation::get_widget *>
extern fn gtk::Widget* Animation.get_widget(&self, ) @extern("adw_animation_get_widget");

<* Maps to Animation::pause *>
extern fn void Animation.pause(&self, ) @extern("adw_animation_pause");

<* Maps to Animation::play *>
extern fn void Animation.play(&self, ) @extern("adw_animation_play");

<* Maps to Animation::reset *>
extern fn void Animation.reset(&self, ) @extern("adw_animation_reset");

<* Maps to Animation::resume *>
extern fn void Animation.resume(&self, ) @extern("adw_animation_resume");

<* Maps to Animation::set_follow_enable_animations_setting *>
extern fn void Animation.set_follow_enable_animations_setting(&self, bool setting) @extern("adw_animation_set_follow_enable_animations_setting");

<* Maps to Animation::set_target *>
extern fn void Animation.set_target(&self, AnimationTarget* target) @extern("adw_animation_set_target");

<* Maps to Animation::skip *>
extern fn void Animation.skip(&self, ) @extern("adw_animation_skip");


// Class Functions



<* Maps to AdwAnimationTarget *>
typedef AnimationTarget = void*;

// Class to parent cast.
fn gobject::Object* AnimationTarget.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to AdwApplication *>
typedef Application = void*;

// Class to parent cast.
fn gtk::Application* Application.as_gtk_Application(&self) => (gtk::Application*)(self);

// Class Constructors

<* Maps to new of Application *>
extern fn Application* application_new(ZString application_id, gio::ApplicationFlags flags) @extern("adw_application_new");



// Class Methods

<* Maps to Application::get_style_manager *>
extern fn StyleManager* Application.get_style_manager(&self, ) @extern("adw_application_get_style_manager");


// Class Functions



<* Maps to AdwApplicationWindow *>
typedef ApplicationWindow = void*;

// Class to parent cast.
fn gtk::ApplicationWindow* ApplicationWindow.as_gtk_ApplicationWindow(&self) => (gtk::ApplicationWindow*)(self);

// Class Constructors

<* Maps to new of ApplicationWindow *>
extern fn gtk::Widget* application_window_new(gtk::Application* app) @extern("adw_application_window_new");



// Class Methods

<* Maps to ApplicationWindow::add_breakpoint *>
extern fn void ApplicationWindow.add_breakpoint(&self, Breakpoint* breakpoint) @extern("adw_application_window_add_breakpoint");

<* Maps to ApplicationWindow::get_content *>
extern fn gtk::Widget* ApplicationWindow.get_content(&self, ) @extern("adw_application_window_get_content");

<* Maps to ApplicationWindow::get_current_breakpoint *>
extern fn Breakpoint* ApplicationWindow.get_current_breakpoint(&self, ) @extern("adw_application_window_get_current_breakpoint");

<* Maps to ApplicationWindow::get_dialogs *>
extern fn gio::ListModel* ApplicationWindow.get_dialogs(&self, ) @extern("adw_application_window_get_dialogs");

<* Maps to ApplicationWindow::get_visible_dialog *>
extern fn Dialog* ApplicationWindow.get_visible_dialog(&self, ) @extern("adw_application_window_get_visible_dialog");

<* Maps to ApplicationWindow::set_content *>
extern fn void ApplicationWindow.set_content(&self, gtk::Widget* content) @extern("adw_application_window_set_content");


// Class Functions



<* Maps to AdwAvatar *>
typedef Avatar = void*;

// Class to parent cast.
fn gtk::Widget* Avatar.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of Avatar *>
extern fn gtk::Widget* avatar_new(int size, ZString text, bool show_initials) @extern("adw_avatar_new");



// Class Methods

<* Maps to Avatar::draw_to_texture *>
extern fn gdk::Texture* Avatar.draw_to_texture(&self, int scale_factor) @extern("adw_avatar_draw_to_texture");

<* Maps to Avatar::get_custom_image *>
extern fn gdk::Paintable* Avatar.get_custom_image(&self, ) @extern("adw_avatar_get_custom_image");

<* Maps to Avatar::get_icon_name *>
extern fn ZString Avatar.get_icon_name(&self, ) @extern("adw_avatar_get_icon_name");

<* Maps to Avatar::get_show_initials *>
extern fn bool Avatar.get_show_initials(&self, ) @extern("adw_avatar_get_show_initials");

<* Maps to Avatar::get_size *>
extern fn int Avatar.get_size(&self, ) @extern("adw_avatar_get_size");

<* Maps to Avatar::get_text *>
extern fn ZString Avatar.get_text(&self, ) @extern("adw_avatar_get_text");

<* Maps to Avatar::set_custom_image *>
extern fn void Avatar.set_custom_image(&self, gdk::Paintable* custom_image) @extern("adw_avatar_set_custom_image");

<* Maps to Avatar::set_icon_name *>
extern fn void Avatar.set_icon_name(&self, ZString icon_name) @extern("adw_avatar_set_icon_name");

<* Maps to Avatar::set_show_initials *>
extern fn void Avatar.set_show_initials(&self, bool show_initials) @extern("adw_avatar_set_show_initials");

<* Maps to Avatar::set_size *>
extern fn void Avatar.set_size(&self, int size) @extern("adw_avatar_set_size");

<* Maps to Avatar::set_text *>
extern fn void Avatar.set_text(&self, ZString text) @extern("adw_avatar_set_text");


// Class Functions



<* Maps to AdwBanner *>
typedef Banner = void*;

// Class to parent cast.
fn gtk::Widget* Banner.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of Banner *>
extern fn gtk::Widget* banner_new(ZString title) @extern("adw_banner_new");



// Class Methods

<* Maps to Banner::get_button_label *>
extern fn ZString Banner.get_button_label(&self, ) @extern("adw_banner_get_button_label");

<* Maps to Banner::get_revealed *>
extern fn bool Banner.get_revealed(&self, ) @extern("adw_banner_get_revealed");

<* Maps to Banner::get_title *>
extern fn ZString Banner.get_title(&self, ) @extern("adw_banner_get_title");

<* Maps to Banner::get_use_markup *>
extern fn bool Banner.get_use_markup(&self, ) @extern("adw_banner_get_use_markup");

<* Maps to Banner::set_button_label *>
extern fn void Banner.set_button_label(&self, ZString label) @extern("adw_banner_set_button_label");

<* Maps to Banner::set_revealed *>
extern fn void Banner.set_revealed(&self, bool revealed) @extern("adw_banner_set_revealed");

<* Maps to Banner::set_title *>
extern fn void Banner.set_title(&self, ZString title) @extern("adw_banner_set_title");

<* Maps to Banner::set_use_markup *>
extern fn void Banner.set_use_markup(&self, bool use_markup) @extern("adw_banner_set_use_markup");


// Class Functions



<* Maps to AdwBin *>
typedef Bin = void*;

// Class to parent cast.
fn gtk::Widget* Bin.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of Bin *>
extern fn gtk::Widget* bin_new() @extern("adw_bin_new");



// Class Methods

<* Maps to Bin::get_child *>
extern fn gtk::Widget* Bin.get_child(&self, ) @extern("adw_bin_get_child");

<* Maps to Bin::set_child *>
extern fn void Bin.set_child(&self, gtk::Widget* child) @extern("adw_bin_set_child");


// Class Functions



<* Maps to AdwBottomSheet *>
typedef BottomSheet = void*;

// Class to parent cast.
fn gtk::Widget* BottomSheet.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of BottomSheet *>
extern fn gtk::Widget* bottom_sheet_new() @extern("adw_bottom_sheet_new");



// Class Methods

<* Maps to BottomSheet::get_align *>
extern fn float BottomSheet.get_align(&self, ) @extern("adw_bottom_sheet_get_align");

<* Maps to BottomSheet::get_bottom_bar *>
extern fn gtk::Widget* BottomSheet.get_bottom_bar(&self, ) @extern("adw_bottom_sheet_get_bottom_bar");

<* Maps to BottomSheet::get_bottom_bar_height *>
extern fn int BottomSheet.get_bottom_bar_height(&self, ) @extern("adw_bottom_sheet_get_bottom_bar_height");

<* Maps to BottomSheet::get_can_close *>
extern fn bool BottomSheet.get_can_close(&self, ) @extern("adw_bottom_sheet_get_can_close");

<* Maps to BottomSheet::get_can_open *>
extern fn bool BottomSheet.get_can_open(&self, ) @extern("adw_bottom_sheet_get_can_open");

<* Maps to BottomSheet::get_content *>
extern fn gtk::Widget* BottomSheet.get_content(&self, ) @extern("adw_bottom_sheet_get_content");

<* Maps to BottomSheet::get_full_width *>
extern fn bool BottomSheet.get_full_width(&self, ) @extern("adw_bottom_sheet_get_full_width");

<* Maps to BottomSheet::get_modal *>
extern fn bool BottomSheet.get_modal(&self, ) @extern("adw_bottom_sheet_get_modal");

<* Maps to BottomSheet::get_open *>
extern fn bool BottomSheet.get_open(&self, ) @extern("adw_bottom_sheet_get_open");

<* Maps to BottomSheet::get_sheet *>
extern fn gtk::Widget* BottomSheet.get_sheet(&self, ) @extern("adw_bottom_sheet_get_sheet");

<* Maps to BottomSheet::get_sheet_height *>
extern fn int BottomSheet.get_sheet_height(&self, ) @extern("adw_bottom_sheet_get_sheet_height");

<* Maps to BottomSheet::get_show_drag_handle *>
extern fn bool BottomSheet.get_show_drag_handle(&self, ) @extern("adw_bottom_sheet_get_show_drag_handle");

<* Maps to BottomSheet::set_align *>
extern fn void BottomSheet.set_align(&self, float align) @extern("adw_bottom_sheet_set_align");

<* Maps to BottomSheet::set_bottom_bar *>
extern fn void BottomSheet.set_bottom_bar(&self, gtk::Widget* bottom_bar) @extern("adw_bottom_sheet_set_bottom_bar");

<* Maps to BottomSheet::set_can_close *>
extern fn void BottomSheet.set_can_close(&self, bool can_close) @extern("adw_bottom_sheet_set_can_close");

<* Maps to BottomSheet::set_can_open *>
extern fn void BottomSheet.set_can_open(&self, bool can_open) @extern("adw_bottom_sheet_set_can_open");

<* Maps to BottomSheet::set_content *>
extern fn void BottomSheet.set_content(&self, gtk::Widget* content) @extern("adw_bottom_sheet_set_content");

<* Maps to BottomSheet::set_full_width *>
extern fn void BottomSheet.set_full_width(&self, bool full_width) @extern("adw_bottom_sheet_set_full_width");

<* Maps to BottomSheet::set_modal *>
extern fn void BottomSheet.set_modal(&self, bool modal) @extern("adw_bottom_sheet_set_modal");

<* Maps to BottomSheet::set_open *>
extern fn void BottomSheet.set_open(&self, bool open) @extern("adw_bottom_sheet_set_open");

<* Maps to BottomSheet::set_sheet *>
extern fn void BottomSheet.set_sheet(&self, gtk::Widget* sheet) @extern("adw_bottom_sheet_set_sheet");

<* Maps to BottomSheet::set_show_drag_handle *>
extern fn void BottomSheet.set_show_drag_handle(&self, bool show_drag_handle) @extern("adw_bottom_sheet_set_show_drag_handle");


// Class Functions



<* Maps to AdwBreakpoint *>
typedef Breakpoint = void*;

// Class to parent cast.
fn gobject::Object* Breakpoint.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Breakpoint *>
extern fn Breakpoint* breakpoint_new(BreakpointCondition* condition) @extern("adw_breakpoint_new");



// Class Methods

<* Maps to Breakpoint::add_setter *>
extern fn void Breakpoint.add_setter(&self, gobject::Object* object, ZString property, gobject::Value* value) @extern("adw_breakpoint_add_setter");

<* Maps to Breakpoint::add_setters *>
extern fn void Breakpoint.add_setters(&self, gobject::Object* first_object, ZString first_property, any rest) @extern("adw_breakpoint_add_setters");

<* Maps to Breakpoint::add_setters_valist *>
extern fn void Breakpoint.add_setters_valist(&self, gobject::Object* first_object, ZString first_property, ZString args) @extern("adw_breakpoint_add_setters_valist");

<* Maps to Breakpoint::add_settersv *>
extern fn void Breakpoint.add_settersv(&self, int n_setters, gobject::Object* objects, ZString* names, gobject::Value* values) @extern("adw_breakpoint_add_settersv");

<* Maps to Breakpoint::get_condition *>
extern fn BreakpointCondition* Breakpoint.get_condition(&self, ) @extern("adw_breakpoint_get_condition");

<* Maps to Breakpoint::set_condition *>
extern fn void Breakpoint.set_condition(&self, BreakpointCondition* condition) @extern("adw_breakpoint_set_condition");


// Class Functions



<* Maps to AdwBreakpointBin *>
typedef BreakpointBin = void*;

// Class to parent cast.
fn gtk::Widget* BreakpointBin.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of BreakpointBin *>
extern fn gtk::Widget* breakpoint_bin_new() @extern("adw_breakpoint_bin_new");



// Class Methods

<* Maps to BreakpointBin::add_breakpoint *>
extern fn void BreakpointBin.add_breakpoint(&self, Breakpoint* breakpoint) @extern("adw_breakpoint_bin_add_breakpoint");

<* Maps to BreakpointBin::get_child *>
extern fn gtk::Widget* BreakpointBin.get_child(&self, ) @extern("adw_breakpoint_bin_get_child");

<* Maps to BreakpointBin::get_current_breakpoint *>
extern fn Breakpoint* BreakpointBin.get_current_breakpoint(&self, ) @extern("adw_breakpoint_bin_get_current_breakpoint");

<* Maps to BreakpointBin::remove_breakpoint *>
extern fn void BreakpointBin.remove_breakpoint(&self, Breakpoint* breakpoint) @extern("adw_breakpoint_bin_remove_breakpoint");

<* Maps to BreakpointBin::set_child *>
extern fn void BreakpointBin.set_child(&self, gtk::Widget* child) @extern("adw_breakpoint_bin_set_child");


// Class Functions



<* Maps to AdwButtonContent *>
typedef ButtonContent = void*;

// Class to parent cast.
fn gtk::Widget* ButtonContent.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of ButtonContent *>
extern fn gtk::Widget* button_content_new() @extern("adw_button_content_new");



// Class Methods

<* Maps to ButtonContent::get_can_shrink *>
extern fn bool ButtonContent.get_can_shrink(&self, ) @extern("adw_button_content_get_can_shrink");

<* Maps to ButtonContent::get_icon_name *>
extern fn ZString ButtonContent.get_icon_name(&self, ) @extern("adw_button_content_get_icon_name");

<* Maps to ButtonContent::get_label *>
extern fn ZString ButtonContent.get_label(&self, ) @extern("adw_button_content_get_label");

<* Maps to ButtonContent::get_use_underline *>
extern fn bool ButtonContent.get_use_underline(&self, ) @extern("adw_button_content_get_use_underline");

<* Maps to ButtonContent::set_can_shrink *>
extern fn void ButtonContent.set_can_shrink(&self, bool can_shrink) @extern("adw_button_content_set_can_shrink");

<* Maps to ButtonContent::set_icon_name *>
extern fn void ButtonContent.set_icon_name(&self, ZString icon_name) @extern("adw_button_content_set_icon_name");

<* Maps to ButtonContent::set_label *>
extern fn void ButtonContent.set_label(&self, ZString label) @extern("adw_button_content_set_label");

<* Maps to ButtonContent::set_use_underline *>
extern fn void ButtonContent.set_use_underline(&self, bool use_underline) @extern("adw_button_content_set_use_underline");


// Class Functions



<* Maps to AdwButtonRow *>
typedef ButtonRow = void*;

// Class to parent cast.
fn PreferencesRow* ButtonRow.as_PreferencesRow(&self) => (PreferencesRow*)(self);

// Class Constructors

<* Maps to new of ButtonRow *>
extern fn gtk::Widget* button_row_new() @extern("adw_button_row_new");



// Class Methods

<* Maps to ButtonRow::get_end_icon_name *>
extern fn ZString ButtonRow.get_end_icon_name(&self, ) @extern("adw_button_row_get_end_icon_name");

<* Maps to ButtonRow::get_start_icon_name *>
extern fn ZString ButtonRow.get_start_icon_name(&self, ) @extern("adw_button_row_get_start_icon_name");

<* Maps to ButtonRow::set_end_icon_name *>
extern fn void ButtonRow.set_end_icon_name(&self, ZString icon_name) @extern("adw_button_row_set_end_icon_name");

<* Maps to ButtonRow::set_start_icon_name *>
extern fn void ButtonRow.set_start_icon_name(&self, ZString icon_name) @extern("adw_button_row_set_start_icon_name");


// Class Functions



<* Maps to AdwCallbackAnimationTarget *>
typedef CallbackAnimationTarget = void*;

// Class to parent cast.
fn AnimationTarget* CallbackAnimationTarget.as_AnimationTarget(&self) => (AnimationTarget*)(self);

// Class Constructors

<* Maps to new of CallbackAnimationTarget *>
extern fn AnimationTarget* callback_animation_target_new(AnimationTargetFunc callback, void* user_data, glib::DestroyNotify destroy) @extern("adw_callback_animation_target_new");



// Class Methods


// Class Functions



<* Maps to AdwCarousel *>
typedef Carousel = void*;

// Class to parent cast.
fn gtk::Widget* Carousel.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of Carousel *>
extern fn gtk::Widget* carousel_new() @extern("adw_carousel_new");



// Class Methods

<* Maps to Carousel::append *>
extern fn void Carousel.append(&self, gtk::Widget* child) @extern("adw_carousel_append");

<* Maps to Carousel::get_allow_long_swipes *>
extern fn bool Carousel.get_allow_long_swipes(&self, ) @extern("adw_carousel_get_allow_long_swipes");

<* Maps to Carousel::get_allow_mouse_drag *>
extern fn bool Carousel.get_allow_mouse_drag(&self, ) @extern("adw_carousel_get_allow_mouse_drag");

<* Maps to Carousel::get_allow_scroll_wheel *>
extern fn bool Carousel.get_allow_scroll_wheel(&self, ) @extern("adw_carousel_get_allow_scroll_wheel");

<* Maps to Carousel::get_interactive *>
extern fn bool Carousel.get_interactive(&self, ) @extern("adw_carousel_get_interactive");

<* Maps to Carousel::get_n_pages *>
extern fn uint Carousel.get_n_pages(&self, ) @extern("adw_carousel_get_n_pages");

<* Maps to Carousel::get_nth_page *>
extern fn gtk::Widget* Carousel.get_nth_page(&self, uint n) @extern("adw_carousel_get_nth_page");

<* Maps to Carousel::get_position *>
extern fn double Carousel.get_position(&self, ) @extern("adw_carousel_get_position");

<* Maps to Carousel::get_reveal_duration *>
extern fn uint Carousel.get_reveal_duration(&self, ) @extern("adw_carousel_get_reveal_duration");

<* Maps to Carousel::get_scroll_params *>
extern fn SpringParams* Carousel.get_scroll_params(&self, ) @extern("adw_carousel_get_scroll_params");

<* Maps to Carousel::get_spacing *>
extern fn uint Carousel.get_spacing(&self, ) @extern("adw_carousel_get_spacing");

<* Maps to Carousel::insert *>
extern fn void Carousel.insert(&self, gtk::Widget* child, int position) @extern("adw_carousel_insert");

<* Maps to Carousel::prepend *>
extern fn void Carousel.prepend(&self, gtk::Widget* child) @extern("adw_carousel_prepend");

<* Maps to Carousel::remove *>
extern fn void Carousel.remove(&self, gtk::Widget* child) @extern("adw_carousel_remove");

<* Maps to Carousel::reorder *>
extern fn void Carousel.reorder(&self, gtk::Widget* child, int position) @extern("adw_carousel_reorder");

<* Maps to Carousel::scroll_to *>
extern fn void Carousel.scroll_to(&self, gtk::Widget* widget, bool animate) @extern("adw_carousel_scroll_to");

<* Maps to Carousel::set_allow_long_swipes *>
extern fn void Carousel.set_allow_long_swipes(&self, bool allow_long_swipes) @extern("adw_carousel_set_allow_long_swipes");

<* Maps to Carousel::set_allow_mouse_drag *>
extern fn void Carousel.set_allow_mouse_drag(&self, bool allow_mouse_drag) @extern("adw_carousel_set_allow_mouse_drag");

<* Maps to Carousel::set_allow_scroll_wheel *>
extern fn void Carousel.set_allow_scroll_wheel(&self, bool allow_scroll_wheel) @extern("adw_carousel_set_allow_scroll_wheel");

<* Maps to Carousel::set_interactive *>
extern fn void Carousel.set_interactive(&self, bool interactive) @extern("adw_carousel_set_interactive");

<* Maps to Carousel::set_reveal_duration *>
extern fn void Carousel.set_reveal_duration(&self, uint reveal_duration) @extern("adw_carousel_set_reveal_duration");

<* Maps to Carousel::set_scroll_params *>
extern fn void Carousel.set_scroll_params(&self, SpringParams* params) @extern("adw_carousel_set_scroll_params");

<* Maps to Carousel::set_spacing *>
extern fn void Carousel.set_spacing(&self, uint spacing) @extern("adw_carousel_set_spacing");


// Class Functions



<* Maps to AdwCarouselIndicatorDots *>
typedef CarouselIndicatorDots = void*;

// Class to parent cast.
fn gtk::Widget* CarouselIndicatorDots.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of CarouselIndicatorDots *>
extern fn gtk::Widget* carousel_indicator_dots_new() @extern("adw_carousel_indicator_dots_new");



// Class Methods

<* Maps to CarouselIndicatorDots::get_carousel *>
extern fn Carousel* CarouselIndicatorDots.get_carousel(&self, ) @extern("adw_carousel_indicator_dots_get_carousel");

<* Maps to CarouselIndicatorDots::set_carousel *>
extern fn void CarouselIndicatorDots.set_carousel(&self, Carousel* carousel) @extern("adw_carousel_indicator_dots_set_carousel");


// Class Functions



<* Maps to AdwCarouselIndicatorLines *>
typedef CarouselIndicatorLines = void*;

// Class to parent cast.
fn gtk::Widget* CarouselIndicatorLines.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of CarouselIndicatorLines *>
extern fn gtk::Widget* carousel_indicator_lines_new() @extern("adw_carousel_indicator_lines_new");



// Class Methods

<* Maps to CarouselIndicatorLines::get_carousel *>
extern fn Carousel* CarouselIndicatorLines.get_carousel(&self, ) @extern("adw_carousel_indicator_lines_get_carousel");

<* Maps to CarouselIndicatorLines::set_carousel *>
extern fn void CarouselIndicatorLines.set_carousel(&self, Carousel* carousel) @extern("adw_carousel_indicator_lines_set_carousel");


// Class Functions



<* Maps to AdwClamp *>
typedef Clamp = void*;

// Class to parent cast.
fn gtk::Widget* Clamp.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of Clamp *>
extern fn gtk::Widget* clamp_new() @extern("adw_clamp_new");



// Class Methods

<* Maps to Clamp::get_child *>
extern fn gtk::Widget* Clamp.get_child(&self, ) @extern("adw_clamp_get_child");

<* Maps to Clamp::get_maximum_size *>
extern fn int Clamp.get_maximum_size(&self, ) @extern("adw_clamp_get_maximum_size");

<* Maps to Clamp::get_tightening_threshold *>
extern fn int Clamp.get_tightening_threshold(&self, ) @extern("adw_clamp_get_tightening_threshold");

<* Maps to Clamp::get_unit *>
extern fn LengthUnit Clamp.get_unit(&self, ) @extern("adw_clamp_get_unit");

<* Maps to Clamp::set_child *>
extern fn void Clamp.set_child(&self, gtk::Widget* child) @extern("adw_clamp_set_child");

<* Maps to Clamp::set_maximum_size *>
extern fn void Clamp.set_maximum_size(&self, int maximum_size) @extern("adw_clamp_set_maximum_size");

<* Maps to Clamp::set_tightening_threshold *>
extern fn void Clamp.set_tightening_threshold(&self, int tightening_threshold) @extern("adw_clamp_set_tightening_threshold");

<* Maps to Clamp::set_unit *>
extern fn void Clamp.set_unit(&self, LengthUnit unit) @extern("adw_clamp_set_unit");


// Class Functions



<* Maps to AdwClampLayout *>
typedef ClampLayout = void*;

// Class to parent cast.
fn gtk::LayoutManager* ClampLayout.as_gtk_LayoutManager(&self) => (gtk::LayoutManager*)(self);

// Class Constructors

<* Maps to new of ClampLayout *>
extern fn gtk::LayoutManager* clamp_layout_new() @extern("adw_clamp_layout_new");



// Class Methods

<* Maps to ClampLayout::get_maximum_size *>
extern fn int ClampLayout.get_maximum_size(&self, ) @extern("adw_clamp_layout_get_maximum_size");

<* Maps to ClampLayout::get_tightening_threshold *>
extern fn int ClampLayout.get_tightening_threshold(&self, ) @extern("adw_clamp_layout_get_tightening_threshold");

<* Maps to ClampLayout::get_unit *>
extern fn LengthUnit ClampLayout.get_unit(&self, ) @extern("adw_clamp_layout_get_unit");

<* Maps to ClampLayout::set_maximum_size *>
extern fn void ClampLayout.set_maximum_size(&self, int maximum_size) @extern("adw_clamp_layout_set_maximum_size");

<* Maps to ClampLayout::set_tightening_threshold *>
extern fn void ClampLayout.set_tightening_threshold(&self, int tightening_threshold) @extern("adw_clamp_layout_set_tightening_threshold");

<* Maps to ClampLayout::set_unit *>
extern fn void ClampLayout.set_unit(&self, LengthUnit unit) @extern("adw_clamp_layout_set_unit");


// Class Functions



<* Maps to AdwClampScrollable *>
typedef ClampScrollable = void*;

// Class to parent cast.
fn gtk::Widget* ClampScrollable.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of ClampScrollable *>
extern fn gtk::Widget* clamp_scrollable_new() @extern("adw_clamp_scrollable_new");



// Class Methods

<* Maps to ClampScrollable::get_child *>
extern fn gtk::Widget* ClampScrollable.get_child(&self, ) @extern("adw_clamp_scrollable_get_child");

<* Maps to ClampScrollable::get_maximum_size *>
extern fn int ClampScrollable.get_maximum_size(&self, ) @extern("adw_clamp_scrollable_get_maximum_size");

<* Maps to ClampScrollable::get_tightening_threshold *>
extern fn int ClampScrollable.get_tightening_threshold(&self, ) @extern("adw_clamp_scrollable_get_tightening_threshold");

<* Maps to ClampScrollable::get_unit *>
extern fn LengthUnit ClampScrollable.get_unit(&self, ) @extern("adw_clamp_scrollable_get_unit");

<* Maps to ClampScrollable::set_child *>
extern fn void ClampScrollable.set_child(&self, gtk::Widget* child) @extern("adw_clamp_scrollable_set_child");

<* Maps to ClampScrollable::set_maximum_size *>
extern fn void ClampScrollable.set_maximum_size(&self, int maximum_size) @extern("adw_clamp_scrollable_set_maximum_size");

<* Maps to ClampScrollable::set_tightening_threshold *>
extern fn void ClampScrollable.set_tightening_threshold(&self, int tightening_threshold) @extern("adw_clamp_scrollable_set_tightening_threshold");

<* Maps to ClampScrollable::set_unit *>
extern fn void ClampScrollable.set_unit(&self, LengthUnit unit) @extern("adw_clamp_scrollable_set_unit");


// Class Functions



<* Maps to AdwComboRow *>
typedef ComboRow = void*;

// Class to parent cast.
fn ActionRow* ComboRow.as_ActionRow(&self) => (ActionRow*)(self);

// Class Constructors

<* Maps to new of ComboRow *>
extern fn gtk::Widget* combo_row_new() @extern("adw_combo_row_new");



// Class Methods

<* Maps to ComboRow::get_enable_search *>
extern fn bool ComboRow.get_enable_search(&self, ) @extern("adw_combo_row_get_enable_search");

<* Maps to ComboRow::get_expression *>
extern fn gtk::Expression* ComboRow.get_expression(&self, ) @extern("adw_combo_row_get_expression");

<* Maps to ComboRow::get_factory *>
extern fn gtk::ListItemFactory* ComboRow.get_factory(&self, ) @extern("adw_combo_row_get_factory");

<* Maps to ComboRow::get_header_factory *>
extern fn gtk::ListItemFactory* ComboRow.get_header_factory(&self, ) @extern("adw_combo_row_get_header_factory");

<* Maps to ComboRow::get_list_factory *>
extern fn gtk::ListItemFactory* ComboRow.get_list_factory(&self, ) @extern("adw_combo_row_get_list_factory");

<* Maps to ComboRow::get_model *>
extern fn gio::ListModel* ComboRow.get_model(&self, ) @extern("adw_combo_row_get_model");

<* Maps to ComboRow::get_search_match_mode *>
extern fn gtk::StringFilterMatchMode ComboRow.get_search_match_mode(&self, ) @extern("adw_combo_row_get_search_match_mode");

<* Maps to ComboRow::get_selected *>
extern fn uint ComboRow.get_selected(&self, ) @extern("adw_combo_row_get_selected");

<* Maps to ComboRow::get_selected_item *>
extern fn gobject::Object* ComboRow.get_selected_item(&self, ) @extern("adw_combo_row_get_selected_item");

<* Maps to ComboRow::get_use_subtitle *>
extern fn bool ComboRow.get_use_subtitle(&self, ) @extern("adw_combo_row_get_use_subtitle");

<* Maps to ComboRow::set_enable_search *>
extern fn void ComboRow.set_enable_search(&self, bool enable_search) @extern("adw_combo_row_set_enable_search");

<* Maps to ComboRow::set_expression *>
extern fn void ComboRow.set_expression(&self, gtk::Expression* expression) @extern("adw_combo_row_set_expression");

<* Maps to ComboRow::set_factory *>
extern fn void ComboRow.set_factory(&self, gtk::ListItemFactory* factory) @extern("adw_combo_row_set_factory");

<* Maps to ComboRow::set_header_factory *>
extern fn void ComboRow.set_header_factory(&self, gtk::ListItemFactory* factory) @extern("adw_combo_row_set_header_factory");

<* Maps to ComboRow::set_list_factory *>
extern fn void ComboRow.set_list_factory(&self, gtk::ListItemFactory* factory) @extern("adw_combo_row_set_list_factory");

<* Maps to ComboRow::set_model *>
extern fn void ComboRow.set_model(&self, gio::ListModel* model) @extern("adw_combo_row_set_model");

<* Maps to ComboRow::set_search_match_mode *>
extern fn void ComboRow.set_search_match_mode(&self, gtk::StringFilterMatchMode search_match_mode) @extern("adw_combo_row_set_search_match_mode");

<* Maps to ComboRow::set_selected *>
extern fn void ComboRow.set_selected(&self, uint position) @extern("adw_combo_row_set_selected");

<* Maps to ComboRow::set_use_subtitle *>
extern fn void ComboRow.set_use_subtitle(&self, bool use_subtitle) @extern("adw_combo_row_set_use_subtitle");


// Class Functions



<* Maps to AdwDialog *>
typedef Dialog = void*;

// Class to parent cast.
fn gtk::Widget* Dialog.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of Dialog *>
extern fn Dialog* dialog_new() @extern("adw_dialog_new");



// Class Methods

<* Maps to Dialog::add_breakpoint *>
extern fn void Dialog.add_breakpoint(&self, Breakpoint* breakpoint) @extern("adw_dialog_add_breakpoint");

<* Maps to Dialog::close *>
extern fn bool Dialog.close(&self, ) @extern("adw_dialog_close");

<* Maps to Dialog::force_close *>
extern fn void Dialog.force_close(&self, ) @extern("adw_dialog_force_close");

<* Maps to Dialog::get_can_close *>
extern fn bool Dialog.get_can_close(&self, ) @extern("adw_dialog_get_can_close");

<* Maps to Dialog::get_child *>
extern fn gtk::Widget* Dialog.get_child(&self, ) @extern("adw_dialog_get_child");

<* Maps to Dialog::get_content_height *>
extern fn int Dialog.get_content_height(&self, ) @extern("adw_dialog_get_content_height");

<* Maps to Dialog::get_content_width *>
extern fn int Dialog.get_content_width(&self, ) @extern("adw_dialog_get_content_width");

<* Maps to Dialog::get_current_breakpoint *>
extern fn Breakpoint* Dialog.get_current_breakpoint(&self, ) @extern("adw_dialog_get_current_breakpoint");

<* Maps to Dialog::get_default_widget *>
extern fn gtk::Widget* Dialog.get_default_widget(&self, ) @extern("adw_dialog_get_default_widget");

<* Maps to Dialog::get_focus *>
extern fn gtk::Widget* Dialog.get_focus(&self, ) @extern("adw_dialog_get_focus");

<* Maps to Dialog::get_follows_content_size *>
extern fn bool Dialog.get_follows_content_size(&self, ) @extern("adw_dialog_get_follows_content_size");

<* Maps to Dialog::get_presentation_mode *>
extern fn DialogPresentationMode Dialog.get_presentation_mode(&self, ) @extern("adw_dialog_get_presentation_mode");

<* Maps to Dialog::get_title *>
extern fn ZString Dialog.get_title(&self, ) @extern("adw_dialog_get_title");

<* Maps to Dialog::present *>
extern fn void Dialog.present(&self, gtk::Widget* parent) @extern("adw_dialog_present");

<* Maps to Dialog::set_can_close *>
extern fn void Dialog.set_can_close(&self, bool can_close) @extern("adw_dialog_set_can_close");

<* Maps to Dialog::set_child *>
extern fn void Dialog.set_child(&self, gtk::Widget* child) @extern("adw_dialog_set_child");

<* Maps to Dialog::set_content_height *>
extern fn void Dialog.set_content_height(&self, int content_height) @extern("adw_dialog_set_content_height");

<* Maps to Dialog::set_content_width *>
extern fn void Dialog.set_content_width(&self, int content_width) @extern("adw_dialog_set_content_width");

<* Maps to Dialog::set_default_widget *>
extern fn void Dialog.set_default_widget(&self, gtk::Widget* default_widget) @extern("adw_dialog_set_default_widget");

<* Maps to Dialog::set_focus *>
extern fn void Dialog.set_focus(&self, gtk::Widget* focus) @extern("adw_dialog_set_focus");

<* Maps to Dialog::set_follows_content_size *>
extern fn void Dialog.set_follows_content_size(&self, bool follows_content_size) @extern("adw_dialog_set_follows_content_size");

<* Maps to Dialog::set_presentation_mode *>
extern fn void Dialog.set_presentation_mode(&self, DialogPresentationMode presentation_mode) @extern("adw_dialog_set_presentation_mode");

<* Maps to Dialog::set_title *>
extern fn void Dialog.set_title(&self, ZString title) @extern("adw_dialog_set_title");


// Class Functions



<* Maps to AdwEntryRow *>
typedef EntryRow = void*;

// Class to parent cast.
fn PreferencesRow* EntryRow.as_PreferencesRow(&self) => (PreferencesRow*)(self);

// Class Constructors

<* Maps to new of EntryRow *>
extern fn gtk::Widget* entry_row_new() @extern("adw_entry_row_new");



// Class Methods

<* Maps to EntryRow::add_prefix *>
extern fn void EntryRow.add_prefix(&self, gtk::Widget* widget) @extern("adw_entry_row_add_prefix");

<* Maps to EntryRow::add_suffix *>
extern fn void EntryRow.add_suffix(&self, gtk::Widget* widget) @extern("adw_entry_row_add_suffix");

<* Maps to EntryRow::get_activates_default *>
extern fn bool EntryRow.get_activates_default(&self, ) @extern("adw_entry_row_get_activates_default");

<* Maps to EntryRow::get_attributes *>
extern fn pango::AttrList* EntryRow.get_attributes(&self, ) @extern("adw_entry_row_get_attributes");

<* Maps to EntryRow::get_enable_emoji_completion *>
extern fn bool EntryRow.get_enable_emoji_completion(&self, ) @extern("adw_entry_row_get_enable_emoji_completion");

<* Maps to EntryRow::get_input_hints *>
extern fn gtk::InputHints EntryRow.get_input_hints(&self, ) @extern("adw_entry_row_get_input_hints");

<* Maps to EntryRow::get_input_purpose *>
extern fn gtk::InputPurpose EntryRow.get_input_purpose(&self, ) @extern("adw_entry_row_get_input_purpose");

<* Maps to EntryRow::get_max_length *>
extern fn int EntryRow.get_max_length(&self, ) @extern("adw_entry_row_get_max_length");

<* Maps to EntryRow::get_show_apply_button *>
extern fn bool EntryRow.get_show_apply_button(&self, ) @extern("adw_entry_row_get_show_apply_button");

<* Maps to EntryRow::get_text_length *>
extern fn uint EntryRow.get_text_length(&self, ) @extern("adw_entry_row_get_text_length");

<* Maps to EntryRow::grab_focus_without_selecting *>
extern fn bool EntryRow.grab_focus_without_selecting(&self, ) @extern("adw_entry_row_grab_focus_without_selecting");

<* Maps to EntryRow::remove *>
extern fn void EntryRow.remove(&self, gtk::Widget* widget) @extern("adw_entry_row_remove");

<* Maps to EntryRow::set_activates_default *>
extern fn void EntryRow.set_activates_default(&self, bool activates) @extern("adw_entry_row_set_activates_default");

<* Maps to EntryRow::set_attributes *>
extern fn void EntryRow.set_attributes(&self, pango::AttrList* attributes) @extern("adw_entry_row_set_attributes");

<* Maps to EntryRow::set_enable_emoji_completion *>
extern fn void EntryRow.set_enable_emoji_completion(&self, bool enable_emoji_completion) @extern("adw_entry_row_set_enable_emoji_completion");

<* Maps to EntryRow::set_input_hints *>
extern fn void EntryRow.set_input_hints(&self, gtk::InputHints hints) @extern("adw_entry_row_set_input_hints");

<* Maps to EntryRow::set_input_purpose *>
extern fn void EntryRow.set_input_purpose(&self, gtk::InputPurpose purpose) @extern("adw_entry_row_set_input_purpose");

<* Maps to EntryRow::set_max_length *>
extern fn void EntryRow.set_max_length(&self, int max_length) @extern("adw_entry_row_set_max_length");

<* Maps to EntryRow::set_show_apply_button *>
extern fn void EntryRow.set_show_apply_button(&self, bool show_apply_button) @extern("adw_entry_row_set_show_apply_button");


// Class Functions



<* Maps to AdwEnumListItem *>
typedef EnumListItem = void*;

// Class to parent cast.
fn gobject::Object* EnumListItem.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to EnumListItem::get_name *>
extern fn ZString EnumListItem.get_name(&self, ) @extern("adw_enum_list_item_get_name");

<* Maps to EnumListItem::get_nick *>
extern fn ZString EnumListItem.get_nick(&self, ) @extern("adw_enum_list_item_get_nick");

<* Maps to EnumListItem::get_value *>
extern fn int EnumListItem.get_value(&self, ) @extern("adw_enum_list_item_get_value");


// Class Functions



<* Maps to AdwEnumListModel *>
typedef EnumListModel = void*;

// Class to parent cast.
fn gobject::Object* EnumListModel.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of EnumListModel *>
extern fn EnumListModel* enum_list_model_new(usz enum_type) @extern("adw_enum_list_model_new");



// Class Methods

<* Maps to EnumListModel::find_position *>
extern fn uint EnumListModel.find_position(&self, int value) @extern("adw_enum_list_model_find_position");

<* Maps to EnumListModel::get_enum_type *>
extern fn usz EnumListModel.get_enum_type(&self, ) @extern("adw_enum_list_model_get_enum_type");


// Class Functions



<* Maps to AdwExpanderRow *>
typedef ExpanderRow = void*;

// Class to parent cast.
fn PreferencesRow* ExpanderRow.as_PreferencesRow(&self) => (PreferencesRow*)(self);

// Class Constructors

<* Maps to new of ExpanderRow *>
extern fn gtk::Widget* expander_row_new() @extern("adw_expander_row_new");



// Class Methods

<* Maps to ExpanderRow::add_action *>
extern fn void ExpanderRow.add_action(&self, gtk::Widget* widget) @extern("adw_expander_row_add_action");

<* Maps to ExpanderRow::add_prefix *>
extern fn void ExpanderRow.add_prefix(&self, gtk::Widget* widget) @extern("adw_expander_row_add_prefix");

<* Maps to ExpanderRow::add_row *>
extern fn void ExpanderRow.add_row(&self, gtk::Widget* child) @extern("adw_expander_row_add_row");

<* Maps to ExpanderRow::add_suffix *>
extern fn void ExpanderRow.add_suffix(&self, gtk::Widget* widget) @extern("adw_expander_row_add_suffix");

<* Maps to ExpanderRow::get_enable_expansion *>
extern fn bool ExpanderRow.get_enable_expansion(&self, ) @extern("adw_expander_row_get_enable_expansion");

<* Maps to ExpanderRow::get_expanded *>
extern fn bool ExpanderRow.get_expanded(&self, ) @extern("adw_expander_row_get_expanded");

<* Maps to ExpanderRow::get_icon_name *>
extern fn ZString ExpanderRow.get_icon_name(&self, ) @extern("adw_expander_row_get_icon_name");

<* Maps to ExpanderRow::get_show_enable_switch *>
extern fn bool ExpanderRow.get_show_enable_switch(&self, ) @extern("adw_expander_row_get_show_enable_switch");

<* Maps to ExpanderRow::get_subtitle *>
extern fn ZString ExpanderRow.get_subtitle(&self, ) @extern("adw_expander_row_get_subtitle");

<* Maps to ExpanderRow::get_subtitle_lines *>
extern fn int ExpanderRow.get_subtitle_lines(&self, ) @extern("adw_expander_row_get_subtitle_lines");

<* Maps to ExpanderRow::get_title_lines *>
extern fn int ExpanderRow.get_title_lines(&self, ) @extern("adw_expander_row_get_title_lines");

<* Maps to ExpanderRow::remove *>
extern fn void ExpanderRow.remove(&self, gtk::Widget* child) @extern("adw_expander_row_remove");

<* Maps to ExpanderRow::set_enable_expansion *>
extern fn void ExpanderRow.set_enable_expansion(&self, bool enable_expansion) @extern("adw_expander_row_set_enable_expansion");

<* Maps to ExpanderRow::set_expanded *>
extern fn void ExpanderRow.set_expanded(&self, bool expanded) @extern("adw_expander_row_set_expanded");

<* Maps to ExpanderRow::set_icon_name *>
extern fn void ExpanderRow.set_icon_name(&self, ZString icon_name) @extern("adw_expander_row_set_icon_name");

<* Maps to ExpanderRow::set_show_enable_switch *>
extern fn void ExpanderRow.set_show_enable_switch(&self, bool show_enable_switch) @extern("adw_expander_row_set_show_enable_switch");

<* Maps to ExpanderRow::set_subtitle *>
extern fn void ExpanderRow.set_subtitle(&self, ZString subtitle) @extern("adw_expander_row_set_subtitle");

<* Maps to ExpanderRow::set_subtitle_lines *>
extern fn void ExpanderRow.set_subtitle_lines(&self, int subtitle_lines) @extern("adw_expander_row_set_subtitle_lines");

<* Maps to ExpanderRow::set_title_lines *>
extern fn void ExpanderRow.set_title_lines(&self, int title_lines) @extern("adw_expander_row_set_title_lines");


// Class Functions



<* Maps to AdwFlap *>
typedef Flap = void*;

// Class to parent cast.
fn gtk::Widget* Flap.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of Flap *>
extern fn gtk::Widget* flap_new() @extern("adw_flap_new");



// Class Methods

<* Maps to Flap::get_content *>
extern fn gtk::Widget* Flap.get_content(&self, ) @extern("adw_flap_get_content");

<* Maps to Flap::get_flap *>
extern fn gtk::Widget* Flap.get_flap(&self, ) @extern("adw_flap_get_flap");

<* Maps to Flap::get_flap_position *>
extern fn gtk::PackType Flap.get_flap_position(&self, ) @extern("adw_flap_get_flap_position");

<* Maps to Flap::get_fold_duration *>
extern fn uint Flap.get_fold_duration(&self, ) @extern("adw_flap_get_fold_duration");

<* Maps to Flap::get_fold_policy *>
extern fn FlapFoldPolicy Flap.get_fold_policy(&self, ) @extern("adw_flap_get_fold_policy");

<* Maps to Flap::get_fold_threshold_policy *>
extern fn FoldThresholdPolicy Flap.get_fold_threshold_policy(&self, ) @extern("adw_flap_get_fold_threshold_policy");

<* Maps to Flap::get_folded *>
extern fn bool Flap.get_folded(&self, ) @extern("adw_flap_get_folded");

<* Maps to Flap::get_locked *>
extern fn bool Flap.get_locked(&self, ) @extern("adw_flap_get_locked");

<* Maps to Flap::get_modal *>
extern fn bool Flap.get_modal(&self, ) @extern("adw_flap_get_modal");

<* Maps to Flap::get_reveal_flap *>
extern fn bool Flap.get_reveal_flap(&self, ) @extern("adw_flap_get_reveal_flap");

<* Maps to Flap::get_reveal_params *>
extern fn SpringParams* Flap.get_reveal_params(&self, ) @extern("adw_flap_get_reveal_params");

<* Maps to Flap::get_reveal_progress *>
extern fn double Flap.get_reveal_progress(&self, ) @extern("adw_flap_get_reveal_progress");

<* Maps to Flap::get_separator *>
extern fn gtk::Widget* Flap.get_separator(&self, ) @extern("adw_flap_get_separator");

<* Maps to Flap::get_swipe_to_close *>
extern fn bool Flap.get_swipe_to_close(&self, ) @extern("adw_flap_get_swipe_to_close");

<* Maps to Flap::get_swipe_to_open *>
extern fn bool Flap.get_swipe_to_open(&self, ) @extern("adw_flap_get_swipe_to_open");

<* Maps to Flap::get_transition_type *>
extern fn FlapTransitionType Flap.get_transition_type(&self, ) @extern("adw_flap_get_transition_type");

<* Maps to Flap::set_content *>
extern fn void Flap.set_content(&self, gtk::Widget* content) @extern("adw_flap_set_content");

<* Maps to Flap::set_flap *>
extern fn void Flap.set_flap(&self, gtk::Widget* flap) @extern("adw_flap_set_flap");

<* Maps to Flap::set_flap_position *>
extern fn void Flap.set_flap_position(&self, gtk::PackType position) @extern("adw_flap_set_flap_position");

<* Maps to Flap::set_fold_duration *>
extern fn void Flap.set_fold_duration(&self, uint duration) @extern("adw_flap_set_fold_duration");

<* Maps to Flap::set_fold_policy *>
extern fn void Flap.set_fold_policy(&self, FlapFoldPolicy policy) @extern("adw_flap_set_fold_policy");

<* Maps to Flap::set_fold_threshold_policy *>
extern fn void Flap.set_fold_threshold_policy(&self, FoldThresholdPolicy policy) @extern("adw_flap_set_fold_threshold_policy");

<* Maps to Flap::set_locked *>
extern fn void Flap.set_locked(&self, bool locked) @extern("adw_flap_set_locked");

<* Maps to Flap::set_modal *>
extern fn void Flap.set_modal(&self, bool modal) @extern("adw_flap_set_modal");

<* Maps to Flap::set_reveal_flap *>
extern fn void Flap.set_reveal_flap(&self, bool reveal_flap) @extern("adw_flap_set_reveal_flap");

<* Maps to Flap::set_reveal_params *>
extern fn void Flap.set_reveal_params(&self, SpringParams* params) @extern("adw_flap_set_reveal_params");

<* Maps to Flap::set_separator *>
extern fn void Flap.set_separator(&self, gtk::Widget* separator) @extern("adw_flap_set_separator");

<* Maps to Flap::set_swipe_to_close *>
extern fn void Flap.set_swipe_to_close(&self, bool swipe_to_close) @extern("adw_flap_set_swipe_to_close");

<* Maps to Flap::set_swipe_to_open *>
extern fn void Flap.set_swipe_to_open(&self, bool swipe_to_open) @extern("adw_flap_set_swipe_to_open");

<* Maps to Flap::set_transition_type *>
extern fn void Flap.set_transition_type(&self, FlapTransitionType transition_type) @extern("adw_flap_set_transition_type");


// Class Functions



<* Maps to AdwHeaderBar *>
typedef HeaderBar = void*;

// Class to parent cast.
fn gtk::Widget* HeaderBar.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of HeaderBar *>
extern fn gtk::Widget* header_bar_new() @extern("adw_header_bar_new");



// Class Methods

<* Maps to HeaderBar::get_centering_policy *>
extern fn CenteringPolicy HeaderBar.get_centering_policy(&self, ) @extern("adw_header_bar_get_centering_policy");

<* Maps to HeaderBar::get_decoration_layout *>
extern fn ZString HeaderBar.get_decoration_layout(&self, ) @extern("adw_header_bar_get_decoration_layout");

<* Maps to HeaderBar::get_show_back_button *>
extern fn bool HeaderBar.get_show_back_button(&self, ) @extern("adw_header_bar_get_show_back_button");

<* Maps to HeaderBar::get_show_end_title_buttons *>
extern fn bool HeaderBar.get_show_end_title_buttons(&self, ) @extern("adw_header_bar_get_show_end_title_buttons");

<* Maps to HeaderBar::get_show_start_title_buttons *>
extern fn bool HeaderBar.get_show_start_title_buttons(&self, ) @extern("adw_header_bar_get_show_start_title_buttons");

<* Maps to HeaderBar::get_show_title *>
extern fn bool HeaderBar.get_show_title(&self, ) @extern("adw_header_bar_get_show_title");

<* Maps to HeaderBar::get_title_widget *>
extern fn gtk::Widget* HeaderBar.get_title_widget(&self, ) @extern("adw_header_bar_get_title_widget");

<* Maps to HeaderBar::pack_end *>
extern fn void HeaderBar.pack_end(&self, gtk::Widget* child) @extern("adw_header_bar_pack_end");

<* Maps to HeaderBar::pack_start *>
extern fn void HeaderBar.pack_start(&self, gtk::Widget* child) @extern("adw_header_bar_pack_start");

<* Maps to HeaderBar::remove *>
extern fn void HeaderBar.remove(&self, gtk::Widget* child) @extern("adw_header_bar_remove");

<* Maps to HeaderBar::set_centering_policy *>
extern fn void HeaderBar.set_centering_policy(&self, CenteringPolicy centering_policy) @extern("adw_header_bar_set_centering_policy");

<* Maps to HeaderBar::set_decoration_layout *>
extern fn void HeaderBar.set_decoration_layout(&self, ZString layout) @extern("adw_header_bar_set_decoration_layout");

<* Maps to HeaderBar::set_show_back_button *>
extern fn void HeaderBar.set_show_back_button(&self, bool show_back_button) @extern("adw_header_bar_set_show_back_button");

<* Maps to HeaderBar::set_show_end_title_buttons *>
extern fn void HeaderBar.set_show_end_title_buttons(&self, bool setting) @extern("adw_header_bar_set_show_end_title_buttons");

<* Maps to HeaderBar::set_show_start_title_buttons *>
extern fn void HeaderBar.set_show_start_title_buttons(&self, bool setting) @extern("adw_header_bar_set_show_start_title_buttons");

<* Maps to HeaderBar::set_show_title *>
extern fn void HeaderBar.set_show_title(&self, bool show_title) @extern("adw_header_bar_set_show_title");

<* Maps to HeaderBar::set_title_widget *>
extern fn void HeaderBar.set_title_widget(&self, gtk::Widget* title_widget) @extern("adw_header_bar_set_title_widget");


// Class Functions



<* Maps to AdwLayout *>
typedef Layout = void*;

// Class to parent cast.
fn gobject::Object* Layout.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Layout *>
extern fn Layout* layout_new(gtk::Widget* content) @extern("adw_layout_new");



// Class Methods

<* Maps to Layout::get_content *>
extern fn gtk::Widget* Layout.get_content(&self, ) @extern("adw_layout_get_content");

<* Maps to Layout::get_name *>
extern fn ZString Layout.get_name(&self, ) @extern("adw_layout_get_name");

<* Maps to Layout::set_name *>
extern fn void Layout.set_name(&self, ZString name) @extern("adw_layout_set_name");


// Class Functions



<* Maps to AdwLayoutSlot *>
typedef LayoutSlot = void*;

// Class to parent cast.
fn gtk::Widget* LayoutSlot.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of LayoutSlot *>
extern fn gtk::Widget* layout_slot_new(ZString id) @extern("adw_layout_slot_new");



// Class Methods

<* Maps to LayoutSlot::get_slot_id *>
extern fn ZString LayoutSlot.get_slot_id(&self, ) @extern("adw_layout_slot_get_slot_id");


// Class Functions



<* Maps to AdwLeaflet *>
typedef Leaflet = void*;

// Class to parent cast.
fn gtk::Widget* Leaflet.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of Leaflet *>
extern fn gtk::Widget* leaflet_new() @extern("adw_leaflet_new");



// Class Methods

<* Maps to Leaflet::append *>
extern fn LeafletPage* Leaflet.append(&self, gtk::Widget* child) @extern("adw_leaflet_append");

<* Maps to Leaflet::get_adjacent_child *>
extern fn gtk::Widget* Leaflet.get_adjacent_child(&self, NavigationDirection direction) @extern("adw_leaflet_get_adjacent_child");

<* Maps to Leaflet::get_can_navigate_back *>
extern fn bool Leaflet.get_can_navigate_back(&self, ) @extern("adw_leaflet_get_can_navigate_back");

<* Maps to Leaflet::get_can_navigate_forward *>
extern fn bool Leaflet.get_can_navigate_forward(&self, ) @extern("adw_leaflet_get_can_navigate_forward");

<* Maps to Leaflet::get_can_unfold *>
extern fn bool Leaflet.get_can_unfold(&self, ) @extern("adw_leaflet_get_can_unfold");

<* Maps to Leaflet::get_child_by_name *>
extern fn gtk::Widget* Leaflet.get_child_by_name(&self, ZString name) @extern("adw_leaflet_get_child_by_name");

<* Maps to Leaflet::get_child_transition_params *>
extern fn SpringParams* Leaflet.get_child_transition_params(&self, ) @extern("adw_leaflet_get_child_transition_params");

<* Maps to Leaflet::get_child_transition_running *>
extern fn bool Leaflet.get_child_transition_running(&self, ) @extern("adw_leaflet_get_child_transition_running");

<* Maps to Leaflet::get_fold_threshold_policy *>
extern fn FoldThresholdPolicy Leaflet.get_fold_threshold_policy(&self, ) @extern("adw_leaflet_get_fold_threshold_policy");

<* Maps to Leaflet::get_folded *>
extern fn bool Leaflet.get_folded(&self, ) @extern("adw_leaflet_get_folded");

<* Maps to Leaflet::get_homogeneous *>
extern fn bool Leaflet.get_homogeneous(&self, ) @extern("adw_leaflet_get_homogeneous");

<* Maps to Leaflet::get_mode_transition_duration *>
extern fn uint Leaflet.get_mode_transition_duration(&self, ) @extern("adw_leaflet_get_mode_transition_duration");

<* Maps to Leaflet::get_page *>
extern fn LeafletPage* Leaflet.get_page(&self, gtk::Widget* child) @extern("adw_leaflet_get_page");

<* Maps to Leaflet::get_pages *>
extern fn gtk::SelectionModel* Leaflet.get_pages(&self, ) @extern("adw_leaflet_get_pages");

<* Maps to Leaflet::get_transition_type *>
extern fn LeafletTransitionType Leaflet.get_transition_type(&self, ) @extern("adw_leaflet_get_transition_type");

<* Maps to Leaflet::get_visible_child *>
extern fn gtk::Widget* Leaflet.get_visible_child(&self, ) @extern("adw_leaflet_get_visible_child");

<* Maps to Leaflet::get_visible_child_name *>
extern fn ZString Leaflet.get_visible_child_name(&self, ) @extern("adw_leaflet_get_visible_child_name");

<* Maps to Leaflet::insert_child_after *>
extern fn LeafletPage* Leaflet.insert_child_after(&self, gtk::Widget* child, gtk::Widget* sibling) @extern("adw_leaflet_insert_child_after");

<* Maps to Leaflet::navigate *>
extern fn bool Leaflet.navigate(&self, NavigationDirection direction) @extern("adw_leaflet_navigate");

<* Maps to Leaflet::prepend *>
extern fn LeafletPage* Leaflet.prepend(&self, gtk::Widget* child) @extern("adw_leaflet_prepend");

<* Maps to Leaflet::remove *>
extern fn void Leaflet.remove(&self, gtk::Widget* child) @extern("adw_leaflet_remove");

<* Maps to Leaflet::reorder_child_after *>
extern fn void Leaflet.reorder_child_after(&self, gtk::Widget* child, gtk::Widget* sibling) @extern("adw_leaflet_reorder_child_after");

<* Maps to Leaflet::set_can_navigate_back *>
extern fn void Leaflet.set_can_navigate_back(&self, bool can_navigate_back) @extern("adw_leaflet_set_can_navigate_back");

<* Maps to Leaflet::set_can_navigate_forward *>
extern fn void Leaflet.set_can_navigate_forward(&self, bool can_navigate_forward) @extern("adw_leaflet_set_can_navigate_forward");

<* Maps to Leaflet::set_can_unfold *>
extern fn void Leaflet.set_can_unfold(&self, bool can_unfold) @extern("adw_leaflet_set_can_unfold");

<* Maps to Leaflet::set_child_transition_params *>
extern fn void Leaflet.set_child_transition_params(&self, SpringParams* params) @extern("adw_leaflet_set_child_transition_params");

<* Maps to Leaflet::set_fold_threshold_policy *>
extern fn void Leaflet.set_fold_threshold_policy(&self, FoldThresholdPolicy policy) @extern("adw_leaflet_set_fold_threshold_policy");

<* Maps to Leaflet::set_homogeneous *>
extern fn void Leaflet.set_homogeneous(&self, bool homogeneous) @extern("adw_leaflet_set_homogeneous");

<* Maps to Leaflet::set_mode_transition_duration *>
extern fn void Leaflet.set_mode_transition_duration(&self, uint duration) @extern("adw_leaflet_set_mode_transition_duration");

<* Maps to Leaflet::set_transition_type *>
extern fn void Leaflet.set_transition_type(&self, LeafletTransitionType transition) @extern("adw_leaflet_set_transition_type");

<* Maps to Leaflet::set_visible_child *>
extern fn void Leaflet.set_visible_child(&self, gtk::Widget* visible_child) @extern("adw_leaflet_set_visible_child");

<* Maps to Leaflet::set_visible_child_name *>
extern fn void Leaflet.set_visible_child_name(&self, ZString name) @extern("adw_leaflet_set_visible_child_name");


// Class Functions



<* Maps to AdwLeafletPage *>
typedef LeafletPage = void*;

// Class to parent cast.
fn gobject::Object* LeafletPage.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to LeafletPage::get_child *>
extern fn gtk::Widget* LeafletPage.get_child(&self, ) @extern("adw_leaflet_page_get_child");

<* Maps to LeafletPage::get_name *>
extern fn ZString LeafletPage.get_name(&self, ) @extern("adw_leaflet_page_get_name");

<* Maps to LeafletPage::get_navigatable *>
extern fn bool LeafletPage.get_navigatable(&self, ) @extern("adw_leaflet_page_get_navigatable");

<* Maps to LeafletPage::set_name *>
extern fn void LeafletPage.set_name(&self, ZString name) @extern("adw_leaflet_page_set_name");

<* Maps to LeafletPage::set_navigatable *>
extern fn void LeafletPage.set_navigatable(&self, bool navigatable) @extern("adw_leaflet_page_set_navigatable");


// Class Functions



<* Maps to AdwMessageDialog *>
typedef MessageDialog = void*;

// Class to parent cast.
fn gtk::Window* MessageDialog.as_gtk_Window(&self) => (gtk::Window*)(self);

// Class Constructors

<* Maps to new of MessageDialog *>
extern fn gtk::Widget* message_dialog_new(gtk::Window* parent, ZString heading, ZString body) @extern("adw_message_dialog_new");



// Class Methods

<* Maps to MessageDialog::add_response *>
extern fn void MessageDialog.add_response(&self, ZString id, ZString label) @extern("adw_message_dialog_add_response");

<* Maps to MessageDialog::add_responses *>
extern fn void MessageDialog.add_responses(&self, ZString first_id, any rest) @extern("adw_message_dialog_add_responses");

<* Maps to MessageDialog::choose *>
extern fn void MessageDialog.choose(&self, gio::Cancellable* cancellable, gio::AsyncReadyCallback callback, void* user_data) @extern("adw_message_dialog_choose");

<* Maps to MessageDialog::choose_finish *>
extern fn ZString MessageDialog.choose_finish(&self, gio::AsyncResult* result) @extern("adw_message_dialog_choose_finish");

<* Maps to MessageDialog::format_body *>
extern fn void MessageDialog.format_body(&self, ZString format, any rest) @extern("adw_message_dialog_format_body");

<* Maps to MessageDialog::format_body_markup *>
extern fn void MessageDialog.format_body_markup(&self, ZString format, any rest) @extern("adw_message_dialog_format_body_markup");

<* Maps to MessageDialog::format_heading *>
extern fn void MessageDialog.format_heading(&self, ZString format, any rest) @extern("adw_message_dialog_format_heading");

<* Maps to MessageDialog::format_heading_markup *>
extern fn void MessageDialog.format_heading_markup(&self, ZString format, any rest) @extern("adw_message_dialog_format_heading_markup");

<* Maps to MessageDialog::get_body *>
extern fn ZString MessageDialog.get_body(&self, ) @extern("adw_message_dialog_get_body");

<* Maps to MessageDialog::get_body_use_markup *>
extern fn bool MessageDialog.get_body_use_markup(&self, ) @extern("adw_message_dialog_get_body_use_markup");

<* Maps to MessageDialog::get_close_response *>
extern fn ZString MessageDialog.get_close_response(&self, ) @extern("adw_message_dialog_get_close_response");

<* Maps to MessageDialog::get_default_response *>
extern fn ZString MessageDialog.get_default_response(&self, ) @extern("adw_message_dialog_get_default_response");

<* Maps to MessageDialog::get_extra_child *>
extern fn gtk::Widget* MessageDialog.get_extra_child(&self, ) @extern("adw_message_dialog_get_extra_child");

<* Maps to MessageDialog::get_heading *>
extern fn ZString MessageDialog.get_heading(&self, ) @extern("adw_message_dialog_get_heading");

<* Maps to MessageDialog::get_heading_use_markup *>
extern fn bool MessageDialog.get_heading_use_markup(&self, ) @extern("adw_message_dialog_get_heading_use_markup");

<* Maps to MessageDialog::get_response_appearance *>
extern fn ResponseAppearance MessageDialog.get_response_appearance(&self, ZString response) @extern("adw_message_dialog_get_response_appearance");

<* Maps to MessageDialog::get_response_enabled *>
extern fn bool MessageDialog.get_response_enabled(&self, ZString response) @extern("adw_message_dialog_get_response_enabled");

<* Maps to MessageDialog::get_response_label *>
extern fn ZString MessageDialog.get_response_label(&self, ZString response) @extern("adw_message_dialog_get_response_label");

<* Maps to MessageDialog::has_response *>
extern fn bool MessageDialog.has_response(&self, ZString response) @extern("adw_message_dialog_has_response");

<* Maps to MessageDialog::remove_response *>
extern fn void MessageDialog.remove_response(&self, ZString id) @extern("adw_message_dialog_remove_response");

<* Maps to MessageDialog::response *>
extern fn void MessageDialog.response(&self, ZString response) @extern("adw_message_dialog_response");

<* Maps to MessageDialog::set_body *>
extern fn void MessageDialog.set_body(&self, ZString body) @extern("adw_message_dialog_set_body");

<* Maps to MessageDialog::set_body_use_markup *>
extern fn void MessageDialog.set_body_use_markup(&self, bool use_markup) @extern("adw_message_dialog_set_body_use_markup");

<* Maps to MessageDialog::set_close_response *>
extern fn void MessageDialog.set_close_response(&self, ZString response) @extern("adw_message_dialog_set_close_response");

<* Maps to MessageDialog::set_default_response *>
extern fn void MessageDialog.set_default_response(&self, ZString response) @extern("adw_message_dialog_set_default_response");

<* Maps to MessageDialog::set_extra_child *>
extern fn void MessageDialog.set_extra_child(&self, gtk::Widget* child) @extern("adw_message_dialog_set_extra_child");

<* Maps to MessageDialog::set_heading *>
extern fn void MessageDialog.set_heading(&self, ZString heading) @extern("adw_message_dialog_set_heading");

<* Maps to MessageDialog::set_heading_use_markup *>
extern fn void MessageDialog.set_heading_use_markup(&self, bool use_markup) @extern("adw_message_dialog_set_heading_use_markup");

<* Maps to MessageDialog::set_response_appearance *>
extern fn void MessageDialog.set_response_appearance(&self, ZString response, ResponseAppearance appearance) @extern("adw_message_dialog_set_response_appearance");

<* Maps to MessageDialog::set_response_enabled *>
extern fn void MessageDialog.set_response_enabled(&self, ZString response, bool enabled) @extern("adw_message_dialog_set_response_enabled");

<* Maps to MessageDialog::set_response_label *>
extern fn void MessageDialog.set_response_label(&self, ZString response, ZString label) @extern("adw_message_dialog_set_response_label");


// Class Functions



<* Maps to AdwMultiLayoutView *>
typedef MultiLayoutView = void*;

// Class to parent cast.
fn gtk::Widget* MultiLayoutView.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of MultiLayoutView *>
extern fn gtk::Widget* multi_layout_view_new() @extern("adw_multi_layout_view_new");



// Class Methods

<* Maps to MultiLayoutView::add_layout *>
extern fn void MultiLayoutView.add_layout(&self, Layout* layout) @extern("adw_multi_layout_view_add_layout");

<* Maps to MultiLayoutView::get_child *>
extern fn gtk::Widget* MultiLayoutView.get_child(&self, ZString id) @extern("adw_multi_layout_view_get_child");

<* Maps to MultiLayoutView::get_layout *>
extern fn Layout* MultiLayoutView.get_layout(&self, ) @extern("adw_multi_layout_view_get_layout");

<* Maps to MultiLayoutView::get_layout_by_name *>
extern fn Layout* MultiLayoutView.get_layout_by_name(&self, ZString name) @extern("adw_multi_layout_view_get_layout_by_name");

<* Maps to MultiLayoutView::get_layout_name *>
extern fn ZString MultiLayoutView.get_layout_name(&self, ) @extern("adw_multi_layout_view_get_layout_name");

<* Maps to MultiLayoutView::remove_layout *>
extern fn void MultiLayoutView.remove_layout(&self, Layout* layout) @extern("adw_multi_layout_view_remove_layout");

<* Maps to MultiLayoutView::set_child *>
extern fn void MultiLayoutView.set_child(&self, ZString id, gtk::Widget* child) @extern("adw_multi_layout_view_set_child");

<* Maps to MultiLayoutView::set_layout *>
extern fn void MultiLayoutView.set_layout(&self, Layout* layout) @extern("adw_multi_layout_view_set_layout");

<* Maps to MultiLayoutView::set_layout_name *>
extern fn void MultiLayoutView.set_layout_name(&self, ZString name) @extern("adw_multi_layout_view_set_layout_name");


// Class Functions



<* Maps to AdwNavigationPage *>
typedef NavigationPage = void*;

// Class to parent cast.
fn gtk::Widget* NavigationPage.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of NavigationPage *>
extern fn NavigationPage* navigation_page_new(gtk::Widget* child, ZString title) @extern("adw_navigation_page_new");

<* Maps to new_with_tag of NavigationPage *>
extern fn NavigationPage* navigation_page_new_with_tag(gtk::Widget* child, ZString title, ZString tag) @extern("adw_navigation_page_new_with_tag");



// Class Methods

<* Maps to NavigationPage::get_can_pop *>
extern fn bool NavigationPage.get_can_pop(&self, ) @extern("adw_navigation_page_get_can_pop");

<* Maps to NavigationPage::get_child *>
extern fn gtk::Widget* NavigationPage.get_child(&self, ) @extern("adw_navigation_page_get_child");

<* Maps to NavigationPage::get_tag *>
extern fn ZString NavigationPage.get_tag(&self, ) @extern("adw_navigation_page_get_tag");

<* Maps to NavigationPage::get_title *>
extern fn ZString NavigationPage.get_title(&self, ) @extern("adw_navigation_page_get_title");

<* Maps to NavigationPage::set_can_pop *>
extern fn void NavigationPage.set_can_pop(&self, bool can_pop) @extern("adw_navigation_page_set_can_pop");

<* Maps to NavigationPage::set_child *>
extern fn void NavigationPage.set_child(&self, gtk::Widget* child) @extern("adw_navigation_page_set_child");

<* Maps to NavigationPage::set_tag *>
extern fn void NavigationPage.set_tag(&self, ZString tag) @extern("adw_navigation_page_set_tag");

<* Maps to NavigationPage::set_title *>
extern fn void NavigationPage.set_title(&self, ZString title) @extern("adw_navigation_page_set_title");


// Class Functions



<* Maps to AdwNavigationSplitView *>
typedef NavigationSplitView = void*;

// Class to parent cast.
fn gtk::Widget* NavigationSplitView.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of NavigationSplitView *>
extern fn gtk::Widget* navigation_split_view_new() @extern("adw_navigation_split_view_new");



// Class Methods

<* Maps to NavigationSplitView::get_collapsed *>
extern fn bool NavigationSplitView.get_collapsed(&self, ) @extern("adw_navigation_split_view_get_collapsed");

<* Maps to NavigationSplitView::get_content *>
extern fn NavigationPage* NavigationSplitView.get_content(&self, ) @extern("adw_navigation_split_view_get_content");

<* Maps to NavigationSplitView::get_max_sidebar_width *>
extern fn double NavigationSplitView.get_max_sidebar_width(&self, ) @extern("adw_navigation_split_view_get_max_sidebar_width");

<* Maps to NavigationSplitView::get_min_sidebar_width *>
extern fn double NavigationSplitView.get_min_sidebar_width(&self, ) @extern("adw_navigation_split_view_get_min_sidebar_width");

<* Maps to NavigationSplitView::get_show_content *>
extern fn bool NavigationSplitView.get_show_content(&self, ) @extern("adw_navigation_split_view_get_show_content");

<* Maps to NavigationSplitView::get_sidebar *>
extern fn NavigationPage* NavigationSplitView.get_sidebar(&self, ) @extern("adw_navigation_split_view_get_sidebar");

<* Maps to NavigationSplitView::get_sidebar_width_fraction *>
extern fn double NavigationSplitView.get_sidebar_width_fraction(&self, ) @extern("adw_navigation_split_view_get_sidebar_width_fraction");

<* Maps to NavigationSplitView::get_sidebar_width_unit *>
extern fn LengthUnit NavigationSplitView.get_sidebar_width_unit(&self, ) @extern("adw_navigation_split_view_get_sidebar_width_unit");

<* Maps to NavigationSplitView::set_collapsed *>
extern fn void NavigationSplitView.set_collapsed(&self, bool collapsed) @extern("adw_navigation_split_view_set_collapsed");

<* Maps to NavigationSplitView::set_content *>
extern fn void NavigationSplitView.set_content(&self, NavigationPage* content) @extern("adw_navigation_split_view_set_content");

<* Maps to NavigationSplitView::set_max_sidebar_width *>
extern fn void NavigationSplitView.set_max_sidebar_width(&self, double width) @extern("adw_navigation_split_view_set_max_sidebar_width");

<* Maps to NavigationSplitView::set_min_sidebar_width *>
extern fn void NavigationSplitView.set_min_sidebar_width(&self, double width) @extern("adw_navigation_split_view_set_min_sidebar_width");

<* Maps to NavigationSplitView::set_show_content *>
extern fn void NavigationSplitView.set_show_content(&self, bool show_content) @extern("adw_navigation_split_view_set_show_content");

<* Maps to NavigationSplitView::set_sidebar *>
extern fn void NavigationSplitView.set_sidebar(&self, NavigationPage* sidebar) @extern("adw_navigation_split_view_set_sidebar");

<* Maps to NavigationSplitView::set_sidebar_width_fraction *>
extern fn void NavigationSplitView.set_sidebar_width_fraction(&self, double fraction) @extern("adw_navigation_split_view_set_sidebar_width_fraction");

<* Maps to NavigationSplitView::set_sidebar_width_unit *>
extern fn void NavigationSplitView.set_sidebar_width_unit(&self, LengthUnit unit) @extern("adw_navigation_split_view_set_sidebar_width_unit");


// Class Functions



<* Maps to AdwNavigationView *>
typedef NavigationView = void*;

// Class to parent cast.
fn gtk::Widget* NavigationView.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of NavigationView *>
extern fn gtk::Widget* navigation_view_new() @extern("adw_navigation_view_new");



// Class Methods

<* Maps to NavigationView::add *>
extern fn void NavigationView.add(&self, NavigationPage* page) @extern("adw_navigation_view_add");

<* Maps to NavigationView::find_page *>
extern fn NavigationPage* NavigationView.find_page(&self, ZString tag) @extern("adw_navigation_view_find_page");

<* Maps to NavigationView::get_animate_transitions *>
extern fn bool NavigationView.get_animate_transitions(&self, ) @extern("adw_navigation_view_get_animate_transitions");

<* Maps to NavigationView::get_navigation_stack *>
extern fn gio::ListModel* NavigationView.get_navigation_stack(&self, ) @extern("adw_navigation_view_get_navigation_stack");

<* Maps to NavigationView::get_pop_on_escape *>
extern fn bool NavigationView.get_pop_on_escape(&self, ) @extern("adw_navigation_view_get_pop_on_escape");

<* Maps to NavigationView::get_previous_page *>
extern fn NavigationPage* NavigationView.get_previous_page(&self, NavigationPage* page) @extern("adw_navigation_view_get_previous_page");

<* Maps to NavigationView::get_visible_page *>
extern fn NavigationPage* NavigationView.get_visible_page(&self, ) @extern("adw_navigation_view_get_visible_page");

<* Maps to NavigationView::pop *>
extern fn bool NavigationView.pop(&self, ) @extern("adw_navigation_view_pop");

<* Maps to NavigationView::pop_to_page *>
extern fn bool NavigationView.pop_to_page(&self, NavigationPage* page) @extern("adw_navigation_view_pop_to_page");

<* Maps to NavigationView::pop_to_tag *>
extern fn bool NavigationView.pop_to_tag(&self, ZString tag) @extern("adw_navigation_view_pop_to_tag");

<* Maps to NavigationView::push *>
extern fn void NavigationView.push(&self, NavigationPage* page) @extern("adw_navigation_view_push");

<* Maps to NavigationView::push_by_tag *>
extern fn void NavigationView.push_by_tag(&self, ZString tag) @extern("adw_navigation_view_push_by_tag");

<* Maps to NavigationView::remove *>
extern fn void NavigationView.remove(&self, NavigationPage* page) @extern("adw_navigation_view_remove");

<* Maps to NavigationView::replace *>
extern fn void NavigationView.replace(&self, NavigationPage* pages, int n_pages) @extern("adw_navigation_view_replace");

<* Maps to NavigationView::replace_with_tags *>
extern fn void NavigationView.replace_with_tags(&self, ZString tags, int n_tags) @extern("adw_navigation_view_replace_with_tags");

<* Maps to NavigationView::set_animate_transitions *>
extern fn void NavigationView.set_animate_transitions(&self, bool animate_transitions) @extern("adw_navigation_view_set_animate_transitions");

<* Maps to NavigationView::set_pop_on_escape *>
extern fn void NavigationView.set_pop_on_escape(&self, bool pop_on_escape) @extern("adw_navigation_view_set_pop_on_escape");


// Class Functions



<* Maps to AdwOverlaySplitView *>
typedef OverlaySplitView = void*;

// Class to parent cast.
fn gtk::Widget* OverlaySplitView.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of OverlaySplitView *>
extern fn gtk::Widget* overlay_split_view_new() @extern("adw_overlay_split_view_new");



// Class Methods

<* Maps to OverlaySplitView::get_collapsed *>
extern fn bool OverlaySplitView.get_collapsed(&self, ) @extern("adw_overlay_split_view_get_collapsed");

<* Maps to OverlaySplitView::get_content *>
extern fn gtk::Widget* OverlaySplitView.get_content(&self, ) @extern("adw_overlay_split_view_get_content");

<* Maps to OverlaySplitView::get_enable_hide_gesture *>
extern fn bool OverlaySplitView.get_enable_hide_gesture(&self, ) @extern("adw_overlay_split_view_get_enable_hide_gesture");

<* Maps to OverlaySplitView::get_enable_show_gesture *>
extern fn bool OverlaySplitView.get_enable_show_gesture(&self, ) @extern("adw_overlay_split_view_get_enable_show_gesture");

<* Maps to OverlaySplitView::get_max_sidebar_width *>
extern fn double OverlaySplitView.get_max_sidebar_width(&self, ) @extern("adw_overlay_split_view_get_max_sidebar_width");

<* Maps to OverlaySplitView::get_min_sidebar_width *>
extern fn double OverlaySplitView.get_min_sidebar_width(&self, ) @extern("adw_overlay_split_view_get_min_sidebar_width");

<* Maps to OverlaySplitView::get_pin_sidebar *>
extern fn bool OverlaySplitView.get_pin_sidebar(&self, ) @extern("adw_overlay_split_view_get_pin_sidebar");

<* Maps to OverlaySplitView::get_show_sidebar *>
extern fn bool OverlaySplitView.get_show_sidebar(&self, ) @extern("adw_overlay_split_view_get_show_sidebar");

<* Maps to OverlaySplitView::get_sidebar *>
extern fn gtk::Widget* OverlaySplitView.get_sidebar(&self, ) @extern("adw_overlay_split_view_get_sidebar");

<* Maps to OverlaySplitView::get_sidebar_position *>
extern fn gtk::PackType OverlaySplitView.get_sidebar_position(&self, ) @extern("adw_overlay_split_view_get_sidebar_position");

<* Maps to OverlaySplitView::get_sidebar_width_fraction *>
extern fn double OverlaySplitView.get_sidebar_width_fraction(&self, ) @extern("adw_overlay_split_view_get_sidebar_width_fraction");

<* Maps to OverlaySplitView::get_sidebar_width_unit *>
extern fn LengthUnit OverlaySplitView.get_sidebar_width_unit(&self, ) @extern("adw_overlay_split_view_get_sidebar_width_unit");

<* Maps to OverlaySplitView::set_collapsed *>
extern fn void OverlaySplitView.set_collapsed(&self, bool collapsed) @extern("adw_overlay_split_view_set_collapsed");

<* Maps to OverlaySplitView::set_content *>
extern fn void OverlaySplitView.set_content(&self, gtk::Widget* content) @extern("adw_overlay_split_view_set_content");

<* Maps to OverlaySplitView::set_enable_hide_gesture *>
extern fn void OverlaySplitView.set_enable_hide_gesture(&self, bool enable_hide_gesture) @extern("adw_overlay_split_view_set_enable_hide_gesture");

<* Maps to OverlaySplitView::set_enable_show_gesture *>
extern fn void OverlaySplitView.set_enable_show_gesture(&self, bool enable_show_gesture) @extern("adw_overlay_split_view_set_enable_show_gesture");

<* Maps to OverlaySplitView::set_max_sidebar_width *>
extern fn void OverlaySplitView.set_max_sidebar_width(&self, double width) @extern("adw_overlay_split_view_set_max_sidebar_width");

<* Maps to OverlaySplitView::set_min_sidebar_width *>
extern fn void OverlaySplitView.set_min_sidebar_width(&self, double width) @extern("adw_overlay_split_view_set_min_sidebar_width");

<* Maps to OverlaySplitView::set_pin_sidebar *>
extern fn void OverlaySplitView.set_pin_sidebar(&self, bool pin_sidebar) @extern("adw_overlay_split_view_set_pin_sidebar");

<* Maps to OverlaySplitView::set_show_sidebar *>
extern fn void OverlaySplitView.set_show_sidebar(&self, bool show_sidebar) @extern("adw_overlay_split_view_set_show_sidebar");

<* Maps to OverlaySplitView::set_sidebar *>
extern fn void OverlaySplitView.set_sidebar(&self, gtk::Widget* sidebar) @extern("adw_overlay_split_view_set_sidebar");

<* Maps to OverlaySplitView::set_sidebar_position *>
extern fn void OverlaySplitView.set_sidebar_position(&self, gtk::PackType position) @extern("adw_overlay_split_view_set_sidebar_position");

<* Maps to OverlaySplitView::set_sidebar_width_fraction *>
extern fn void OverlaySplitView.set_sidebar_width_fraction(&self, double fraction) @extern("adw_overlay_split_view_set_sidebar_width_fraction");

<* Maps to OverlaySplitView::set_sidebar_width_unit *>
extern fn void OverlaySplitView.set_sidebar_width_unit(&self, LengthUnit unit) @extern("adw_overlay_split_view_set_sidebar_width_unit");


// Class Functions



<* Maps to AdwPasswordEntryRow *>
typedef PasswordEntryRow = void*;

// Class to parent cast.
fn EntryRow* PasswordEntryRow.as_EntryRow(&self) => (EntryRow*)(self);

// Class Constructors

<* Maps to new of PasswordEntryRow *>
extern fn gtk::Widget* password_entry_row_new() @extern("adw_password_entry_row_new");



// Class Methods


// Class Functions



<* Maps to AdwPreferencesDialog *>
typedef PreferencesDialog = void*;

// Class to parent cast.
fn Dialog* PreferencesDialog.as_Dialog(&self) => (Dialog*)(self);

// Class Constructors

<* Maps to new of PreferencesDialog *>
extern fn Dialog* preferences_dialog_new() @extern("adw_preferences_dialog_new");



// Class Methods

<* Maps to PreferencesDialog::add *>
extern fn void PreferencesDialog.add(&self, PreferencesPage* page) @extern("adw_preferences_dialog_add");

<* Maps to PreferencesDialog::add_toast *>
extern fn void PreferencesDialog.add_toast(&self, Toast* toast) @extern("adw_preferences_dialog_add_toast");

<* Maps to PreferencesDialog::get_search_enabled *>
extern fn bool PreferencesDialog.get_search_enabled(&self, ) @extern("adw_preferences_dialog_get_search_enabled");

<* Maps to PreferencesDialog::get_visible_page *>
extern fn PreferencesPage* PreferencesDialog.get_visible_page(&self, ) @extern("adw_preferences_dialog_get_visible_page");

<* Maps to PreferencesDialog::get_visible_page_name *>
extern fn ZString PreferencesDialog.get_visible_page_name(&self, ) @extern("adw_preferences_dialog_get_visible_page_name");

<* Maps to PreferencesDialog::pop_subpage *>
extern fn bool PreferencesDialog.pop_subpage(&self, ) @extern("adw_preferences_dialog_pop_subpage");

<* Maps to PreferencesDialog::push_subpage *>
extern fn void PreferencesDialog.push_subpage(&self, NavigationPage* page) @extern("adw_preferences_dialog_push_subpage");

<* Maps to PreferencesDialog::remove *>
extern fn void PreferencesDialog.remove(&self, PreferencesPage* page) @extern("adw_preferences_dialog_remove");

<* Maps to PreferencesDialog::set_search_enabled *>
extern fn void PreferencesDialog.set_search_enabled(&self, bool search_enabled) @extern("adw_preferences_dialog_set_search_enabled");

<* Maps to PreferencesDialog::set_visible_page *>
extern fn void PreferencesDialog.set_visible_page(&self, PreferencesPage* page) @extern("adw_preferences_dialog_set_visible_page");

<* Maps to PreferencesDialog::set_visible_page_name *>
extern fn void PreferencesDialog.set_visible_page_name(&self, ZString name) @extern("adw_preferences_dialog_set_visible_page_name");


// Class Functions



<* Maps to AdwPreferencesGroup *>
typedef PreferencesGroup = void*;

// Class to parent cast.
fn gtk::Widget* PreferencesGroup.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of PreferencesGroup *>
extern fn gtk::Widget* preferences_group_new() @extern("adw_preferences_group_new");



// Class Methods

<* Maps to PreferencesGroup::add *>
extern fn void PreferencesGroup.add(&self, gtk::Widget* child) @extern("adw_preferences_group_add");

<* Maps to PreferencesGroup::get_description *>
extern fn ZString PreferencesGroup.get_description(&self, ) @extern("adw_preferences_group_get_description");

<* Maps to PreferencesGroup::get_header_suffix *>
extern fn gtk::Widget* PreferencesGroup.get_header_suffix(&self, ) @extern("adw_preferences_group_get_header_suffix");

<* Maps to PreferencesGroup::get_separate_rows *>
extern fn bool PreferencesGroup.get_separate_rows(&self, ) @extern("adw_preferences_group_get_separate_rows");

<* Maps to PreferencesGroup::get_title *>
extern fn ZString PreferencesGroup.get_title(&self, ) @extern("adw_preferences_group_get_title");

<* Maps to PreferencesGroup::remove *>
extern fn void PreferencesGroup.remove(&self, gtk::Widget* child) @extern("adw_preferences_group_remove");

<* Maps to PreferencesGroup::set_description *>
extern fn void PreferencesGroup.set_description(&self, ZString description) @extern("adw_preferences_group_set_description");

<* Maps to PreferencesGroup::set_header_suffix *>
extern fn void PreferencesGroup.set_header_suffix(&self, gtk::Widget* suffix) @extern("adw_preferences_group_set_header_suffix");

<* Maps to PreferencesGroup::set_separate_rows *>
extern fn void PreferencesGroup.set_separate_rows(&self, bool separate_rows) @extern("adw_preferences_group_set_separate_rows");

<* Maps to PreferencesGroup::set_title *>
extern fn void PreferencesGroup.set_title(&self, ZString title) @extern("adw_preferences_group_set_title");


// Class Functions



<* Maps to AdwPreferencesPage *>
typedef PreferencesPage = void*;

// Class to parent cast.
fn gtk::Widget* PreferencesPage.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of PreferencesPage *>
extern fn gtk::Widget* preferences_page_new() @extern("adw_preferences_page_new");



// Class Methods

<* Maps to PreferencesPage::add *>
extern fn void PreferencesPage.add(&self, PreferencesGroup* group) @extern("adw_preferences_page_add");

<* Maps to PreferencesPage::get_description *>
extern fn ZString PreferencesPage.get_description(&self, ) @extern("adw_preferences_page_get_description");

<* Maps to PreferencesPage::get_description_centered *>
extern fn bool PreferencesPage.get_description_centered(&self, ) @extern("adw_preferences_page_get_description_centered");

<* Maps to PreferencesPage::get_icon_name *>
extern fn ZString PreferencesPage.get_icon_name(&self, ) @extern("adw_preferences_page_get_icon_name");

<* Maps to PreferencesPage::get_name *>
extern fn ZString PreferencesPage.get_name(&self, ) @extern("adw_preferences_page_get_name");

<* Maps to PreferencesPage::get_title *>
extern fn ZString PreferencesPage.get_title(&self, ) @extern("adw_preferences_page_get_title");

<* Maps to PreferencesPage::get_use_underline *>
extern fn bool PreferencesPage.get_use_underline(&self, ) @extern("adw_preferences_page_get_use_underline");

<* Maps to PreferencesPage::remove *>
extern fn void PreferencesPage.remove(&self, PreferencesGroup* group) @extern("adw_preferences_page_remove");

<* Maps to PreferencesPage::scroll_to_top *>
extern fn void PreferencesPage.scroll_to_top(&self, ) @extern("adw_preferences_page_scroll_to_top");

<* Maps to PreferencesPage::set_description *>
extern fn void PreferencesPage.set_description(&self, ZString description) @extern("adw_preferences_page_set_description");

<* Maps to PreferencesPage::set_description_centered *>
extern fn void PreferencesPage.set_description_centered(&self, bool centered) @extern("adw_preferences_page_set_description_centered");

<* Maps to PreferencesPage::set_icon_name *>
extern fn void PreferencesPage.set_icon_name(&self, ZString icon_name) @extern("adw_preferences_page_set_icon_name");

<* Maps to PreferencesPage::set_name *>
extern fn void PreferencesPage.set_name(&self, ZString name) @extern("adw_preferences_page_set_name");

<* Maps to PreferencesPage::set_title *>
extern fn void PreferencesPage.set_title(&self, ZString title) @extern("adw_preferences_page_set_title");

<* Maps to PreferencesPage::set_use_underline *>
extern fn void PreferencesPage.set_use_underline(&self, bool use_underline) @extern("adw_preferences_page_set_use_underline");


// Class Functions



<* Maps to AdwPreferencesRow *>
typedef PreferencesRow = void*;

// Class to parent cast.
fn gtk::ListBoxRow* PreferencesRow.as_gtk_ListBoxRow(&self) => (gtk::ListBoxRow*)(self);

// Class Constructors

<* Maps to new of PreferencesRow *>
extern fn gtk::Widget* preferences_row_new() @extern("adw_preferences_row_new");



// Class Methods

<* Maps to PreferencesRow::get_title *>
extern fn ZString PreferencesRow.get_title(&self, ) @extern("adw_preferences_row_get_title");

<* Maps to PreferencesRow::get_title_selectable *>
extern fn bool PreferencesRow.get_title_selectable(&self, ) @extern("adw_preferences_row_get_title_selectable");

<* Maps to PreferencesRow::get_use_markup *>
extern fn bool PreferencesRow.get_use_markup(&self, ) @extern("adw_preferences_row_get_use_markup");

<* Maps to PreferencesRow::get_use_underline *>
extern fn bool PreferencesRow.get_use_underline(&self, ) @extern("adw_preferences_row_get_use_underline");

<* Maps to PreferencesRow::set_title *>
extern fn void PreferencesRow.set_title(&self, ZString title) @extern("adw_preferences_row_set_title");

<* Maps to PreferencesRow::set_title_selectable *>
extern fn void PreferencesRow.set_title_selectable(&self, bool title_selectable) @extern("adw_preferences_row_set_title_selectable");

<* Maps to PreferencesRow::set_use_markup *>
extern fn void PreferencesRow.set_use_markup(&self, bool use_markup) @extern("adw_preferences_row_set_use_markup");

<* Maps to PreferencesRow::set_use_underline *>
extern fn void PreferencesRow.set_use_underline(&self, bool use_underline) @extern("adw_preferences_row_set_use_underline");


// Class Functions



<* Maps to AdwPreferencesWindow *>
typedef PreferencesWindow = void*;

// Class to parent cast.
fn Window* PreferencesWindow.as_Window(&self) => (Window*)(self);

// Class Constructors

<* Maps to new of PreferencesWindow *>
extern fn gtk::Widget* preferences_window_new() @extern("adw_preferences_window_new");



// Class Methods

<* Maps to PreferencesWindow::add *>
extern fn void PreferencesWindow.add(&self, PreferencesPage* page) @extern("adw_preferences_window_add");

<* Maps to PreferencesWindow::add_toast *>
extern fn void PreferencesWindow.add_toast(&self, Toast* toast) @extern("adw_preferences_window_add_toast");

<* Maps to PreferencesWindow::close_subpage *>
extern fn void PreferencesWindow.close_subpage(&self, ) @extern("adw_preferences_window_close_subpage");

<* Maps to PreferencesWindow::get_can_navigate_back *>
extern fn bool PreferencesWindow.get_can_navigate_back(&self, ) @extern("adw_preferences_window_get_can_navigate_back");

<* Maps to PreferencesWindow::get_search_enabled *>
extern fn bool PreferencesWindow.get_search_enabled(&self, ) @extern("adw_preferences_window_get_search_enabled");

<* Maps to PreferencesWindow::get_visible_page *>
extern fn PreferencesPage* PreferencesWindow.get_visible_page(&self, ) @extern("adw_preferences_window_get_visible_page");

<* Maps to PreferencesWindow::get_visible_page_name *>
extern fn ZString PreferencesWindow.get_visible_page_name(&self, ) @extern("adw_preferences_window_get_visible_page_name");

<* Maps to PreferencesWindow::pop_subpage *>
extern fn bool PreferencesWindow.pop_subpage(&self, ) @extern("adw_preferences_window_pop_subpage");

<* Maps to PreferencesWindow::present_subpage *>
extern fn void PreferencesWindow.present_subpage(&self, gtk::Widget* subpage) @extern("adw_preferences_window_present_subpage");

<* Maps to PreferencesWindow::push_subpage *>
extern fn void PreferencesWindow.push_subpage(&self, NavigationPage* page) @extern("adw_preferences_window_push_subpage");

<* Maps to PreferencesWindow::remove *>
extern fn void PreferencesWindow.remove(&self, PreferencesPage* page) @extern("adw_preferences_window_remove");

<* Maps to PreferencesWindow::set_can_navigate_back *>
extern fn void PreferencesWindow.set_can_navigate_back(&self, bool can_navigate_back) @extern("adw_preferences_window_set_can_navigate_back");

<* Maps to PreferencesWindow::set_search_enabled *>
extern fn void PreferencesWindow.set_search_enabled(&self, bool search_enabled) @extern("adw_preferences_window_set_search_enabled");

<* Maps to PreferencesWindow::set_visible_page *>
extern fn void PreferencesWindow.set_visible_page(&self, PreferencesPage* page) @extern("adw_preferences_window_set_visible_page");

<* Maps to PreferencesWindow::set_visible_page_name *>
extern fn void PreferencesWindow.set_visible_page_name(&self, ZString name) @extern("adw_preferences_window_set_visible_page_name");


// Class Functions



<* Maps to AdwPropertyAnimationTarget *>
typedef PropertyAnimationTarget = void*;

// Class to parent cast.
fn AnimationTarget* PropertyAnimationTarget.as_AnimationTarget(&self) => (AnimationTarget*)(self);

// Class Constructors

<* Maps to new of PropertyAnimationTarget *>
extern fn AnimationTarget* property_animation_target_new(gobject::Object* object, ZString property_name) @extern("adw_property_animation_target_new");

<* Maps to new_for_pspec of PropertyAnimationTarget *>
extern fn AnimationTarget* property_animation_target_new_for_pspec(gobject::Object* object, gobject::ParamSpec* pspec) @extern("adw_property_animation_target_new_for_pspec");



// Class Methods

<* Maps to PropertyAnimationTarget::get_object *>
extern fn gobject::Object* PropertyAnimationTarget.get_object(&self, ) @extern("adw_property_animation_target_get_object");

<* Maps to PropertyAnimationTarget::get_pspec *>
extern fn gobject::ParamSpec* PropertyAnimationTarget.get_pspec(&self, ) @extern("adw_property_animation_target_get_pspec");


// Class Functions



<* Maps to AdwSpinRow *>
typedef SpinRow = void*;

// Class to parent cast.
fn ActionRow* SpinRow.as_ActionRow(&self) => (ActionRow*)(self);

// Class Constructors

<* Maps to new of SpinRow *>
extern fn gtk::Widget* spin_row_new(gtk::Adjustment* adjustment, double climb_rate, uint digits) @extern("adw_spin_row_new");

<* Maps to new_with_range of SpinRow *>
extern fn gtk::Widget* spin_row_new_with_range(double min, double max, double step) @extern("adw_spin_row_new_with_range");



// Class Methods

<* Maps to SpinRow::configure *>
extern fn void SpinRow.configure(&self, gtk::Adjustment* adjustment, double climb_rate, uint digits) @extern("adw_spin_row_configure");

<* Maps to SpinRow::get_adjustment *>
extern fn gtk::Adjustment* SpinRow.get_adjustment(&self, ) @extern("adw_spin_row_get_adjustment");

<* Maps to SpinRow::get_climb_rate *>
extern fn double SpinRow.get_climb_rate(&self, ) @extern("adw_spin_row_get_climb_rate");

<* Maps to SpinRow::get_digits *>
extern fn uint SpinRow.get_digits(&self, ) @extern("adw_spin_row_get_digits");

<* Maps to SpinRow::get_numeric *>
extern fn bool SpinRow.get_numeric(&self, ) @extern("adw_spin_row_get_numeric");

<* Maps to SpinRow::get_snap_to_ticks *>
extern fn bool SpinRow.get_snap_to_ticks(&self, ) @extern("adw_spin_row_get_snap_to_ticks");

<* Maps to SpinRow::get_update_policy *>
extern fn gtk::SpinButtonUpdatePolicy SpinRow.get_update_policy(&self, ) @extern("adw_spin_row_get_update_policy");

<* Maps to SpinRow::get_value *>
extern fn double SpinRow.get_value(&self, ) @extern("adw_spin_row_get_value");

<* Maps to SpinRow::get_wrap *>
extern fn bool SpinRow.get_wrap(&self, ) @extern("adw_spin_row_get_wrap");

<* Maps to SpinRow::set_adjustment *>
extern fn void SpinRow.set_adjustment(&self, gtk::Adjustment* adjustment) @extern("adw_spin_row_set_adjustment");

<* Maps to SpinRow::set_climb_rate *>
extern fn void SpinRow.set_climb_rate(&self, double climb_rate) @extern("adw_spin_row_set_climb_rate");

<* Maps to SpinRow::set_digits *>
extern fn void SpinRow.set_digits(&self, uint digits) @extern("adw_spin_row_set_digits");

<* Maps to SpinRow::set_numeric *>
extern fn void SpinRow.set_numeric(&self, bool numeric) @extern("adw_spin_row_set_numeric");

<* Maps to SpinRow::set_range *>
extern fn void SpinRow.set_range(&self, double min, double max) @extern("adw_spin_row_set_range");

<* Maps to SpinRow::set_snap_to_ticks *>
extern fn void SpinRow.set_snap_to_ticks(&self, bool snap_to_ticks) @extern("adw_spin_row_set_snap_to_ticks");

<* Maps to SpinRow::set_update_policy *>
extern fn void SpinRow.set_update_policy(&self, gtk::SpinButtonUpdatePolicy policy) @extern("adw_spin_row_set_update_policy");

<* Maps to SpinRow::set_value *>
extern fn void SpinRow.set_value(&self, double value) @extern("adw_spin_row_set_value");

<* Maps to SpinRow::set_wrap *>
extern fn void SpinRow.set_wrap(&self, bool wrap) @extern("adw_spin_row_set_wrap");

<* Maps to SpinRow::update *>
extern fn void SpinRow.update(&self, ) @extern("adw_spin_row_update");


// Class Functions



<* Maps to AdwSpinner *>
typedef Spinner = void*;

// Class to parent cast.
fn gtk::Widget* Spinner.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of Spinner *>
extern fn gtk::Widget* spinner_new() @extern("adw_spinner_new");



// Class Methods


// Class Functions



<* Maps to AdwSpinnerPaintable *>
typedef SpinnerPaintable = void*;

// Class to parent cast.
fn gobject::Object* SpinnerPaintable.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SpinnerPaintable *>
extern fn SpinnerPaintable* spinner_paintable_new(gtk::Widget* widget) @extern("adw_spinner_paintable_new");



// Class Methods

<* Maps to SpinnerPaintable::get_widget *>
extern fn gtk::Widget* SpinnerPaintable.get_widget(&self, ) @extern("adw_spinner_paintable_get_widget");

<* Maps to SpinnerPaintable::set_widget *>
extern fn void SpinnerPaintable.set_widget(&self, gtk::Widget* widget) @extern("adw_spinner_paintable_set_widget");


// Class Functions



<* Maps to AdwSplitButton *>
typedef SplitButton = void*;

// Class to parent cast.
fn gtk::Widget* SplitButton.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of SplitButton *>
extern fn gtk::Widget* split_button_new() @extern("adw_split_button_new");



// Class Methods

<* Maps to SplitButton::get_can_shrink *>
extern fn bool SplitButton.get_can_shrink(&self, ) @extern("adw_split_button_get_can_shrink");

<* Maps to SplitButton::get_child *>
extern fn gtk::Widget* SplitButton.get_child(&self, ) @extern("adw_split_button_get_child");

<* Maps to SplitButton::get_direction *>
extern fn gtk::ArrowType SplitButton.get_direction(&self, ) @extern("adw_split_button_get_direction");

<* Maps to SplitButton::get_dropdown_tooltip *>
extern fn ZString SplitButton.get_dropdown_tooltip(&self, ) @extern("adw_split_button_get_dropdown_tooltip");

<* Maps to SplitButton::get_icon_name *>
extern fn ZString SplitButton.get_icon_name(&self, ) @extern("adw_split_button_get_icon_name");

<* Maps to SplitButton::get_label *>
extern fn ZString SplitButton.get_label(&self, ) @extern("adw_split_button_get_label");

<* Maps to SplitButton::get_menu_model *>
extern fn gio::MenuModel* SplitButton.get_menu_model(&self, ) @extern("adw_split_button_get_menu_model");

<* Maps to SplitButton::get_popover *>
extern fn gtk::Popover* SplitButton.get_popover(&self, ) @extern("adw_split_button_get_popover");

<* Maps to SplitButton::get_use_underline *>
extern fn bool SplitButton.get_use_underline(&self, ) @extern("adw_split_button_get_use_underline");

<* Maps to SplitButton::popdown *>
extern fn void SplitButton.popdown(&self, ) @extern("adw_split_button_popdown");

<* Maps to SplitButton::popup *>
extern fn void SplitButton.popup(&self, ) @extern("adw_split_button_popup");

<* Maps to SplitButton::set_can_shrink *>
extern fn void SplitButton.set_can_shrink(&self, bool can_shrink) @extern("adw_split_button_set_can_shrink");

<* Maps to SplitButton::set_child *>
extern fn void SplitButton.set_child(&self, gtk::Widget* child) @extern("adw_split_button_set_child");

<* Maps to SplitButton::set_direction *>
extern fn void SplitButton.set_direction(&self, gtk::ArrowType direction) @extern("adw_split_button_set_direction");

<* Maps to SplitButton::set_dropdown_tooltip *>
extern fn void SplitButton.set_dropdown_tooltip(&self, ZString tooltip) @extern("adw_split_button_set_dropdown_tooltip");

<* Maps to SplitButton::set_icon_name *>
extern fn void SplitButton.set_icon_name(&self, ZString icon_name) @extern("adw_split_button_set_icon_name");

<* Maps to SplitButton::set_label *>
extern fn void SplitButton.set_label(&self, ZString label) @extern("adw_split_button_set_label");

<* Maps to SplitButton::set_menu_model *>
extern fn void SplitButton.set_menu_model(&self, gio::MenuModel* menu_model) @extern("adw_split_button_set_menu_model");

<* Maps to SplitButton::set_popover *>
extern fn void SplitButton.set_popover(&self, gtk::Popover* popover) @extern("adw_split_button_set_popover");

<* Maps to SplitButton::set_use_underline *>
extern fn void SplitButton.set_use_underline(&self, bool use_underline) @extern("adw_split_button_set_use_underline");


// Class Functions



<* Maps to AdwSpringAnimation *>
typedef SpringAnimation = void*;

// Class to parent cast.
fn Animation* SpringAnimation.as_Animation(&self) => (Animation*)(self);

// Class Constructors

<* Maps to new of SpringAnimation *>
extern fn Animation* spring_animation_new(gtk::Widget* widget, double from, double to, SpringParams* spring_params, AnimationTarget* target) @extern("adw_spring_animation_new");



// Class Methods

<* Maps to SpringAnimation::calculate_value *>
extern fn double SpringAnimation.calculate_value(&self, uint time) @extern("adw_spring_animation_calculate_value");

<* Maps to SpringAnimation::calculate_velocity *>
extern fn double SpringAnimation.calculate_velocity(&self, uint time) @extern("adw_spring_animation_calculate_velocity");

<* Maps to SpringAnimation::get_clamp *>
extern fn bool SpringAnimation.get_clamp(&self, ) @extern("adw_spring_animation_get_clamp");

<* Maps to SpringAnimation::get_epsilon *>
extern fn double SpringAnimation.get_epsilon(&self, ) @extern("adw_spring_animation_get_epsilon");

<* Maps to SpringAnimation::get_estimated_duration *>
extern fn uint SpringAnimation.get_estimated_duration(&self, ) @extern("adw_spring_animation_get_estimated_duration");

<* Maps to SpringAnimation::get_initial_velocity *>
extern fn double SpringAnimation.get_initial_velocity(&self, ) @extern("adw_spring_animation_get_initial_velocity");

<* Maps to SpringAnimation::get_spring_params *>
extern fn SpringParams* SpringAnimation.get_spring_params(&self, ) @extern("adw_spring_animation_get_spring_params");

<* Maps to SpringAnimation::get_value_from *>
extern fn double SpringAnimation.get_value_from(&self, ) @extern("adw_spring_animation_get_value_from");

<* Maps to SpringAnimation::get_value_to *>
extern fn double SpringAnimation.get_value_to(&self, ) @extern("adw_spring_animation_get_value_to");

<* Maps to SpringAnimation::get_velocity *>
extern fn double SpringAnimation.get_velocity(&self, ) @extern("adw_spring_animation_get_velocity");

<* Maps to SpringAnimation::set_clamp *>
extern fn void SpringAnimation.set_clamp(&self, bool clamp) @extern("adw_spring_animation_set_clamp");

<* Maps to SpringAnimation::set_epsilon *>
extern fn void SpringAnimation.set_epsilon(&self, double epsilon) @extern("adw_spring_animation_set_epsilon");

<* Maps to SpringAnimation::set_initial_velocity *>
extern fn void SpringAnimation.set_initial_velocity(&self, double velocity) @extern("adw_spring_animation_set_initial_velocity");

<* Maps to SpringAnimation::set_spring_params *>
extern fn void SpringAnimation.set_spring_params(&self, SpringParams* spring_params) @extern("adw_spring_animation_set_spring_params");

<* Maps to SpringAnimation::set_value_from *>
extern fn void SpringAnimation.set_value_from(&self, double value) @extern("adw_spring_animation_set_value_from");

<* Maps to SpringAnimation::set_value_to *>
extern fn void SpringAnimation.set_value_to(&self, double value) @extern("adw_spring_animation_set_value_to");


// Class Functions



<* Maps to AdwSqueezer *>
typedef Squeezer = void*;

// Class to parent cast.
fn gtk::Widget* Squeezer.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of Squeezer *>
extern fn gtk::Widget* squeezer_new() @extern("adw_squeezer_new");



// Class Methods

<* Maps to Squeezer::add *>
extern fn SqueezerPage* Squeezer.add(&self, gtk::Widget* child) @extern("adw_squeezer_add");

<* Maps to Squeezer::get_allow_none *>
extern fn bool Squeezer.get_allow_none(&self, ) @extern("adw_squeezer_get_allow_none");

<* Maps to Squeezer::get_homogeneous *>
extern fn bool Squeezer.get_homogeneous(&self, ) @extern("adw_squeezer_get_homogeneous");

<* Maps to Squeezer::get_interpolate_size *>
extern fn bool Squeezer.get_interpolate_size(&self, ) @extern("adw_squeezer_get_interpolate_size");

<* Maps to Squeezer::get_page *>
extern fn SqueezerPage* Squeezer.get_page(&self, gtk::Widget* child) @extern("adw_squeezer_get_page");

<* Maps to Squeezer::get_pages *>
extern fn gtk::SelectionModel* Squeezer.get_pages(&self, ) @extern("adw_squeezer_get_pages");

<* Maps to Squeezer::get_switch_threshold_policy *>
extern fn FoldThresholdPolicy Squeezer.get_switch_threshold_policy(&self, ) @extern("adw_squeezer_get_switch_threshold_policy");

<* Maps to Squeezer::get_transition_duration *>
extern fn uint Squeezer.get_transition_duration(&self, ) @extern("adw_squeezer_get_transition_duration");

<* Maps to Squeezer::get_transition_running *>
extern fn bool Squeezer.get_transition_running(&self, ) @extern("adw_squeezer_get_transition_running");

<* Maps to Squeezer::get_transition_type *>
extern fn SqueezerTransitionType Squeezer.get_transition_type(&self, ) @extern("adw_squeezer_get_transition_type");

<* Maps to Squeezer::get_visible_child *>
extern fn gtk::Widget* Squeezer.get_visible_child(&self, ) @extern("adw_squeezer_get_visible_child");

<* Maps to Squeezer::get_xalign *>
extern fn float Squeezer.get_xalign(&self, ) @extern("adw_squeezer_get_xalign");

<* Maps to Squeezer::get_yalign *>
extern fn float Squeezer.get_yalign(&self, ) @extern("adw_squeezer_get_yalign");

<* Maps to Squeezer::remove *>
extern fn void Squeezer.remove(&self, gtk::Widget* child) @extern("adw_squeezer_remove");

<* Maps to Squeezer::set_allow_none *>
extern fn void Squeezer.set_allow_none(&self, bool allow_none) @extern("adw_squeezer_set_allow_none");

<* Maps to Squeezer::set_homogeneous *>
extern fn void Squeezer.set_homogeneous(&self, bool homogeneous) @extern("adw_squeezer_set_homogeneous");

<* Maps to Squeezer::set_interpolate_size *>
extern fn void Squeezer.set_interpolate_size(&self, bool interpolate_size) @extern("adw_squeezer_set_interpolate_size");

<* Maps to Squeezer::set_switch_threshold_policy *>
extern fn void Squeezer.set_switch_threshold_policy(&self, FoldThresholdPolicy policy) @extern("adw_squeezer_set_switch_threshold_policy");

<* Maps to Squeezer::set_transition_duration *>
extern fn void Squeezer.set_transition_duration(&self, uint duration) @extern("adw_squeezer_set_transition_duration");

<* Maps to Squeezer::set_transition_type *>
extern fn void Squeezer.set_transition_type(&self, SqueezerTransitionType transition) @extern("adw_squeezer_set_transition_type");

<* Maps to Squeezer::set_xalign *>
extern fn void Squeezer.set_xalign(&self, float xalign) @extern("adw_squeezer_set_xalign");

<* Maps to Squeezer::set_yalign *>
extern fn void Squeezer.set_yalign(&self, float yalign) @extern("adw_squeezer_set_yalign");


// Class Functions



<* Maps to AdwSqueezerPage *>
typedef SqueezerPage = void*;

// Class to parent cast.
fn gobject::Object* SqueezerPage.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to SqueezerPage::get_child *>
extern fn gtk::Widget* SqueezerPage.get_child(&self, ) @extern("adw_squeezer_page_get_child");

<* Maps to SqueezerPage::get_enabled *>
extern fn bool SqueezerPage.get_enabled(&self, ) @extern("adw_squeezer_page_get_enabled");

<* Maps to SqueezerPage::set_enabled *>
extern fn void SqueezerPage.set_enabled(&self, bool enabled) @extern("adw_squeezer_page_set_enabled");


// Class Functions



<* Maps to AdwStatusPage *>
typedef StatusPage = void*;

// Class to parent cast.
fn gtk::Widget* StatusPage.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of StatusPage *>
extern fn gtk::Widget* status_page_new() @extern("adw_status_page_new");



// Class Methods

<* Maps to StatusPage::get_child *>
extern fn gtk::Widget* StatusPage.get_child(&self, ) @extern("adw_status_page_get_child");

<* Maps to StatusPage::get_description *>
extern fn ZString StatusPage.get_description(&self, ) @extern("adw_status_page_get_description");

<* Maps to StatusPage::get_icon_name *>
extern fn ZString StatusPage.get_icon_name(&self, ) @extern("adw_status_page_get_icon_name");

<* Maps to StatusPage::get_paintable *>
extern fn gdk::Paintable* StatusPage.get_paintable(&self, ) @extern("adw_status_page_get_paintable");

<* Maps to StatusPage::get_title *>
extern fn ZString StatusPage.get_title(&self, ) @extern("adw_status_page_get_title");

<* Maps to StatusPage::set_child *>
extern fn void StatusPage.set_child(&self, gtk::Widget* child) @extern("adw_status_page_set_child");

<* Maps to StatusPage::set_description *>
extern fn void StatusPage.set_description(&self, ZString description) @extern("adw_status_page_set_description");

<* Maps to StatusPage::set_icon_name *>
extern fn void StatusPage.set_icon_name(&self, ZString icon_name) @extern("adw_status_page_set_icon_name");

<* Maps to StatusPage::set_paintable *>
extern fn void StatusPage.set_paintable(&self, gdk::Paintable* paintable) @extern("adw_status_page_set_paintable");

<* Maps to StatusPage::set_title *>
extern fn void StatusPage.set_title(&self, ZString title) @extern("adw_status_page_set_title");


// Class Functions



<* Maps to AdwStyleManager *>
typedef StyleManager = void*;

// Class to parent cast.
fn gobject::Object* StyleManager.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to StyleManager::get_accent_color *>
extern fn AccentColor StyleManager.get_accent_color(&self, ) @extern("adw_style_manager_get_accent_color");

<* Maps to StyleManager::get_accent_color_rgba *>
extern fn gdk::Rgba* StyleManager.get_accent_color_rgba(&self, ) @extern("adw_style_manager_get_accent_color_rgba");

<* Maps to StyleManager::get_color_scheme *>
extern fn ColorScheme StyleManager.get_color_scheme(&self, ) @extern("adw_style_manager_get_color_scheme");

<* Maps to StyleManager::get_dark *>
extern fn bool StyleManager.get_dark(&self, ) @extern("adw_style_manager_get_dark");

<* Maps to StyleManager::get_display *>
extern fn gdk::Display* StyleManager.get_display(&self, ) @extern("adw_style_manager_get_display");

<* Maps to StyleManager::get_high_contrast *>
extern fn bool StyleManager.get_high_contrast(&self, ) @extern("adw_style_manager_get_high_contrast");

<* Maps to StyleManager::get_system_supports_accent_colors *>
extern fn bool StyleManager.get_system_supports_accent_colors(&self, ) @extern("adw_style_manager_get_system_supports_accent_colors");

<* Maps to StyleManager::get_system_supports_color_schemes *>
extern fn bool StyleManager.get_system_supports_color_schemes(&self, ) @extern("adw_style_manager_get_system_supports_color_schemes");

<* Maps to StyleManager::set_color_scheme *>
extern fn void StyleManager.set_color_scheme(&self, ColorScheme color_scheme) @extern("adw_style_manager_set_color_scheme");


// Class Functions

<* Maps to get_default of StyleManager *>
extern fn StyleManager* style_manager_get_default() @extern("adw_style_manager_get_default");

<* Maps to get_for_display of StyleManager *>
extern fn StyleManager* style_manager_get_for_display(gdk::Display* display) @extern("adw_style_manager_get_for_display");



<* Maps to AdwSwipeTracker *>
typedef SwipeTracker = void*;

// Class to parent cast.
fn gobject::Object* SwipeTracker.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SwipeTracker *>
extern fn SwipeTracker* swipe_tracker_new(Swipeable* swipeable) @extern("adw_swipe_tracker_new");



// Class Methods

<* Maps to SwipeTracker::get_allow_long_swipes *>
extern fn bool SwipeTracker.get_allow_long_swipes(&self, ) @extern("adw_swipe_tracker_get_allow_long_swipes");

<* Maps to SwipeTracker::get_allow_mouse_drag *>
extern fn bool SwipeTracker.get_allow_mouse_drag(&self, ) @extern("adw_swipe_tracker_get_allow_mouse_drag");

<* Maps to SwipeTracker::get_allow_window_handle *>
extern fn bool SwipeTracker.get_allow_window_handle(&self, ) @extern("adw_swipe_tracker_get_allow_window_handle");

<* Maps to SwipeTracker::get_enabled *>
extern fn bool SwipeTracker.get_enabled(&self, ) @extern("adw_swipe_tracker_get_enabled");

<* Maps to SwipeTracker::get_lower_overshoot *>
extern fn bool SwipeTracker.get_lower_overshoot(&self, ) @extern("adw_swipe_tracker_get_lower_overshoot");

<* Maps to SwipeTracker::get_reversed *>
extern fn bool SwipeTracker.get_reversed(&self, ) @extern("adw_swipe_tracker_get_reversed");

<* Maps to SwipeTracker::get_swipeable *>
extern fn Swipeable* SwipeTracker.get_swipeable(&self, ) @extern("adw_swipe_tracker_get_swipeable");

<* Maps to SwipeTracker::get_upper_overshoot *>
extern fn bool SwipeTracker.get_upper_overshoot(&self, ) @extern("adw_swipe_tracker_get_upper_overshoot");

<* Maps to SwipeTracker::set_allow_long_swipes *>
extern fn void SwipeTracker.set_allow_long_swipes(&self, bool allow_long_swipes) @extern("adw_swipe_tracker_set_allow_long_swipes");

<* Maps to SwipeTracker::set_allow_mouse_drag *>
extern fn void SwipeTracker.set_allow_mouse_drag(&self, bool allow_mouse_drag) @extern("adw_swipe_tracker_set_allow_mouse_drag");

<* Maps to SwipeTracker::set_allow_window_handle *>
extern fn void SwipeTracker.set_allow_window_handle(&self, bool allow_window_handle) @extern("adw_swipe_tracker_set_allow_window_handle");

<* Maps to SwipeTracker::set_enabled *>
extern fn void SwipeTracker.set_enabled(&self, bool enabled) @extern("adw_swipe_tracker_set_enabled");

<* Maps to SwipeTracker::set_lower_overshoot *>
extern fn void SwipeTracker.set_lower_overshoot(&self, bool overshoot) @extern("adw_swipe_tracker_set_lower_overshoot");

<* Maps to SwipeTracker::set_reversed *>
extern fn void SwipeTracker.set_reversed(&self, bool reversed) @extern("adw_swipe_tracker_set_reversed");

<* Maps to SwipeTracker::set_upper_overshoot *>
extern fn void SwipeTracker.set_upper_overshoot(&self, bool overshoot) @extern("adw_swipe_tracker_set_upper_overshoot");

<* Maps to SwipeTracker::shift_position *>
extern fn void SwipeTracker.shift_position(&self, double delta) @extern("adw_swipe_tracker_shift_position");


// Class Functions



<* Maps to AdwSwitchRow *>
typedef SwitchRow = void*;

// Class to parent cast.
fn ActionRow* SwitchRow.as_ActionRow(&self) => (ActionRow*)(self);

// Class Constructors

<* Maps to new of SwitchRow *>
extern fn gtk::Widget* switch_row_new() @extern("adw_switch_row_new");



// Class Methods

<* Maps to SwitchRow::get_active *>
extern fn bool SwitchRow.get_active(&self, ) @extern("adw_switch_row_get_active");

<* Maps to SwitchRow::set_active *>
extern fn void SwitchRow.set_active(&self, bool is_active) @extern("adw_switch_row_set_active");


// Class Functions



<* Maps to AdwTabBar *>
typedef TabBar = void*;

// Class to parent cast.
fn gtk::Widget* TabBar.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of TabBar *>
extern fn TabBar* tab_bar_new() @extern("adw_tab_bar_new");



// Class Methods

<* Maps to TabBar::get_autohide *>
extern fn bool TabBar.get_autohide(&self, ) @extern("adw_tab_bar_get_autohide");

<* Maps to TabBar::get_end_action_widget *>
extern fn gtk::Widget* TabBar.get_end_action_widget(&self, ) @extern("adw_tab_bar_get_end_action_widget");

<* Maps to TabBar::get_expand_tabs *>
extern fn bool TabBar.get_expand_tabs(&self, ) @extern("adw_tab_bar_get_expand_tabs");

<* Maps to TabBar::get_extra_drag_preferred_action *>
extern fn gdk::DragAction TabBar.get_extra_drag_preferred_action(&self, ) @extern("adw_tab_bar_get_extra_drag_preferred_action");

<* Maps to TabBar::get_extra_drag_preload *>
extern fn bool TabBar.get_extra_drag_preload(&self, ) @extern("adw_tab_bar_get_extra_drag_preload");

<* Maps to TabBar::get_inverted *>
extern fn bool TabBar.get_inverted(&self, ) @extern("adw_tab_bar_get_inverted");

<* Maps to TabBar::get_is_overflowing *>
extern fn bool TabBar.get_is_overflowing(&self, ) @extern("adw_tab_bar_get_is_overflowing");

<* Maps to TabBar::get_start_action_widget *>
extern fn gtk::Widget* TabBar.get_start_action_widget(&self, ) @extern("adw_tab_bar_get_start_action_widget");

<* Maps to TabBar::get_tabs_revealed *>
extern fn bool TabBar.get_tabs_revealed(&self, ) @extern("adw_tab_bar_get_tabs_revealed");

<* Maps to TabBar::get_view *>
extern fn TabView* TabBar.get_view(&self, ) @extern("adw_tab_bar_get_view");

<* Maps to TabBar::set_autohide *>
extern fn void TabBar.set_autohide(&self, bool autohide) @extern("adw_tab_bar_set_autohide");

<* Maps to TabBar::set_end_action_widget *>
extern fn void TabBar.set_end_action_widget(&self, gtk::Widget* widget) @extern("adw_tab_bar_set_end_action_widget");

<* Maps to TabBar::set_expand_tabs *>
extern fn void TabBar.set_expand_tabs(&self, bool expand_tabs) @extern("adw_tab_bar_set_expand_tabs");

<* Maps to TabBar::set_extra_drag_preload *>
extern fn void TabBar.set_extra_drag_preload(&self, bool preload) @extern("adw_tab_bar_set_extra_drag_preload");

<* Maps to TabBar::set_inverted *>
extern fn void TabBar.set_inverted(&self, bool inverted) @extern("adw_tab_bar_set_inverted");

<* Maps to TabBar::set_start_action_widget *>
extern fn void TabBar.set_start_action_widget(&self, gtk::Widget* widget) @extern("adw_tab_bar_set_start_action_widget");

<* Maps to TabBar::set_view *>
extern fn void TabBar.set_view(&self, TabView* view) @extern("adw_tab_bar_set_view");

<* Maps to TabBar::setup_extra_drop_target *>
extern fn void TabBar.setup_extra_drop_target(&self, gdk::DragAction actions, usz types, usz n_types) @extern("adw_tab_bar_setup_extra_drop_target");


// Class Functions



<* Maps to AdwTabButton *>
typedef TabButton = void*;

// Class to parent cast.
fn gtk::Widget* TabButton.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of TabButton *>
extern fn gtk::Widget* tab_button_new() @extern("adw_tab_button_new");



// Class Methods

<* Maps to TabButton::get_view *>
extern fn TabView* TabButton.get_view(&self, ) @extern("adw_tab_button_get_view");

<* Maps to TabButton::set_view *>
extern fn void TabButton.set_view(&self, TabView* view) @extern("adw_tab_button_set_view");


// Class Functions



<* Maps to AdwTabOverview *>
typedef TabOverview = void*;

// Class to parent cast.
fn gtk::Widget* TabOverview.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of TabOverview *>
extern fn gtk::Widget* tab_overview_new() @extern("adw_tab_overview_new");



// Class Methods

<* Maps to TabOverview::get_child *>
extern fn gtk::Widget* TabOverview.get_child(&self, ) @extern("adw_tab_overview_get_child");

<* Maps to TabOverview::get_enable_new_tab *>
extern fn bool TabOverview.get_enable_new_tab(&self, ) @extern("adw_tab_overview_get_enable_new_tab");

<* Maps to TabOverview::get_enable_search *>
extern fn bool TabOverview.get_enable_search(&self, ) @extern("adw_tab_overview_get_enable_search");

<* Maps to TabOverview::get_extra_drag_preferred_action *>
extern fn gdk::DragAction TabOverview.get_extra_drag_preferred_action(&self, ) @extern("adw_tab_overview_get_extra_drag_preferred_action");

<* Maps to TabOverview::get_extra_drag_preload *>
extern fn bool TabOverview.get_extra_drag_preload(&self, ) @extern("adw_tab_overview_get_extra_drag_preload");

<* Maps to TabOverview::get_inverted *>
extern fn bool TabOverview.get_inverted(&self, ) @extern("adw_tab_overview_get_inverted");

<* Maps to TabOverview::get_open *>
extern fn bool TabOverview.get_open(&self, ) @extern("adw_tab_overview_get_open");

<* Maps to TabOverview::get_search_active *>
extern fn bool TabOverview.get_search_active(&self, ) @extern("adw_tab_overview_get_search_active");

<* Maps to TabOverview::get_secondary_menu *>
extern fn gio::MenuModel* TabOverview.get_secondary_menu(&self, ) @extern("adw_tab_overview_get_secondary_menu");

<* Maps to TabOverview::get_show_end_title_buttons *>
extern fn bool TabOverview.get_show_end_title_buttons(&self, ) @extern("adw_tab_overview_get_show_end_title_buttons");

<* Maps to TabOverview::get_show_start_title_buttons *>
extern fn bool TabOverview.get_show_start_title_buttons(&self, ) @extern("adw_tab_overview_get_show_start_title_buttons");

<* Maps to TabOverview::get_view *>
extern fn TabView* TabOverview.get_view(&self, ) @extern("adw_tab_overview_get_view");

<* Maps to TabOverview::set_child *>
extern fn void TabOverview.set_child(&self, gtk::Widget* child) @extern("adw_tab_overview_set_child");

<* Maps to TabOverview::set_enable_new_tab *>
extern fn void TabOverview.set_enable_new_tab(&self, bool enable_new_tab) @extern("adw_tab_overview_set_enable_new_tab");

<* Maps to TabOverview::set_enable_search *>
extern fn void TabOverview.set_enable_search(&self, bool enable_search) @extern("adw_tab_overview_set_enable_search");

<* Maps to TabOverview::set_extra_drag_preload *>
extern fn void TabOverview.set_extra_drag_preload(&self, bool preload) @extern("adw_tab_overview_set_extra_drag_preload");

<* Maps to TabOverview::set_inverted *>
extern fn void TabOverview.set_inverted(&self, bool inverted) @extern("adw_tab_overview_set_inverted");

<* Maps to TabOverview::set_open *>
extern fn void TabOverview.set_open(&self, bool open) @extern("adw_tab_overview_set_open");

<* Maps to TabOverview::set_secondary_menu *>
extern fn void TabOverview.set_secondary_menu(&self, gio::MenuModel* secondary_menu) @extern("adw_tab_overview_set_secondary_menu");

<* Maps to TabOverview::set_show_end_title_buttons *>
extern fn void TabOverview.set_show_end_title_buttons(&self, bool show_end_title_buttons) @extern("adw_tab_overview_set_show_end_title_buttons");

<* Maps to TabOverview::set_show_start_title_buttons *>
extern fn void TabOverview.set_show_start_title_buttons(&self, bool show_start_title_buttons) @extern("adw_tab_overview_set_show_start_title_buttons");

<* Maps to TabOverview::set_view *>
extern fn void TabOverview.set_view(&self, TabView* view) @extern("adw_tab_overview_set_view");

<* Maps to TabOverview::setup_extra_drop_target *>
extern fn void TabOverview.setup_extra_drop_target(&self, gdk::DragAction actions, usz types, usz n_types) @extern("adw_tab_overview_setup_extra_drop_target");


// Class Functions



<* Maps to AdwTabPage *>
typedef TabPage = void*;

// Class to parent cast.
fn gobject::Object* TabPage.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to TabPage::get_child *>
extern fn gtk::Widget* TabPage.get_child(&self, ) @extern("adw_tab_page_get_child");

<* Maps to TabPage::get_icon *>
extern fn gio::Icon* TabPage.get_icon(&self, ) @extern("adw_tab_page_get_icon");

<* Maps to TabPage::get_indicator_activatable *>
extern fn bool TabPage.get_indicator_activatable(&self, ) @extern("adw_tab_page_get_indicator_activatable");

<* Maps to TabPage::get_indicator_icon *>
extern fn gio::Icon* TabPage.get_indicator_icon(&self, ) @extern("adw_tab_page_get_indicator_icon");

<* Maps to TabPage::get_indicator_tooltip *>
extern fn ZString TabPage.get_indicator_tooltip(&self, ) @extern("adw_tab_page_get_indicator_tooltip");

<* Maps to TabPage::get_keyword *>
extern fn ZString TabPage.get_keyword(&self, ) @extern("adw_tab_page_get_keyword");

<* Maps to TabPage::get_live_thumbnail *>
extern fn bool TabPage.get_live_thumbnail(&self, ) @extern("adw_tab_page_get_live_thumbnail");

<* Maps to TabPage::get_loading *>
extern fn bool TabPage.get_loading(&self, ) @extern("adw_tab_page_get_loading");

<* Maps to TabPage::get_needs_attention *>
extern fn bool TabPage.get_needs_attention(&self, ) @extern("adw_tab_page_get_needs_attention");

<* Maps to TabPage::get_parent *>
extern fn TabPage* TabPage.get_parent(&self, ) @extern("adw_tab_page_get_parent");

<* Maps to TabPage::get_pinned *>
extern fn bool TabPage.get_pinned(&self, ) @extern("adw_tab_page_get_pinned");

<* Maps to TabPage::get_selected *>
extern fn bool TabPage.get_selected(&self, ) @extern("adw_tab_page_get_selected");

<* Maps to TabPage::get_thumbnail_xalign *>
extern fn float TabPage.get_thumbnail_xalign(&self, ) @extern("adw_tab_page_get_thumbnail_xalign");

<* Maps to TabPage::get_thumbnail_yalign *>
extern fn float TabPage.get_thumbnail_yalign(&self, ) @extern("adw_tab_page_get_thumbnail_yalign");

<* Maps to TabPage::get_title *>
extern fn ZString TabPage.get_title(&self, ) @extern("adw_tab_page_get_title");

<* Maps to TabPage::get_tooltip *>
extern fn ZString TabPage.get_tooltip(&self, ) @extern("adw_tab_page_get_tooltip");

<* Maps to TabPage::invalidate_thumbnail *>
extern fn void TabPage.invalidate_thumbnail(&self, ) @extern("adw_tab_page_invalidate_thumbnail");

<* Maps to TabPage::set_icon *>
extern fn void TabPage.set_icon(&self, gio::Icon* icon) @extern("adw_tab_page_set_icon");

<* Maps to TabPage::set_indicator_activatable *>
extern fn void TabPage.set_indicator_activatable(&self, bool activatable) @extern("adw_tab_page_set_indicator_activatable");

<* Maps to TabPage::set_indicator_icon *>
extern fn void TabPage.set_indicator_icon(&self, gio::Icon* indicator_icon) @extern("adw_tab_page_set_indicator_icon");

<* Maps to TabPage::set_indicator_tooltip *>
extern fn void TabPage.set_indicator_tooltip(&self, ZString tooltip) @extern("adw_tab_page_set_indicator_tooltip");

<* Maps to TabPage::set_keyword *>
extern fn void TabPage.set_keyword(&self, ZString keyword) @extern("adw_tab_page_set_keyword");

<* Maps to TabPage::set_live_thumbnail *>
extern fn void TabPage.set_live_thumbnail(&self, bool live_thumbnail) @extern("adw_tab_page_set_live_thumbnail");

<* Maps to TabPage::set_loading *>
extern fn void TabPage.set_loading(&self, bool loading) @extern("adw_tab_page_set_loading");

<* Maps to TabPage::set_needs_attention *>
extern fn void TabPage.set_needs_attention(&self, bool needs_attention) @extern("adw_tab_page_set_needs_attention");

<* Maps to TabPage::set_thumbnail_xalign *>
extern fn void TabPage.set_thumbnail_xalign(&self, float xalign) @extern("adw_tab_page_set_thumbnail_xalign");

<* Maps to TabPage::set_thumbnail_yalign *>
extern fn void TabPage.set_thumbnail_yalign(&self, float yalign) @extern("adw_tab_page_set_thumbnail_yalign");

<* Maps to TabPage::set_title *>
extern fn void TabPage.set_title(&self, ZString title) @extern("adw_tab_page_set_title");

<* Maps to TabPage::set_tooltip *>
extern fn void TabPage.set_tooltip(&self, ZString tooltip) @extern("adw_tab_page_set_tooltip");


// Class Functions



<* Maps to AdwTabView *>
typedef TabView = void*;

// Class to parent cast.
fn gtk::Widget* TabView.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of TabView *>
extern fn TabView* tab_view_new() @extern("adw_tab_view_new");



// Class Methods

<* Maps to TabView::add_page *>
extern fn TabPage* TabView.add_page(&self, gtk::Widget* child, TabPage* parent) @extern("adw_tab_view_add_page");

<* Maps to TabView::add_shortcuts *>
extern fn void TabView.add_shortcuts(&self, TabViewShortcuts shortcuts) @extern("adw_tab_view_add_shortcuts");

<* Maps to TabView::append *>
extern fn TabPage* TabView.append(&self, gtk::Widget* child) @extern("adw_tab_view_append");

<* Maps to TabView::append_pinned *>
extern fn TabPage* TabView.append_pinned(&self, gtk::Widget* child) @extern("adw_tab_view_append_pinned");

<* Maps to TabView::close_other_pages *>
extern fn void TabView.close_other_pages(&self, TabPage* page) @extern("adw_tab_view_close_other_pages");

<* Maps to TabView::close_page *>
extern fn void TabView.close_page(&self, TabPage* page) @extern("adw_tab_view_close_page");

<* Maps to TabView::close_page_finish *>
extern fn void TabView.close_page_finish(&self, TabPage* page, bool confirm) @extern("adw_tab_view_close_page_finish");

<* Maps to TabView::close_pages_after *>
extern fn void TabView.close_pages_after(&self, TabPage* page) @extern("adw_tab_view_close_pages_after");

<* Maps to TabView::close_pages_before *>
extern fn void TabView.close_pages_before(&self, TabPage* page) @extern("adw_tab_view_close_pages_before");

<* Maps to TabView::get_default_icon *>
extern fn gio::Icon* TabView.get_default_icon(&self, ) @extern("adw_tab_view_get_default_icon");

<* Maps to TabView::get_is_transferring_page *>
extern fn bool TabView.get_is_transferring_page(&self, ) @extern("adw_tab_view_get_is_transferring_page");

<* Maps to TabView::get_menu_model *>
extern fn gio::MenuModel* TabView.get_menu_model(&self, ) @extern("adw_tab_view_get_menu_model");

<* Maps to TabView::get_n_pages *>
extern fn int TabView.get_n_pages(&self, ) @extern("adw_tab_view_get_n_pages");

<* Maps to TabView::get_n_pinned_pages *>
extern fn int TabView.get_n_pinned_pages(&self, ) @extern("adw_tab_view_get_n_pinned_pages");

<* Maps to TabView::get_nth_page *>
extern fn TabPage* TabView.get_nth_page(&self, int position) @extern("adw_tab_view_get_nth_page");

<* Maps to TabView::get_page *>
extern fn TabPage* TabView.get_page(&self, gtk::Widget* child) @extern("adw_tab_view_get_page");

<* Maps to TabView::get_page_position *>
extern fn int TabView.get_page_position(&self, TabPage* page) @extern("adw_tab_view_get_page_position");

<* Maps to TabView::get_pages *>
extern fn gtk::SelectionModel* TabView.get_pages(&self, ) @extern("adw_tab_view_get_pages");

<* Maps to TabView::get_selected_page *>
extern fn TabPage* TabView.get_selected_page(&self, ) @extern("adw_tab_view_get_selected_page");

<* Maps to TabView::get_shortcuts *>
extern fn TabViewShortcuts TabView.get_shortcuts(&self, ) @extern("adw_tab_view_get_shortcuts");

<* Maps to TabView::insert *>
extern fn TabPage* TabView.insert(&self, gtk::Widget* child, int position) @extern("adw_tab_view_insert");

<* Maps to TabView::insert_pinned *>
extern fn TabPage* TabView.insert_pinned(&self, gtk::Widget* child, int position) @extern("adw_tab_view_insert_pinned");

<* Maps to TabView::invalidate_thumbnails *>
extern fn void TabView.invalidate_thumbnails(&self, ) @extern("adw_tab_view_invalidate_thumbnails");

<* Maps to TabView::prepend *>
extern fn TabPage* TabView.prepend(&self, gtk::Widget* child) @extern("adw_tab_view_prepend");

<* Maps to TabView::prepend_pinned *>
extern fn TabPage* TabView.prepend_pinned(&self, gtk::Widget* child) @extern("adw_tab_view_prepend_pinned");

<* Maps to TabView::remove_shortcuts *>
extern fn void TabView.remove_shortcuts(&self, TabViewShortcuts shortcuts) @extern("adw_tab_view_remove_shortcuts");

<* Maps to TabView::reorder_backward *>
extern fn bool TabView.reorder_backward(&self, TabPage* page) @extern("adw_tab_view_reorder_backward");

<* Maps to TabView::reorder_first *>
extern fn bool TabView.reorder_first(&self, TabPage* page) @extern("adw_tab_view_reorder_first");

<* Maps to TabView::reorder_forward *>
extern fn bool TabView.reorder_forward(&self, TabPage* page) @extern("adw_tab_view_reorder_forward");

<* Maps to TabView::reorder_last *>
extern fn bool TabView.reorder_last(&self, TabPage* page) @extern("adw_tab_view_reorder_last");

<* Maps to TabView::reorder_page *>
extern fn bool TabView.reorder_page(&self, TabPage* page, int position) @extern("adw_tab_view_reorder_page");

<* Maps to TabView::select_next_page *>
extern fn bool TabView.select_next_page(&self, ) @extern("adw_tab_view_select_next_page");

<* Maps to TabView::select_previous_page *>
extern fn bool TabView.select_previous_page(&self, ) @extern("adw_tab_view_select_previous_page");

<* Maps to TabView::set_default_icon *>
extern fn void TabView.set_default_icon(&self, gio::Icon* default_icon) @extern("adw_tab_view_set_default_icon");

<* Maps to TabView::set_menu_model *>
extern fn void TabView.set_menu_model(&self, gio::MenuModel* menu_model) @extern("adw_tab_view_set_menu_model");

<* Maps to TabView::set_page_pinned *>
extern fn void TabView.set_page_pinned(&self, TabPage* page, bool pinned) @extern("adw_tab_view_set_page_pinned");

<* Maps to TabView::set_selected_page *>
extern fn void TabView.set_selected_page(&self, TabPage* selected_page) @extern("adw_tab_view_set_selected_page");

<* Maps to TabView::set_shortcuts *>
extern fn void TabView.set_shortcuts(&self, TabViewShortcuts shortcuts) @extern("adw_tab_view_set_shortcuts");

<* Maps to TabView::transfer_page *>
extern fn void TabView.transfer_page(&self, TabPage* page, TabView* other_view, int position) @extern("adw_tab_view_transfer_page");


// Class Functions



<* Maps to AdwTimedAnimation *>
typedef TimedAnimation = void*;

// Class to parent cast.
fn Animation* TimedAnimation.as_Animation(&self) => (Animation*)(self);

// Class Constructors

<* Maps to new of TimedAnimation *>
extern fn Animation* timed_animation_new(gtk::Widget* widget, double from, double to, uint duration, AnimationTarget* target) @extern("adw_timed_animation_new");



// Class Methods

<* Maps to TimedAnimation::get_alternate *>
extern fn bool TimedAnimation.get_alternate(&self, ) @extern("adw_timed_animation_get_alternate");

<* Maps to TimedAnimation::get_duration *>
extern fn uint TimedAnimation.get_duration(&self, ) @extern("adw_timed_animation_get_duration");

<* Maps to TimedAnimation::get_easing *>
extern fn Easing TimedAnimation.get_easing(&self, ) @extern("adw_timed_animation_get_easing");

<* Maps to TimedAnimation::get_repeat_count *>
extern fn uint TimedAnimation.get_repeat_count(&self, ) @extern("adw_timed_animation_get_repeat_count");

<* Maps to TimedAnimation::get_reverse *>
extern fn bool TimedAnimation.get_reverse(&self, ) @extern("adw_timed_animation_get_reverse");

<* Maps to TimedAnimation::get_value_from *>
extern fn double TimedAnimation.get_value_from(&self, ) @extern("adw_timed_animation_get_value_from");

<* Maps to TimedAnimation::get_value_to *>
extern fn double TimedAnimation.get_value_to(&self, ) @extern("adw_timed_animation_get_value_to");

<* Maps to TimedAnimation::set_alternate *>
extern fn void TimedAnimation.set_alternate(&self, bool alternate) @extern("adw_timed_animation_set_alternate");

<* Maps to TimedAnimation::set_duration *>
extern fn void TimedAnimation.set_duration(&self, uint duration) @extern("adw_timed_animation_set_duration");

<* Maps to TimedAnimation::set_easing *>
extern fn void TimedAnimation.set_easing(&self, Easing easing) @extern("adw_timed_animation_set_easing");

<* Maps to TimedAnimation::set_repeat_count *>
extern fn void TimedAnimation.set_repeat_count(&self, uint repeat_count) @extern("adw_timed_animation_set_repeat_count");

<* Maps to TimedAnimation::set_reverse *>
extern fn void TimedAnimation.set_reverse(&self, bool reverse) @extern("adw_timed_animation_set_reverse");

<* Maps to TimedAnimation::set_value_from *>
extern fn void TimedAnimation.set_value_from(&self, double value) @extern("adw_timed_animation_set_value_from");

<* Maps to TimedAnimation::set_value_to *>
extern fn void TimedAnimation.set_value_to(&self, double value) @extern("adw_timed_animation_set_value_to");


// Class Functions



<* Maps to AdwToast *>
typedef Toast = void*;

// Class to parent cast.
fn gobject::Object* Toast.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Toast *>
extern fn Toast* toast_new(ZString title) @extern("adw_toast_new");

<* Maps to new_format of Toast *>
extern fn Toast* toast_new_format(ZString format, any rest) @extern("adw_toast_new_format");



// Class Methods

<* Maps to Toast::dismiss *>
extern fn void Toast.dismiss(&self, ) @extern("adw_toast_dismiss");

<* Maps to Toast::get_action_name *>
extern fn ZString Toast.get_action_name(&self, ) @extern("adw_toast_get_action_name");

<* Maps to Toast::get_action_target_value *>
extern fn glib::Variant* Toast.get_action_target_value(&self, ) @extern("adw_toast_get_action_target_value");

<* Maps to Toast::get_button_label *>
extern fn ZString Toast.get_button_label(&self, ) @extern("adw_toast_get_button_label");

<* Maps to Toast::get_custom_title *>
extern fn gtk::Widget* Toast.get_custom_title(&self, ) @extern("adw_toast_get_custom_title");

<* Maps to Toast::get_priority *>
extern fn ToastPriority Toast.get_priority(&self, ) @extern("adw_toast_get_priority");

<* Maps to Toast::get_timeout *>
extern fn uint Toast.get_timeout(&self, ) @extern("adw_toast_get_timeout");

<* Maps to Toast::get_title *>
extern fn ZString Toast.get_title(&self, ) @extern("adw_toast_get_title");

<* Maps to Toast::get_use_markup *>
extern fn bool Toast.get_use_markup(&self, ) @extern("adw_toast_get_use_markup");

<* Maps to Toast::set_action_name *>
extern fn void Toast.set_action_name(&self, ZString action_name) @extern("adw_toast_set_action_name");

<* Maps to Toast::set_action_target *>
extern fn void Toast.set_action_target(&self, ZString format_string, any rest) @extern("adw_toast_set_action_target");

<* Maps to Toast::set_action_target_value *>
extern fn void Toast.set_action_target_value(&self, glib::Variant* action_target) @extern("adw_toast_set_action_target_value");

<* Maps to Toast::set_button_label *>
extern fn void Toast.set_button_label(&self, ZString button_label) @extern("adw_toast_set_button_label");

<* Maps to Toast::set_custom_title *>
extern fn void Toast.set_custom_title(&self, gtk::Widget* widget) @extern("adw_toast_set_custom_title");

<* Maps to Toast::set_detailed_action_name *>
extern fn void Toast.set_detailed_action_name(&self, ZString detailed_action_name) @extern("adw_toast_set_detailed_action_name");

<* Maps to Toast::set_priority *>
extern fn void Toast.set_priority(&self, ToastPriority priority) @extern("adw_toast_set_priority");

<* Maps to Toast::set_timeout *>
extern fn void Toast.set_timeout(&self, uint timeout) @extern("adw_toast_set_timeout");

<* Maps to Toast::set_title *>
extern fn void Toast.set_title(&self, ZString title) @extern("adw_toast_set_title");

<* Maps to Toast::set_use_markup *>
extern fn void Toast.set_use_markup(&self, bool use_markup) @extern("adw_toast_set_use_markup");


// Class Functions



<* Maps to AdwToastOverlay *>
typedef ToastOverlay = void*;

// Class to parent cast.
fn gtk::Widget* ToastOverlay.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of ToastOverlay *>
extern fn gtk::Widget* toast_overlay_new() @extern("adw_toast_overlay_new");



// Class Methods

<* Maps to ToastOverlay::add_toast *>
extern fn void ToastOverlay.add_toast(&self, Toast* toast) @extern("adw_toast_overlay_add_toast");

<* Maps to ToastOverlay::get_child *>
extern fn gtk::Widget* ToastOverlay.get_child(&self, ) @extern("adw_toast_overlay_get_child");

<* Maps to ToastOverlay::set_child *>
extern fn void ToastOverlay.set_child(&self, gtk::Widget* child) @extern("adw_toast_overlay_set_child");


// Class Functions



<* Maps to AdwToolbarView *>
typedef ToolbarView = void*;

// Class to parent cast.
fn gtk::Widget* ToolbarView.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of ToolbarView *>
extern fn gtk::Widget* toolbar_view_new() @extern("adw_toolbar_view_new");



// Class Methods

<* Maps to ToolbarView::add_bottom_bar *>
extern fn void ToolbarView.add_bottom_bar(&self, gtk::Widget* widget) @extern("adw_toolbar_view_add_bottom_bar");

<* Maps to ToolbarView::add_top_bar *>
extern fn void ToolbarView.add_top_bar(&self, gtk::Widget* widget) @extern("adw_toolbar_view_add_top_bar");

<* Maps to ToolbarView::get_bottom_bar_height *>
extern fn int ToolbarView.get_bottom_bar_height(&self, ) @extern("adw_toolbar_view_get_bottom_bar_height");

<* Maps to ToolbarView::get_bottom_bar_style *>
extern fn ToolbarStyle ToolbarView.get_bottom_bar_style(&self, ) @extern("adw_toolbar_view_get_bottom_bar_style");

<* Maps to ToolbarView::get_content *>
extern fn gtk::Widget* ToolbarView.get_content(&self, ) @extern("adw_toolbar_view_get_content");

<* Maps to ToolbarView::get_extend_content_to_bottom_edge *>
extern fn bool ToolbarView.get_extend_content_to_bottom_edge(&self, ) @extern("adw_toolbar_view_get_extend_content_to_bottom_edge");

<* Maps to ToolbarView::get_extend_content_to_top_edge *>
extern fn bool ToolbarView.get_extend_content_to_top_edge(&self, ) @extern("adw_toolbar_view_get_extend_content_to_top_edge");

<* Maps to ToolbarView::get_reveal_bottom_bars *>
extern fn bool ToolbarView.get_reveal_bottom_bars(&self, ) @extern("adw_toolbar_view_get_reveal_bottom_bars");

<* Maps to ToolbarView::get_reveal_top_bars *>
extern fn bool ToolbarView.get_reveal_top_bars(&self, ) @extern("adw_toolbar_view_get_reveal_top_bars");

<* Maps to ToolbarView::get_top_bar_height *>
extern fn int ToolbarView.get_top_bar_height(&self, ) @extern("adw_toolbar_view_get_top_bar_height");

<* Maps to ToolbarView::get_top_bar_style *>
extern fn ToolbarStyle ToolbarView.get_top_bar_style(&self, ) @extern("adw_toolbar_view_get_top_bar_style");

<* Maps to ToolbarView::remove *>
extern fn void ToolbarView.remove(&self, gtk::Widget* widget) @extern("adw_toolbar_view_remove");

<* Maps to ToolbarView::set_bottom_bar_style *>
extern fn void ToolbarView.set_bottom_bar_style(&self, ToolbarStyle style) @extern("adw_toolbar_view_set_bottom_bar_style");

<* Maps to ToolbarView::set_content *>
extern fn void ToolbarView.set_content(&self, gtk::Widget* content) @extern("adw_toolbar_view_set_content");

<* Maps to ToolbarView::set_extend_content_to_bottom_edge *>
extern fn void ToolbarView.set_extend_content_to_bottom_edge(&self, bool extend) @extern("adw_toolbar_view_set_extend_content_to_bottom_edge");

<* Maps to ToolbarView::set_extend_content_to_top_edge *>
extern fn void ToolbarView.set_extend_content_to_top_edge(&self, bool extend) @extern("adw_toolbar_view_set_extend_content_to_top_edge");

<* Maps to ToolbarView::set_reveal_bottom_bars *>
extern fn void ToolbarView.set_reveal_bottom_bars(&self, bool reveal) @extern("adw_toolbar_view_set_reveal_bottom_bars");

<* Maps to ToolbarView::set_reveal_top_bars *>
extern fn void ToolbarView.set_reveal_top_bars(&self, bool reveal) @extern("adw_toolbar_view_set_reveal_top_bars");

<* Maps to ToolbarView::set_top_bar_style *>
extern fn void ToolbarView.set_top_bar_style(&self, ToolbarStyle style) @extern("adw_toolbar_view_set_top_bar_style");


// Class Functions



<* Maps to AdwViewStack *>
typedef ViewStack = void*;

// Class to parent cast.
fn gtk::Widget* ViewStack.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of ViewStack *>
extern fn gtk::Widget* view_stack_new() @extern("adw_view_stack_new");



// Class Methods

<* Maps to ViewStack::add *>
extern fn ViewStackPage* ViewStack.add(&self, gtk::Widget* child) @extern("adw_view_stack_add");

<* Maps to ViewStack::add_named *>
extern fn ViewStackPage* ViewStack.add_named(&self, gtk::Widget* child, ZString name) @extern("adw_view_stack_add_named");

<* Maps to ViewStack::add_titled *>
extern fn ViewStackPage* ViewStack.add_titled(&self, gtk::Widget* child, ZString name, ZString title) @extern("adw_view_stack_add_titled");

<* Maps to ViewStack::add_titled_with_icon *>
extern fn ViewStackPage* ViewStack.add_titled_with_icon(&self, gtk::Widget* child, ZString name, ZString title, ZString icon_name) @extern("adw_view_stack_add_titled_with_icon");

<* Maps to ViewStack::get_child_by_name *>
extern fn gtk::Widget* ViewStack.get_child_by_name(&self, ZString name) @extern("adw_view_stack_get_child_by_name");

<* Maps to ViewStack::get_hhomogeneous *>
extern fn bool ViewStack.get_hhomogeneous(&self, ) @extern("adw_view_stack_get_hhomogeneous");

<* Maps to ViewStack::get_page *>
extern fn ViewStackPage* ViewStack.get_page(&self, gtk::Widget* child) @extern("adw_view_stack_get_page");

<* Maps to ViewStack::get_pages *>
extern fn gtk::SelectionModel* ViewStack.get_pages(&self, ) @extern("adw_view_stack_get_pages");

<* Maps to ViewStack::get_vhomogeneous *>
extern fn bool ViewStack.get_vhomogeneous(&self, ) @extern("adw_view_stack_get_vhomogeneous");

<* Maps to ViewStack::get_visible_child *>
extern fn gtk::Widget* ViewStack.get_visible_child(&self, ) @extern("adw_view_stack_get_visible_child");

<* Maps to ViewStack::get_visible_child_name *>
extern fn ZString ViewStack.get_visible_child_name(&self, ) @extern("adw_view_stack_get_visible_child_name");

<* Maps to ViewStack::remove *>
extern fn void ViewStack.remove(&self, gtk::Widget* child) @extern("adw_view_stack_remove");

<* Maps to ViewStack::set_hhomogeneous *>
extern fn void ViewStack.set_hhomogeneous(&self, bool hhomogeneous) @extern("adw_view_stack_set_hhomogeneous");

<* Maps to ViewStack::set_vhomogeneous *>
extern fn void ViewStack.set_vhomogeneous(&self, bool vhomogeneous) @extern("adw_view_stack_set_vhomogeneous");

<* Maps to ViewStack::set_visible_child *>
extern fn void ViewStack.set_visible_child(&self, gtk::Widget* child) @extern("adw_view_stack_set_visible_child");

<* Maps to ViewStack::set_visible_child_name *>
extern fn void ViewStack.set_visible_child_name(&self, ZString name) @extern("adw_view_stack_set_visible_child_name");


// Class Functions



<* Maps to AdwViewStackPage *>
typedef ViewStackPage = void*;

// Class to parent cast.
fn gobject::Object* ViewStackPage.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to ViewStackPage::get_badge_number *>
extern fn uint ViewStackPage.get_badge_number(&self, ) @extern("adw_view_stack_page_get_badge_number");

<* Maps to ViewStackPage::get_child *>
extern fn gtk::Widget* ViewStackPage.get_child(&self, ) @extern("adw_view_stack_page_get_child");

<* Maps to ViewStackPage::get_icon_name *>
extern fn ZString ViewStackPage.get_icon_name(&self, ) @extern("adw_view_stack_page_get_icon_name");

<* Maps to ViewStackPage::get_name *>
extern fn ZString ViewStackPage.get_name(&self, ) @extern("adw_view_stack_page_get_name");

<* Maps to ViewStackPage::get_needs_attention *>
extern fn bool ViewStackPage.get_needs_attention(&self, ) @extern("adw_view_stack_page_get_needs_attention");

<* Maps to ViewStackPage::get_title *>
extern fn ZString ViewStackPage.get_title(&self, ) @extern("adw_view_stack_page_get_title");

<* Maps to ViewStackPage::get_use_underline *>
extern fn bool ViewStackPage.get_use_underline(&self, ) @extern("adw_view_stack_page_get_use_underline");

<* Maps to ViewStackPage::get_visible *>
extern fn bool ViewStackPage.get_visible(&self, ) @extern("adw_view_stack_page_get_visible");

<* Maps to ViewStackPage::set_badge_number *>
extern fn void ViewStackPage.set_badge_number(&self, uint badge_number) @extern("adw_view_stack_page_set_badge_number");

<* Maps to ViewStackPage::set_icon_name *>
extern fn void ViewStackPage.set_icon_name(&self, ZString icon_name) @extern("adw_view_stack_page_set_icon_name");

<* Maps to ViewStackPage::set_name *>
extern fn void ViewStackPage.set_name(&self, ZString name) @extern("adw_view_stack_page_set_name");

<* Maps to ViewStackPage::set_needs_attention *>
extern fn void ViewStackPage.set_needs_attention(&self, bool needs_attention) @extern("adw_view_stack_page_set_needs_attention");

<* Maps to ViewStackPage::set_title *>
extern fn void ViewStackPage.set_title(&self, ZString title) @extern("adw_view_stack_page_set_title");

<* Maps to ViewStackPage::set_use_underline *>
extern fn void ViewStackPage.set_use_underline(&self, bool use_underline) @extern("adw_view_stack_page_set_use_underline");

<* Maps to ViewStackPage::set_visible *>
extern fn void ViewStackPage.set_visible(&self, bool visible) @extern("adw_view_stack_page_set_visible");


// Class Functions



<* Maps to AdwViewStackPages *>
typedef ViewStackPages = void*;

// Class to parent cast.
fn gobject::Object* ViewStackPages.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to ViewStackPages::get_selected_page *>
extern fn ViewStackPage* ViewStackPages.get_selected_page(&self, ) @extern("adw_view_stack_pages_get_selected_page");

<* Maps to ViewStackPages::set_selected_page *>
extern fn void ViewStackPages.set_selected_page(&self, ViewStackPage* page) @extern("adw_view_stack_pages_set_selected_page");


// Class Functions



<* Maps to AdwViewSwitcher *>
typedef ViewSwitcher = void*;

// Class to parent cast.
fn gtk::Widget* ViewSwitcher.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of ViewSwitcher *>
extern fn gtk::Widget* view_switcher_new() @extern("adw_view_switcher_new");



// Class Methods

<* Maps to ViewSwitcher::get_policy *>
extern fn ViewSwitcherPolicy ViewSwitcher.get_policy(&self, ) @extern("adw_view_switcher_get_policy");

<* Maps to ViewSwitcher::get_stack *>
extern fn ViewStack* ViewSwitcher.get_stack(&self, ) @extern("adw_view_switcher_get_stack");

<* Maps to ViewSwitcher::set_policy *>
extern fn void ViewSwitcher.set_policy(&self, ViewSwitcherPolicy policy) @extern("adw_view_switcher_set_policy");

<* Maps to ViewSwitcher::set_stack *>
extern fn void ViewSwitcher.set_stack(&self, ViewStack* stack) @extern("adw_view_switcher_set_stack");


// Class Functions



<* Maps to AdwViewSwitcherBar *>
typedef ViewSwitcherBar = void*;

// Class to parent cast.
fn gtk::Widget* ViewSwitcherBar.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of ViewSwitcherBar *>
extern fn gtk::Widget* view_switcher_bar_new() @extern("adw_view_switcher_bar_new");



// Class Methods

<* Maps to ViewSwitcherBar::get_reveal *>
extern fn bool ViewSwitcherBar.get_reveal(&self, ) @extern("adw_view_switcher_bar_get_reveal");

<* Maps to ViewSwitcherBar::get_stack *>
extern fn ViewStack* ViewSwitcherBar.get_stack(&self, ) @extern("adw_view_switcher_bar_get_stack");

<* Maps to ViewSwitcherBar::set_reveal *>
extern fn void ViewSwitcherBar.set_reveal(&self, bool reveal) @extern("adw_view_switcher_bar_set_reveal");

<* Maps to ViewSwitcherBar::set_stack *>
extern fn void ViewSwitcherBar.set_stack(&self, ViewStack* stack) @extern("adw_view_switcher_bar_set_stack");


// Class Functions



<* Maps to AdwViewSwitcherTitle *>
typedef ViewSwitcherTitle = void*;

// Class to parent cast.
fn gtk::Widget* ViewSwitcherTitle.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of ViewSwitcherTitle *>
extern fn gtk::Widget* view_switcher_title_new() @extern("adw_view_switcher_title_new");



// Class Methods

<* Maps to ViewSwitcherTitle::get_stack *>
extern fn ViewStack* ViewSwitcherTitle.get_stack(&self, ) @extern("adw_view_switcher_title_get_stack");

<* Maps to ViewSwitcherTitle::get_subtitle *>
extern fn ZString ViewSwitcherTitle.get_subtitle(&self, ) @extern("adw_view_switcher_title_get_subtitle");

<* Maps to ViewSwitcherTitle::get_title *>
extern fn ZString ViewSwitcherTitle.get_title(&self, ) @extern("adw_view_switcher_title_get_title");

<* Maps to ViewSwitcherTitle::get_title_visible *>
extern fn bool ViewSwitcherTitle.get_title_visible(&self, ) @extern("adw_view_switcher_title_get_title_visible");

<* Maps to ViewSwitcherTitle::get_view_switcher_enabled *>
extern fn bool ViewSwitcherTitle.get_view_switcher_enabled(&self, ) @extern("adw_view_switcher_title_get_view_switcher_enabled");

<* Maps to ViewSwitcherTitle::set_stack *>
extern fn void ViewSwitcherTitle.set_stack(&self, ViewStack* stack) @extern("adw_view_switcher_title_set_stack");

<* Maps to ViewSwitcherTitle::set_subtitle *>
extern fn void ViewSwitcherTitle.set_subtitle(&self, ZString subtitle) @extern("adw_view_switcher_title_set_subtitle");

<* Maps to ViewSwitcherTitle::set_title *>
extern fn void ViewSwitcherTitle.set_title(&self, ZString title) @extern("adw_view_switcher_title_set_title");

<* Maps to ViewSwitcherTitle::set_view_switcher_enabled *>
extern fn void ViewSwitcherTitle.set_view_switcher_enabled(&self, bool enabled) @extern("adw_view_switcher_title_set_view_switcher_enabled");


// Class Functions



<* Maps to AdwWindow *>
typedef Window = void*;

// Class to parent cast.
fn gtk::Window* Window.as_gtk_Window(&self) => (gtk::Window*)(self);

// Class Constructors

<* Maps to new of Window *>
extern fn gtk::Widget* window_new() @extern("adw_window_new");



// Class Methods

<* Maps to Window::add_breakpoint *>
extern fn void Window.add_breakpoint(&self, Breakpoint* breakpoint) @extern("adw_window_add_breakpoint");

<* Maps to Window::get_content *>
extern fn gtk::Widget* Window.get_content(&self, ) @extern("adw_window_get_content");

<* Maps to Window::get_current_breakpoint *>
extern fn Breakpoint* Window.get_current_breakpoint(&self, ) @extern("adw_window_get_current_breakpoint");

<* Maps to Window::get_dialogs *>
extern fn gio::ListModel* Window.get_dialogs(&self, ) @extern("adw_window_get_dialogs");

<* Maps to Window::get_visible_dialog *>
extern fn Dialog* Window.get_visible_dialog(&self, ) @extern("adw_window_get_visible_dialog");

<* Maps to Window::set_content *>
extern fn void Window.set_content(&self, gtk::Widget* content) @extern("adw_window_set_content");


// Class Functions



<* Maps to AdwWindowTitle *>
typedef WindowTitle = void*;

// Class to parent cast.
fn gtk::Widget* WindowTitle.as_gtk_Widget(&self) => (gtk::Widget*)(self);

// Class Constructors

<* Maps to new of WindowTitle *>
extern fn gtk::Widget* window_title_new(ZString title, ZString subtitle) @extern("adw_window_title_new");



// Class Methods

<* Maps to WindowTitle::get_subtitle *>
extern fn ZString WindowTitle.get_subtitle(&self, ) @extern("adw_window_title_get_subtitle");

<* Maps to WindowTitle::get_title *>
extern fn ZString WindowTitle.get_title(&self, ) @extern("adw_window_title_get_title");

<* Maps to WindowTitle::set_subtitle *>
extern fn void WindowTitle.set_subtitle(&self, ZString subtitle) @extern("adw_window_title_set_subtitle");

<* Maps to WindowTitle::set_title *>
extern fn void WindowTitle.set_title(&self, ZString title) @extern("adw_window_title_set_title");


// Class Functions





<* Maps to AdwSwipeable *>
interface Swipeable {

  fn double get_cancel_progress();

  fn double get_distance();

  fn double get_progress();

  fn double get_snap_points(int* n_snap_points);

  fn void get_swipe_area(NavigationDirection navigation_direction, bool is_drag, gdk::Rectangle* rect);

}


<* Maps to accent_color_to_rgba *>
extern fn void accent_color_to_rgba(AccentColor self, gdk::Rgba* rgba) @extern("adw_accent_color_to_rgba");

<* Maps to accent_color_to_standalone_rgba *>
extern fn void accent_color_to_standalone_rgba(AccentColor self, bool dark, gdk::Rgba* rgba) @extern("adw_accent_color_to_standalone_rgba");

<* Maps to breakpoint_condition_parse *>
extern fn BreakpointCondition* breakpoint_condition_parse(ZString str) @extern("adw_breakpoint_condition_parse");

<* Maps to easing_ease *>
extern fn double easing_ease(Easing self, double value) @extern("adw_easing_ease");

<* Maps to get_enable_animations *>
extern fn bool get_enable_animations(gtk::Widget* widget) @extern("adw_get_enable_animations");

<* Maps to get_major_version *>
extern fn uint get_major_version() @extern("adw_get_major_version");

<* Maps to get_micro_version *>
extern fn uint get_micro_version() @extern("adw_get_micro_version");

<* Maps to get_minor_version *>
extern fn uint get_minor_version() @extern("adw_get_minor_version");

<* Maps to init *>
extern fn void init() @extern("adw_init");

<* Maps to is_initialized *>
extern fn bool is_initialized() @extern("adw_is_initialized");

<* Maps to length_unit_from_px *>
extern fn double length_unit_from_px(LengthUnit unit, double value, gtk::Settings* settings) @extern("adw_length_unit_from_px");

<* Maps to length_unit_to_px *>
extern fn double length_unit_to_px(LengthUnit unit, double value, gtk::Settings* settings) @extern("adw_length_unit_to_px");

<* Maps to lerp *>
extern fn double lerp(double a, double b, double t) @extern("adw_lerp");

<* Maps to rgba_to_standalone *>
extern fn void rgba_to_standalone(gdk::Rgba* rgba, bool dark, gdk::Rgba* standalone_rgba) @extern("adw_rgba_to_standalone");

<* Maps to show_about_dialog *>
extern fn void show_about_dialog(gtk::Widget* parent, ZString first_property_name, any rest) @extern("adw_show_about_dialog");

<* Maps to show_about_dialog_from_appdata *>
extern fn void show_about_dialog_from_appdata(gtk::Widget* parent, ZString resource_path, ZString release_notes_version, ZString first_property_name, any rest) @extern("adw_show_about_dialog_from_appdata");

<* Maps to show_about_window *>
extern fn void show_about_window(gtk::Window* parent, ZString first_property_name, any rest) @extern("adw_show_about_window");

<* Maps to show_about_window_from_appdata *>
extern fn void show_about_window_from_appdata(gtk::Window* parent, ZString resource_path, ZString release_notes_version, ZString first_property_name, any rest) @extern("adw_show_about_window_from_appdata");

///END MODULE adw
