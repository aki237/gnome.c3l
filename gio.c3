
///START MODULE gio
module gio;

import glib;

import gmodule;

import gobject;


distinct AppInfoCreateFlags = int;
const AppInfoCreateFlags APP_INFO_CREATE_FLAGS_NEEDS_TERMINAL = 1;
const AppInfoCreateFlags APP_INFO_CREATE_FLAGS_NONE = 0;
const AppInfoCreateFlags APP_INFO_CREATE_FLAGS_SUPPORTS_STARTUP_NOTIFICATION = 4;
const AppInfoCreateFlags APP_INFO_CREATE_FLAGS_SUPPORTS_URIS = 2;

distinct ApplicationFlags = int;
const ApplicationFlags APPLICATION_FLAGS_ALLOW_REPLACEMENT = 128;
const ApplicationFlags APPLICATION_FLAGS_CAN_OVERRIDE_APP_ID = 64;
const ApplicationFlags APPLICATION_FLAGS_DEFAULT_FLAGS = 0;
const ApplicationFlags APPLICATION_FLAGS_FLAGS_NONE = 0;
const ApplicationFlags APPLICATION_FLAGS_HANDLES_COMMAND_LINE = 8;
const ApplicationFlags APPLICATION_FLAGS_HANDLES_OPEN = 4;
const ApplicationFlags APPLICATION_FLAGS_IS_LAUNCHER = 2;
const ApplicationFlags APPLICATION_FLAGS_IS_SERVICE = 1;
const ApplicationFlags APPLICATION_FLAGS_NON_UNIQUE = 32;
const ApplicationFlags APPLICATION_FLAGS_REPLACE = 256;
const ApplicationFlags APPLICATION_FLAGS_SEND_ENVIRONMENT = 16;

distinct AskPasswordFlags = int;
const AskPasswordFlags ASK_PASSWORD_FLAGS_ANONYMOUS_SUPPORTED = 16;
const AskPasswordFlags ASK_PASSWORD_FLAGS_NEED_DOMAIN = 4;
const AskPasswordFlags ASK_PASSWORD_FLAGS_NEED_PASSWORD = 1;
const AskPasswordFlags ASK_PASSWORD_FLAGS_NEED_USERNAME = 2;
const AskPasswordFlags ASK_PASSWORD_FLAGS_SAVING_SUPPORTED = 8;
const AskPasswordFlags ASK_PASSWORD_FLAGS_TCRYPT = 32;

distinct BusNameOwnerFlags = int;
const BusNameOwnerFlags BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT = 1;
const BusNameOwnerFlags BUS_NAME_OWNER_FLAGS_DO_NOT_QUEUE = 4;
const BusNameOwnerFlags BUS_NAME_OWNER_FLAGS_NONE = 0;
const BusNameOwnerFlags BUS_NAME_OWNER_FLAGS_REPLACE = 2;

distinct BusNameWatcherFlags = int;
const BusNameWatcherFlags BUS_NAME_WATCHER_FLAGS_AUTO_START = 1;
const BusNameWatcherFlags BUS_NAME_WATCHER_FLAGS_NONE = 0;

distinct ConverterFlags = int;
const ConverterFlags CONVERTER_FLAGS_FLUSH = 2;
const ConverterFlags CONVERTER_FLAGS_INPUT_AT_END = 1;
const ConverterFlags CONVERTER_FLAGS_NONE = 0;

distinct DBusCallFlags = int;
const DBusCallFlags D_BUS_CALL_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION = 2;
const DBusCallFlags D_BUS_CALL_FLAGS_NONE = 0;
const DBusCallFlags D_BUS_CALL_FLAGS_NO_AUTO_START = 1;

distinct DBusCapabilityFlags = int;
const DBusCapabilityFlags D_BUS_CAPABILITY_FLAGS_NONE = 0;
const DBusCapabilityFlags D_BUS_CAPABILITY_FLAGS_UNIX_FD_PASSING = 1;

distinct DBusConnectionFlags = int;
const DBusConnectionFlags D_BUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = 4;
const DBusConnectionFlags D_BUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT = 1;
const DBusConnectionFlags D_BUS_CONNECTION_FLAGS_AUTHENTICATION_REQUIRE_SAME_USER = 32;
const DBusConnectionFlags D_BUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER = 2;
const DBusConnectionFlags D_BUS_CONNECTION_FLAGS_CROSS_NAMESPACE = 64;
const DBusConnectionFlags D_BUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING = 16;
const DBusConnectionFlags D_BUS_CONNECTION_FLAGS_MESSAGE_BUS_CONNECTION = 8;
const DBusConnectionFlags D_BUS_CONNECTION_FLAGS_NONE = 0;

distinct DBusInterfaceSkeletonFlags = int;
const DBusInterfaceSkeletonFlags D_BUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1;
const DBusInterfaceSkeletonFlags D_BUS_INTERFACE_SKELETON_FLAGS_NONE = 0;

distinct DBusMessageFlags = int;
const DBusMessageFlags D_BUS_MESSAGE_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION = 4;
const DBusMessageFlags D_BUS_MESSAGE_FLAGS_NONE = 0;
const DBusMessageFlags D_BUS_MESSAGE_FLAGS_NO_AUTO_START = 2;
const DBusMessageFlags D_BUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED = 1;

distinct DBusObjectManagerClientFlags = int;
const DBusObjectManagerClientFlags D_BUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START = 1;
const DBusObjectManagerClientFlags D_BUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE = 0;

distinct DBusPropertyInfoFlags = int;
const DBusPropertyInfoFlags D_BUS_PROPERTY_INFO_FLAGS_NONE = 0;
const DBusPropertyInfoFlags D_BUS_PROPERTY_INFO_FLAGS_READABLE = 1;
const DBusPropertyInfoFlags D_BUS_PROPERTY_INFO_FLAGS_WRITABLE = 2;

distinct DBusProxyFlags = int;
const DBusProxyFlags D_BUS_PROXY_FLAGS_DO_NOT_AUTO_START = 4;
const DBusProxyFlags D_BUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION = 16;
const DBusProxyFlags D_BUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS = 2;
const DBusProxyFlags D_BUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES = 1;
const DBusProxyFlags D_BUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES = 8;
const DBusProxyFlags D_BUS_PROXY_FLAGS_NONE = 0;
const DBusProxyFlags D_BUS_PROXY_FLAGS_NO_MATCH_RULE = 32;

distinct DBusSendMessageFlags = int;
const DBusSendMessageFlags D_BUS_SEND_MESSAGE_FLAGS_NONE = 0;
const DBusSendMessageFlags D_BUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL = 1;

distinct DBusServerFlags = int;
const DBusServerFlags D_BUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = 2;
const DBusServerFlags D_BUS_SERVER_FLAGS_AUTHENTICATION_REQUIRE_SAME_USER = 4;
const DBusServerFlags D_BUS_SERVER_FLAGS_NONE = 0;
const DBusServerFlags D_BUS_SERVER_FLAGS_RUN_IN_THREAD = 1;

distinct DBusSignalFlags = int;
const DBusSignalFlags D_BUS_SIGNAL_FLAGS_MATCH_ARG0_NAMESPACE = 2;
const DBusSignalFlags D_BUS_SIGNAL_FLAGS_MATCH_ARG0_PATH = 4;
const DBusSignalFlags D_BUS_SIGNAL_FLAGS_NONE = 0;
const DBusSignalFlags D_BUS_SIGNAL_FLAGS_NO_MATCH_RULE = 1;

distinct DBusSubtreeFlags = int;
const DBusSubtreeFlags D_BUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES = 1;
const DBusSubtreeFlags D_BUS_SUBTREE_FLAGS_NONE = 0;

distinct DriveStartFlags = int;
const DriveStartFlags DRIVE_START_FLAGS_NONE = 0;

distinct FileAttributeInfoFlags = int;
const FileAttributeInfoFlags FILE_ATTRIBUTE_INFO_FLAGS_COPY_WHEN_MOVED = 2;
const FileAttributeInfoFlags FILE_ATTRIBUTE_INFO_FLAGS_COPY_WITH_FILE = 1;
const FileAttributeInfoFlags FILE_ATTRIBUTE_INFO_FLAGS_NONE = 0;

distinct FileCopyFlags = int;
const FileCopyFlags FILE_COPY_FLAGS_ALL_METADATA = 8;
const FileCopyFlags FILE_COPY_FLAGS_BACKUP = 2;
const FileCopyFlags FILE_COPY_FLAGS_NOFOLLOW_SYMLINKS = 4;
const FileCopyFlags FILE_COPY_FLAGS_NONE = 0;
const FileCopyFlags FILE_COPY_FLAGS_NO_FALLBACK_FOR_MOVE = 16;
const FileCopyFlags FILE_COPY_FLAGS_OVERWRITE = 1;
const FileCopyFlags FILE_COPY_FLAGS_TARGET_DEFAULT_MODIFIED_TIME = 64;
const FileCopyFlags FILE_COPY_FLAGS_TARGET_DEFAULT_PERMS = 32;

distinct FileCreateFlags = int;
const FileCreateFlags FILE_CREATE_FLAGS_NONE = 0;
const FileCreateFlags FILE_CREATE_FLAGS_PRIVATE = 1;
const FileCreateFlags FILE_CREATE_FLAGS_REPLACE_DESTINATION = 2;

distinct FileMeasureFlags = int;
const FileMeasureFlags FILE_MEASURE_FLAGS_APPARENT_SIZE = 4;
const FileMeasureFlags FILE_MEASURE_FLAGS_NONE = 0;
const FileMeasureFlags FILE_MEASURE_FLAGS_NO_XDEV = 8;
const FileMeasureFlags FILE_MEASURE_FLAGS_REPORT_ANY_ERROR = 2;

distinct FileMonitorFlags = int;
const FileMonitorFlags FILE_MONITOR_FLAGS_NONE = 0;
const FileMonitorFlags FILE_MONITOR_FLAGS_SEND_MOVED = 2;
const FileMonitorFlags FILE_MONITOR_FLAGS_WATCH_HARD_LINKS = 4;
const FileMonitorFlags FILE_MONITOR_FLAGS_WATCH_MOUNTS = 1;
const FileMonitorFlags FILE_MONITOR_FLAGS_WATCH_MOVES = 8;

distinct FileQueryInfoFlags = int;
const FileQueryInfoFlags FILE_QUERY_INFO_FLAGS_NOFOLLOW_SYMLINKS = 1;
const FileQueryInfoFlags FILE_QUERY_INFO_FLAGS_NONE = 0;

distinct IOStreamSpliceFlags = int;
const IOStreamSpliceFlags IO_STREAM_SPLICE_FLAGS_CLOSE_STREAM1 = 1;
const IOStreamSpliceFlags IO_STREAM_SPLICE_FLAGS_CLOSE_STREAM2 = 2;
const IOStreamSpliceFlags IO_STREAM_SPLICE_FLAGS_NONE = 0;
const IOStreamSpliceFlags IO_STREAM_SPLICE_FLAGS_WAIT_FOR_BOTH = 4;

distinct MountMountFlags = int;
const MountMountFlags MOUNT_MOUNT_FLAGS_NONE = 0;

distinct MountUnmountFlags = int;
const MountUnmountFlags MOUNT_UNMOUNT_FLAGS_FORCE = 1;
const MountUnmountFlags MOUNT_UNMOUNT_FLAGS_NONE = 0;

distinct OutputStreamSpliceFlags = int;
const OutputStreamSpliceFlags OUTPUT_STREAM_SPLICE_FLAGS_CLOSE_SOURCE = 1;
const OutputStreamSpliceFlags OUTPUT_STREAM_SPLICE_FLAGS_CLOSE_TARGET = 2;
const OutputStreamSpliceFlags OUTPUT_STREAM_SPLICE_FLAGS_NONE = 0;

distinct ResolverNameLookupFlags = int;
const ResolverNameLookupFlags RESOLVER_NAME_LOOKUP_FLAGS_DEFAULT = 0;
const ResolverNameLookupFlags RESOLVER_NAME_LOOKUP_FLAGS_IPV4_ONLY = 1;
const ResolverNameLookupFlags RESOLVER_NAME_LOOKUP_FLAGS_IPV6_ONLY = 2;

distinct ResourceFlags = int;
const ResourceFlags RESOURCE_FLAGS_COMPRESSED = 1;
const ResourceFlags RESOURCE_FLAGS_NONE = 0;

distinct ResourceLookupFlags = int;
const ResourceLookupFlags RESOURCE_LOOKUP_FLAGS_NONE = 0;

distinct SettingsBindFlags = int;
const SettingsBindFlags SETTINGS_BIND_FLAGS_DEFAULT = 0;
const SettingsBindFlags SETTINGS_BIND_FLAGS_GET = 1;
const SettingsBindFlags SETTINGS_BIND_FLAGS_GET_NO_CHANGES = 8;
const SettingsBindFlags SETTINGS_BIND_FLAGS_INVERT_BOOLEAN = 16;
const SettingsBindFlags SETTINGS_BIND_FLAGS_NO_SENSITIVITY = 4;
const SettingsBindFlags SETTINGS_BIND_FLAGS_SET = 2;

distinct SocketMsgFlags = int;
const SocketMsgFlags SOCKET_MSG_FLAGS_DONTROUTE = 4;
const SocketMsgFlags SOCKET_MSG_FLAGS_NONE = 0;
const SocketMsgFlags SOCKET_MSG_FLAGS_OOB = 1;
const SocketMsgFlags SOCKET_MSG_FLAGS_PEEK = 2;

distinct SubprocessFlags = int;
const SubprocessFlags SUBPROCESS_FLAGS_INHERIT_FDS = 128;
const SubprocessFlags SUBPROCESS_FLAGS_NONE = 0;
const SubprocessFlags SUBPROCESS_FLAGS_SEARCH_PATH_FROM_ENVP = 256;
const SubprocessFlags SUBPROCESS_FLAGS_STDERR_MERGE = 64;
const SubprocessFlags SUBPROCESS_FLAGS_STDERR_PIPE = 16;
const SubprocessFlags SUBPROCESS_FLAGS_STDERR_SILENCE = 32;
const SubprocessFlags SUBPROCESS_FLAGS_STDIN_INHERIT = 2;
const SubprocessFlags SUBPROCESS_FLAGS_STDIN_PIPE = 1;
const SubprocessFlags SUBPROCESS_FLAGS_STDOUT_PIPE = 4;
const SubprocessFlags SUBPROCESS_FLAGS_STDOUT_SILENCE = 8;

distinct TestDBusFlags = int;
const TestDBusFlags TEST_D_BUS_FLAGS_NONE = 0;

distinct TlsCertificateFlags = int;
const TlsCertificateFlags TLS_CERTIFICATE_FLAGS_BAD_IDENTITY = 2;
const TlsCertificateFlags TLS_CERTIFICATE_FLAGS_EXPIRED = 8;
const TlsCertificateFlags TLS_CERTIFICATE_FLAGS_GENERIC_ERROR = 64;
const TlsCertificateFlags TLS_CERTIFICATE_FLAGS_INSECURE = 32;
const TlsCertificateFlags TLS_CERTIFICATE_FLAGS_NOT_ACTIVATED = 4;
const TlsCertificateFlags TLS_CERTIFICATE_FLAGS_NO_FLAGS = 0;
const TlsCertificateFlags TLS_CERTIFICATE_FLAGS_REVOKED = 16;
const TlsCertificateFlags TLS_CERTIFICATE_FLAGS_UNKNOWN_CA = 1;
const TlsCertificateFlags TLS_CERTIFICATE_FLAGS_VALIDATE_ALL = 127;

distinct TlsDatabaseVerifyFlags = int;
const TlsDatabaseVerifyFlags TLS_DATABASE_VERIFY_FLAGS_NONE = 0;

distinct TlsPasswordFlags = int;
const TlsPasswordFlags TLS_PASSWORD_FLAGS_FINAL_TRY = 8;
const TlsPasswordFlags TLS_PASSWORD_FLAGS_MANY_TRIES = 4;
const TlsPasswordFlags TLS_PASSWORD_FLAGS_NONE = 0;
const TlsPasswordFlags TLS_PASSWORD_FLAGS_PKCS11_CONTEXT_SPECIFIC = 64;
const TlsPasswordFlags TLS_PASSWORD_FLAGS_PKCS11_SECURITY_OFFICER = 32;
const TlsPasswordFlags TLS_PASSWORD_FLAGS_PKCS11_USER = 16;
const TlsPasswordFlags TLS_PASSWORD_FLAGS_RETRY = 2;

distinct BusType = int;
const BusType BUS_TYPE_NONE = 0;
const BusType BUS_TYPE_SESSION = 2;
const BusType BUS_TYPE_STARTER = -1;
const BusType BUS_TYPE_SYSTEM = 1;

distinct ConverterResult = int;
const ConverterResult CONVERTER_RESULT_CONVERTED = 1;
const ConverterResult CONVERTER_RESULT_ERROR = 0;
const ConverterResult CONVERTER_RESULT_FINISHED = 2;
const ConverterResult CONVERTER_RESULT_FLUSHED = 3;

distinct CredentialsType = int;
const CredentialsType CREDENTIALS_TYPE_APPLE_XUCRED = 6;
const CredentialsType CREDENTIALS_TYPE_FREEBSD_CMSGCRED = 2;
const CredentialsType CREDENTIALS_TYPE_INVALID = 0;
const CredentialsType CREDENTIALS_TYPE_LINUX_UCRED = 1;
const CredentialsType CREDENTIALS_TYPE_NETBSD_UNPCBID = 5;
const CredentialsType CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED = 3;
const CredentialsType CREDENTIALS_TYPE_SOLARIS_UCRED = 4;
const CredentialsType CREDENTIALS_TYPE_WIN32_PID = 7;

distinct DBusError = int;
const DBusError D_BUS_ERROR_ACCESS_DENIED = 9;
const DBusError D_BUS_ERROR_ADDRESS_IN_USE = 14;
const DBusError D_BUS_ERROR_ADT_AUDIT_DATA_UNKNOWN = 39;
const DBusError D_BUS_ERROR_AUTH_FAILED = 10;
const DBusError D_BUS_ERROR_BAD_ADDRESS = 6;
const DBusError D_BUS_ERROR_DISCONNECTED = 15;
const DBusError D_BUS_ERROR_FAILED = 0;
const DBusError D_BUS_ERROR_FILE_EXISTS = 18;
const DBusError D_BUS_ERROR_FILE_NOT_FOUND = 17;
const DBusError D_BUS_ERROR_INVALID_ARGS = 16;
const DBusError D_BUS_ERROR_INVALID_FILE_CONTENT = 37;
const DBusError D_BUS_ERROR_INVALID_SIGNATURE = 36;
const DBusError D_BUS_ERROR_IO_ERROR = 5;
const DBusError D_BUS_ERROR_LIMITS_EXCEEDED = 8;
const DBusError D_BUS_ERROR_MATCH_RULE_INVALID = 22;
const DBusError D_BUS_ERROR_MATCH_RULE_NOT_FOUND = 21;
const DBusError D_BUS_ERROR_NAME_HAS_NO_OWNER = 3;
const DBusError D_BUS_ERROR_NOT_SUPPORTED = 7;
const DBusError D_BUS_ERROR_NO_MEMORY = 1;
const DBusError D_BUS_ERROR_NO_NETWORK = 13;
const DBusError D_BUS_ERROR_NO_REPLY = 4;
const DBusError D_BUS_ERROR_NO_SERVER = 11;
const DBusError D_BUS_ERROR_OBJECT_PATH_IN_USE = 40;
const DBusError D_BUS_ERROR_PROPERTY_READ_ONLY = 44;
const DBusError D_BUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN = 38;
const DBusError D_BUS_ERROR_SERVICE_UNKNOWN = 2;
const DBusError D_BUS_ERROR_SPAWN_CHILD_EXITED = 25;
const DBusError D_BUS_ERROR_SPAWN_CHILD_SIGNALED = 26;
const DBusError D_BUS_ERROR_SPAWN_CONFIG_INVALID = 29;
const DBusError D_BUS_ERROR_SPAWN_EXEC_FAILED = 23;
const DBusError D_BUS_ERROR_SPAWN_FAILED = 27;
const DBusError D_BUS_ERROR_SPAWN_FILE_INVALID = 33;
const DBusError D_BUS_ERROR_SPAWN_FORK_FAILED = 24;
const DBusError D_BUS_ERROR_SPAWN_NO_MEMORY = 34;
const DBusError D_BUS_ERROR_SPAWN_PERMISSIONS_INVALID = 32;
const DBusError D_BUS_ERROR_SPAWN_SERVICE_INVALID = 30;
const DBusError D_BUS_ERROR_SPAWN_SERVICE_NOT_FOUND = 31;
const DBusError D_BUS_ERROR_SPAWN_SETUP_FAILED = 28;
const DBusError D_BUS_ERROR_TIMED_OUT = 20;
const DBusError D_BUS_ERROR_TIMEOUT = 12;
const DBusError D_BUS_ERROR_UNIX_PROCESS_ID_UNKNOWN = 35;
const DBusError D_BUS_ERROR_UNKNOWN_INTERFACE = 42;
const DBusError D_BUS_ERROR_UNKNOWN_METHOD = 19;
const DBusError D_BUS_ERROR_UNKNOWN_OBJECT = 41;
const DBusError D_BUS_ERROR_UNKNOWN_PROPERTY = 43;

distinct DBusMessageByteOrder = int;
const DBusMessageByteOrder D_BUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN = 66;
const DBusMessageByteOrder D_BUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN = 108;

distinct DBusMessageHeaderField = int;
const DBusMessageHeaderField D_BUS_MESSAGE_HEADER_FIELD_DESTINATION = 6;
const DBusMessageHeaderField D_BUS_MESSAGE_HEADER_FIELD_ERROR_NAME = 4;
const DBusMessageHeaderField D_BUS_MESSAGE_HEADER_FIELD_INTERFACE = 2;
const DBusMessageHeaderField D_BUS_MESSAGE_HEADER_FIELD_INVALID = 0;
const DBusMessageHeaderField D_BUS_MESSAGE_HEADER_FIELD_MEMBER = 3;
const DBusMessageHeaderField D_BUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS = 9;
const DBusMessageHeaderField D_BUS_MESSAGE_HEADER_FIELD_PATH = 1;
const DBusMessageHeaderField D_BUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL = 5;
const DBusMessageHeaderField D_BUS_MESSAGE_HEADER_FIELD_SENDER = 7;
const DBusMessageHeaderField D_BUS_MESSAGE_HEADER_FIELD_SIGNATURE = 8;

distinct DBusMessageType = int;
const DBusMessageType D_BUS_MESSAGE_TYPE_ERROR = 3;
const DBusMessageType D_BUS_MESSAGE_TYPE_INVALID = 0;
const DBusMessageType D_BUS_MESSAGE_TYPE_METHOD_CALL = 1;
const DBusMessageType D_BUS_MESSAGE_TYPE_METHOD_RETURN = 2;
const DBusMessageType D_BUS_MESSAGE_TYPE_SIGNAL = 4;

distinct DataStreamByteOrder = int;
const DataStreamByteOrder DATA_STREAM_BYTE_ORDER_BIG_ENDIAN = 0;
const DataStreamByteOrder DATA_STREAM_BYTE_ORDER_HOST_ENDIAN = 2;
const DataStreamByteOrder DATA_STREAM_BYTE_ORDER_LITTLE_ENDIAN = 1;

distinct DataStreamNewlineType = int;
const DataStreamNewlineType DATA_STREAM_NEWLINE_TYPE_ANY = 3;
const DataStreamNewlineType DATA_STREAM_NEWLINE_TYPE_CR = 1;
const DataStreamNewlineType DATA_STREAM_NEWLINE_TYPE_CR_LF = 2;
const DataStreamNewlineType DATA_STREAM_NEWLINE_TYPE_LF = 0;

distinct DriveStartStopType = int;
const DriveStartStopType DRIVE_START_STOP_TYPE_MULTIDISK = 3;
const DriveStartStopType DRIVE_START_STOP_TYPE_NETWORK = 2;
const DriveStartStopType DRIVE_START_STOP_TYPE_PASSWORD = 4;
const DriveStartStopType DRIVE_START_STOP_TYPE_SHUTDOWN = 1;
const DriveStartStopType DRIVE_START_STOP_TYPE_UNKNOWN = 0;

distinct EmblemOrigin = int;
const EmblemOrigin EMBLEM_ORIGIN_DEVICE = 1;
const EmblemOrigin EMBLEM_ORIGIN_LIVEMETADATA = 2;
const EmblemOrigin EMBLEM_ORIGIN_TAG = 3;
const EmblemOrigin EMBLEM_ORIGIN_UNKNOWN = 0;

distinct FileAttributeStatus = int;
const FileAttributeStatus FILE_ATTRIBUTE_STATUS_ERROR_SETTING = 2;
const FileAttributeStatus FILE_ATTRIBUTE_STATUS_SET = 1;
const FileAttributeStatus FILE_ATTRIBUTE_STATUS_UNSET = 0;

distinct FileAttributeType = int;
const FileAttributeType FILE_ATTRIBUTE_TYPE_BOOLEAN = 3;
const FileAttributeType FILE_ATTRIBUTE_TYPE_BYTE_STRING = 2;
const FileAttributeType FILE_ATTRIBUTE_TYPE_INT32 = 5;
const FileAttributeType FILE_ATTRIBUTE_TYPE_INT64 = 7;
const FileAttributeType FILE_ATTRIBUTE_TYPE_INVALID = 0;
const FileAttributeType FILE_ATTRIBUTE_TYPE_OBJECT = 8;
const FileAttributeType FILE_ATTRIBUTE_TYPE_STRING = 1;
const FileAttributeType FILE_ATTRIBUTE_TYPE_STRINGV = 9;
const FileAttributeType FILE_ATTRIBUTE_TYPE_UINT32 = 4;
const FileAttributeType FILE_ATTRIBUTE_TYPE_UINT64 = 6;

distinct FileMonitorEvent = int;
const FileMonitorEvent FILE_MONITOR_EVENT_ATTRIBUTE_CHANGED = 4;
const FileMonitorEvent FILE_MONITOR_EVENT_CHANGED = 0;
const FileMonitorEvent FILE_MONITOR_EVENT_CHANGES_DONE_HINT = 1;
const FileMonitorEvent FILE_MONITOR_EVENT_CREATED = 3;
const FileMonitorEvent FILE_MONITOR_EVENT_DELETED = 2;
const FileMonitorEvent FILE_MONITOR_EVENT_MOVED = 7;
const FileMonitorEvent FILE_MONITOR_EVENT_MOVED_IN = 9;
const FileMonitorEvent FILE_MONITOR_EVENT_MOVED_OUT = 10;
const FileMonitorEvent FILE_MONITOR_EVENT_PRE_UNMOUNT = 5;
const FileMonitorEvent FILE_MONITOR_EVENT_RENAMED = 8;
const FileMonitorEvent FILE_MONITOR_EVENT_UNMOUNTED = 6;

distinct FileType = int;
const FileType FILE_TYPE_DIRECTORY = 2;
const FileType FILE_TYPE_MOUNTABLE = 6;
const FileType FILE_TYPE_REGULAR = 1;
const FileType FILE_TYPE_SHORTCUT = 5;
const FileType FILE_TYPE_SPECIAL = 4;
const FileType FILE_TYPE_SYMBOLIC_LINK = 3;
const FileType FILE_TYPE_UNKNOWN = 0;

distinct FilesystemPreviewType = int;
const FilesystemPreviewType FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS = 0;
const FilesystemPreviewType FILESYSTEM_PREVIEW_TYPE_IF_LOCAL = 1;
const FilesystemPreviewType FILESYSTEM_PREVIEW_TYPE_NEVER = 2;

distinct IOErrorEnum = int;
const IOErrorEnum IO_ERROR_ENUM_ADDRESS_IN_USE = 33;
const IOErrorEnum IO_ERROR_ENUM_ALREADY_MOUNTED = 17;
const IOErrorEnum IO_ERROR_ENUM_BROKEN_PIPE = 44;
const IOErrorEnum IO_ERROR_ENUM_BUSY = 26;
const IOErrorEnum IO_ERROR_ENUM_CANCELLED = 19;
const IOErrorEnum IO_ERROR_ENUM_CANT_CREATE_BACKUP = 22;
const IOErrorEnum IO_ERROR_ENUM_CLOSED = 18;
const IOErrorEnum IO_ERROR_ENUM_CONNECTION_CLOSED = 44;
const IOErrorEnum IO_ERROR_ENUM_CONNECTION_REFUSED = 39;
const IOErrorEnum IO_ERROR_ENUM_DBUS_ERROR = 36;
const IOErrorEnum IO_ERROR_ENUM_DESTINATION_UNSET = 48;
const IOErrorEnum IO_ERROR_ENUM_EXISTS = 2;
const IOErrorEnum IO_ERROR_ENUM_FAILED = 0;
const IOErrorEnum IO_ERROR_ENUM_FAILED_HANDLED = 30;
const IOErrorEnum IO_ERROR_ENUM_FILENAME_TOO_LONG = 9;
const IOErrorEnum IO_ERROR_ENUM_HOST_NOT_FOUND = 28;
const IOErrorEnum IO_ERROR_ENUM_HOST_UNREACHABLE = 37;
const IOErrorEnum IO_ERROR_ENUM_INVALID_ARGUMENT = 13;
const IOErrorEnum IO_ERROR_ENUM_INVALID_DATA = 35;
const IOErrorEnum IO_ERROR_ENUM_INVALID_FILENAME = 10;
const IOErrorEnum IO_ERROR_ENUM_IS_DIRECTORY = 3;
const IOErrorEnum IO_ERROR_ENUM_MESSAGE_TOO_LARGE = 46;
const IOErrorEnum IO_ERROR_ENUM_NETWORK_UNREACHABLE = 38;
const IOErrorEnum IO_ERROR_ENUM_NOT_CONNECTED = 45;
const IOErrorEnum IO_ERROR_ENUM_NOT_DIRECTORY = 4;
const IOErrorEnum IO_ERROR_ENUM_NOT_EMPTY = 5;
const IOErrorEnum IO_ERROR_ENUM_NOT_FOUND = 1;
const IOErrorEnum IO_ERROR_ENUM_NOT_INITIALIZED = 32;
const IOErrorEnum IO_ERROR_ENUM_NOT_MOUNTABLE_FILE = 8;
const IOErrorEnum IO_ERROR_ENUM_NOT_MOUNTED = 16;
const IOErrorEnum IO_ERROR_ENUM_NOT_REGULAR_FILE = 6;
const IOErrorEnum IO_ERROR_ENUM_NOT_SUPPORTED = 15;
const IOErrorEnum IO_ERROR_ENUM_NOT_SYMBOLIC_LINK = 7;
const IOErrorEnum IO_ERROR_ENUM_NO_SPACE = 12;
const IOErrorEnum IO_ERROR_ENUM_NO_SUCH_DEVICE = 47;
const IOErrorEnum IO_ERROR_ENUM_PARTIAL_INPUT = 34;
const IOErrorEnum IO_ERROR_ENUM_PENDING = 20;
const IOErrorEnum IO_ERROR_ENUM_PERMISSION_DENIED = 14;
const IOErrorEnum IO_ERROR_ENUM_PROXY_AUTH_FAILED = 41;
const IOErrorEnum IO_ERROR_ENUM_PROXY_FAILED = 40;
const IOErrorEnum IO_ERROR_ENUM_PROXY_NEED_AUTH = 42;
const IOErrorEnum IO_ERROR_ENUM_PROXY_NOT_ALLOWED = 43;
const IOErrorEnum IO_ERROR_ENUM_READ_ONLY = 21;
const IOErrorEnum IO_ERROR_ENUM_TIMED_OUT = 24;
const IOErrorEnum IO_ERROR_ENUM_TOO_MANY_LINKS = 11;
const IOErrorEnum IO_ERROR_ENUM_TOO_MANY_OPEN_FILES = 31;
const IOErrorEnum IO_ERROR_ENUM_WOULD_BLOCK = 27;
const IOErrorEnum IO_ERROR_ENUM_WOULD_MERGE = 29;
const IOErrorEnum IO_ERROR_ENUM_WOULD_RECURSE = 25;
const IOErrorEnum IO_ERROR_ENUM_WRONG_ETAG = 23;

distinct IOModuleScopeFlags = int;
const IOModuleScopeFlags IO_MODULE_SCOPE_FLAGS_BLOCK_DUPLICATES = 1;
const IOModuleScopeFlags IO_MODULE_SCOPE_FLAGS_NONE = 0;

distinct MemoryMonitorWarningLevel = int;
const MemoryMonitorWarningLevel MEMORY_MONITOR_WARNING_LEVEL_CRITICAL = 255;
const MemoryMonitorWarningLevel MEMORY_MONITOR_WARNING_LEVEL_LOW = 50;
const MemoryMonitorWarningLevel MEMORY_MONITOR_WARNING_LEVEL_MEDIUM = 100;

distinct MountOperationResult = int;
const MountOperationResult MOUNT_OPERATION_RESULT_ABORTED = 1;
const MountOperationResult MOUNT_OPERATION_RESULT_HANDLED = 0;
const MountOperationResult MOUNT_OPERATION_RESULT_UNHANDLED = 2;

distinct NetworkConnectivity = int;
const NetworkConnectivity NETWORK_CONNECTIVITY_FULL = 4;
const NetworkConnectivity NETWORK_CONNECTIVITY_LIMITED = 2;
const NetworkConnectivity NETWORK_CONNECTIVITY_LOCAL = 1;
const NetworkConnectivity NETWORK_CONNECTIVITY_PORTAL = 3;

distinct NotificationPriority = int;
const NotificationPriority NOTIFICATION_PRIORITY_HIGH = 2;
const NotificationPriority NOTIFICATION_PRIORITY_LOW = 1;
const NotificationPriority NOTIFICATION_PRIORITY_NORMAL = 0;
const NotificationPriority NOTIFICATION_PRIORITY_URGENT = 3;

distinct PasswordSave = int;
const PasswordSave PASSWORD_SAVE_FOR_SESSION = 1;
const PasswordSave PASSWORD_SAVE_NEVER = 0;
const PasswordSave PASSWORD_SAVE_PERMANENTLY = 2;

distinct PollableReturn = int;
const PollableReturn POLLABLE_RETURN_FAILED = 0;
const PollableReturn POLLABLE_RETURN_OK = 1;
const PollableReturn POLLABLE_RETURN_WOULD_BLOCK = -27;

distinct ResolverError = int;
const ResolverError RESOLVER_ERROR_INTERNAL = 2;
const ResolverError RESOLVER_ERROR_NOT_FOUND = 0;
const ResolverError RESOLVER_ERROR_TEMPORARY_FAILURE = 1;

distinct ResolverRecordType = int;
const ResolverRecordType RESOLVER_RECORD_TYPE_MX = 2;
const ResolverRecordType RESOLVER_RECORD_TYPE_NS = 5;
const ResolverRecordType RESOLVER_RECORD_TYPE_SOA = 4;
const ResolverRecordType RESOLVER_RECORD_TYPE_SRV = 1;
const ResolverRecordType RESOLVER_RECORD_TYPE_TXT = 3;

distinct ResourceError = int;
const ResourceError RESOURCE_ERROR_INTERNAL = 1;
const ResourceError RESOURCE_ERROR_NOT_FOUND = 0;

distinct SocketClientEvent = int;
const SocketClientEvent SOCKET_CLIENT_EVENT_COMPLETE = 8;
const SocketClientEvent SOCKET_CLIENT_EVENT_CONNECTED = 3;
const SocketClientEvent SOCKET_CLIENT_EVENT_CONNECTING = 2;
const SocketClientEvent SOCKET_CLIENT_EVENT_PROXY_NEGOTIATED = 5;
const SocketClientEvent SOCKET_CLIENT_EVENT_PROXY_NEGOTIATING = 4;
const SocketClientEvent SOCKET_CLIENT_EVENT_RESOLVED = 1;
const SocketClientEvent SOCKET_CLIENT_EVENT_RESOLVING = 0;
const SocketClientEvent SOCKET_CLIENT_EVENT_TLS_HANDSHAKED = 7;
const SocketClientEvent SOCKET_CLIENT_EVENT_TLS_HANDSHAKING = 6;

distinct SocketFamily = int;
const SocketFamily SOCKET_FAMILY_INVALID = 0;
const SocketFamily SOCKET_FAMILY_IPV4 = 2;
const SocketFamily SOCKET_FAMILY_IPV6 = 10;
const SocketFamily SOCKET_FAMILY_UNIX = 1;

distinct SocketListenerEvent = int;
const SocketListenerEvent SOCKET_LISTENER_EVENT_BINDING = 0;
const SocketListenerEvent SOCKET_LISTENER_EVENT_BOUND = 1;
const SocketListenerEvent SOCKET_LISTENER_EVENT_LISTENED = 3;
const SocketListenerEvent SOCKET_LISTENER_EVENT_LISTENING = 2;

distinct SocketProtocol = int;
const SocketProtocol SOCKET_PROTOCOL_DEFAULT = 0;
const SocketProtocol SOCKET_PROTOCOL_SCTP = 132;
const SocketProtocol SOCKET_PROTOCOL_TCP = 6;
const SocketProtocol SOCKET_PROTOCOL_UDP = 17;
const SocketProtocol SOCKET_PROTOCOL_UNKNOWN = -1;

distinct SocketType = int;
const SocketType SOCKET_TYPE_DATAGRAM = 2;
const SocketType SOCKET_TYPE_INVALID = 0;
const SocketType SOCKET_TYPE_SEQPACKET = 3;
const SocketType SOCKET_TYPE_STREAM = 1;

distinct TlsAuthenticationMode = int;
const TlsAuthenticationMode TLS_AUTHENTICATION_MODE_NONE = 0;
const TlsAuthenticationMode TLS_AUTHENTICATION_MODE_REQUESTED = 1;
const TlsAuthenticationMode TLS_AUTHENTICATION_MODE_REQUIRED = 2;

distinct TlsCertificateRequestFlags = int;
const TlsCertificateRequestFlags TLS_CERTIFICATE_REQUEST_FLAGS_NONE = 0;

distinct TlsChannelBindingError = int;
const TlsChannelBindingError TLS_CHANNEL_BINDING_ERROR_GENERAL_ERROR = 4;
const TlsChannelBindingError TLS_CHANNEL_BINDING_ERROR_INVALID_STATE = 1;
const TlsChannelBindingError TLS_CHANNEL_BINDING_ERROR_NOT_AVAILABLE = 2;
const TlsChannelBindingError TLS_CHANNEL_BINDING_ERROR_NOT_IMPLEMENTED = 0;
const TlsChannelBindingError TLS_CHANNEL_BINDING_ERROR_NOT_SUPPORTED = 3;

distinct TlsChannelBindingType = int;
const TlsChannelBindingType TLS_CHANNEL_BINDING_TYPE_EXPORTER = 2;
const TlsChannelBindingType TLS_CHANNEL_BINDING_TYPE_SERVER_END_POINT = 1;
const TlsChannelBindingType TLS_CHANNEL_BINDING_TYPE_UNIQUE = 0;

distinct TlsDatabaseLookupFlags = int;
const TlsDatabaseLookupFlags TLS_DATABASE_LOOKUP_FLAGS_KEYPAIR = 1;
const TlsDatabaseLookupFlags TLS_DATABASE_LOOKUP_FLAGS_NONE = 0;

distinct TlsError = int;
const TlsError TLS_ERROR_BAD_CERTIFICATE = 2;
const TlsError TLS_ERROR_BAD_CERTIFICATE_PASSWORD = 8;
const TlsError TLS_ERROR_CERTIFICATE_REQUIRED = 5;
const TlsError TLS_ERROR_EOF = 6;
const TlsError TLS_ERROR_HANDSHAKE = 4;
const TlsError TLS_ERROR_INAPPROPRIATE_FALLBACK = 7;
const TlsError TLS_ERROR_MISC = 1;
const TlsError TLS_ERROR_NOT_TLS = 3;
const TlsError TLS_ERROR_UNAVAILABLE = 0;

distinct TlsInteractionResult = int;
const TlsInteractionResult TLS_INTERACTION_RESULT_FAILED = 2;
const TlsInteractionResult TLS_INTERACTION_RESULT_HANDLED = 1;
const TlsInteractionResult TLS_INTERACTION_RESULT_UNHANDLED = 0;

distinct TlsProtocolVersion = int;
const TlsProtocolVersion TLS_PROTOCOL_VERSION_DTLS_1_0 = 201;
const TlsProtocolVersion TLS_PROTOCOL_VERSION_DTLS_1_2 = 202;
const TlsProtocolVersion TLS_PROTOCOL_VERSION_SSL_3_0 = 1;
const TlsProtocolVersion TLS_PROTOCOL_VERSION_TLS_1_0 = 2;
const TlsProtocolVersion TLS_PROTOCOL_VERSION_TLS_1_1 = 3;
const TlsProtocolVersion TLS_PROTOCOL_VERSION_TLS_1_2 = 4;
const TlsProtocolVersion TLS_PROTOCOL_VERSION_TLS_1_3 = 5;
const TlsProtocolVersion TLS_PROTOCOL_VERSION_UNKNOWN = 0;

distinct TlsRehandshakeMode = int;
const TlsRehandshakeMode TLS_REHANDSHAKE_MODE_NEVER = 0;
const TlsRehandshakeMode TLS_REHANDSHAKE_MODE_SAFELY = 1;
const TlsRehandshakeMode TLS_REHANDSHAKE_MODE_UNSAFELY = 2;

distinct UnixSocketAddressType = int;
const UnixSocketAddressType UNIX_SOCKET_ADDRESS_TYPE_ABSTRACT = 3;
const UnixSocketAddressType UNIX_SOCKET_ADDRESS_TYPE_ABSTRACT_PADDED = 4;
const UnixSocketAddressType UNIX_SOCKET_ADDRESS_TYPE_ANONYMOUS = 1;
const UnixSocketAddressType UNIX_SOCKET_ADDRESS_TYPE_INVALID = 0;
const UnixSocketAddressType UNIX_SOCKET_ADDRESS_TYPE_PATH = 2;

distinct ZlibCompressorFormat = int;
const ZlibCompressorFormat ZLIB_COMPRESSOR_FORMAT_GZIP = 1;
const ZlibCompressorFormat ZLIB_COMPRESSOR_FORMAT_RAW = 2;
const ZlibCompressorFormat ZLIB_COMPRESSOR_FORMAT_ZLIB = 0;



distinct ActionEntry = void*;

distinct ActionGroupInterface = void*;

distinct ActionInterface = void*;

distinct ActionMapInterface = void*;

distinct AppInfoIface = void*;

distinct AppLaunchContextClass = void*;

distinct AppLaunchContextPrivate = void*;

distinct ApplicationClass = void*;

distinct ApplicationCommandLineClass = void*;

distinct ApplicationCommandLinePrivate = void*;

distinct ApplicationPrivate = void*;

distinct AsyncInitableIface = void*;

distinct AsyncResultIface = void*;

distinct BufferedInputStreamClass = void*;

distinct BufferedInputStreamPrivate = void*;

distinct BufferedOutputStreamClass = void*;

distinct BufferedOutputStreamPrivate = void*;

distinct CancellableClass = void*;

distinct CancellablePrivate = void*;

distinct CharsetConverterClass = void*;

distinct ConverterIface = void*;

distinct ConverterInputStreamClass = void*;

distinct ConverterInputStreamPrivate = void*;

distinct ConverterOutputStreamClass = void*;

distinct ConverterOutputStreamPrivate = void*;

distinct CredentialsClass = void*;

distinct DBusAnnotationInfo = void*;

distinct DBusArgInfo = void*;

distinct DBusErrorEntry = void*;

distinct DBusInterfaceIface = void*;

distinct DBusInterfaceInfo = void*;

distinct DBusInterfaceSkeletonClass = void*;

distinct DBusInterfaceSkeletonPrivate = void*;

distinct DBusInterfaceVTable = void*;

distinct DBusMethodInfo = void*;

distinct DBusNodeInfo = void*;

distinct DBusObjectIface = void*;

distinct DBusObjectManagerClientClass = void*;

distinct DBusObjectManagerClientPrivate = void*;

distinct DBusObjectManagerIface = void*;

distinct DBusObjectManagerServerClass = void*;

distinct DBusObjectManagerServerPrivate = void*;

distinct DBusObjectProxyClass = void*;

distinct DBusObjectProxyPrivate = void*;

distinct DBusObjectSkeletonClass = void*;

distinct DBusObjectSkeletonPrivate = void*;

distinct DBusPropertyInfo = void*;

distinct DBusProxyClass = void*;

distinct DBusProxyPrivate = void*;

distinct DBusSignalInfo = void*;

distinct DBusSubtreeVTable = void*;

distinct DataInputStreamClass = void*;

distinct DataInputStreamPrivate = void*;

distinct DataOutputStreamClass = void*;

distinct DataOutputStreamPrivate = void*;

distinct DatagramBasedInterface = void*;

distinct DebugControllerDBusClass = void*;

distinct DebugControllerInterface = void*;

distinct DesktopAppInfoClass = void*;

distinct DesktopAppInfoLookupIface = void*;

distinct DriveIface = void*;

distinct DtlsClientConnectionInterface = void*;

distinct DtlsConnectionInterface = void*;

distinct DtlsServerConnectionInterface = void*;

distinct EmblemClass = void*;

distinct EmblemedIconClass = void*;

distinct EmblemedIconPrivate = void*;

distinct FileAttributeInfo = void*;

distinct FileAttributeInfoList = void*;

distinct FileAttributeMatcher = void*;

distinct FileDescriptorBasedIface = void*;

distinct FileEnumeratorClass = void*;

distinct FileEnumeratorPrivate = void*;

distinct FileIOStreamClass = void*;

distinct FileIOStreamPrivate = void*;

distinct FileIconClass = void*;

distinct FileIface = void*;

distinct FileInfoClass = void*;

distinct FileInputStreamClass = void*;

distinct FileInputStreamPrivate = void*;

distinct FileMonitorClass = void*;

distinct FileMonitorPrivate = void*;

distinct FileOutputStreamClass = void*;

distinct FileOutputStreamPrivate = void*;

distinct FilenameCompleterClass = void*;

distinct FilterInputStreamClass = void*;

distinct FilterOutputStreamClass = void*;

distinct IOExtension = void*;

distinct IOExtensionPoint = void*;

distinct IOModuleClass = void*;

distinct IOModuleScope = void*;

distinct IOSchedulerJob = void*;

distinct IOStreamAdapter = void*;

distinct IOStreamClass = void*;

distinct IOStreamPrivate = void*;

distinct IconIface = void*;

distinct InetAddressClass = void*;

distinct InetAddressMaskClass = void*;

distinct InetAddressMaskPrivate = void*;

distinct InetAddressPrivate = void*;

distinct InetSocketAddressClass = void*;

distinct InetSocketAddressPrivate = void*;

distinct InitableIface = void*;

distinct InputMessage = void*;

distinct InputStreamClass = void*;

distinct InputStreamPrivate = void*;

distinct InputVector = void*;

distinct ListModelInterface = void*;

distinct ListStoreClass = void*;

distinct LoadableIconIface = void*;

distinct MemoryInputStreamClass = void*;

distinct MemoryInputStreamPrivate = void*;

distinct MemoryMonitorInterface = void*;

distinct MemoryOutputStreamClass = void*;

distinct MemoryOutputStreamPrivate = void*;

distinct MenuAttributeIterClass = void*;

distinct MenuAttributeIterPrivate = void*;

distinct MenuLinkIterClass = void*;

distinct MenuLinkIterPrivate = void*;

distinct MenuModelClass = void*;

distinct MenuModelPrivate = void*;

distinct MountIface = void*;

distinct MountOperationClass = void*;

distinct MountOperationPrivate = void*;

distinct NativeSocketAddressClass = void*;

distinct NativeSocketAddressPrivate = void*;

distinct NativeVolumeMonitorClass = void*;

distinct NetworkAddressClass = void*;

distinct NetworkAddressPrivate = void*;

distinct NetworkMonitorInterface = void*;

distinct NetworkServiceClass = void*;

distinct NetworkServicePrivate = void*;

distinct OutputMessage = void*;

distinct OutputStreamClass = void*;

distinct OutputStreamPrivate = void*;

distinct OutputVector = void*;

distinct PermissionClass = void*;

distinct PermissionPrivate = void*;

distinct PollableInputStreamInterface = void*;

distinct PollableOutputStreamInterface = void*;

distinct PowerProfileMonitorInterface = void*;

distinct ProxyAddressClass = void*;

distinct ProxyAddressEnumeratorClass = void*;

distinct ProxyAddressEnumeratorPrivate = void*;

distinct ProxyAddressPrivate = void*;

distinct ProxyInterface = void*;

distinct ProxyResolverInterface = void*;

distinct RemoteActionGroupInterface = void*;

distinct ResolverClass = void*;

distinct ResolverPrivate = void*;

distinct Resource = void*;

distinct SeekableIface = void*;

distinct SettingsBackendClass = void*;

distinct SettingsBackendPrivate = void*;

distinct SettingsClass = void*;

distinct SettingsPrivate = void*;

distinct SettingsSchema = void*;

distinct SettingsSchemaKey = void*;

distinct SettingsSchemaSource = void*;

distinct SimpleActionGroupClass = void*;

distinct SimpleActionGroupPrivate = void*;

distinct SimpleAsyncResultClass = void*;

distinct SimpleProxyResolverClass = void*;

distinct SimpleProxyResolverPrivate = void*;

distinct SocketAddressClass = void*;

distinct SocketAddressEnumeratorClass = void*;

distinct SocketClass = void*;

distinct SocketClientClass = void*;

distinct SocketClientPrivate = void*;

distinct SocketConnectableIface = void*;

distinct SocketConnectionClass = void*;

distinct SocketConnectionPrivate = void*;

distinct SocketControlMessageClass = void*;

distinct SocketControlMessagePrivate = void*;

distinct SocketListenerClass = void*;

distinct SocketListenerPrivate = void*;

distinct SocketPrivate = void*;

distinct SocketServiceClass = void*;

distinct SocketServicePrivate = void*;

distinct SrvTarget = void*;

distinct StaticResource = void*;

distinct TaskClass = void*;

distinct TcpConnectionClass = void*;

distinct TcpConnectionPrivate = void*;

distinct TcpWrapperConnectionClass = void*;

distinct TcpWrapperConnectionPrivate = void*;

distinct ThemedIconClass = void*;

distinct ThreadedResolverClass = void*;

distinct ThreadedSocketServiceClass = void*;

distinct ThreadedSocketServicePrivate = void*;

distinct TlsBackendInterface = void*;

distinct TlsCertificateClass = void*;

distinct TlsCertificatePrivate = void*;

distinct TlsClientConnectionInterface = void*;

distinct TlsConnectionClass = void*;

distinct TlsConnectionPrivate = void*;

distinct TlsDatabaseClass = void*;

distinct TlsDatabasePrivate = void*;

distinct TlsFileDatabaseInterface = void*;

distinct TlsInteractionClass = void*;

distinct TlsInteractionPrivate = void*;

distinct TlsPasswordClass = void*;

distinct TlsPasswordPrivate = void*;

distinct TlsServerConnectionInterface = void*;

distinct UnixConnectionClass = void*;

distinct UnixConnectionPrivate = void*;

distinct UnixCredentialsMessageClass = void*;

distinct UnixCredentialsMessagePrivate = void*;

distinct UnixFDListClass = void*;

distinct UnixFDListPrivate = void*;

distinct UnixFDMessageClass = void*;

distinct UnixFDMessagePrivate = void*;

distinct UnixInputStreamClass = void*;

distinct UnixInputStreamPrivate = void*;

distinct UnixMountEntry = void*;

distinct UnixMountMonitorClass = void*;

distinct UnixMountPoint = void*;

distinct UnixOutputStreamClass = void*;

distinct UnixOutputStreamPrivate = void*;

distinct UnixSocketAddressClass = void*;

distinct UnixSocketAddressPrivate = void*;

distinct VfsClass = void*;

distinct VolumeIface = void*;

distinct VolumeMonitorClass = void*;

distinct ZlibCompressorClass = void*;

distinct ZlibDecompressorClass = void*;


def AsyncReadyCallback = fn void(gobject::Object* source_object, AsyncResult* res, void* data);

def BusAcquiredCallback = fn void(DBusConnection* connection, ZString name, void* user_data);

def BusNameAcquiredCallback = fn void(DBusConnection* connection, ZString name, void* user_data);

def BusNameAppearedCallback = fn void(DBusConnection* connection, ZString name, ZString name_owner, void* user_data);

def BusNameLostCallback = fn void(DBusConnection* connection, ZString name, void* user_data);

def BusNameVanishedCallback = fn void(DBusConnection* connection, ZString name, void* user_data);

def CancellableSourceFunc = fn bool(Cancellable* cancellable, void* data);

def DBusInterfaceGetPropertyFunc = fn glib::Variant*(DBusConnection* connection, ZString sender, ZString object_path, ZString interface_name, ZString property_name, glib::Error* error, void* user_data);

def DBusInterfaceMethodCallFunc = fn void(DBusConnection* connection, ZString sender, ZString object_path, ZString interface_name, ZString method_name, glib::Variant* parameters, DBusMethodInvocation* invocation, void* user_data);

def DBusInterfaceSetPropertyFunc = fn bool(DBusConnection* connection, ZString sender, ZString object_path, ZString interface_name, ZString property_name, glib::Variant* value, glib::Error* error, void* user_data);

def DBusMessageFilterFunction = fn DBusMessage*(DBusConnection* connection, DBusMessage* message, bool incoming, void* user_data);

def DBusProxyTypeFunc = fn usz(DBusObjectManagerClient* manager, ZString object_path, ZString interface_name, void* data);

def DBusSignalCallback = fn void(DBusConnection* connection, ZString sender_name, ZString object_path, ZString interface_name, ZString signal_name, glib::Variant* parameters, void* user_data);

def DBusSubtreeDispatchFunc = fn DBusInterfaceVTable*(DBusConnection* connection, ZString sender, ZString object_path, ZString interface_name, ZString node, void* out_user_data, void* user_data);

def DBusSubtreeEnumerateFunc = fn ZString(DBusConnection* connection, ZString sender, ZString object_path, void* user_data);

def DBusSubtreeIntrospectFunc = fn DBusInterfaceInfo*(DBusConnection* connection, ZString sender, ZString object_path, ZString node, void* user_data);

def DatagramBasedSourceFunc = fn bool(DatagramBased* datagram_based, glib::IOCondition condition, void* data);

def DesktopAppLaunchCallback = fn void(DesktopAppInfo* appinfo, glib::Pid pid, void* user_data);

def FileMeasureProgressCallback = fn void(bool reporting, ulong current_size, ulong num_dirs, ulong num_files, void* data);

def FileProgressCallback = fn void(long current_num_bytes, long total_num_bytes, void* data);

def FileReadMoreCallback = fn bool(ZString file_contents, long file_size, void* callback_data);

def IOSchedulerJobFunc = fn bool(IOSchedulerJob* job, Cancellable* cancellable, void* data);

def PollableSourceFunc = fn bool(gobject::Object* pollable_stream, void* data);

def ReallocFunc = fn void*(void* data, usz size);

def SettingsBindGetMapping = fn bool(gobject::Value* value, glib::Variant* variant, void* user_data);

def SettingsBindSetMapping = fn glib::Variant*(gobject::Value* value, glib::VariantType* expected_type, void* user_data);

def SettingsGetMapping = fn bool(glib::Variant* value, void* result, void* user_data);

def SimpleAsyncThreadFunc = fn void(SimpleAsyncResult* res, gobject::Object* object, Cancellable* cancellable);

def SocketSourceFunc = fn bool(Socket* socket, glib::IOCondition condition, void* data);

def TaskThreadFunc = fn void(Task* task, gobject::Object* source_object, void* task_data, Cancellable* cancellable);

def VfsFileLookupFunc = fn File*(Vfs* vfs, ZString identifier, void* user_data);


<* Maps to GAppInfoMonitor *>
distinct AppInfoMonitor = void*;

// Class to parent cast.
fn gobject::Object* AppInfoMonitor.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods


// Class Functions

<* Maps to get of AppInfoMonitor *>
extern fn AppInfoMonitor* app_info_monitor_get() @extern("g_app_info_monitor_get");



<* Maps to GAppLaunchContext *>
distinct AppLaunchContext = void*;

// Class to parent cast.
fn gobject::Object* AppLaunchContext.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of AppLaunchContext *>
extern fn AppLaunchContext* app_launch_context_new() @extern("g_app_launch_context_new");



// Class Methods

<* Maps to AppLaunchContext::get_display *>
extern fn ZString* AppLaunchContext.get_display(&self, AppInfo* info, glib::List* files) @extern("g_app_launch_context_get_display");

<* Maps to AppLaunchContext::get_environment *>
extern fn ZString AppLaunchContext.get_environment(&self, ) @extern("g_app_launch_context_get_environment");

<* Maps to AppLaunchContext::get_startup_notify_id *>
extern fn ZString* AppLaunchContext.get_startup_notify_id(&self, AppInfo* info, glib::List* files) @extern("g_app_launch_context_get_startup_notify_id");

<* Maps to AppLaunchContext::launch_failed *>
extern fn void AppLaunchContext.launch_failed(&self, ZString startup_notify_id) @extern("g_app_launch_context_launch_failed");

<* Maps to AppLaunchContext::setenv *>
extern fn void AppLaunchContext.setenv(&self, ZString variable, ZString value) @extern("g_app_launch_context_setenv");

<* Maps to AppLaunchContext::unsetenv *>
extern fn void AppLaunchContext.unsetenv(&self, ZString variable) @extern("g_app_launch_context_unsetenv");


// Class Functions



<* Maps to GApplication *>
distinct Application = void*;

// Class to parent cast.
fn gobject::Object* Application.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Application *>
extern fn Application* application_new(ZString application_id, ApplicationFlags flags) @extern("g_application_new");



// Class Methods

<* Maps to Application::activate *>
extern fn void Application.activate(&self, ) @extern("g_application_activate");

<* Maps to Application::add_main_option *>
extern fn void Application.add_main_option(&self, ZString long_name, ichar short_name, glib::OptionFlags flags, glib::OptionArg arg, ZString description, ZString arg_description) @extern("g_application_add_main_option");

<* Maps to Application::add_main_option_entries *>
extern fn void Application.add_main_option_entries(&self, glib::OptionEntry entries) @extern("g_application_add_main_option_entries");

<* Maps to Application::add_option_group *>
extern fn void Application.add_option_group(&self, glib::OptionGroup* group) @extern("g_application_add_option_group");

<* Maps to Application::bind_busy_property *>
extern fn void Application.bind_busy_property(&self, gobject::Object* object, ZString property) @extern("g_application_bind_busy_property");

<* Maps to Application::get_application_id *>
extern fn ZString Application.get_application_id(&self, ) @extern("g_application_get_application_id");

<* Maps to Application::get_dbus_connection *>
extern fn DBusConnection* Application.get_dbus_connection(&self, ) @extern("g_application_get_dbus_connection");

<* Maps to Application::get_dbus_object_path *>
extern fn ZString Application.get_dbus_object_path(&self, ) @extern("g_application_get_dbus_object_path");

<* Maps to Application::get_flags *>
extern fn ApplicationFlags Application.get_flags(&self, ) @extern("g_application_get_flags");

<* Maps to Application::get_inactivity_timeout *>
extern fn uint Application.get_inactivity_timeout(&self, ) @extern("g_application_get_inactivity_timeout");

<* Maps to Application::get_is_busy *>
extern fn bool Application.get_is_busy(&self, ) @extern("g_application_get_is_busy");

<* Maps to Application::get_is_registered *>
extern fn bool Application.get_is_registered(&self, ) @extern("g_application_get_is_registered");

<* Maps to Application::get_is_remote *>
extern fn bool Application.get_is_remote(&self, ) @extern("g_application_get_is_remote");

<* Maps to Application::get_resource_base_path *>
extern fn ZString Application.get_resource_base_path(&self, ) @extern("g_application_get_resource_base_path");

<* Maps to Application::get_version *>
extern fn ZString Application.get_version(&self, ) @extern("g_application_get_version");

<* Maps to Application::hold *>
extern fn void Application.hold(&self, ) @extern("g_application_hold");

<* Maps to Application::mark_busy *>
extern fn void Application.mark_busy(&self, ) @extern("g_application_mark_busy");

<* Maps to Application::open *>
extern fn void Application.open(&self, File* files, int n_files, ZString hint) @extern("g_application_open");

<* Maps to Application::quit *>
extern fn void Application.quit(&self, ) @extern("g_application_quit");

<* Maps to Application::register *>
extern fn bool Application.register(&self, Cancellable* cancellable) @extern("g_application_register");

<* Maps to Application::release *>
extern fn void Application.release(&self, ) @extern("g_application_release");

<* Maps to Application::run *>
extern fn int Application.run(&self, int argc, ZString argv) @extern("g_application_run");

<* Maps to Application::send_notification *>
extern fn void Application.send_notification(&self, ZString id, Notification* notification) @extern("g_application_send_notification");

<* Maps to Application::set_action_group *>
extern fn void Application.set_action_group(&self, ActionGroup* action_group) @extern("g_application_set_action_group");

<* Maps to Application::set_application_id *>
extern fn void Application.set_application_id(&self, ZString application_id) @extern("g_application_set_application_id");

<* Maps to Application::set_default *>
extern fn void Application.set_default(&self, ) @extern("g_application_set_default");

<* Maps to Application::set_flags *>
extern fn void Application.set_flags(&self, ApplicationFlags flags) @extern("g_application_set_flags");

<* Maps to Application::set_inactivity_timeout *>
extern fn void Application.set_inactivity_timeout(&self, uint inactivity_timeout) @extern("g_application_set_inactivity_timeout");

<* Maps to Application::set_option_context_description *>
extern fn void Application.set_option_context_description(&self, ZString description) @extern("g_application_set_option_context_description");

<* Maps to Application::set_option_context_parameter_string *>
extern fn void Application.set_option_context_parameter_string(&self, ZString parameter_string) @extern("g_application_set_option_context_parameter_string");

<* Maps to Application::set_option_context_summary *>
extern fn void Application.set_option_context_summary(&self, ZString summary) @extern("g_application_set_option_context_summary");

<* Maps to Application::set_resource_base_path *>
extern fn void Application.set_resource_base_path(&self, ZString resource_path) @extern("g_application_set_resource_base_path");

<* Maps to Application::set_version *>
extern fn void Application.set_version(&self, ZString version) @extern("g_application_set_version");

<* Maps to Application::unbind_busy_property *>
extern fn void Application.unbind_busy_property(&self, gobject::Object* object, ZString property) @extern("g_application_unbind_busy_property");

<* Maps to Application::unmark_busy *>
extern fn void Application.unmark_busy(&self, ) @extern("g_application_unmark_busy");

<* Maps to Application::withdraw_notification *>
extern fn void Application.withdraw_notification(&self, ZString id) @extern("g_application_withdraw_notification");


// Class Functions

<* Maps to get_default of Application *>
extern fn Application* application_get_default() @extern("g_application_get_default");

<* Maps to id_is_valid of Application *>
extern fn bool application_id_is_valid(ZString application_id) @extern("g_application_id_is_valid");



<* Maps to GApplicationCommandLine *>
distinct ApplicationCommandLine = void*;

// Class to parent cast.
fn gobject::Object* ApplicationCommandLine.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to ApplicationCommandLine::create_file_for_arg *>
extern fn File* ApplicationCommandLine.create_file_for_arg(&self, ZString arg) @extern("g_application_command_line_create_file_for_arg");

<* Maps to ApplicationCommandLine::done *>
extern fn void ApplicationCommandLine.done(&self, ) @extern("g_application_command_line_done");

<* Maps to ApplicationCommandLine::get_arguments *>
extern fn ZString ApplicationCommandLine.get_arguments(&self, int* argc) @extern("g_application_command_line_get_arguments");

<* Maps to ApplicationCommandLine::get_cwd *>
extern fn ZString ApplicationCommandLine.get_cwd(&self, ) @extern("g_application_command_line_get_cwd");

<* Maps to ApplicationCommandLine::get_environ *>
extern fn ZString ApplicationCommandLine.get_environ(&self, ) @extern("g_application_command_line_get_environ");

<* Maps to ApplicationCommandLine::get_exit_status *>
extern fn int ApplicationCommandLine.get_exit_status(&self, ) @extern("g_application_command_line_get_exit_status");

<* Maps to ApplicationCommandLine::get_is_remote *>
extern fn bool ApplicationCommandLine.get_is_remote(&self, ) @extern("g_application_command_line_get_is_remote");

<* Maps to ApplicationCommandLine::get_options_dict *>
extern fn glib::VariantDict* ApplicationCommandLine.get_options_dict(&self, ) @extern("g_application_command_line_get_options_dict");

<* Maps to ApplicationCommandLine::get_platform_data *>
extern fn glib::Variant* ApplicationCommandLine.get_platform_data(&self, ) @extern("g_application_command_line_get_platform_data");

<* Maps to ApplicationCommandLine::get_stdin *>
extern fn InputStream* ApplicationCommandLine.get_stdin(&self, ) @extern("g_application_command_line_get_stdin");

<* Maps to ApplicationCommandLine::getenv *>
extern fn ZString ApplicationCommandLine.getenv(&self, ZString name) @extern("g_application_command_line_getenv");

<* Maps to ApplicationCommandLine::print *>
extern fn void ApplicationCommandLine.print(&self, ZString format, any rest) @extern("g_application_command_line_print");

<* Maps to ApplicationCommandLine::print_literal *>
extern fn void ApplicationCommandLine.print_literal(&self, ZString message) @extern("g_application_command_line_print_literal");

<* Maps to ApplicationCommandLine::printerr *>
extern fn void ApplicationCommandLine.printerr(&self, ZString format, any rest) @extern("g_application_command_line_printerr");

<* Maps to ApplicationCommandLine::printerr_literal *>
extern fn void ApplicationCommandLine.printerr_literal(&self, ZString message) @extern("g_application_command_line_printerr_literal");

<* Maps to ApplicationCommandLine::set_exit_status *>
extern fn void ApplicationCommandLine.set_exit_status(&self, int exit_status) @extern("g_application_command_line_set_exit_status");


// Class Functions



<* Maps to GBufferedInputStream *>
distinct BufferedInputStream = void*;

// Class to parent cast.
fn FilterInputStream* BufferedInputStream.as_FilterInputStream(&self) => (FilterInputStream*)(self);

// Class Constructors

<* Maps to new of BufferedInputStream *>
extern fn InputStream* buffered_input_stream_new(InputStream* base_stream) @extern("g_buffered_input_stream_new");

<* Maps to new_sized of BufferedInputStream *>
extern fn InputStream* buffered_input_stream_new_sized(InputStream* base_stream, usz size) @extern("g_buffered_input_stream_new_sized");



// Class Methods

<* Maps to BufferedInputStream::fill *>
extern fn isz BufferedInputStream.fill(&self, isz count, Cancellable* cancellable) @extern("g_buffered_input_stream_fill");

<* Maps to BufferedInputStream::fill_async *>
extern fn void BufferedInputStream.fill_async(&self, isz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_buffered_input_stream_fill_async");

<* Maps to BufferedInputStream::fill_finish *>
extern fn isz BufferedInputStream.fill_finish(&self, AsyncResult* result) @extern("g_buffered_input_stream_fill_finish");

<* Maps to BufferedInputStream::get_available *>
extern fn usz BufferedInputStream.get_available(&self, ) @extern("g_buffered_input_stream_get_available");

<* Maps to BufferedInputStream::get_buffer_size *>
extern fn usz BufferedInputStream.get_buffer_size(&self, ) @extern("g_buffered_input_stream_get_buffer_size");

<* Maps to BufferedInputStream::peek *>
extern fn usz BufferedInputStream.peek(&self, char buffer, usz offset, usz count) @extern("g_buffered_input_stream_peek");

<* Maps to BufferedInputStream::peek_buffer *>
extern fn char BufferedInputStream.peek_buffer(&self, usz* count) @extern("g_buffered_input_stream_peek_buffer");

<* Maps to BufferedInputStream::read_byte *>
extern fn int BufferedInputStream.read_byte(&self, Cancellable* cancellable) @extern("g_buffered_input_stream_read_byte");

<* Maps to BufferedInputStream::set_buffer_size *>
extern fn void BufferedInputStream.set_buffer_size(&self, usz size) @extern("g_buffered_input_stream_set_buffer_size");


// Class Functions



<* Maps to GBufferedOutputStream *>
distinct BufferedOutputStream = void*;

// Class to parent cast.
fn FilterOutputStream* BufferedOutputStream.as_FilterOutputStream(&self) => (FilterOutputStream*)(self);

// Class Constructors

<* Maps to new of BufferedOutputStream *>
extern fn OutputStream* buffered_output_stream_new(OutputStream* base_stream) @extern("g_buffered_output_stream_new");

<* Maps to new_sized of BufferedOutputStream *>
extern fn OutputStream* buffered_output_stream_new_sized(OutputStream* base_stream, usz size) @extern("g_buffered_output_stream_new_sized");



// Class Methods

<* Maps to BufferedOutputStream::get_auto_grow *>
extern fn bool BufferedOutputStream.get_auto_grow(&self, ) @extern("g_buffered_output_stream_get_auto_grow");

<* Maps to BufferedOutputStream::get_buffer_size *>
extern fn usz BufferedOutputStream.get_buffer_size(&self, ) @extern("g_buffered_output_stream_get_buffer_size");

<* Maps to BufferedOutputStream::set_auto_grow *>
extern fn void BufferedOutputStream.set_auto_grow(&self, bool auto_grow) @extern("g_buffered_output_stream_set_auto_grow");

<* Maps to BufferedOutputStream::set_buffer_size *>
extern fn void BufferedOutputStream.set_buffer_size(&self, usz size) @extern("g_buffered_output_stream_set_buffer_size");


// Class Functions



<* Maps to GBytesIcon *>
distinct BytesIcon = void*;

// Class to parent cast.
fn gobject::Object* BytesIcon.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of BytesIcon *>
extern fn BytesIcon* bytes_icon_new(glib::Bytes* bytes) @extern("g_bytes_icon_new");



// Class Methods

<* Maps to BytesIcon::get_bytes *>
extern fn glib::Bytes* BytesIcon.get_bytes(&self, ) @extern("g_bytes_icon_get_bytes");


// Class Functions



<* Maps to GCancellable *>
distinct Cancellable = void*;

// Class to parent cast.
fn gobject::Object* Cancellable.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Cancellable *>
extern fn Cancellable* cancellable_new() @extern("g_cancellable_new");



// Class Methods

<* Maps to Cancellable::cancel *>
extern fn void Cancellable.cancel(&self, ) @extern("g_cancellable_cancel");

<* Maps to Cancellable::connect *>
extern fn ulong Cancellable.connect(&self, gobject::Callback callback, void* data, glib::DestroyNotify data_destroy_func) @extern("g_cancellable_connect");

<* Maps to Cancellable::disconnect *>
extern fn void Cancellable.disconnect(&self, ulong handler_id) @extern("g_cancellable_disconnect");

<* Maps to Cancellable::get_fd *>
extern fn int Cancellable.get_fd(&self, ) @extern("g_cancellable_get_fd");

<* Maps to Cancellable::is_cancelled *>
extern fn bool Cancellable.is_cancelled(&self, ) @extern("g_cancellable_is_cancelled");

<* Maps to Cancellable::make_pollfd *>
extern fn bool Cancellable.make_pollfd(&self, glib::PollFD* pollfd) @extern("g_cancellable_make_pollfd");

<* Maps to Cancellable::pop_current *>
extern fn void Cancellable.pop_current(&self, ) @extern("g_cancellable_pop_current");

<* Maps to Cancellable::push_current *>
extern fn void Cancellable.push_current(&self, ) @extern("g_cancellable_push_current");

<* Maps to Cancellable::release_fd *>
extern fn void Cancellable.release_fd(&self, ) @extern("g_cancellable_release_fd");

<* Maps to Cancellable::reset *>
extern fn void Cancellable.reset(&self, ) @extern("g_cancellable_reset");

<* Maps to Cancellable::set_error_if_cancelled *>
extern fn bool Cancellable.set_error_if_cancelled(&self, ) @extern("g_cancellable_set_error_if_cancelled");

<* Maps to Cancellable::source_new *>
extern fn glib::Source* Cancellable.source_new(&self, ) @extern("g_cancellable_source_new");


// Class Functions

<* Maps to get_current of Cancellable *>
extern fn Cancellable* cancellable_get_current() @extern("g_cancellable_get_current");



<* Maps to GCharsetConverter *>
distinct CharsetConverter = void*;

// Class to parent cast.
fn gobject::Object* CharsetConverter.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of CharsetConverter *>
extern fn CharsetConverter* charset_converter_new(ZString to_charset, ZString from_charset) @extern("g_charset_converter_new");



// Class Methods

<* Maps to CharsetConverter::get_num_fallbacks *>
extern fn uint CharsetConverter.get_num_fallbacks(&self, ) @extern("g_charset_converter_get_num_fallbacks");

<* Maps to CharsetConverter::get_use_fallback *>
extern fn bool CharsetConverter.get_use_fallback(&self, ) @extern("g_charset_converter_get_use_fallback");

<* Maps to CharsetConverter::set_use_fallback *>
extern fn void CharsetConverter.set_use_fallback(&self, bool use_fallback) @extern("g_charset_converter_set_use_fallback");


// Class Functions



<* Maps to GConverterInputStream *>
distinct ConverterInputStream = void*;

// Class to parent cast.
fn FilterInputStream* ConverterInputStream.as_FilterInputStream(&self) => (FilterInputStream*)(self);

// Class Constructors

<* Maps to new of ConverterInputStream *>
extern fn InputStream* converter_input_stream_new(InputStream* base_stream, Converter* converter) @extern("g_converter_input_stream_new");



// Class Methods

<* Maps to ConverterInputStream::get_converter *>
extern fn Converter* ConverterInputStream.get_converter(&self, ) @extern("g_converter_input_stream_get_converter");


// Class Functions



<* Maps to GConverterOutputStream *>
distinct ConverterOutputStream = void*;

// Class to parent cast.
fn FilterOutputStream* ConverterOutputStream.as_FilterOutputStream(&self) => (FilterOutputStream*)(self);

// Class Constructors

<* Maps to new of ConverterOutputStream *>
extern fn OutputStream* converter_output_stream_new(OutputStream* base_stream, Converter* converter) @extern("g_converter_output_stream_new");



// Class Methods

<* Maps to ConverterOutputStream::get_converter *>
extern fn Converter* ConverterOutputStream.get_converter(&self, ) @extern("g_converter_output_stream_get_converter");


// Class Functions



<* Maps to GCredentials *>
distinct Credentials = void*;

// Class to parent cast.
fn gobject::Object* Credentials.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Credentials *>
extern fn Credentials* credentials_new() @extern("g_credentials_new");



// Class Methods

<* Maps to Credentials::get_native *>
extern fn void* Credentials.get_native(&self, CredentialsType native_type) @extern("g_credentials_get_native");

<* Maps to Credentials::get_unix_pid *>
extern fn int Credentials.get_unix_pid(&self, ) @extern("g_credentials_get_unix_pid");

<* Maps to Credentials::get_unix_user *>
extern fn int Credentials.get_unix_user(&self, ) @extern("g_credentials_get_unix_user");

<* Maps to Credentials::is_same_user *>
extern fn bool Credentials.is_same_user(&self, Credentials* other_credentials) @extern("g_credentials_is_same_user");

<* Maps to Credentials::set_native *>
extern fn void Credentials.set_native(&self, CredentialsType native_type, void* native) @extern("g_credentials_set_native");

<* Maps to Credentials::set_unix_user *>
extern fn bool Credentials.set_unix_user(&self, int uid) @extern("g_credentials_set_unix_user");

<* Maps to Credentials::to_string *>
extern fn ZString* Credentials.to_string(&self, ) @extern("g_credentials_to_string");


// Class Functions



<* Maps to GDBusActionGroup *>
distinct DBusActionGroup = void*;

// Class to parent cast.
fn gobject::Object* DBusActionGroup.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods


// Class Functions

<* Maps to get of DBusActionGroup *>
extern fn DBusActionGroup* d_bus_action_group_get(DBusConnection* connection, ZString bus_name, ZString object_path) @extern("g_dbus_action_group_get");



<* Maps to GDBusAuthObserver *>
distinct DBusAuthObserver = void*;

// Class to parent cast.
fn gobject::Object* DBusAuthObserver.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of DBusAuthObserver *>
extern fn DBusAuthObserver* d_bus_auth_observer_new() @extern("g_dbus_auth_observer_new");



// Class Methods

<* Maps to DBusAuthObserver::allow_mechanism *>
extern fn bool DBusAuthObserver.allow_mechanism(&self, ZString mechanism) @extern("g_dbus_auth_observer_allow_mechanism");

<* Maps to DBusAuthObserver::authorize_authenticated_peer *>
extern fn bool DBusAuthObserver.authorize_authenticated_peer(&self, IOStream* stream, Credentials* credentials) @extern("g_dbus_auth_observer_authorize_authenticated_peer");


// Class Functions



<* Maps to GDBusConnection *>
distinct DBusConnection = void*;

// Class to parent cast.
fn gobject::Object* DBusConnection.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_finish of DBusConnection *>
extern fn DBusConnection* d_bus_connection_new_finish(AsyncResult* res) @extern("g_dbus_connection_new_finish");

<* Maps to new_for_address_finish of DBusConnection *>
extern fn DBusConnection* d_bus_connection_new_for_address_finish(AsyncResult* res) @extern("g_dbus_connection_new_for_address_finish");

<* Maps to new_for_address_sync of DBusConnection *>
extern fn DBusConnection* d_bus_connection_new_for_address_sync(ZString address, DBusConnectionFlags flags, DBusAuthObserver* observer, Cancellable* cancellable) @extern("g_dbus_connection_new_for_address_sync");

<* Maps to new_sync of DBusConnection *>
extern fn DBusConnection* d_bus_connection_new_sync(IOStream* stream, ZString guid, DBusConnectionFlags flags, DBusAuthObserver* observer, Cancellable* cancellable) @extern("g_dbus_connection_new_sync");



// Class Methods

<* Maps to DBusConnection::add_filter *>
extern fn uint DBusConnection.add_filter(&self, DBusMessageFilterFunction filter_function, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_dbus_connection_add_filter");

<* Maps to DBusConnection::call *>
extern fn void DBusConnection.call(&self, ZString bus_name, ZString object_path, ZString interface_name, ZString method_name, glib::Variant* parameters, glib::VariantType* reply_type, DBusCallFlags flags, int timeout_msec, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_call");

<* Maps to DBusConnection::call_finish *>
extern fn glib::Variant* DBusConnection.call_finish(&self, AsyncResult* res) @extern("g_dbus_connection_call_finish");

<* Maps to DBusConnection::call_sync *>
extern fn glib::Variant* DBusConnection.call_sync(&self, ZString bus_name, ZString object_path, ZString interface_name, ZString method_name, glib::Variant* parameters, glib::VariantType* reply_type, DBusCallFlags flags, int timeout_msec, Cancellable* cancellable) @extern("g_dbus_connection_call_sync");

<* Maps to DBusConnection::call_with_unix_fd_list *>
extern fn void DBusConnection.call_with_unix_fd_list(&self, ZString bus_name, ZString object_path, ZString interface_name, ZString method_name, glib::Variant* parameters, glib::VariantType* reply_type, DBusCallFlags flags, int timeout_msec, UnixFDList* fd_list, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_call_with_unix_fd_list");

<* Maps to DBusConnection::call_with_unix_fd_list_finish *>
extern fn glib::Variant* DBusConnection.call_with_unix_fd_list_finish(&self, UnixFDList* out_fd_list, AsyncResult* res) @extern("g_dbus_connection_call_with_unix_fd_list_finish");

<* Maps to DBusConnection::call_with_unix_fd_list_sync *>
extern fn glib::Variant* DBusConnection.call_with_unix_fd_list_sync(&self, ZString bus_name, ZString object_path, ZString interface_name, ZString method_name, glib::Variant* parameters, glib::VariantType* reply_type, DBusCallFlags flags, int timeout_msec, UnixFDList* fd_list, UnixFDList* out_fd_list, Cancellable* cancellable) @extern("g_dbus_connection_call_with_unix_fd_list_sync");

<* Maps to DBusConnection::close *>
extern fn void DBusConnection.close(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_close");

<* Maps to DBusConnection::close_finish *>
extern fn bool DBusConnection.close_finish(&self, AsyncResult* res) @extern("g_dbus_connection_close_finish");

<* Maps to DBusConnection::close_sync *>
extern fn bool DBusConnection.close_sync(&self, Cancellable* cancellable) @extern("g_dbus_connection_close_sync");

<* Maps to DBusConnection::emit_signal *>
extern fn bool DBusConnection.emit_signal(&self, ZString destination_bus_name, ZString object_path, ZString interface_name, ZString signal_name, glib::Variant* parameters) @extern("g_dbus_connection_emit_signal");

<* Maps to DBusConnection::export_action_group *>
extern fn uint DBusConnection.export_action_group(&self, ZString object_path, ActionGroup* action_group) @extern("g_dbus_connection_export_action_group");

<* Maps to DBusConnection::export_menu_model *>
extern fn uint DBusConnection.export_menu_model(&self, ZString object_path, MenuModel* menu) @extern("g_dbus_connection_export_menu_model");

<* Maps to DBusConnection::flush *>
extern fn void DBusConnection.flush(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_flush");

<* Maps to DBusConnection::flush_finish *>
extern fn bool DBusConnection.flush_finish(&self, AsyncResult* res) @extern("g_dbus_connection_flush_finish");

<* Maps to DBusConnection::flush_sync *>
extern fn bool DBusConnection.flush_sync(&self, Cancellable* cancellable) @extern("g_dbus_connection_flush_sync");

<* Maps to DBusConnection::get_capabilities *>
extern fn DBusCapabilityFlags DBusConnection.get_capabilities(&self, ) @extern("g_dbus_connection_get_capabilities");

<* Maps to DBusConnection::get_exit_on_close *>
extern fn bool DBusConnection.get_exit_on_close(&self, ) @extern("g_dbus_connection_get_exit_on_close");

<* Maps to DBusConnection::get_flags *>
extern fn DBusConnectionFlags DBusConnection.get_flags(&self, ) @extern("g_dbus_connection_get_flags");

<* Maps to DBusConnection::get_guid *>
extern fn ZString DBusConnection.get_guid(&self, ) @extern("g_dbus_connection_get_guid");

<* Maps to DBusConnection::get_last_serial *>
extern fn uint DBusConnection.get_last_serial(&self, ) @extern("g_dbus_connection_get_last_serial");

<* Maps to DBusConnection::get_peer_credentials *>
extern fn Credentials* DBusConnection.get_peer_credentials(&self, ) @extern("g_dbus_connection_get_peer_credentials");

<* Maps to DBusConnection::get_stream *>
extern fn IOStream* DBusConnection.get_stream(&self, ) @extern("g_dbus_connection_get_stream");

<* Maps to DBusConnection::get_unique_name *>
extern fn ZString DBusConnection.get_unique_name(&self, ) @extern("g_dbus_connection_get_unique_name");

<* Maps to DBusConnection::is_closed *>
extern fn bool DBusConnection.is_closed(&self, ) @extern("g_dbus_connection_is_closed");

<* Maps to DBusConnection::register_object *>
extern fn uint DBusConnection.register_object(&self, ZString object_path, DBusInterfaceInfo* interface_info, DBusInterfaceVTable* vtable, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_dbus_connection_register_object");

<* Maps to DBusConnection::register_object_with_closures *>
extern fn uint DBusConnection.register_object_with_closures(&self, ZString object_path, DBusInterfaceInfo* interface_info, gobject::Closure* method_call_closure, gobject::Closure* get_property_closure, gobject::Closure* set_property_closure) @extern("g_dbus_connection_register_object_with_closures");

<* Maps to DBusConnection::register_subtree *>
extern fn uint DBusConnection.register_subtree(&self, ZString object_path, DBusSubtreeVTable* vtable, DBusSubtreeFlags flags, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_dbus_connection_register_subtree");

<* Maps to DBusConnection::remove_filter *>
extern fn void DBusConnection.remove_filter(&self, uint filter_id) @extern("g_dbus_connection_remove_filter");

<* Maps to DBusConnection::send_message *>
extern fn bool DBusConnection.send_message(&self, DBusMessage* message, DBusSendMessageFlags flags, uint* out_serial) @extern("g_dbus_connection_send_message");

<* Maps to DBusConnection::send_message_with_reply *>
extern fn void DBusConnection.send_message_with_reply(&self, DBusMessage* message, DBusSendMessageFlags flags, int timeout_msec, uint* out_serial, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_send_message_with_reply");

<* Maps to DBusConnection::send_message_with_reply_finish *>
extern fn DBusMessage* DBusConnection.send_message_with_reply_finish(&self, AsyncResult* res) @extern("g_dbus_connection_send_message_with_reply_finish");

<* Maps to DBusConnection::send_message_with_reply_sync *>
extern fn DBusMessage* DBusConnection.send_message_with_reply_sync(&self, DBusMessage* message, DBusSendMessageFlags flags, int timeout_msec, uint* out_serial, Cancellable* cancellable) @extern("g_dbus_connection_send_message_with_reply_sync");

<* Maps to DBusConnection::set_exit_on_close *>
extern fn void DBusConnection.set_exit_on_close(&self, bool exit_on_close) @extern("g_dbus_connection_set_exit_on_close");

<* Maps to DBusConnection::signal_subscribe *>
extern fn uint DBusConnection.signal_subscribe(&self, ZString sender, ZString interface_name, ZString member, ZString object_path, ZString arg0, DBusSignalFlags flags, DBusSignalCallback callback, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_dbus_connection_signal_subscribe");

<* Maps to DBusConnection::signal_unsubscribe *>
extern fn void DBusConnection.signal_unsubscribe(&self, uint subscription_id) @extern("g_dbus_connection_signal_unsubscribe");

<* Maps to DBusConnection::start_message_processing *>
extern fn void DBusConnection.start_message_processing(&self, ) @extern("g_dbus_connection_start_message_processing");

<* Maps to DBusConnection::unexport_action_group *>
extern fn void DBusConnection.unexport_action_group(&self, uint export_id) @extern("g_dbus_connection_unexport_action_group");

<* Maps to DBusConnection::unexport_menu_model *>
extern fn void DBusConnection.unexport_menu_model(&self, uint export_id) @extern("g_dbus_connection_unexport_menu_model");

<* Maps to DBusConnection::unregister_object *>
extern fn bool DBusConnection.unregister_object(&self, uint registration_id) @extern("g_dbus_connection_unregister_object");

<* Maps to DBusConnection::unregister_subtree *>
extern fn bool DBusConnection.unregister_subtree(&self, uint registration_id) @extern("g_dbus_connection_unregister_subtree");


// Class Functions

<* Maps to new of DBusConnection *>
extern fn void d_bus_connection_new(IOStream* stream, ZString guid, DBusConnectionFlags flags, DBusAuthObserver* observer, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_new");

<* Maps to new_for_address of DBusConnection *>
extern fn void d_bus_connection_new_for_address(ZString address, DBusConnectionFlags flags, DBusAuthObserver* observer, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_connection_new_for_address");



<* Maps to GDBusInterfaceSkeleton *>
distinct DBusInterfaceSkeleton = void*;

// Class to parent cast.
fn gobject::Object* DBusInterfaceSkeleton.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to DBusInterfaceSkeleton::export *>
extern fn bool DBusInterfaceSkeleton.export(&self, DBusConnection* connection, ZString object_path) @extern("g_dbus_interface_skeleton_export");

<* Maps to DBusInterfaceSkeleton::flush *>
extern fn void DBusInterfaceSkeleton.flush(&self, ) @extern("g_dbus_interface_skeleton_flush");

<* Maps to DBusInterfaceSkeleton::get_connection *>
extern fn DBusConnection* DBusInterfaceSkeleton.get_connection(&self, ) @extern("g_dbus_interface_skeleton_get_connection");

<* Maps to DBusInterfaceSkeleton::get_connections *>
extern fn glib::List* DBusInterfaceSkeleton.get_connections(&self, ) @extern("g_dbus_interface_skeleton_get_connections");

<* Maps to DBusInterfaceSkeleton::get_flags *>
extern fn DBusInterfaceSkeletonFlags DBusInterfaceSkeleton.get_flags(&self, ) @extern("g_dbus_interface_skeleton_get_flags");

<* Maps to DBusInterfaceSkeleton::get_info *>
extern fn DBusInterfaceInfo* DBusInterfaceSkeleton.get_info(&self, ) @extern("g_dbus_interface_skeleton_get_info");

<* Maps to DBusInterfaceSkeleton::get_object_path *>
extern fn ZString DBusInterfaceSkeleton.get_object_path(&self, ) @extern("g_dbus_interface_skeleton_get_object_path");

<* Maps to DBusInterfaceSkeleton::get_properties *>
extern fn glib::Variant* DBusInterfaceSkeleton.get_properties(&self, ) @extern("g_dbus_interface_skeleton_get_properties");

<* Maps to DBusInterfaceSkeleton::get_vtable *>
extern fn DBusInterfaceVTable* DBusInterfaceSkeleton.get_vtable(&self, ) @extern("g_dbus_interface_skeleton_get_vtable");

<* Maps to DBusInterfaceSkeleton::has_connection *>
extern fn bool DBusInterfaceSkeleton.has_connection(&self, DBusConnection* connection) @extern("g_dbus_interface_skeleton_has_connection");

<* Maps to DBusInterfaceSkeleton::set_flags *>
extern fn void DBusInterfaceSkeleton.set_flags(&self, DBusInterfaceSkeletonFlags flags) @extern("g_dbus_interface_skeleton_set_flags");

<* Maps to DBusInterfaceSkeleton::unexport *>
extern fn void DBusInterfaceSkeleton.unexport(&self, ) @extern("g_dbus_interface_skeleton_unexport");

<* Maps to DBusInterfaceSkeleton::unexport_from_connection *>
extern fn void DBusInterfaceSkeleton.unexport_from_connection(&self, DBusConnection* connection) @extern("g_dbus_interface_skeleton_unexport_from_connection");


// Class Functions



<* Maps to GDBusMenuModel *>
distinct DBusMenuModel = void*;

// Class to parent cast.
fn MenuModel* DBusMenuModel.as_MenuModel(&self) => (MenuModel*)(self);

// Class Constructors



// Class Methods


// Class Functions

<* Maps to get of DBusMenuModel *>
extern fn DBusMenuModel* d_bus_menu_model_get(DBusConnection* connection, ZString bus_name, ZString object_path) @extern("g_dbus_menu_model_get");



<* Maps to GDBusMessage *>
distinct DBusMessage = void*;

// Class to parent cast.
fn gobject::Object* DBusMessage.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of DBusMessage *>
extern fn DBusMessage* d_bus_message_new() @extern("g_dbus_message_new");

<* Maps to new_from_blob of DBusMessage *>
extern fn DBusMessage* d_bus_message_new_from_blob(char blob, usz blob_len, DBusCapabilityFlags capabilities) @extern("g_dbus_message_new_from_blob");

<* Maps to new_method_call of DBusMessage *>
extern fn DBusMessage* d_bus_message_new_method_call(ZString name, ZString path, ZString interface_, ZString method) @extern("g_dbus_message_new_method_call");

<* Maps to new_signal of DBusMessage *>
extern fn DBusMessage* d_bus_message_new_signal(ZString path, ZString interface_, ZString signal) @extern("g_dbus_message_new_signal");



// Class Methods

<* Maps to DBusMessage::copy *>
extern fn DBusMessage* DBusMessage.copy(&self, ) @extern("g_dbus_message_copy");

<* Maps to DBusMessage::get_arg0 *>
extern fn ZString DBusMessage.get_arg0(&self, ) @extern("g_dbus_message_get_arg0");

<* Maps to DBusMessage::get_arg0_path *>
extern fn ZString DBusMessage.get_arg0_path(&self, ) @extern("g_dbus_message_get_arg0_path");

<* Maps to DBusMessage::get_body *>
extern fn glib::Variant* DBusMessage.get_body(&self, ) @extern("g_dbus_message_get_body");

<* Maps to DBusMessage::get_byte_order *>
extern fn DBusMessageByteOrder DBusMessage.get_byte_order(&self, ) @extern("g_dbus_message_get_byte_order");

<* Maps to DBusMessage::get_destination *>
extern fn ZString DBusMessage.get_destination(&self, ) @extern("g_dbus_message_get_destination");

<* Maps to DBusMessage::get_error_name *>
extern fn ZString DBusMessage.get_error_name(&self, ) @extern("g_dbus_message_get_error_name");

<* Maps to DBusMessage::get_flags *>
extern fn DBusMessageFlags DBusMessage.get_flags(&self, ) @extern("g_dbus_message_get_flags");

<* Maps to DBusMessage::get_header *>
extern fn glib::Variant* DBusMessage.get_header(&self, DBusMessageHeaderField header_field) @extern("g_dbus_message_get_header");

<* Maps to DBusMessage::get_header_fields *>
extern fn char DBusMessage.get_header_fields(&self, ) @extern("g_dbus_message_get_header_fields");

<* Maps to DBusMessage::get_interface *>
extern fn ZString DBusMessage.get_interface(&self, ) @extern("g_dbus_message_get_interface");

<* Maps to DBusMessage::get_locked *>
extern fn bool DBusMessage.get_locked(&self, ) @extern("g_dbus_message_get_locked");

<* Maps to DBusMessage::get_member *>
extern fn ZString DBusMessage.get_member(&self, ) @extern("g_dbus_message_get_member");

<* Maps to DBusMessage::get_message_type *>
extern fn DBusMessageType DBusMessage.get_message_type(&self, ) @extern("g_dbus_message_get_message_type");

<* Maps to DBusMessage::get_num_unix_fds *>
extern fn uint DBusMessage.get_num_unix_fds(&self, ) @extern("g_dbus_message_get_num_unix_fds");

<* Maps to DBusMessage::get_path *>
extern fn ZString DBusMessage.get_path(&self, ) @extern("g_dbus_message_get_path");

<* Maps to DBusMessage::get_reply_serial *>
extern fn uint DBusMessage.get_reply_serial(&self, ) @extern("g_dbus_message_get_reply_serial");

<* Maps to DBusMessage::get_sender *>
extern fn ZString DBusMessage.get_sender(&self, ) @extern("g_dbus_message_get_sender");

<* Maps to DBusMessage::get_serial *>
extern fn uint DBusMessage.get_serial(&self, ) @extern("g_dbus_message_get_serial");

<* Maps to DBusMessage::get_signature *>
extern fn ZString DBusMessage.get_signature(&self, ) @extern("g_dbus_message_get_signature");

<* Maps to DBusMessage::get_unix_fd_list *>
extern fn UnixFDList* DBusMessage.get_unix_fd_list(&self, ) @extern("g_dbus_message_get_unix_fd_list");

<* Maps to DBusMessage::lock *>
extern fn void DBusMessage.lock(&self, ) @extern("g_dbus_message_lock");

<* Maps to DBusMessage::new_method_error *>
extern fn DBusMessage* DBusMessage.new_method_error(&self, ZString error_name, ZString error_message_format, any rest) @extern("g_dbus_message_new_method_error");

<* Maps to DBusMessage::new_method_error_literal *>
extern fn DBusMessage* DBusMessage.new_method_error_literal(&self, ZString error_name, ZString error_message) @extern("g_dbus_message_new_method_error_literal");

<* Maps to DBusMessage::new_method_error_valist *>
extern fn DBusMessage* DBusMessage.new_method_error_valist(&self, ZString error_name, ZString error_message_format, ZString var_args) @extern("g_dbus_message_new_method_error_valist");

<* Maps to DBusMessage::new_method_reply *>
extern fn DBusMessage* DBusMessage.new_method_reply(&self, ) @extern("g_dbus_message_new_method_reply");

<* Maps to DBusMessage::print *>
extern fn ZString* DBusMessage.print(&self, uint indent) @extern("g_dbus_message_print");

<* Maps to DBusMessage::set_body *>
extern fn void DBusMessage.set_body(&self, glib::Variant* body) @extern("g_dbus_message_set_body");

<* Maps to DBusMessage::set_byte_order *>
extern fn void DBusMessage.set_byte_order(&self, DBusMessageByteOrder byte_order) @extern("g_dbus_message_set_byte_order");

<* Maps to DBusMessage::set_destination *>
extern fn void DBusMessage.set_destination(&self, ZString value) @extern("g_dbus_message_set_destination");

<* Maps to DBusMessage::set_error_name *>
extern fn void DBusMessage.set_error_name(&self, ZString value) @extern("g_dbus_message_set_error_name");

<* Maps to DBusMessage::set_flags *>
extern fn void DBusMessage.set_flags(&self, DBusMessageFlags flags) @extern("g_dbus_message_set_flags");

<* Maps to DBusMessage::set_header *>
extern fn void DBusMessage.set_header(&self, DBusMessageHeaderField header_field, glib::Variant* value) @extern("g_dbus_message_set_header");

<* Maps to DBusMessage::set_interface *>
extern fn void DBusMessage.set_interface(&self, ZString value) @extern("g_dbus_message_set_interface");

<* Maps to DBusMessage::set_member *>
extern fn void DBusMessage.set_member(&self, ZString value) @extern("g_dbus_message_set_member");

<* Maps to DBusMessage::set_message_type *>
extern fn void DBusMessage.set_message_type(&self, DBusMessageType type) @extern("g_dbus_message_set_message_type");

<* Maps to DBusMessage::set_num_unix_fds *>
extern fn void DBusMessage.set_num_unix_fds(&self, uint value) @extern("g_dbus_message_set_num_unix_fds");

<* Maps to DBusMessage::set_path *>
extern fn void DBusMessage.set_path(&self, ZString value) @extern("g_dbus_message_set_path");

<* Maps to DBusMessage::set_reply_serial *>
extern fn void DBusMessage.set_reply_serial(&self, uint value) @extern("g_dbus_message_set_reply_serial");

<* Maps to DBusMessage::set_sender *>
extern fn void DBusMessage.set_sender(&self, ZString value) @extern("g_dbus_message_set_sender");

<* Maps to DBusMessage::set_serial *>
extern fn void DBusMessage.set_serial(&self, uint serial) @extern("g_dbus_message_set_serial");

<* Maps to DBusMessage::set_signature *>
extern fn void DBusMessage.set_signature(&self, ZString value) @extern("g_dbus_message_set_signature");

<* Maps to DBusMessage::set_unix_fd_list *>
extern fn void DBusMessage.set_unix_fd_list(&self, UnixFDList* fd_list) @extern("g_dbus_message_set_unix_fd_list");

<* Maps to DBusMessage::to_blob *>
extern fn char DBusMessage.to_blob(&self, usz* out_size, DBusCapabilityFlags capabilities) @extern("g_dbus_message_to_blob");

<* Maps to DBusMessage::to_gerror *>
extern fn bool DBusMessage.to_gerror(&self, ) @extern("g_dbus_message_to_gerror");


// Class Functions

<* Maps to bytes_needed of DBusMessage *>
extern fn isz d_bus_message_bytes_needed(char blob, usz blob_len) @extern("g_dbus_message_bytes_needed");



<* Maps to GDBusMethodInvocation *>
distinct DBusMethodInvocation = void*;

// Class to parent cast.
fn gobject::Object* DBusMethodInvocation.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to DBusMethodInvocation::get_connection *>
extern fn DBusConnection* DBusMethodInvocation.get_connection(&self, ) @extern("g_dbus_method_invocation_get_connection");

<* Maps to DBusMethodInvocation::get_interface_name *>
extern fn ZString DBusMethodInvocation.get_interface_name(&self, ) @extern("g_dbus_method_invocation_get_interface_name");

<* Maps to DBusMethodInvocation::get_message *>
extern fn DBusMessage* DBusMethodInvocation.get_message(&self, ) @extern("g_dbus_method_invocation_get_message");

<* Maps to DBusMethodInvocation::get_method_info *>
extern fn DBusMethodInfo* DBusMethodInvocation.get_method_info(&self, ) @extern("g_dbus_method_invocation_get_method_info");

<* Maps to DBusMethodInvocation::get_method_name *>
extern fn ZString DBusMethodInvocation.get_method_name(&self, ) @extern("g_dbus_method_invocation_get_method_name");

<* Maps to DBusMethodInvocation::get_object_path *>
extern fn ZString DBusMethodInvocation.get_object_path(&self, ) @extern("g_dbus_method_invocation_get_object_path");

<* Maps to DBusMethodInvocation::get_parameters *>
extern fn glib::Variant* DBusMethodInvocation.get_parameters(&self, ) @extern("g_dbus_method_invocation_get_parameters");

<* Maps to DBusMethodInvocation::get_property_info *>
extern fn DBusPropertyInfo* DBusMethodInvocation.get_property_info(&self, ) @extern("g_dbus_method_invocation_get_property_info");

<* Maps to DBusMethodInvocation::get_sender *>
extern fn ZString DBusMethodInvocation.get_sender(&self, ) @extern("g_dbus_method_invocation_get_sender");

<* Maps to DBusMethodInvocation::get_user_data *>
extern fn void* DBusMethodInvocation.get_user_data(&self, ) @extern("g_dbus_method_invocation_get_user_data");

<* Maps to DBusMethodInvocation::return_dbus_error *>
extern fn void DBusMethodInvocation.return_dbus_error(&self, ZString error_name, ZString error_message) @extern("g_dbus_method_invocation_return_dbus_error");

<* Maps to DBusMethodInvocation::return_error *>
extern fn void DBusMethodInvocation.return_error(&self, glib::Quark domain, int code, ZString format, any rest) @extern("g_dbus_method_invocation_return_error");

<* Maps to DBusMethodInvocation::return_error_literal *>
extern fn void DBusMethodInvocation.return_error_literal(&self, glib::Quark domain, int code, ZString message) @extern("g_dbus_method_invocation_return_error_literal");

<* Maps to DBusMethodInvocation::return_error_valist *>
extern fn void DBusMethodInvocation.return_error_valist(&self, glib::Quark domain, int code, ZString format, ZString var_args) @extern("g_dbus_method_invocation_return_error_valist");

<* Maps to DBusMethodInvocation::return_gerror *>
extern fn void DBusMethodInvocation.return_gerror(&self, glib::Error* error) @extern("g_dbus_method_invocation_return_gerror");

<* Maps to DBusMethodInvocation::return_value *>
extern fn void DBusMethodInvocation.return_value(&self, glib::Variant* parameters) @extern("g_dbus_method_invocation_return_value");

<* Maps to DBusMethodInvocation::return_value_with_unix_fd_list *>
extern fn void DBusMethodInvocation.return_value_with_unix_fd_list(&self, glib::Variant* parameters, UnixFDList* fd_list) @extern("g_dbus_method_invocation_return_value_with_unix_fd_list");

<* Maps to DBusMethodInvocation::take_error *>
extern fn void DBusMethodInvocation.take_error(&self, glib::Error* error) @extern("g_dbus_method_invocation_take_error");


// Class Functions



<* Maps to GDBusObjectManagerClient *>
distinct DBusObjectManagerClient = void*;

// Class to parent cast.
fn gobject::Object* DBusObjectManagerClient.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_finish of DBusObjectManagerClient *>
extern fn DBusObjectManagerClient* d_bus_object_manager_client_new_finish(AsyncResult* res) @extern("g_dbus_object_manager_client_new_finish");

<* Maps to new_for_bus_finish of DBusObjectManagerClient *>
extern fn DBusObjectManagerClient* d_bus_object_manager_client_new_for_bus_finish(AsyncResult* res) @extern("g_dbus_object_manager_client_new_for_bus_finish");

<* Maps to new_for_bus_sync of DBusObjectManagerClient *>
extern fn DBusObjectManagerClient* d_bus_object_manager_client_new_for_bus_sync(BusType bus_type, DBusObjectManagerClientFlags flags, ZString name, ZString object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, glib::DestroyNotify get_proxy_type_destroy_notify, Cancellable* cancellable) @extern("g_dbus_object_manager_client_new_for_bus_sync");

<* Maps to new_sync of DBusObjectManagerClient *>
extern fn DBusObjectManagerClient* d_bus_object_manager_client_new_sync(DBusConnection* connection, DBusObjectManagerClientFlags flags, ZString name, ZString object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, glib::DestroyNotify get_proxy_type_destroy_notify, Cancellable* cancellable) @extern("g_dbus_object_manager_client_new_sync");



// Class Methods

<* Maps to DBusObjectManagerClient::get_connection *>
extern fn DBusConnection* DBusObjectManagerClient.get_connection(&self, ) @extern("g_dbus_object_manager_client_get_connection");

<* Maps to DBusObjectManagerClient::get_flags *>
extern fn DBusObjectManagerClientFlags DBusObjectManagerClient.get_flags(&self, ) @extern("g_dbus_object_manager_client_get_flags");

<* Maps to DBusObjectManagerClient::get_name *>
extern fn ZString DBusObjectManagerClient.get_name(&self, ) @extern("g_dbus_object_manager_client_get_name");

<* Maps to DBusObjectManagerClient::get_name_owner *>
extern fn ZString* DBusObjectManagerClient.get_name_owner(&self, ) @extern("g_dbus_object_manager_client_get_name_owner");


// Class Functions

<* Maps to new of DBusObjectManagerClient *>
extern fn void d_bus_object_manager_client_new(DBusConnection* connection, DBusObjectManagerClientFlags flags, ZString name, ZString object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, glib::DestroyNotify get_proxy_type_destroy_notify, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_object_manager_client_new");

<* Maps to new_for_bus of DBusObjectManagerClient *>
extern fn void d_bus_object_manager_client_new_for_bus(BusType bus_type, DBusObjectManagerClientFlags flags, ZString name, ZString object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, glib::DestroyNotify get_proxy_type_destroy_notify, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_object_manager_client_new_for_bus");



<* Maps to GDBusObjectManagerServer *>
distinct DBusObjectManagerServer = void*;

// Class to parent cast.
fn gobject::Object* DBusObjectManagerServer.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of DBusObjectManagerServer *>
extern fn DBusObjectManagerServer* d_bus_object_manager_server_new(ZString object_path) @extern("g_dbus_object_manager_server_new");



// Class Methods

<* Maps to DBusObjectManagerServer::export *>
extern fn void DBusObjectManagerServer.export(&self, DBusObjectSkeleton* object) @extern("g_dbus_object_manager_server_export");

<* Maps to DBusObjectManagerServer::export_uniquely *>
extern fn void DBusObjectManagerServer.export_uniquely(&self, DBusObjectSkeleton* object) @extern("g_dbus_object_manager_server_export_uniquely");

<* Maps to DBusObjectManagerServer::get_connection *>
extern fn DBusConnection* DBusObjectManagerServer.get_connection(&self, ) @extern("g_dbus_object_manager_server_get_connection");

<* Maps to DBusObjectManagerServer::is_exported *>
extern fn bool DBusObjectManagerServer.is_exported(&self, DBusObjectSkeleton* object) @extern("g_dbus_object_manager_server_is_exported");

<* Maps to DBusObjectManagerServer::set_connection *>
extern fn void DBusObjectManagerServer.set_connection(&self, DBusConnection* connection) @extern("g_dbus_object_manager_server_set_connection");

<* Maps to DBusObjectManagerServer::unexport *>
extern fn bool DBusObjectManagerServer.unexport(&self, ZString object_path) @extern("g_dbus_object_manager_server_unexport");


// Class Functions



<* Maps to GDBusObjectProxy *>
distinct DBusObjectProxy = void*;

// Class to parent cast.
fn gobject::Object* DBusObjectProxy.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of DBusObjectProxy *>
extern fn DBusObjectProxy* d_bus_object_proxy_new(DBusConnection* connection, ZString object_path) @extern("g_dbus_object_proxy_new");



// Class Methods

<* Maps to DBusObjectProxy::get_connection *>
extern fn DBusConnection* DBusObjectProxy.get_connection(&self, ) @extern("g_dbus_object_proxy_get_connection");


// Class Functions



<* Maps to GDBusObjectSkeleton *>
distinct DBusObjectSkeleton = void*;

// Class to parent cast.
fn gobject::Object* DBusObjectSkeleton.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of DBusObjectSkeleton *>
extern fn DBusObjectSkeleton* d_bus_object_skeleton_new(ZString object_path) @extern("g_dbus_object_skeleton_new");



// Class Methods

<* Maps to DBusObjectSkeleton::add_interface *>
extern fn void DBusObjectSkeleton.add_interface(&self, DBusInterfaceSkeleton* interface_) @extern("g_dbus_object_skeleton_add_interface");

<* Maps to DBusObjectSkeleton::flush *>
extern fn void DBusObjectSkeleton.flush(&self, ) @extern("g_dbus_object_skeleton_flush");

<* Maps to DBusObjectSkeleton::remove_interface *>
extern fn void DBusObjectSkeleton.remove_interface(&self, DBusInterfaceSkeleton* interface_) @extern("g_dbus_object_skeleton_remove_interface");

<* Maps to DBusObjectSkeleton::remove_interface_by_name *>
extern fn void DBusObjectSkeleton.remove_interface_by_name(&self, ZString interface_name) @extern("g_dbus_object_skeleton_remove_interface_by_name");

<* Maps to DBusObjectSkeleton::set_object_path *>
extern fn void DBusObjectSkeleton.set_object_path(&self, ZString object_path) @extern("g_dbus_object_skeleton_set_object_path");


// Class Functions



<* Maps to GDBusProxy *>
distinct DBusProxy = void*;

// Class to parent cast.
fn gobject::Object* DBusProxy.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_finish of DBusProxy *>
extern fn DBusProxy* d_bus_proxy_new_finish(AsyncResult* res) @extern("g_dbus_proxy_new_finish");

<* Maps to new_for_bus_finish of DBusProxy *>
extern fn DBusProxy* d_bus_proxy_new_for_bus_finish(AsyncResult* res) @extern("g_dbus_proxy_new_for_bus_finish");

<* Maps to new_for_bus_sync of DBusProxy *>
extern fn DBusProxy* d_bus_proxy_new_for_bus_sync(BusType bus_type, DBusProxyFlags flags, DBusInterfaceInfo* info, ZString name, ZString object_path, ZString interface_name, Cancellable* cancellable) @extern("g_dbus_proxy_new_for_bus_sync");

<* Maps to new_sync of DBusProxy *>
extern fn DBusProxy* d_bus_proxy_new_sync(DBusConnection* connection, DBusProxyFlags flags, DBusInterfaceInfo* info, ZString name, ZString object_path, ZString interface_name, Cancellable* cancellable) @extern("g_dbus_proxy_new_sync");



// Class Methods

<* Maps to DBusProxy::call *>
extern fn void DBusProxy.call(&self, ZString method_name, glib::Variant* parameters, DBusCallFlags flags, int timeout_msec, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_proxy_call");

<* Maps to DBusProxy::call_finish *>
extern fn glib::Variant* DBusProxy.call_finish(&self, AsyncResult* res) @extern("g_dbus_proxy_call_finish");

<* Maps to DBusProxy::call_sync *>
extern fn glib::Variant* DBusProxy.call_sync(&self, ZString method_name, glib::Variant* parameters, DBusCallFlags flags, int timeout_msec, Cancellable* cancellable) @extern("g_dbus_proxy_call_sync");

<* Maps to DBusProxy::call_with_unix_fd_list *>
extern fn void DBusProxy.call_with_unix_fd_list(&self, ZString method_name, glib::Variant* parameters, DBusCallFlags flags, int timeout_msec, UnixFDList* fd_list, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_proxy_call_with_unix_fd_list");

<* Maps to DBusProxy::call_with_unix_fd_list_finish *>
extern fn glib::Variant* DBusProxy.call_with_unix_fd_list_finish(&self, UnixFDList* out_fd_list, AsyncResult* res) @extern("g_dbus_proxy_call_with_unix_fd_list_finish");

<* Maps to DBusProxy::call_with_unix_fd_list_sync *>
extern fn glib::Variant* DBusProxy.call_with_unix_fd_list_sync(&self, ZString method_name, glib::Variant* parameters, DBusCallFlags flags, int timeout_msec, UnixFDList* fd_list, UnixFDList* out_fd_list, Cancellable* cancellable) @extern("g_dbus_proxy_call_with_unix_fd_list_sync");

<* Maps to DBusProxy::get_cached_property *>
extern fn glib::Variant* DBusProxy.get_cached_property(&self, ZString property_name) @extern("g_dbus_proxy_get_cached_property");

<* Maps to DBusProxy::get_cached_property_names *>
extern fn ZString DBusProxy.get_cached_property_names(&self, ) @extern("g_dbus_proxy_get_cached_property_names");

<* Maps to DBusProxy::get_connection *>
extern fn DBusConnection* DBusProxy.get_connection(&self, ) @extern("g_dbus_proxy_get_connection");

<* Maps to DBusProxy::get_default_timeout *>
extern fn int DBusProxy.get_default_timeout(&self, ) @extern("g_dbus_proxy_get_default_timeout");

<* Maps to DBusProxy::get_flags *>
extern fn DBusProxyFlags DBusProxy.get_flags(&self, ) @extern("g_dbus_proxy_get_flags");

<* Maps to DBusProxy::get_interface_info *>
extern fn DBusInterfaceInfo* DBusProxy.get_interface_info(&self, ) @extern("g_dbus_proxy_get_interface_info");

<* Maps to DBusProxy::get_interface_name *>
extern fn ZString DBusProxy.get_interface_name(&self, ) @extern("g_dbus_proxy_get_interface_name");

<* Maps to DBusProxy::get_name *>
extern fn ZString DBusProxy.get_name(&self, ) @extern("g_dbus_proxy_get_name");

<* Maps to DBusProxy::get_name_owner *>
extern fn ZString* DBusProxy.get_name_owner(&self, ) @extern("g_dbus_proxy_get_name_owner");

<* Maps to DBusProxy::get_object_path *>
extern fn ZString DBusProxy.get_object_path(&self, ) @extern("g_dbus_proxy_get_object_path");

<* Maps to DBusProxy::set_cached_property *>
extern fn void DBusProxy.set_cached_property(&self, ZString property_name, glib::Variant* value) @extern("g_dbus_proxy_set_cached_property");

<* Maps to DBusProxy::set_default_timeout *>
extern fn void DBusProxy.set_default_timeout(&self, int timeout_msec) @extern("g_dbus_proxy_set_default_timeout");

<* Maps to DBusProxy::set_interface_info *>
extern fn void DBusProxy.set_interface_info(&self, DBusInterfaceInfo* info) @extern("g_dbus_proxy_set_interface_info");


// Class Functions

<* Maps to new of DBusProxy *>
extern fn void d_bus_proxy_new(DBusConnection* connection, DBusProxyFlags flags, DBusInterfaceInfo* info, ZString name, ZString object_path, ZString interface_name, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_proxy_new");

<* Maps to new_for_bus of DBusProxy *>
extern fn void d_bus_proxy_new_for_bus(BusType bus_type, DBusProxyFlags flags, DBusInterfaceInfo* info, ZString name, ZString object_path, ZString interface_name, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_proxy_new_for_bus");



<* Maps to GDBusServer *>
distinct DBusServer = void*;

// Class to parent cast.
fn gobject::Object* DBusServer.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_sync of DBusServer *>
extern fn DBusServer* d_bus_server_new_sync(ZString address, DBusServerFlags flags, ZString guid, DBusAuthObserver* observer, Cancellable* cancellable) @extern("g_dbus_server_new_sync");



// Class Methods

<* Maps to DBusServer::get_client_address *>
extern fn ZString DBusServer.get_client_address(&self, ) @extern("g_dbus_server_get_client_address");

<* Maps to DBusServer::get_flags *>
extern fn DBusServerFlags DBusServer.get_flags(&self, ) @extern("g_dbus_server_get_flags");

<* Maps to DBusServer::get_guid *>
extern fn ZString DBusServer.get_guid(&self, ) @extern("g_dbus_server_get_guid");

<* Maps to DBusServer::is_active *>
extern fn bool DBusServer.is_active(&self, ) @extern("g_dbus_server_is_active");

<* Maps to DBusServer::start *>
extern fn void DBusServer.start(&self, ) @extern("g_dbus_server_start");

<* Maps to DBusServer::stop *>
extern fn void DBusServer.stop(&self, ) @extern("g_dbus_server_stop");


// Class Functions



<* Maps to GDataInputStream *>
distinct DataInputStream = void*;

// Class to parent cast.
fn BufferedInputStream* DataInputStream.as_BufferedInputStream(&self) => (BufferedInputStream*)(self);

// Class Constructors

<* Maps to new of DataInputStream *>
extern fn DataInputStream* data_input_stream_new(InputStream* base_stream) @extern("g_data_input_stream_new");



// Class Methods

<* Maps to DataInputStream::get_byte_order *>
extern fn DataStreamByteOrder DataInputStream.get_byte_order(&self, ) @extern("g_data_input_stream_get_byte_order");

<* Maps to DataInputStream::get_newline_type *>
extern fn DataStreamNewlineType DataInputStream.get_newline_type(&self, ) @extern("g_data_input_stream_get_newline_type");

<* Maps to DataInputStream::read_byte *>
extern fn char DataInputStream.read_byte(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_byte");

<* Maps to DataInputStream::read_int16 *>
extern fn short DataInputStream.read_int16(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_int16");

<* Maps to DataInputStream::read_int32 *>
extern fn int DataInputStream.read_int32(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_int32");

<* Maps to DataInputStream::read_int64 *>
extern fn long DataInputStream.read_int64(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_int64");

<* Maps to DataInputStream::read_line *>
extern fn char DataInputStream.read_line(&self, usz* length, Cancellable* cancellable) @extern("g_data_input_stream_read_line");

<* Maps to DataInputStream::read_line_async *>
extern fn void DataInputStream.read_line_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_data_input_stream_read_line_async");

<* Maps to DataInputStream::read_line_finish *>
extern fn char DataInputStream.read_line_finish(&self, AsyncResult* result, usz* length) @extern("g_data_input_stream_read_line_finish");

<* Maps to DataInputStream::read_line_finish_utf8 *>
extern fn ZString* DataInputStream.read_line_finish_utf8(&self, AsyncResult* result, usz* length) @extern("g_data_input_stream_read_line_finish_utf8");

<* Maps to DataInputStream::read_line_utf8 *>
extern fn ZString* DataInputStream.read_line_utf8(&self, usz* length, Cancellable* cancellable) @extern("g_data_input_stream_read_line_utf8");

<* Maps to DataInputStream::read_uint16 *>
extern fn ushort DataInputStream.read_uint16(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_uint16");

<* Maps to DataInputStream::read_uint32 *>
extern fn uint DataInputStream.read_uint32(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_uint32");

<* Maps to DataInputStream::read_uint64 *>
extern fn ulong DataInputStream.read_uint64(&self, Cancellable* cancellable) @extern("g_data_input_stream_read_uint64");

<* Maps to DataInputStream::read_until *>
extern fn ZString* DataInputStream.read_until(&self, ZString stop_chars, usz* length, Cancellable* cancellable) @extern("g_data_input_stream_read_until");

<* Maps to DataInputStream::read_until_async *>
extern fn void DataInputStream.read_until_async(&self, ZString stop_chars, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_data_input_stream_read_until_async");

<* Maps to DataInputStream::read_until_finish *>
extern fn ZString* DataInputStream.read_until_finish(&self, AsyncResult* result, usz* length) @extern("g_data_input_stream_read_until_finish");

<* Maps to DataInputStream::read_upto *>
extern fn ZString* DataInputStream.read_upto(&self, ZString stop_chars, isz stop_chars_len, usz* length, Cancellable* cancellable) @extern("g_data_input_stream_read_upto");

<* Maps to DataInputStream::read_upto_async *>
extern fn void DataInputStream.read_upto_async(&self, ZString stop_chars, isz stop_chars_len, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_data_input_stream_read_upto_async");

<* Maps to DataInputStream::read_upto_finish *>
extern fn ZString* DataInputStream.read_upto_finish(&self, AsyncResult* result, usz* length) @extern("g_data_input_stream_read_upto_finish");

<* Maps to DataInputStream::set_byte_order *>
extern fn void DataInputStream.set_byte_order(&self, DataStreamByteOrder order) @extern("g_data_input_stream_set_byte_order");

<* Maps to DataInputStream::set_newline_type *>
extern fn void DataInputStream.set_newline_type(&self, DataStreamNewlineType type) @extern("g_data_input_stream_set_newline_type");


// Class Functions



<* Maps to GDataOutputStream *>
distinct DataOutputStream = void*;

// Class to parent cast.
fn FilterOutputStream* DataOutputStream.as_FilterOutputStream(&self) => (FilterOutputStream*)(self);

// Class Constructors

<* Maps to new of DataOutputStream *>
extern fn DataOutputStream* data_output_stream_new(OutputStream* base_stream) @extern("g_data_output_stream_new");



// Class Methods

<* Maps to DataOutputStream::get_byte_order *>
extern fn DataStreamByteOrder DataOutputStream.get_byte_order(&self, ) @extern("g_data_output_stream_get_byte_order");

<* Maps to DataOutputStream::put_byte *>
extern fn bool DataOutputStream.put_byte(&self, char data, Cancellable* cancellable) @extern("g_data_output_stream_put_byte");

<* Maps to DataOutputStream::put_int16 *>
extern fn bool DataOutputStream.put_int16(&self, short data, Cancellable* cancellable) @extern("g_data_output_stream_put_int16");

<* Maps to DataOutputStream::put_int32 *>
extern fn bool DataOutputStream.put_int32(&self, int data, Cancellable* cancellable) @extern("g_data_output_stream_put_int32");

<* Maps to DataOutputStream::put_int64 *>
extern fn bool DataOutputStream.put_int64(&self, long data, Cancellable* cancellable) @extern("g_data_output_stream_put_int64");

<* Maps to DataOutputStream::put_string *>
extern fn bool DataOutputStream.put_string(&self, ZString str, Cancellable* cancellable) @extern("g_data_output_stream_put_string");

<* Maps to DataOutputStream::put_uint16 *>
extern fn bool DataOutputStream.put_uint16(&self, ushort data, Cancellable* cancellable) @extern("g_data_output_stream_put_uint16");

<* Maps to DataOutputStream::put_uint32 *>
extern fn bool DataOutputStream.put_uint32(&self, uint data, Cancellable* cancellable) @extern("g_data_output_stream_put_uint32");

<* Maps to DataOutputStream::put_uint64 *>
extern fn bool DataOutputStream.put_uint64(&self, ulong data, Cancellable* cancellable) @extern("g_data_output_stream_put_uint64");

<* Maps to DataOutputStream::set_byte_order *>
extern fn void DataOutputStream.set_byte_order(&self, DataStreamByteOrder order) @extern("g_data_output_stream_set_byte_order");


// Class Functions



<* Maps to GDebugControllerDBus *>
distinct DebugControllerDBus = void*;

// Class to parent cast.
fn gobject::Object* DebugControllerDBus.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of DebugControllerDBus *>
extern fn DebugControllerDBus* debug_controller_d_bus_new(DBusConnection* connection, Cancellable* cancellable) @extern("g_debug_controller_dbus_new");



// Class Methods

<* Maps to DebugControllerDBus::stop *>
extern fn void DebugControllerDBus.stop(&self, ) @extern("g_debug_controller_dbus_stop");


// Class Functions



<* Maps to GDesktopAppInfo *>
distinct DesktopAppInfo = void*;

// Class to parent cast.
fn gobject::Object* DesktopAppInfo.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of DesktopAppInfo *>
extern fn DesktopAppInfo* desktop_app_info_new(ZString desktop_id) @extern("g_desktop_app_info_new");

<* Maps to new_from_filename of DesktopAppInfo *>
extern fn DesktopAppInfo* desktop_app_info_new_from_filename(ZString filename) @extern("g_desktop_app_info_new_from_filename");

<* Maps to new_from_keyfile of DesktopAppInfo *>
extern fn DesktopAppInfo* desktop_app_info_new_from_keyfile(glib::KeyFile* key_file) @extern("g_desktop_app_info_new_from_keyfile");



// Class Methods

<* Maps to DesktopAppInfo::get_action_name *>
extern fn ZString* DesktopAppInfo.get_action_name(&self, ZString action_name) @extern("g_desktop_app_info_get_action_name");

<* Maps to DesktopAppInfo::get_boolean *>
extern fn bool DesktopAppInfo.get_boolean(&self, ZString key) @extern("g_desktop_app_info_get_boolean");

<* Maps to DesktopAppInfo::get_categories *>
extern fn ZString DesktopAppInfo.get_categories(&self, ) @extern("g_desktop_app_info_get_categories");

<* Maps to DesktopAppInfo::get_filename *>
extern fn ZString DesktopAppInfo.get_filename(&self, ) @extern("g_desktop_app_info_get_filename");

<* Maps to DesktopAppInfo::get_generic_name *>
extern fn ZString DesktopAppInfo.get_generic_name(&self, ) @extern("g_desktop_app_info_get_generic_name");

<* Maps to DesktopAppInfo::get_is_hidden *>
extern fn bool DesktopAppInfo.get_is_hidden(&self, ) @extern("g_desktop_app_info_get_is_hidden");

<* Maps to DesktopAppInfo::get_keywords *>
extern fn ZString DesktopAppInfo.get_keywords(&self, ) @extern("g_desktop_app_info_get_keywords");

<* Maps to DesktopAppInfo::get_locale_string *>
extern fn ZString* DesktopAppInfo.get_locale_string(&self, ZString key) @extern("g_desktop_app_info_get_locale_string");

<* Maps to DesktopAppInfo::get_nodisplay *>
extern fn bool DesktopAppInfo.get_nodisplay(&self, ) @extern("g_desktop_app_info_get_nodisplay");

<* Maps to DesktopAppInfo::get_show_in *>
extern fn bool DesktopAppInfo.get_show_in(&self, ZString desktop_env) @extern("g_desktop_app_info_get_show_in");

<* Maps to DesktopAppInfo::get_startup_wm_class *>
extern fn ZString DesktopAppInfo.get_startup_wm_class(&self, ) @extern("g_desktop_app_info_get_startup_wm_class");

<* Maps to DesktopAppInfo::get_string *>
extern fn ZString* DesktopAppInfo.get_string(&self, ZString key) @extern("g_desktop_app_info_get_string");

<* Maps to DesktopAppInfo::get_string_list *>
extern fn ZString DesktopAppInfo.get_string_list(&self, ZString key, usz* length) @extern("g_desktop_app_info_get_string_list");

<* Maps to DesktopAppInfo::has_key *>
extern fn bool DesktopAppInfo.has_key(&self, ZString key) @extern("g_desktop_app_info_has_key");

<* Maps to DesktopAppInfo::launch_action *>
extern fn void DesktopAppInfo.launch_action(&self, ZString action_name, AppLaunchContext* launch_context) @extern("g_desktop_app_info_launch_action");

<* Maps to DesktopAppInfo::launch_uris_as_manager *>
extern fn bool DesktopAppInfo.launch_uris_as_manager(&self, glib::List* uris, AppLaunchContext* launch_context, glib::SpawnFlags spawn_flags, glib::SpawnChildSetupFunc user_setup, void* user_setup_data, DesktopAppLaunchCallback pid_callback, void* pid_callback_data) @extern("g_desktop_app_info_launch_uris_as_manager");

<* Maps to DesktopAppInfo::launch_uris_as_manager_with_fds *>
extern fn bool DesktopAppInfo.launch_uris_as_manager_with_fds(&self, glib::List* uris, AppLaunchContext* launch_context, glib::SpawnFlags spawn_flags, glib::SpawnChildSetupFunc user_setup, void* user_setup_data, DesktopAppLaunchCallback pid_callback, void* pid_callback_data, int stdin_fd, int stdout_fd, int stderr_fd) @extern("g_desktop_app_info_launch_uris_as_manager_with_fds");

<* Maps to DesktopAppInfo::list_actions *>
extern fn ZString DesktopAppInfo.list_actions(&self, ) @extern("g_desktop_app_info_list_actions");


// Class Functions

<* Maps to get_implementations of DesktopAppInfo *>
extern fn glib::List* desktop_app_info_get_implementations(ZString iface) @extern("g_desktop_app_info_get_implementations");

<* Maps to search of DesktopAppInfo *>
extern fn ZString desktop_app_info_search(ZString search_string) @extern("g_desktop_app_info_search");

<* Maps to set_desktop_env of DesktopAppInfo *>
extern fn void desktop_app_info_set_desktop_env(ZString desktop_env) @extern("g_desktop_app_info_set_desktop_env");



<* Maps to GEmblem *>
distinct Emblem = void*;

// Class to parent cast.
fn gobject::Object* Emblem.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Emblem *>
extern fn Emblem* emblem_new(Icon* icon) @extern("g_emblem_new");

<* Maps to new_with_origin of Emblem *>
extern fn Emblem* emblem_new_with_origin(Icon* icon, EmblemOrigin origin) @extern("g_emblem_new_with_origin");



// Class Methods

<* Maps to Emblem::get_icon *>
extern fn Icon* Emblem.get_icon(&self, ) @extern("g_emblem_get_icon");

<* Maps to Emblem::get_origin *>
extern fn EmblemOrigin Emblem.get_origin(&self, ) @extern("g_emblem_get_origin");


// Class Functions



<* Maps to GEmblemedIcon *>
distinct EmblemedIcon = void*;

// Class to parent cast.
fn gobject::Object* EmblemedIcon.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of EmblemedIcon *>
extern fn EmblemedIcon* emblemed_icon_new(Icon* icon, Emblem* emblem) @extern("g_emblemed_icon_new");



// Class Methods

<* Maps to EmblemedIcon::add_emblem *>
extern fn void EmblemedIcon.add_emblem(&self, Emblem* emblem) @extern("g_emblemed_icon_add_emblem");

<* Maps to EmblemedIcon::clear_emblems *>
extern fn void EmblemedIcon.clear_emblems(&self, ) @extern("g_emblemed_icon_clear_emblems");

<* Maps to EmblemedIcon::get_emblems *>
extern fn glib::List* EmblemedIcon.get_emblems(&self, ) @extern("g_emblemed_icon_get_emblems");

<* Maps to EmblemedIcon::get_icon *>
extern fn Icon* EmblemedIcon.get_icon(&self, ) @extern("g_emblemed_icon_get_icon");


// Class Functions



<* Maps to GFileEnumerator *>
distinct FileEnumerator = void*;

// Class to parent cast.
fn gobject::Object* FileEnumerator.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to FileEnumerator::close *>
extern fn bool FileEnumerator.close(&self, Cancellable* cancellable) @extern("g_file_enumerator_close");

<* Maps to FileEnumerator::close_async *>
extern fn void FileEnumerator.close_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_enumerator_close_async");

<* Maps to FileEnumerator::close_finish *>
extern fn bool FileEnumerator.close_finish(&self, AsyncResult* result) @extern("g_file_enumerator_close_finish");

<* Maps to FileEnumerator::get_child *>
extern fn File* FileEnumerator.get_child(&self, FileInfo* info) @extern("g_file_enumerator_get_child");

<* Maps to FileEnumerator::get_container *>
extern fn File* FileEnumerator.get_container(&self, ) @extern("g_file_enumerator_get_container");

<* Maps to FileEnumerator::has_pending *>
extern fn bool FileEnumerator.has_pending(&self, ) @extern("g_file_enumerator_has_pending");

<* Maps to FileEnumerator::is_closed *>
extern fn bool FileEnumerator.is_closed(&self, ) @extern("g_file_enumerator_is_closed");

<* Maps to FileEnumerator::iterate *>
extern fn bool FileEnumerator.iterate(&self, FileInfo* out_info, File* out_child, Cancellable* cancellable) @extern("g_file_enumerator_iterate");

<* Maps to FileEnumerator::next_file *>
extern fn FileInfo* FileEnumerator.next_file(&self, Cancellable* cancellable) @extern("g_file_enumerator_next_file");

<* Maps to FileEnumerator::next_files_async *>
extern fn void FileEnumerator.next_files_async(&self, int num_files, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_enumerator_next_files_async");

<* Maps to FileEnumerator::next_files_finish *>
extern fn glib::List* FileEnumerator.next_files_finish(&self, AsyncResult* result) @extern("g_file_enumerator_next_files_finish");

<* Maps to FileEnumerator::set_pending *>
extern fn void FileEnumerator.set_pending(&self, bool pending) @extern("g_file_enumerator_set_pending");


// Class Functions



<* Maps to GFileIOStream *>
distinct FileIOStream = void*;

// Class to parent cast.
fn IOStream* FileIOStream.as_IOStream(&self) => (IOStream*)(self);

// Class Constructors



// Class Methods

<* Maps to FileIOStream::get_etag *>
extern fn ZString* FileIOStream.get_etag(&self, ) @extern("g_file_io_stream_get_etag");

<* Maps to FileIOStream::query_info *>
extern fn FileInfo* FileIOStream.query_info(&self, ZString attributes, Cancellable* cancellable) @extern("g_file_io_stream_query_info");

<* Maps to FileIOStream::query_info_async *>
extern fn void FileIOStream.query_info_async(&self, ZString attributes, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_io_stream_query_info_async");

<* Maps to FileIOStream::query_info_finish *>
extern fn FileInfo* FileIOStream.query_info_finish(&self, AsyncResult* result) @extern("g_file_io_stream_query_info_finish");


// Class Functions



<* Maps to GFileIcon *>
distinct FileIcon = void*;

// Class to parent cast.
fn gobject::Object* FileIcon.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of FileIcon *>
extern fn FileIcon* file_icon_new(File* file) @extern("g_file_icon_new");



// Class Methods

<* Maps to FileIcon::get_file *>
extern fn File* FileIcon.get_file(&self, ) @extern("g_file_icon_get_file");


// Class Functions



<* Maps to GFileInfo *>
distinct FileInfo = void*;

// Class to parent cast.
fn gobject::Object* FileInfo.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of FileInfo *>
extern fn FileInfo* file_info_new() @extern("g_file_info_new");



// Class Methods

<* Maps to FileInfo::clear_status *>
extern fn void FileInfo.clear_status(&self, ) @extern("g_file_info_clear_status");

<* Maps to FileInfo::copy_into *>
extern fn void FileInfo.copy_into(&self, FileInfo* dest_info) @extern("g_file_info_copy_into");

<* Maps to FileInfo::dup *>
extern fn FileInfo* FileInfo.dup(&self, ) @extern("g_file_info_dup");

<* Maps to FileInfo::get_access_date_time *>
extern fn glib::DateTime* FileInfo.get_access_date_time(&self, ) @extern("g_file_info_get_access_date_time");

<* Maps to FileInfo::get_attribute_as_string *>
extern fn ZString* FileInfo.get_attribute_as_string(&self, ZString attribute) @extern("g_file_info_get_attribute_as_string");

<* Maps to FileInfo::get_attribute_boolean *>
extern fn bool FileInfo.get_attribute_boolean(&self, ZString attribute) @extern("g_file_info_get_attribute_boolean");

<* Maps to FileInfo::get_attribute_byte_string *>
extern fn ZString FileInfo.get_attribute_byte_string(&self, ZString attribute) @extern("g_file_info_get_attribute_byte_string");

<* Maps to FileInfo::get_attribute_data *>
extern fn bool FileInfo.get_attribute_data(&self, ZString attribute, FileAttributeType* type, void* value_pp, FileAttributeStatus* status) @extern("g_file_info_get_attribute_data");

<* Maps to FileInfo::get_attribute_file_path *>
extern fn ZString FileInfo.get_attribute_file_path(&self, ZString attribute) @extern("g_file_info_get_attribute_file_path");

<* Maps to FileInfo::get_attribute_int32 *>
extern fn int FileInfo.get_attribute_int32(&self, ZString attribute) @extern("g_file_info_get_attribute_int32");

<* Maps to FileInfo::get_attribute_int64 *>
extern fn long FileInfo.get_attribute_int64(&self, ZString attribute) @extern("g_file_info_get_attribute_int64");

<* Maps to FileInfo::get_attribute_object *>
extern fn gobject::Object* FileInfo.get_attribute_object(&self, ZString attribute) @extern("g_file_info_get_attribute_object");

<* Maps to FileInfo::get_attribute_status *>
extern fn FileAttributeStatus FileInfo.get_attribute_status(&self, ZString attribute) @extern("g_file_info_get_attribute_status");

<* Maps to FileInfo::get_attribute_string *>
extern fn ZString FileInfo.get_attribute_string(&self, ZString attribute) @extern("g_file_info_get_attribute_string");

<* Maps to FileInfo::get_attribute_stringv *>
extern fn ZString FileInfo.get_attribute_stringv(&self, ZString attribute) @extern("g_file_info_get_attribute_stringv");

<* Maps to FileInfo::get_attribute_type *>
extern fn FileAttributeType FileInfo.get_attribute_type(&self, ZString attribute) @extern("g_file_info_get_attribute_type");

<* Maps to FileInfo::get_attribute_uint32 *>
extern fn uint FileInfo.get_attribute_uint32(&self, ZString attribute) @extern("g_file_info_get_attribute_uint32");

<* Maps to FileInfo::get_attribute_uint64 *>
extern fn ulong FileInfo.get_attribute_uint64(&self, ZString attribute) @extern("g_file_info_get_attribute_uint64");

<* Maps to FileInfo::get_content_type *>
extern fn ZString FileInfo.get_content_type(&self, ) @extern("g_file_info_get_content_type");

<* Maps to FileInfo::get_creation_date_time *>
extern fn glib::DateTime* FileInfo.get_creation_date_time(&self, ) @extern("g_file_info_get_creation_date_time");

<* Maps to FileInfo::get_deletion_date *>
extern fn glib::DateTime* FileInfo.get_deletion_date(&self, ) @extern("g_file_info_get_deletion_date");

<* Maps to FileInfo::get_display_name *>
extern fn ZString FileInfo.get_display_name(&self, ) @extern("g_file_info_get_display_name");

<* Maps to FileInfo::get_edit_name *>
extern fn ZString FileInfo.get_edit_name(&self, ) @extern("g_file_info_get_edit_name");

<* Maps to FileInfo::get_etag *>
extern fn ZString FileInfo.get_etag(&self, ) @extern("g_file_info_get_etag");

<* Maps to FileInfo::get_file_type *>
extern fn FileType FileInfo.get_file_type(&self, ) @extern("g_file_info_get_file_type");

<* Maps to FileInfo::get_icon *>
extern fn Icon* FileInfo.get_icon(&self, ) @extern("g_file_info_get_icon");

<* Maps to FileInfo::get_is_backup *>
extern fn bool FileInfo.get_is_backup(&self, ) @extern("g_file_info_get_is_backup");

<* Maps to FileInfo::get_is_hidden *>
extern fn bool FileInfo.get_is_hidden(&self, ) @extern("g_file_info_get_is_hidden");

<* Maps to FileInfo::get_is_symlink *>
extern fn bool FileInfo.get_is_symlink(&self, ) @extern("g_file_info_get_is_symlink");

<* Maps to FileInfo::get_modification_date_time *>
extern fn glib::DateTime* FileInfo.get_modification_date_time(&self, ) @extern("g_file_info_get_modification_date_time");

<* Maps to FileInfo::get_modification_time *>
extern fn void FileInfo.get_modification_time(&self, glib::TimeVal* result) @extern("g_file_info_get_modification_time");

<* Maps to FileInfo::get_name *>
extern fn ZString FileInfo.get_name(&self, ) @extern("g_file_info_get_name");

<* Maps to FileInfo::get_size *>
extern fn long FileInfo.get_size(&self, ) @extern("g_file_info_get_size");

<* Maps to FileInfo::get_sort_order *>
extern fn int FileInfo.get_sort_order(&self, ) @extern("g_file_info_get_sort_order");

<* Maps to FileInfo::get_symbolic_icon *>
extern fn Icon* FileInfo.get_symbolic_icon(&self, ) @extern("g_file_info_get_symbolic_icon");

<* Maps to FileInfo::get_symlink_target *>
extern fn ZString FileInfo.get_symlink_target(&self, ) @extern("g_file_info_get_symlink_target");

<* Maps to FileInfo::has_attribute *>
extern fn bool FileInfo.has_attribute(&self, ZString attribute) @extern("g_file_info_has_attribute");

<* Maps to FileInfo::has_namespace *>
extern fn bool FileInfo.has_namespace(&self, ZString name_space) @extern("g_file_info_has_namespace");

<* Maps to FileInfo::list_attributes *>
extern fn ZString FileInfo.list_attributes(&self, ZString name_space) @extern("g_file_info_list_attributes");

<* Maps to FileInfo::remove_attribute *>
extern fn void FileInfo.remove_attribute(&self, ZString attribute) @extern("g_file_info_remove_attribute");

<* Maps to FileInfo::set_access_date_time *>
extern fn void FileInfo.set_access_date_time(&self, glib::DateTime* atime) @extern("g_file_info_set_access_date_time");

<* Maps to FileInfo::set_attribute *>
extern fn void FileInfo.set_attribute(&self, ZString attribute, FileAttributeType type, void* value_p) @extern("g_file_info_set_attribute");

<* Maps to FileInfo::set_attribute_boolean *>
extern fn void FileInfo.set_attribute_boolean(&self, ZString attribute, bool attr_value) @extern("g_file_info_set_attribute_boolean");

<* Maps to FileInfo::set_attribute_byte_string *>
extern fn void FileInfo.set_attribute_byte_string(&self, ZString attribute, ZString attr_value) @extern("g_file_info_set_attribute_byte_string");

<* Maps to FileInfo::set_attribute_file_path *>
extern fn void FileInfo.set_attribute_file_path(&self, ZString attribute, ZString attr_value) @extern("g_file_info_set_attribute_file_path");

<* Maps to FileInfo::set_attribute_int32 *>
extern fn void FileInfo.set_attribute_int32(&self, ZString attribute, int attr_value) @extern("g_file_info_set_attribute_int32");

<* Maps to FileInfo::set_attribute_int64 *>
extern fn void FileInfo.set_attribute_int64(&self, ZString attribute, long attr_value) @extern("g_file_info_set_attribute_int64");

<* Maps to FileInfo::set_attribute_mask *>
extern fn void FileInfo.set_attribute_mask(&self, FileAttributeMatcher* mask) @extern("g_file_info_set_attribute_mask");

<* Maps to FileInfo::set_attribute_object *>
extern fn void FileInfo.set_attribute_object(&self, ZString attribute, gobject::Object* attr_value) @extern("g_file_info_set_attribute_object");

<* Maps to FileInfo::set_attribute_status *>
extern fn bool FileInfo.set_attribute_status(&self, ZString attribute, FileAttributeStatus status) @extern("g_file_info_set_attribute_status");

<* Maps to FileInfo::set_attribute_string *>
extern fn void FileInfo.set_attribute_string(&self, ZString attribute, ZString attr_value) @extern("g_file_info_set_attribute_string");

<* Maps to FileInfo::set_attribute_stringv *>
extern fn void FileInfo.set_attribute_stringv(&self, ZString attribute, ZString attr_value) @extern("g_file_info_set_attribute_stringv");

<* Maps to FileInfo::set_attribute_uint32 *>
extern fn void FileInfo.set_attribute_uint32(&self, ZString attribute, uint attr_value) @extern("g_file_info_set_attribute_uint32");

<* Maps to FileInfo::set_attribute_uint64 *>
extern fn void FileInfo.set_attribute_uint64(&self, ZString attribute, ulong attr_value) @extern("g_file_info_set_attribute_uint64");

<* Maps to FileInfo::set_content_type *>
extern fn void FileInfo.set_content_type(&self, ZString content_type) @extern("g_file_info_set_content_type");

<* Maps to FileInfo::set_creation_date_time *>
extern fn void FileInfo.set_creation_date_time(&self, glib::DateTime* creation_time) @extern("g_file_info_set_creation_date_time");

<* Maps to FileInfo::set_display_name *>
extern fn void FileInfo.set_display_name(&self, ZString display_name) @extern("g_file_info_set_display_name");

<* Maps to FileInfo::set_edit_name *>
extern fn void FileInfo.set_edit_name(&self, ZString edit_name) @extern("g_file_info_set_edit_name");

<* Maps to FileInfo::set_file_type *>
extern fn void FileInfo.set_file_type(&self, FileType type) @extern("g_file_info_set_file_type");

<* Maps to FileInfo::set_icon *>
extern fn void FileInfo.set_icon(&self, Icon* icon) @extern("g_file_info_set_icon");

<* Maps to FileInfo::set_is_hidden *>
extern fn void FileInfo.set_is_hidden(&self, bool is_hidden) @extern("g_file_info_set_is_hidden");

<* Maps to FileInfo::set_is_symlink *>
extern fn void FileInfo.set_is_symlink(&self, bool is_symlink) @extern("g_file_info_set_is_symlink");

<* Maps to FileInfo::set_modification_date_time *>
extern fn void FileInfo.set_modification_date_time(&self, glib::DateTime* mtime) @extern("g_file_info_set_modification_date_time");

<* Maps to FileInfo::set_modification_time *>
extern fn void FileInfo.set_modification_time(&self, glib::TimeVal* mtime) @extern("g_file_info_set_modification_time");

<* Maps to FileInfo::set_name *>
extern fn void FileInfo.set_name(&self, ZString name) @extern("g_file_info_set_name");

<* Maps to FileInfo::set_size *>
extern fn void FileInfo.set_size(&self, long size) @extern("g_file_info_set_size");

<* Maps to FileInfo::set_sort_order *>
extern fn void FileInfo.set_sort_order(&self, int sort_order) @extern("g_file_info_set_sort_order");

<* Maps to FileInfo::set_symbolic_icon *>
extern fn void FileInfo.set_symbolic_icon(&self, Icon* icon) @extern("g_file_info_set_symbolic_icon");

<* Maps to FileInfo::set_symlink_target *>
extern fn void FileInfo.set_symlink_target(&self, ZString symlink_target) @extern("g_file_info_set_symlink_target");

<* Maps to FileInfo::unset_attribute_mask *>
extern fn void FileInfo.unset_attribute_mask(&self, ) @extern("g_file_info_unset_attribute_mask");


// Class Functions



<* Maps to GFileInputStream *>
distinct FileInputStream = void*;

// Class to parent cast.
fn InputStream* FileInputStream.as_InputStream(&self) => (InputStream*)(self);

// Class Constructors



// Class Methods

<* Maps to FileInputStream::query_info *>
extern fn FileInfo* FileInputStream.query_info(&self, ZString attributes, Cancellable* cancellable) @extern("g_file_input_stream_query_info");

<* Maps to FileInputStream::query_info_async *>
extern fn void FileInputStream.query_info_async(&self, ZString attributes, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_input_stream_query_info_async");

<* Maps to FileInputStream::query_info_finish *>
extern fn FileInfo* FileInputStream.query_info_finish(&self, AsyncResult* result) @extern("g_file_input_stream_query_info_finish");


// Class Functions



<* Maps to GFileMonitor *>
distinct FileMonitor = void*;

// Class to parent cast.
fn gobject::Object* FileMonitor.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to FileMonitor::cancel *>
extern fn bool FileMonitor.cancel(&self, ) @extern("g_file_monitor_cancel");

<* Maps to FileMonitor::emit_event *>
extern fn void FileMonitor.emit_event(&self, File* child, File* other_file, FileMonitorEvent event_type) @extern("g_file_monitor_emit_event");

<* Maps to FileMonitor::is_cancelled *>
extern fn bool FileMonitor.is_cancelled(&self, ) @extern("g_file_monitor_is_cancelled");

<* Maps to FileMonitor::set_rate_limit *>
extern fn void FileMonitor.set_rate_limit(&self, int limit_msecs) @extern("g_file_monitor_set_rate_limit");


// Class Functions



<* Maps to GFileOutputStream *>
distinct FileOutputStream = void*;

// Class to parent cast.
fn OutputStream* FileOutputStream.as_OutputStream(&self) => (OutputStream*)(self);

// Class Constructors



// Class Methods

<* Maps to FileOutputStream::get_etag *>
extern fn ZString* FileOutputStream.get_etag(&self, ) @extern("g_file_output_stream_get_etag");

<* Maps to FileOutputStream::query_info *>
extern fn FileInfo* FileOutputStream.query_info(&self, ZString attributes, Cancellable* cancellable) @extern("g_file_output_stream_query_info");

<* Maps to FileOutputStream::query_info_async *>
extern fn void FileOutputStream.query_info_async(&self, ZString attributes, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_output_stream_query_info_async");

<* Maps to FileOutputStream::query_info_finish *>
extern fn FileInfo* FileOutputStream.query_info_finish(&self, AsyncResult* result) @extern("g_file_output_stream_query_info_finish");


// Class Functions



<* Maps to GFilenameCompleter *>
distinct FilenameCompleter = void*;

// Class to parent cast.
fn gobject::Object* FilenameCompleter.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of FilenameCompleter *>
extern fn FilenameCompleter* filename_completer_new() @extern("g_filename_completer_new");



// Class Methods

<* Maps to FilenameCompleter::get_completion_suffix *>
extern fn ZString* FilenameCompleter.get_completion_suffix(&self, ZString initial_text) @extern("g_filename_completer_get_completion_suffix");

<* Maps to FilenameCompleter::get_completions *>
extern fn ZString FilenameCompleter.get_completions(&self, ZString initial_text) @extern("g_filename_completer_get_completions");

<* Maps to FilenameCompleter::set_dirs_only *>
extern fn void FilenameCompleter.set_dirs_only(&self, bool dirs_only) @extern("g_filename_completer_set_dirs_only");


// Class Functions



<* Maps to GFilterInputStream *>
distinct FilterInputStream = void*;

// Class to parent cast.
fn InputStream* FilterInputStream.as_InputStream(&self) => (InputStream*)(self);

// Class Constructors



// Class Methods

<* Maps to FilterInputStream::get_base_stream *>
extern fn InputStream* FilterInputStream.get_base_stream(&self, ) @extern("g_filter_input_stream_get_base_stream");

<* Maps to FilterInputStream::get_close_base_stream *>
extern fn bool FilterInputStream.get_close_base_stream(&self, ) @extern("g_filter_input_stream_get_close_base_stream");

<* Maps to FilterInputStream::set_close_base_stream *>
extern fn void FilterInputStream.set_close_base_stream(&self, bool close_base) @extern("g_filter_input_stream_set_close_base_stream");


// Class Functions



<* Maps to GFilterOutputStream *>
distinct FilterOutputStream = void*;

// Class to parent cast.
fn OutputStream* FilterOutputStream.as_OutputStream(&self) => (OutputStream*)(self);

// Class Constructors



// Class Methods

<* Maps to FilterOutputStream::get_base_stream *>
extern fn OutputStream* FilterOutputStream.get_base_stream(&self, ) @extern("g_filter_output_stream_get_base_stream");

<* Maps to FilterOutputStream::get_close_base_stream *>
extern fn bool FilterOutputStream.get_close_base_stream(&self, ) @extern("g_filter_output_stream_get_close_base_stream");

<* Maps to FilterOutputStream::set_close_base_stream *>
extern fn void FilterOutputStream.set_close_base_stream(&self, bool close_base) @extern("g_filter_output_stream_set_close_base_stream");


// Class Functions



<* Maps to GIOModule *>
distinct IOModule = void*;

// Class to parent cast.
fn gobject::TypeModule* IOModule.as_gobject_TypeModule(&self) => (gobject::TypeModule*)(self);

// Class Constructors

<* Maps to new of IOModule *>
extern fn IOModule* io_module_new(ZString filename) @extern("g_io_module_new");



// Class Methods

<* Maps to IOModule::load *>
extern fn void IOModule.load(&self, ) @extern("g_io_module_load");

<* Maps to IOModule::unload *>
extern fn void IOModule.unload(&self, ) @extern("g_io_module_unload");


// Class Functions

<* Maps to query of IOModule *>
extern fn ZString io_module_query() @extern("g_io_module_query");



<* Maps to GIOStream *>
distinct IOStream = void*;

// Class to parent cast.
fn gobject::Object* IOStream.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to IOStream::clear_pending *>
extern fn void IOStream.clear_pending(&self, ) @extern("g_io_stream_clear_pending");

<* Maps to IOStream::close *>
extern fn bool IOStream.close(&self, Cancellable* cancellable) @extern("g_io_stream_close");

<* Maps to IOStream::close_async *>
extern fn void IOStream.close_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_io_stream_close_async");

<* Maps to IOStream::close_finish *>
extern fn bool IOStream.close_finish(&self, AsyncResult* result) @extern("g_io_stream_close_finish");

<* Maps to IOStream::get_input_stream *>
extern fn InputStream* IOStream.get_input_stream(&self, ) @extern("g_io_stream_get_input_stream");

<* Maps to IOStream::get_output_stream *>
extern fn OutputStream* IOStream.get_output_stream(&self, ) @extern("g_io_stream_get_output_stream");

<* Maps to IOStream::has_pending *>
extern fn bool IOStream.has_pending(&self, ) @extern("g_io_stream_has_pending");

<* Maps to IOStream::is_closed *>
extern fn bool IOStream.is_closed(&self, ) @extern("g_io_stream_is_closed");

<* Maps to IOStream::set_pending *>
extern fn bool IOStream.set_pending(&self, ) @extern("g_io_stream_set_pending");

<* Maps to IOStream::splice_async *>
extern fn void IOStream.splice_async(&self, IOStream* stream2, IOStreamSpliceFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_io_stream_splice_async");


// Class Functions

<* Maps to splice_finish of IOStream *>
extern fn bool io_stream_splice_finish(AsyncResult* result) @extern("g_io_stream_splice_finish");



<* Maps to GInetAddress *>
distinct InetAddress = void*;

// Class to parent cast.
fn gobject::Object* InetAddress.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_any of InetAddress *>
extern fn InetAddress* inet_address_new_any(SocketFamily family) @extern("g_inet_address_new_any");

<* Maps to new_from_bytes of InetAddress *>
extern fn InetAddress* inet_address_new_from_bytes(char bytes, SocketFamily family) @extern("g_inet_address_new_from_bytes");

<* Maps to new_from_string of InetAddress *>
extern fn InetAddress* inet_address_new_from_string(ZString string) @extern("g_inet_address_new_from_string");

<* Maps to new_loopback of InetAddress *>
extern fn InetAddress* inet_address_new_loopback(SocketFamily family) @extern("g_inet_address_new_loopback");



// Class Methods

<* Maps to InetAddress::equal *>
extern fn bool InetAddress.equal(&self, InetAddress* other_address) @extern("g_inet_address_equal");

<* Maps to InetAddress::get_family *>
extern fn SocketFamily InetAddress.get_family(&self, ) @extern("g_inet_address_get_family");

<* Maps to InetAddress::get_is_any *>
extern fn bool InetAddress.get_is_any(&self, ) @extern("g_inet_address_get_is_any");

<* Maps to InetAddress::get_is_link_local *>
extern fn bool InetAddress.get_is_link_local(&self, ) @extern("g_inet_address_get_is_link_local");

<* Maps to InetAddress::get_is_loopback *>
extern fn bool InetAddress.get_is_loopback(&self, ) @extern("g_inet_address_get_is_loopback");

<* Maps to InetAddress::get_is_mc_global *>
extern fn bool InetAddress.get_is_mc_global(&self, ) @extern("g_inet_address_get_is_mc_global");

<* Maps to InetAddress::get_is_mc_link_local *>
extern fn bool InetAddress.get_is_mc_link_local(&self, ) @extern("g_inet_address_get_is_mc_link_local");

<* Maps to InetAddress::get_is_mc_node_local *>
extern fn bool InetAddress.get_is_mc_node_local(&self, ) @extern("g_inet_address_get_is_mc_node_local");

<* Maps to InetAddress::get_is_mc_org_local *>
extern fn bool InetAddress.get_is_mc_org_local(&self, ) @extern("g_inet_address_get_is_mc_org_local");

<* Maps to InetAddress::get_is_mc_site_local *>
extern fn bool InetAddress.get_is_mc_site_local(&self, ) @extern("g_inet_address_get_is_mc_site_local");

<* Maps to InetAddress::get_is_multicast *>
extern fn bool InetAddress.get_is_multicast(&self, ) @extern("g_inet_address_get_is_multicast");

<* Maps to InetAddress::get_is_site_local *>
extern fn bool InetAddress.get_is_site_local(&self, ) @extern("g_inet_address_get_is_site_local");

<* Maps to InetAddress::get_native_size *>
extern fn usz InetAddress.get_native_size(&self, ) @extern("g_inet_address_get_native_size");

<* Maps to InetAddress::to_bytes *>
extern fn char* InetAddress.to_bytes(&self, ) @extern("g_inet_address_to_bytes");

<* Maps to InetAddress::to_string *>
extern fn ZString* InetAddress.to_string(&self, ) @extern("g_inet_address_to_string");


// Class Functions



<* Maps to GInetAddressMask *>
distinct InetAddressMask = void*;

// Class to parent cast.
fn gobject::Object* InetAddressMask.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of InetAddressMask *>
extern fn InetAddressMask* inet_address_mask_new(InetAddress* addr, uint length) @extern("g_inet_address_mask_new");

<* Maps to new_from_string of InetAddressMask *>
extern fn InetAddressMask* inet_address_mask_new_from_string(ZString mask_string) @extern("g_inet_address_mask_new_from_string");



// Class Methods

<* Maps to InetAddressMask::equal *>
extern fn bool InetAddressMask.equal(&self, InetAddressMask* mask2) @extern("g_inet_address_mask_equal");

<* Maps to InetAddressMask::get_address *>
extern fn InetAddress* InetAddressMask.get_address(&self, ) @extern("g_inet_address_mask_get_address");

<* Maps to InetAddressMask::get_family *>
extern fn SocketFamily InetAddressMask.get_family(&self, ) @extern("g_inet_address_mask_get_family");

<* Maps to InetAddressMask::get_length *>
extern fn uint InetAddressMask.get_length(&self, ) @extern("g_inet_address_mask_get_length");

<* Maps to InetAddressMask::matches *>
extern fn bool InetAddressMask.matches(&self, InetAddress* address) @extern("g_inet_address_mask_matches");

<* Maps to InetAddressMask::to_string *>
extern fn ZString* InetAddressMask.to_string(&self, ) @extern("g_inet_address_mask_to_string");


// Class Functions



<* Maps to GInetSocketAddress *>
distinct InetSocketAddress = void*;

// Class to parent cast.
fn SocketAddress* InetSocketAddress.as_SocketAddress(&self) => (SocketAddress*)(self);

// Class Constructors

<* Maps to new of InetSocketAddress *>
extern fn SocketAddress* inet_socket_address_new(InetAddress* address, ushort port) @extern("g_inet_socket_address_new");

<* Maps to new_from_string of InetSocketAddress *>
extern fn SocketAddress* inet_socket_address_new_from_string(ZString address, uint port) @extern("g_inet_socket_address_new_from_string");



// Class Methods

<* Maps to InetSocketAddress::get_address *>
extern fn InetAddress* InetSocketAddress.get_address(&self, ) @extern("g_inet_socket_address_get_address");

<* Maps to InetSocketAddress::get_flowinfo *>
extern fn uint InetSocketAddress.get_flowinfo(&self, ) @extern("g_inet_socket_address_get_flowinfo");

<* Maps to InetSocketAddress::get_port *>
extern fn ushort InetSocketAddress.get_port(&self, ) @extern("g_inet_socket_address_get_port");

<* Maps to InetSocketAddress::get_scope_id *>
extern fn uint InetSocketAddress.get_scope_id(&self, ) @extern("g_inet_socket_address_get_scope_id");


// Class Functions



<* Maps to GInputStream *>
distinct InputStream = void*;

// Class to parent cast.
fn gobject::Object* InputStream.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to InputStream::clear_pending *>
extern fn void InputStream.clear_pending(&self, ) @extern("g_input_stream_clear_pending");

<* Maps to InputStream::close *>
extern fn bool InputStream.close(&self, Cancellable* cancellable) @extern("g_input_stream_close");

<* Maps to InputStream::close_async *>
extern fn void InputStream.close_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_input_stream_close_async");

<* Maps to InputStream::close_finish *>
extern fn bool InputStream.close_finish(&self, AsyncResult* result) @extern("g_input_stream_close_finish");

<* Maps to InputStream::has_pending *>
extern fn bool InputStream.has_pending(&self, ) @extern("g_input_stream_has_pending");

<* Maps to InputStream::is_closed *>
extern fn bool InputStream.is_closed(&self, ) @extern("g_input_stream_is_closed");

<* Maps to InputStream::read *>
extern fn isz InputStream.read(&self, char buffer, usz count, Cancellable* cancellable) @extern("g_input_stream_read");

<* Maps to InputStream::read_all *>
extern fn bool InputStream.read_all(&self, char buffer, usz count, usz* bytes_read, Cancellable* cancellable) @extern("g_input_stream_read_all");

<* Maps to InputStream::read_all_async *>
extern fn void InputStream.read_all_async(&self, char buffer, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_input_stream_read_all_async");

<* Maps to InputStream::read_all_finish *>
extern fn bool InputStream.read_all_finish(&self, AsyncResult* result, usz* bytes_read) @extern("g_input_stream_read_all_finish");

<* Maps to InputStream::read_async *>
extern fn void InputStream.read_async(&self, char buffer, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_input_stream_read_async");

<* Maps to InputStream::read_bytes *>
extern fn glib::Bytes* InputStream.read_bytes(&self, usz count, Cancellable* cancellable) @extern("g_input_stream_read_bytes");

<* Maps to InputStream::read_bytes_async *>
extern fn void InputStream.read_bytes_async(&self, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_input_stream_read_bytes_async");

<* Maps to InputStream::read_bytes_finish *>
extern fn glib::Bytes* InputStream.read_bytes_finish(&self, AsyncResult* result) @extern("g_input_stream_read_bytes_finish");

<* Maps to InputStream::read_finish *>
extern fn isz InputStream.read_finish(&self, AsyncResult* result) @extern("g_input_stream_read_finish");

<* Maps to InputStream::set_pending *>
extern fn bool InputStream.set_pending(&self, ) @extern("g_input_stream_set_pending");

<* Maps to InputStream::skip *>
extern fn isz InputStream.skip(&self, usz count, Cancellable* cancellable) @extern("g_input_stream_skip");

<* Maps to InputStream::skip_async *>
extern fn void InputStream.skip_async(&self, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_input_stream_skip_async");

<* Maps to InputStream::skip_finish *>
extern fn isz InputStream.skip_finish(&self, AsyncResult* result) @extern("g_input_stream_skip_finish");


// Class Functions



<* Maps to GListStore *>
distinct ListStore = void*;

// Class to parent cast.
fn gobject::Object* ListStore.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of ListStore *>
extern fn ListStore* list_store_new(usz item_type) @extern("g_list_store_new");



// Class Methods

<* Maps to ListStore::append *>
extern fn void ListStore.append(&self, gobject::Object* item) @extern("g_list_store_append");

<* Maps to ListStore::find *>
extern fn bool ListStore.find(&self, gobject::Object* item, uint* position) @extern("g_list_store_find");

<* Maps to ListStore::find_with_equal_func *>
extern fn bool ListStore.find_with_equal_func(&self, gobject::Object* item, glib::EqualFunc equal_func, uint* position) @extern("g_list_store_find_with_equal_func");

<* Maps to ListStore::find_with_equal_func_full *>
extern fn bool ListStore.find_with_equal_func_full(&self, gobject::Object* item, glib::EqualFuncFull equal_func, void* user_data, uint* position) @extern("g_list_store_find_with_equal_func_full");

<* Maps to ListStore::insert *>
extern fn void ListStore.insert(&self, uint position, gobject::Object* item) @extern("g_list_store_insert");

<* Maps to ListStore::insert_sorted *>
extern fn uint ListStore.insert_sorted(&self, gobject::Object* item, glib::CompareDataFunc compare_func, void* user_data) @extern("g_list_store_insert_sorted");

<* Maps to ListStore::remove *>
extern fn void ListStore.remove(&self, uint position) @extern("g_list_store_remove");

<* Maps to ListStore::remove_all *>
extern fn void ListStore.remove_all(&self, ) @extern("g_list_store_remove_all");

<* Maps to ListStore::sort *>
extern fn void ListStore.sort(&self, glib::CompareDataFunc compare_func, void* user_data) @extern("g_list_store_sort");

<* Maps to ListStore::splice *>
extern fn void ListStore.splice(&self, uint position, uint n_removals, gobject::Object additions, uint n_additions) @extern("g_list_store_splice");


// Class Functions



<* Maps to GMemoryInputStream *>
distinct MemoryInputStream = void*;

// Class to parent cast.
fn InputStream* MemoryInputStream.as_InputStream(&self) => (InputStream*)(self);

// Class Constructors

<* Maps to new of MemoryInputStream *>
extern fn InputStream* memory_input_stream_new() @extern("g_memory_input_stream_new");

<* Maps to new_from_bytes of MemoryInputStream *>
extern fn InputStream* memory_input_stream_new_from_bytes(glib::Bytes* bytes) @extern("g_memory_input_stream_new_from_bytes");

<* Maps to new_from_data of MemoryInputStream *>
extern fn InputStream* memory_input_stream_new_from_data(char data, isz len, glib::DestroyNotify destroy) @extern("g_memory_input_stream_new_from_data");



// Class Methods

<* Maps to MemoryInputStream::add_bytes *>
extern fn void MemoryInputStream.add_bytes(&self, glib::Bytes* bytes) @extern("g_memory_input_stream_add_bytes");

<* Maps to MemoryInputStream::add_data *>
extern fn void MemoryInputStream.add_data(&self, char data, isz len, glib::DestroyNotify destroy) @extern("g_memory_input_stream_add_data");


// Class Functions



<* Maps to GMemoryOutputStream *>
distinct MemoryOutputStream = void*;

// Class to parent cast.
fn OutputStream* MemoryOutputStream.as_OutputStream(&self) => (OutputStream*)(self);

// Class Constructors

<* Maps to new of MemoryOutputStream *>
extern fn OutputStream* memory_output_stream_new(void* data, usz size, ReallocFunc realloc_function, glib::DestroyNotify destroy_function) @extern("g_memory_output_stream_new");

<* Maps to new_resizable of MemoryOutputStream *>
extern fn OutputStream* memory_output_stream_new_resizable() @extern("g_memory_output_stream_new_resizable");



// Class Methods

<* Maps to MemoryOutputStream::get_data *>
extern fn void* MemoryOutputStream.get_data(&self, ) @extern("g_memory_output_stream_get_data");

<* Maps to MemoryOutputStream::get_data_size *>
extern fn usz MemoryOutputStream.get_data_size(&self, ) @extern("g_memory_output_stream_get_data_size");

<* Maps to MemoryOutputStream::get_size *>
extern fn usz MemoryOutputStream.get_size(&self, ) @extern("g_memory_output_stream_get_size");

<* Maps to MemoryOutputStream::steal_as_bytes *>
extern fn glib::Bytes* MemoryOutputStream.steal_as_bytes(&self, ) @extern("g_memory_output_stream_steal_as_bytes");

<* Maps to MemoryOutputStream::steal_data *>
extern fn void* MemoryOutputStream.steal_data(&self, ) @extern("g_memory_output_stream_steal_data");


// Class Functions



<* Maps to GMenu *>
distinct Menu = void*;

// Class to parent cast.
fn MenuModel* Menu.as_MenuModel(&self) => (MenuModel*)(self);

// Class Constructors

<* Maps to new of Menu *>
extern fn Menu* menu_new() @extern("g_menu_new");



// Class Methods

<* Maps to Menu::append *>
extern fn void Menu.append(&self, ZString label, ZString detailed_action) @extern("g_menu_append");

<* Maps to Menu::append_item *>
extern fn void Menu.append_item(&self, MenuItem* item) @extern("g_menu_append_item");

<* Maps to Menu::append_section *>
extern fn void Menu.append_section(&self, ZString label, MenuModel* section) @extern("g_menu_append_section");

<* Maps to Menu::append_submenu *>
extern fn void Menu.append_submenu(&self, ZString label, MenuModel* submenu) @extern("g_menu_append_submenu");

<* Maps to Menu::freeze *>
extern fn void Menu.freeze(&self, ) @extern("g_menu_freeze");

<* Maps to Menu::insert *>
extern fn void Menu.insert(&self, int position, ZString label, ZString detailed_action) @extern("g_menu_insert");

<* Maps to Menu::insert_item *>
extern fn void Menu.insert_item(&self, int position, MenuItem* item) @extern("g_menu_insert_item");

<* Maps to Menu::insert_section *>
extern fn void Menu.insert_section(&self, int position, ZString label, MenuModel* section) @extern("g_menu_insert_section");

<* Maps to Menu::insert_submenu *>
extern fn void Menu.insert_submenu(&self, int position, ZString label, MenuModel* submenu) @extern("g_menu_insert_submenu");

<* Maps to Menu::prepend *>
extern fn void Menu.prepend(&self, ZString label, ZString detailed_action) @extern("g_menu_prepend");

<* Maps to Menu::prepend_item *>
extern fn void Menu.prepend_item(&self, MenuItem* item) @extern("g_menu_prepend_item");

<* Maps to Menu::prepend_section *>
extern fn void Menu.prepend_section(&self, ZString label, MenuModel* section) @extern("g_menu_prepend_section");

<* Maps to Menu::prepend_submenu *>
extern fn void Menu.prepend_submenu(&self, ZString label, MenuModel* submenu) @extern("g_menu_prepend_submenu");

<* Maps to Menu::remove *>
extern fn void Menu.remove(&self, int position) @extern("g_menu_remove");

<* Maps to Menu::remove_all *>
extern fn void Menu.remove_all(&self, ) @extern("g_menu_remove_all");


// Class Functions



<* Maps to GMenuAttributeIter *>
distinct MenuAttributeIter = void*;

// Class to parent cast.
fn gobject::Object* MenuAttributeIter.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to MenuAttributeIter::get_name *>
extern fn ZString MenuAttributeIter.get_name(&self, ) @extern("g_menu_attribute_iter_get_name");

<* Maps to MenuAttributeIter::get_next *>
extern fn bool MenuAttributeIter.get_next(&self, ZString* out_name, glib::Variant* value) @extern("g_menu_attribute_iter_get_next");

<* Maps to MenuAttributeIter::get_value *>
extern fn glib::Variant* MenuAttributeIter.get_value(&self, ) @extern("g_menu_attribute_iter_get_value");

<* Maps to MenuAttributeIter::next *>
extern fn bool MenuAttributeIter.next(&self, ) @extern("g_menu_attribute_iter_next");


// Class Functions



<* Maps to GMenuItem *>
distinct MenuItem = void*;

// Class to parent cast.
fn gobject::Object* MenuItem.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of MenuItem *>
extern fn MenuItem* menu_item_new(ZString label, ZString detailed_action) @extern("g_menu_item_new");

<* Maps to new_from_model of MenuItem *>
extern fn MenuItem* menu_item_new_from_model(MenuModel* model, int item_index) @extern("g_menu_item_new_from_model");

<* Maps to new_section of MenuItem *>
extern fn MenuItem* menu_item_new_section(ZString label, MenuModel* section) @extern("g_menu_item_new_section");

<* Maps to new_submenu of MenuItem *>
extern fn MenuItem* menu_item_new_submenu(ZString label, MenuModel* submenu) @extern("g_menu_item_new_submenu");



// Class Methods

<* Maps to MenuItem::get_attribute *>
extern fn bool MenuItem.get_attribute(&self, ZString attribute, ZString format_string, any rest) @extern("g_menu_item_get_attribute");

<* Maps to MenuItem::get_attribute_value *>
extern fn glib::Variant* MenuItem.get_attribute_value(&self, ZString attribute, glib::VariantType* expected_type) @extern("g_menu_item_get_attribute_value");

<* Maps to MenuItem::get_link *>
extern fn MenuModel* MenuItem.get_link(&self, ZString link) @extern("g_menu_item_get_link");

<* Maps to MenuItem::set_action_and_target *>
extern fn void MenuItem.set_action_and_target(&self, ZString action, ZString format_string, any rest) @extern("g_menu_item_set_action_and_target");

<* Maps to MenuItem::set_action_and_target_value *>
extern fn void MenuItem.set_action_and_target_value(&self, ZString action, glib::Variant* target_value) @extern("g_menu_item_set_action_and_target_value");

<* Maps to MenuItem::set_attribute *>
extern fn void MenuItem.set_attribute(&self, ZString attribute, ZString format_string, any rest) @extern("g_menu_item_set_attribute");

<* Maps to MenuItem::set_attribute_value *>
extern fn void MenuItem.set_attribute_value(&self, ZString attribute, glib::Variant* value) @extern("g_menu_item_set_attribute_value");

<* Maps to MenuItem::set_detailed_action *>
extern fn void MenuItem.set_detailed_action(&self, ZString detailed_action) @extern("g_menu_item_set_detailed_action");

<* Maps to MenuItem::set_icon *>
extern fn void MenuItem.set_icon(&self, Icon* icon) @extern("g_menu_item_set_icon");

<* Maps to MenuItem::set_label *>
extern fn void MenuItem.set_label(&self, ZString label) @extern("g_menu_item_set_label");

<* Maps to MenuItem::set_link *>
extern fn void MenuItem.set_link(&self, ZString link, MenuModel* model) @extern("g_menu_item_set_link");

<* Maps to MenuItem::set_section *>
extern fn void MenuItem.set_section(&self, MenuModel* section) @extern("g_menu_item_set_section");

<* Maps to MenuItem::set_submenu *>
extern fn void MenuItem.set_submenu(&self, MenuModel* submenu) @extern("g_menu_item_set_submenu");


// Class Functions



<* Maps to GMenuLinkIter *>
distinct MenuLinkIter = void*;

// Class to parent cast.
fn gobject::Object* MenuLinkIter.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to MenuLinkIter::get_name *>
extern fn ZString MenuLinkIter.get_name(&self, ) @extern("g_menu_link_iter_get_name");

<* Maps to MenuLinkIter::get_next *>
extern fn bool MenuLinkIter.get_next(&self, ZString* out_link, MenuModel* value) @extern("g_menu_link_iter_get_next");

<* Maps to MenuLinkIter::get_value *>
extern fn MenuModel* MenuLinkIter.get_value(&self, ) @extern("g_menu_link_iter_get_value");

<* Maps to MenuLinkIter::next *>
extern fn bool MenuLinkIter.next(&self, ) @extern("g_menu_link_iter_next");


// Class Functions



<* Maps to GMenuModel *>
distinct MenuModel = void*;

// Class to parent cast.
fn gobject::Object* MenuModel.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to MenuModel::get_item_attribute *>
extern fn bool MenuModel.get_item_attribute(&self, int item_index, ZString attribute, ZString format_string, any rest) @extern("g_menu_model_get_item_attribute");

<* Maps to MenuModel::get_item_attribute_value *>
extern fn glib::Variant* MenuModel.get_item_attribute_value(&self, int item_index, ZString attribute, glib::VariantType* expected_type) @extern("g_menu_model_get_item_attribute_value");

<* Maps to MenuModel::get_item_link *>
extern fn MenuModel* MenuModel.get_item_link(&self, int item_index, ZString link) @extern("g_menu_model_get_item_link");

<* Maps to MenuModel::get_n_items *>
extern fn int MenuModel.get_n_items(&self, ) @extern("g_menu_model_get_n_items");

<* Maps to MenuModel::is_mutable *>
extern fn bool MenuModel.is_mutable(&self, ) @extern("g_menu_model_is_mutable");

<* Maps to MenuModel::items_changed *>
extern fn void MenuModel.items_changed(&self, int position, int removed, int added) @extern("g_menu_model_items_changed");

<* Maps to MenuModel::iterate_item_attributes *>
extern fn MenuAttributeIter* MenuModel.iterate_item_attributes(&self, int item_index) @extern("g_menu_model_iterate_item_attributes");

<* Maps to MenuModel::iterate_item_links *>
extern fn MenuLinkIter* MenuModel.iterate_item_links(&self, int item_index) @extern("g_menu_model_iterate_item_links");


// Class Functions



<* Maps to GMountOperation *>
distinct MountOperation = void*;

// Class to parent cast.
fn gobject::Object* MountOperation.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of MountOperation *>
extern fn MountOperation* mount_operation_new() @extern("g_mount_operation_new");



// Class Methods

<* Maps to MountOperation::get_anonymous *>
extern fn bool MountOperation.get_anonymous(&self, ) @extern("g_mount_operation_get_anonymous");

<* Maps to MountOperation::get_choice *>
extern fn int MountOperation.get_choice(&self, ) @extern("g_mount_operation_get_choice");

<* Maps to MountOperation::get_domain *>
extern fn ZString MountOperation.get_domain(&self, ) @extern("g_mount_operation_get_domain");

<* Maps to MountOperation::get_is_tcrypt_hidden_volume *>
extern fn bool MountOperation.get_is_tcrypt_hidden_volume(&self, ) @extern("g_mount_operation_get_is_tcrypt_hidden_volume");

<* Maps to MountOperation::get_is_tcrypt_system_volume *>
extern fn bool MountOperation.get_is_tcrypt_system_volume(&self, ) @extern("g_mount_operation_get_is_tcrypt_system_volume");

<* Maps to MountOperation::get_password *>
extern fn ZString MountOperation.get_password(&self, ) @extern("g_mount_operation_get_password");

<* Maps to MountOperation::get_password_save *>
extern fn PasswordSave MountOperation.get_password_save(&self, ) @extern("g_mount_operation_get_password_save");

<* Maps to MountOperation::get_pim *>
extern fn uint MountOperation.get_pim(&self, ) @extern("g_mount_operation_get_pim");

<* Maps to MountOperation::get_username *>
extern fn ZString MountOperation.get_username(&self, ) @extern("g_mount_operation_get_username");

<* Maps to MountOperation::reply *>
extern fn void MountOperation.reply(&self, MountOperationResult result) @extern("g_mount_operation_reply");

<* Maps to MountOperation::set_anonymous *>
extern fn void MountOperation.set_anonymous(&self, bool anonymous) @extern("g_mount_operation_set_anonymous");

<* Maps to MountOperation::set_choice *>
extern fn void MountOperation.set_choice(&self, int choice) @extern("g_mount_operation_set_choice");

<* Maps to MountOperation::set_domain *>
extern fn void MountOperation.set_domain(&self, ZString domain) @extern("g_mount_operation_set_domain");

<* Maps to MountOperation::set_is_tcrypt_hidden_volume *>
extern fn void MountOperation.set_is_tcrypt_hidden_volume(&self, bool hidden_volume) @extern("g_mount_operation_set_is_tcrypt_hidden_volume");

<* Maps to MountOperation::set_is_tcrypt_system_volume *>
extern fn void MountOperation.set_is_tcrypt_system_volume(&self, bool system_volume) @extern("g_mount_operation_set_is_tcrypt_system_volume");

<* Maps to MountOperation::set_password *>
extern fn void MountOperation.set_password(&self, ZString password) @extern("g_mount_operation_set_password");

<* Maps to MountOperation::set_password_save *>
extern fn void MountOperation.set_password_save(&self, PasswordSave save) @extern("g_mount_operation_set_password_save");

<* Maps to MountOperation::set_pim *>
extern fn void MountOperation.set_pim(&self, uint pim) @extern("g_mount_operation_set_pim");

<* Maps to MountOperation::set_username *>
extern fn void MountOperation.set_username(&self, ZString username) @extern("g_mount_operation_set_username");


// Class Functions



<* Maps to GNativeSocketAddress *>
distinct NativeSocketAddress = void*;

// Class to parent cast.
fn SocketAddress* NativeSocketAddress.as_SocketAddress(&self) => (SocketAddress*)(self);

// Class Constructors

<* Maps to new of NativeSocketAddress *>
extern fn SocketAddress* native_socket_address_new(void* native, usz len) @extern("g_native_socket_address_new");



// Class Methods


// Class Functions



<* Maps to GNativeVolumeMonitor *>
distinct NativeVolumeMonitor = void*;

// Class to parent cast.
fn VolumeMonitor* NativeVolumeMonitor.as_VolumeMonitor(&self) => (VolumeMonitor*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GNetworkAddress *>
distinct NetworkAddress = void*;

// Class to parent cast.
fn gobject::Object* NetworkAddress.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of NetworkAddress *>
extern fn NetworkAddress* network_address_new(ZString hostname, ushort port) @extern("g_network_address_new");

<* Maps to new_loopback of NetworkAddress *>
extern fn NetworkAddress* network_address_new_loopback(ushort port) @extern("g_network_address_new_loopback");



// Class Methods

<* Maps to NetworkAddress::get_hostname *>
extern fn ZString NetworkAddress.get_hostname(&self, ) @extern("g_network_address_get_hostname");

<* Maps to NetworkAddress::get_port *>
extern fn ushort NetworkAddress.get_port(&self, ) @extern("g_network_address_get_port");

<* Maps to NetworkAddress::get_scheme *>
extern fn ZString NetworkAddress.get_scheme(&self, ) @extern("g_network_address_get_scheme");


// Class Functions

<* Maps to parse of NetworkAddress *>
extern fn NetworkAddress* network_address_parse(ZString host_and_port, ushort default_port) @extern("g_network_address_parse");

<* Maps to parse_uri of NetworkAddress *>
extern fn NetworkAddress* network_address_parse_uri(ZString uri, ushort default_port) @extern("g_network_address_parse_uri");



<* Maps to GNetworkService *>
distinct NetworkService = void*;

// Class to parent cast.
fn gobject::Object* NetworkService.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of NetworkService *>
extern fn NetworkService* network_service_new(ZString service, ZString protocol, ZString domain) @extern("g_network_service_new");



// Class Methods

<* Maps to NetworkService::get_domain *>
extern fn ZString NetworkService.get_domain(&self, ) @extern("g_network_service_get_domain");

<* Maps to NetworkService::get_protocol *>
extern fn ZString NetworkService.get_protocol(&self, ) @extern("g_network_service_get_protocol");

<* Maps to NetworkService::get_scheme *>
extern fn ZString NetworkService.get_scheme(&self, ) @extern("g_network_service_get_scheme");

<* Maps to NetworkService::get_service *>
extern fn ZString NetworkService.get_service(&self, ) @extern("g_network_service_get_service");

<* Maps to NetworkService::set_scheme *>
extern fn void NetworkService.set_scheme(&self, ZString scheme) @extern("g_network_service_set_scheme");


// Class Functions



<* Maps to GNotification *>
distinct Notification = void*;

// Class to parent cast.
fn gobject::Object* Notification.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Notification *>
extern fn Notification* notification_new(ZString title) @extern("g_notification_new");



// Class Methods

<* Maps to Notification::add_button *>
extern fn void Notification.add_button(&self, ZString label, ZString detailed_action) @extern("g_notification_add_button");

<* Maps to Notification::add_button_with_target *>
extern fn void Notification.add_button_with_target(&self, ZString label, ZString action, ZString target_format, any rest) @extern("g_notification_add_button_with_target");

<* Maps to Notification::add_button_with_target_value *>
extern fn void Notification.add_button_with_target_value(&self, ZString label, ZString action, glib::Variant* target) @extern("g_notification_add_button_with_target_value");

<* Maps to Notification::set_body *>
extern fn void Notification.set_body(&self, ZString body) @extern("g_notification_set_body");

<* Maps to Notification::set_category *>
extern fn void Notification.set_category(&self, ZString category) @extern("g_notification_set_category");

<* Maps to Notification::set_default_action *>
extern fn void Notification.set_default_action(&self, ZString detailed_action) @extern("g_notification_set_default_action");

<* Maps to Notification::set_default_action_and_target *>
extern fn void Notification.set_default_action_and_target(&self, ZString action, ZString target_format, any rest) @extern("g_notification_set_default_action_and_target");

<* Maps to Notification::set_default_action_and_target_value *>
extern fn void Notification.set_default_action_and_target_value(&self, ZString action, glib::Variant* target) @extern("g_notification_set_default_action_and_target_value");

<* Maps to Notification::set_icon *>
extern fn void Notification.set_icon(&self, Icon* icon) @extern("g_notification_set_icon");

<* Maps to Notification::set_priority *>
extern fn void Notification.set_priority(&self, NotificationPriority priority) @extern("g_notification_set_priority");

<* Maps to Notification::set_title *>
extern fn void Notification.set_title(&self, ZString title) @extern("g_notification_set_title");

<* Maps to Notification::set_urgent *>
extern fn void Notification.set_urgent(&self, bool urgent) @extern("g_notification_set_urgent");


// Class Functions



<* Maps to GOutputStream *>
distinct OutputStream = void*;

// Class to parent cast.
fn gobject::Object* OutputStream.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to OutputStream::clear_pending *>
extern fn void OutputStream.clear_pending(&self, ) @extern("g_output_stream_clear_pending");

<* Maps to OutputStream::close *>
extern fn bool OutputStream.close(&self, Cancellable* cancellable) @extern("g_output_stream_close");

<* Maps to OutputStream::close_async *>
extern fn void OutputStream.close_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_close_async");

<* Maps to OutputStream::close_finish *>
extern fn bool OutputStream.close_finish(&self, AsyncResult* result) @extern("g_output_stream_close_finish");

<* Maps to OutputStream::flush *>
extern fn bool OutputStream.flush(&self, Cancellable* cancellable) @extern("g_output_stream_flush");

<* Maps to OutputStream::flush_async *>
extern fn void OutputStream.flush_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_flush_async");

<* Maps to OutputStream::flush_finish *>
extern fn bool OutputStream.flush_finish(&self, AsyncResult* result) @extern("g_output_stream_flush_finish");

<* Maps to OutputStream::has_pending *>
extern fn bool OutputStream.has_pending(&self, ) @extern("g_output_stream_has_pending");

<* Maps to OutputStream::is_closed *>
extern fn bool OutputStream.is_closed(&self, ) @extern("g_output_stream_is_closed");

<* Maps to OutputStream::is_closing *>
extern fn bool OutputStream.is_closing(&self, ) @extern("g_output_stream_is_closing");

<* Maps to OutputStream::printf *>
extern fn bool OutputStream.printf(&self, usz* bytes_written, Cancellable* cancellable, glib::Error* error, ZString format, any rest) @extern("g_output_stream_printf");

<* Maps to OutputStream::set_pending *>
extern fn bool OutputStream.set_pending(&self, ) @extern("g_output_stream_set_pending");

<* Maps to OutputStream::splice *>
extern fn isz OutputStream.splice(&self, InputStream* source, OutputStreamSpliceFlags flags, Cancellable* cancellable) @extern("g_output_stream_splice");

<* Maps to OutputStream::splice_async *>
extern fn void OutputStream.splice_async(&self, InputStream* source, OutputStreamSpliceFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_splice_async");

<* Maps to OutputStream::splice_finish *>
extern fn isz OutputStream.splice_finish(&self, AsyncResult* result) @extern("g_output_stream_splice_finish");

<* Maps to OutputStream::vprintf *>
extern fn bool OutputStream.vprintf(&self, usz* bytes_written, Cancellable* cancellable, glib::Error* error, ZString format, ZString args) @extern("g_output_stream_vprintf");

<* Maps to OutputStream::write *>
extern fn isz OutputStream.write(&self, char buffer, usz count, Cancellable* cancellable) @extern("g_output_stream_write");

<* Maps to OutputStream::write_all *>
extern fn bool OutputStream.write_all(&self, char buffer, usz count, usz* bytes_written, Cancellable* cancellable) @extern("g_output_stream_write_all");

<* Maps to OutputStream::write_all_async *>
extern fn void OutputStream.write_all_async(&self, char buffer, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_write_all_async");

<* Maps to OutputStream::write_all_finish *>
extern fn bool OutputStream.write_all_finish(&self, AsyncResult* result, usz* bytes_written) @extern("g_output_stream_write_all_finish");

<* Maps to OutputStream::write_async *>
extern fn void OutputStream.write_async(&self, char buffer, usz count, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_write_async");

<* Maps to OutputStream::write_bytes *>
extern fn isz OutputStream.write_bytes(&self, glib::Bytes* bytes, Cancellable* cancellable) @extern("g_output_stream_write_bytes");

<* Maps to OutputStream::write_bytes_async *>
extern fn void OutputStream.write_bytes_async(&self, glib::Bytes* bytes, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_write_bytes_async");

<* Maps to OutputStream::write_bytes_finish *>
extern fn isz OutputStream.write_bytes_finish(&self, AsyncResult* result) @extern("g_output_stream_write_bytes_finish");

<* Maps to OutputStream::write_finish *>
extern fn isz OutputStream.write_finish(&self, AsyncResult* result) @extern("g_output_stream_write_finish");

<* Maps to OutputStream::writev *>
extern fn bool OutputStream.writev(&self, OutputVector vectors, usz n_vectors, usz* bytes_written, Cancellable* cancellable) @extern("g_output_stream_writev");

<* Maps to OutputStream::writev_all *>
extern fn bool OutputStream.writev_all(&self, OutputVector vectors, usz n_vectors, usz* bytes_written, Cancellable* cancellable) @extern("g_output_stream_writev_all");

<* Maps to OutputStream::writev_all_async *>
extern fn void OutputStream.writev_all_async(&self, OutputVector vectors, usz n_vectors, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_writev_all_async");

<* Maps to OutputStream::writev_all_finish *>
extern fn bool OutputStream.writev_all_finish(&self, AsyncResult* result, usz* bytes_written) @extern("g_output_stream_writev_all_finish");

<* Maps to OutputStream::writev_async *>
extern fn void OutputStream.writev_async(&self, OutputVector vectors, usz n_vectors, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_output_stream_writev_async");

<* Maps to OutputStream::writev_finish *>
extern fn bool OutputStream.writev_finish(&self, AsyncResult* result, usz* bytes_written) @extern("g_output_stream_writev_finish");


// Class Functions



<* Maps to GPermission *>
distinct Permission = void*;

// Class to parent cast.
fn gobject::Object* Permission.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Permission::acquire *>
extern fn bool Permission.acquire(&self, Cancellable* cancellable) @extern("g_permission_acquire");

<* Maps to Permission::acquire_async *>
extern fn void Permission.acquire_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_permission_acquire_async");

<* Maps to Permission::acquire_finish *>
extern fn bool Permission.acquire_finish(&self, AsyncResult* result) @extern("g_permission_acquire_finish");

<* Maps to Permission::get_allowed *>
extern fn bool Permission.get_allowed(&self, ) @extern("g_permission_get_allowed");

<* Maps to Permission::get_can_acquire *>
extern fn bool Permission.get_can_acquire(&self, ) @extern("g_permission_get_can_acquire");

<* Maps to Permission::get_can_release *>
extern fn bool Permission.get_can_release(&self, ) @extern("g_permission_get_can_release");

<* Maps to Permission::impl_update *>
extern fn void Permission.impl_update(&self, bool allowed, bool can_acquire, bool can_release) @extern("g_permission_impl_update");

<* Maps to Permission::release *>
extern fn bool Permission.release(&self, Cancellable* cancellable) @extern("g_permission_release");

<* Maps to Permission::release_async *>
extern fn void Permission.release_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_permission_release_async");

<* Maps to Permission::release_finish *>
extern fn bool Permission.release_finish(&self, AsyncResult* result) @extern("g_permission_release_finish");


// Class Functions



<* Maps to GPropertyAction *>
distinct PropertyAction = void*;

// Class to parent cast.
fn gobject::Object* PropertyAction.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of PropertyAction *>
extern fn PropertyAction* property_action_new(ZString name, gobject::Object* object, ZString property_name) @extern("g_property_action_new");



// Class Methods


// Class Functions



<* Maps to GProxyAddress *>
distinct ProxyAddress = void*;

// Class to parent cast.
fn InetSocketAddress* ProxyAddress.as_InetSocketAddress(&self) => (InetSocketAddress*)(self);

// Class Constructors

<* Maps to new of ProxyAddress *>
extern fn SocketAddress* proxy_address_new(InetAddress* inetaddr, ushort port, ZString protocol, ZString dest_hostname, ushort dest_port, ZString username, ZString password) @extern("g_proxy_address_new");



// Class Methods

<* Maps to ProxyAddress::get_destination_hostname *>
extern fn ZString ProxyAddress.get_destination_hostname(&self, ) @extern("g_proxy_address_get_destination_hostname");

<* Maps to ProxyAddress::get_destination_port *>
extern fn ushort ProxyAddress.get_destination_port(&self, ) @extern("g_proxy_address_get_destination_port");

<* Maps to ProxyAddress::get_destination_protocol *>
extern fn ZString ProxyAddress.get_destination_protocol(&self, ) @extern("g_proxy_address_get_destination_protocol");

<* Maps to ProxyAddress::get_password *>
extern fn ZString ProxyAddress.get_password(&self, ) @extern("g_proxy_address_get_password");

<* Maps to ProxyAddress::get_protocol *>
extern fn ZString ProxyAddress.get_protocol(&self, ) @extern("g_proxy_address_get_protocol");

<* Maps to ProxyAddress::get_uri *>
extern fn ZString ProxyAddress.get_uri(&self, ) @extern("g_proxy_address_get_uri");

<* Maps to ProxyAddress::get_username *>
extern fn ZString ProxyAddress.get_username(&self, ) @extern("g_proxy_address_get_username");


// Class Functions



<* Maps to GProxyAddressEnumerator *>
distinct ProxyAddressEnumerator = void*;

// Class to parent cast.
fn SocketAddressEnumerator* ProxyAddressEnumerator.as_SocketAddressEnumerator(&self) => (SocketAddressEnumerator*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GResolver *>
distinct Resolver = void*;

// Class to parent cast.
fn gobject::Object* Resolver.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Resolver::get_timeout *>
extern fn uint Resolver.get_timeout(&self, ) @extern("g_resolver_get_timeout");

<* Maps to Resolver::lookup_by_address *>
extern fn ZString* Resolver.lookup_by_address(&self, InetAddress* address, Cancellable* cancellable) @extern("g_resolver_lookup_by_address");

<* Maps to Resolver::lookup_by_address_async *>
extern fn void Resolver.lookup_by_address_async(&self, InetAddress* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_resolver_lookup_by_address_async");

<* Maps to Resolver::lookup_by_address_finish *>
extern fn ZString* Resolver.lookup_by_address_finish(&self, AsyncResult* result) @extern("g_resolver_lookup_by_address_finish");

<* Maps to Resolver::lookup_by_name *>
extern fn glib::List* Resolver.lookup_by_name(&self, ZString hostname, Cancellable* cancellable) @extern("g_resolver_lookup_by_name");

<* Maps to Resolver::lookup_by_name_async *>
extern fn void Resolver.lookup_by_name_async(&self, ZString hostname, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_resolver_lookup_by_name_async");

<* Maps to Resolver::lookup_by_name_finish *>
extern fn glib::List* Resolver.lookup_by_name_finish(&self, AsyncResult* result) @extern("g_resolver_lookup_by_name_finish");

<* Maps to Resolver::lookup_by_name_with_flags *>
extern fn glib::List* Resolver.lookup_by_name_with_flags(&self, ZString hostname, ResolverNameLookupFlags flags, Cancellable* cancellable) @extern("g_resolver_lookup_by_name_with_flags");

<* Maps to Resolver::lookup_by_name_with_flags_async *>
extern fn void Resolver.lookup_by_name_with_flags_async(&self, ZString hostname, ResolverNameLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_resolver_lookup_by_name_with_flags_async");

<* Maps to Resolver::lookup_by_name_with_flags_finish *>
extern fn glib::List* Resolver.lookup_by_name_with_flags_finish(&self, AsyncResult* result) @extern("g_resolver_lookup_by_name_with_flags_finish");

<* Maps to Resolver::lookup_records *>
extern fn glib::List* Resolver.lookup_records(&self, ZString rrname, ResolverRecordType record_type, Cancellable* cancellable) @extern("g_resolver_lookup_records");

<* Maps to Resolver::lookup_records_async *>
extern fn void Resolver.lookup_records_async(&self, ZString rrname, ResolverRecordType record_type, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_resolver_lookup_records_async");

<* Maps to Resolver::lookup_records_finish *>
extern fn glib::List* Resolver.lookup_records_finish(&self, AsyncResult* result) @extern("g_resolver_lookup_records_finish");

<* Maps to Resolver::lookup_service *>
extern fn glib::List* Resolver.lookup_service(&self, ZString service, ZString protocol, ZString domain, Cancellable* cancellable) @extern("g_resolver_lookup_service");

<* Maps to Resolver::lookup_service_async *>
extern fn void Resolver.lookup_service_async(&self, ZString service, ZString protocol, ZString domain, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_resolver_lookup_service_async");

<* Maps to Resolver::lookup_service_finish *>
extern fn glib::List* Resolver.lookup_service_finish(&self, AsyncResult* result) @extern("g_resolver_lookup_service_finish");

<* Maps to Resolver::set_default *>
extern fn void Resolver.set_default(&self, ) @extern("g_resolver_set_default");

<* Maps to Resolver::set_timeout *>
extern fn void Resolver.set_timeout(&self, uint timeout_ms) @extern("g_resolver_set_timeout");


// Class Functions

<* Maps to free_addresses of Resolver *>
extern fn void resolver_free_addresses(glib::List* addresses) @extern("g_resolver_free_addresses");

<* Maps to free_targets of Resolver *>
extern fn void resolver_free_targets(glib::List* targets) @extern("g_resolver_free_targets");

<* Maps to get_default of Resolver *>
extern fn Resolver* resolver_get_default() @extern("g_resolver_get_default");



<* Maps to GSettings *>
distinct Settings = void*;

// Class to parent cast.
fn gobject::Object* Settings.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Settings *>
extern fn Settings* settings_new(ZString schema_id) @extern("g_settings_new");

<* Maps to new_full of Settings *>
extern fn Settings* settings_new_full(SettingsSchema* schema, SettingsBackend* backend, ZString path) @extern("g_settings_new_full");

<* Maps to new_with_backend of Settings *>
extern fn Settings* settings_new_with_backend(ZString schema_id, SettingsBackend* backend) @extern("g_settings_new_with_backend");

<* Maps to new_with_backend_and_path of Settings *>
extern fn Settings* settings_new_with_backend_and_path(ZString schema_id, SettingsBackend* backend, ZString path) @extern("g_settings_new_with_backend_and_path");

<* Maps to new_with_path of Settings *>
extern fn Settings* settings_new_with_path(ZString schema_id, ZString path) @extern("g_settings_new_with_path");



// Class Methods

<* Maps to Settings::apply *>
extern fn void Settings.apply(&self, ) @extern("g_settings_apply");

<* Maps to Settings::bind *>
extern fn void Settings.bind(&self, ZString key, gobject::Object* object, ZString property, SettingsBindFlags flags) @extern("g_settings_bind");

<* Maps to Settings::bind_with_mapping *>
extern fn void Settings.bind_with_mapping(&self, ZString key, gobject::Object* object, ZString property, SettingsBindFlags flags, SettingsBindGetMapping get_mapping, SettingsBindSetMapping set_mapping, void* user_data, glib::DestroyNotify destroy) @extern("g_settings_bind_with_mapping");

<* Maps to Settings::bind_with_mapping_closures *>
extern fn void Settings.bind_with_mapping_closures(&self, ZString key, gobject::Object* object, ZString property, SettingsBindFlags flags, gobject::Closure* get_mapping, gobject::Closure* set_mapping) @extern("g_settings_bind_with_mapping_closures");

<* Maps to Settings::bind_writable *>
extern fn void Settings.bind_writable(&self, ZString key, gobject::Object* object, ZString property, bool inverted) @extern("g_settings_bind_writable");

<* Maps to Settings::create_action *>
extern fn Action* Settings.create_action(&self, ZString key) @extern("g_settings_create_action");

<* Maps to Settings::delay *>
extern fn void Settings.delay(&self, ) @extern("g_settings_delay");

<* Maps to Settings::get *>
extern fn void Settings.get(&self, ZString key, ZString format, any rest) @extern("g_settings_get");

<* Maps to Settings::get_boolean *>
extern fn bool Settings.get_boolean(&self, ZString key) @extern("g_settings_get_boolean");

<* Maps to Settings::get_child *>
extern fn Settings* Settings.get_child(&self, ZString name) @extern("g_settings_get_child");

<* Maps to Settings::get_default_value *>
extern fn glib::Variant* Settings.get_default_value(&self, ZString key) @extern("g_settings_get_default_value");

<* Maps to Settings::get_double *>
extern fn double Settings.get_double(&self, ZString key) @extern("g_settings_get_double");

<* Maps to Settings::get_enum *>
extern fn int Settings.get_enum(&self, ZString key) @extern("g_settings_get_enum");

<* Maps to Settings::get_flags *>
extern fn uint Settings.get_flags(&self, ZString key) @extern("g_settings_get_flags");

<* Maps to Settings::get_has_unapplied *>
extern fn bool Settings.get_has_unapplied(&self, ) @extern("g_settings_get_has_unapplied");

<* Maps to Settings::get_int *>
extern fn int Settings.get_int(&self, ZString key) @extern("g_settings_get_int");

<* Maps to Settings::get_int64 *>
extern fn long Settings.get_int64(&self, ZString key) @extern("g_settings_get_int64");

<* Maps to Settings::get_mapped *>
extern fn void* Settings.get_mapped(&self, ZString key, SettingsGetMapping mapping, void* user_data) @extern("g_settings_get_mapped");

<* Maps to Settings::get_range *>
extern fn glib::Variant* Settings.get_range(&self, ZString key) @extern("g_settings_get_range");

<* Maps to Settings::get_string *>
extern fn ZString* Settings.get_string(&self, ZString key) @extern("g_settings_get_string");

<* Maps to Settings::get_strv *>
extern fn ZString Settings.get_strv(&self, ZString key) @extern("g_settings_get_strv");

<* Maps to Settings::get_uint *>
extern fn uint Settings.get_uint(&self, ZString key) @extern("g_settings_get_uint");

<* Maps to Settings::get_uint64 *>
extern fn ulong Settings.get_uint64(&self, ZString key) @extern("g_settings_get_uint64");

<* Maps to Settings::get_user_value *>
extern fn glib::Variant* Settings.get_user_value(&self, ZString key) @extern("g_settings_get_user_value");

<* Maps to Settings::get_value *>
extern fn glib::Variant* Settings.get_value(&self, ZString key) @extern("g_settings_get_value");

<* Maps to Settings::is_writable *>
extern fn bool Settings.is_writable(&self, ZString name) @extern("g_settings_is_writable");

<* Maps to Settings::list_children *>
extern fn ZString Settings.list_children(&self, ) @extern("g_settings_list_children");

<* Maps to Settings::list_keys *>
extern fn ZString Settings.list_keys(&self, ) @extern("g_settings_list_keys");

<* Maps to Settings::range_check *>
extern fn bool Settings.range_check(&self, ZString key, glib::Variant* value) @extern("g_settings_range_check");

<* Maps to Settings::reset *>
extern fn void Settings.reset(&self, ZString key) @extern("g_settings_reset");

<* Maps to Settings::revert *>
extern fn void Settings.revert(&self, ) @extern("g_settings_revert");

<* Maps to Settings::set *>
extern fn bool Settings.set(&self, ZString key, ZString format, any rest) @extern("g_settings_set");

<* Maps to Settings::set_boolean *>
extern fn bool Settings.set_boolean(&self, ZString key, bool value) @extern("g_settings_set_boolean");

<* Maps to Settings::set_double *>
extern fn bool Settings.set_double(&self, ZString key, double value) @extern("g_settings_set_double");

<* Maps to Settings::set_enum *>
extern fn bool Settings.set_enum(&self, ZString key, int value) @extern("g_settings_set_enum");

<* Maps to Settings::set_flags *>
extern fn bool Settings.set_flags(&self, ZString key, uint value) @extern("g_settings_set_flags");

<* Maps to Settings::set_int *>
extern fn bool Settings.set_int(&self, ZString key, int value) @extern("g_settings_set_int");

<* Maps to Settings::set_int64 *>
extern fn bool Settings.set_int64(&self, ZString key, long value) @extern("g_settings_set_int64");

<* Maps to Settings::set_string *>
extern fn bool Settings.set_string(&self, ZString key, ZString value) @extern("g_settings_set_string");

<* Maps to Settings::set_strv *>
extern fn bool Settings.set_strv(&self, ZString key, ZString* value) @extern("g_settings_set_strv");

<* Maps to Settings::set_uint *>
extern fn bool Settings.set_uint(&self, ZString key, uint value) @extern("g_settings_set_uint");

<* Maps to Settings::set_uint64 *>
extern fn bool Settings.set_uint64(&self, ZString key, ulong value) @extern("g_settings_set_uint64");

<* Maps to Settings::set_value *>
extern fn bool Settings.set_value(&self, ZString key, glib::Variant* value) @extern("g_settings_set_value");


// Class Functions

<* Maps to list_relocatable_schemas of Settings *>
extern fn ZString settings_list_relocatable_schemas() @extern("g_settings_list_relocatable_schemas");

<* Maps to list_schemas of Settings *>
extern fn ZString settings_list_schemas() @extern("g_settings_list_schemas");

<* Maps to sync of Settings *>
extern fn void settings_sync() @extern("g_settings_sync");

<* Maps to unbind of Settings *>
extern fn void settings_unbind(gobject::Object* object, ZString property) @extern("g_settings_unbind");



<* Maps to GSettingsBackend *>
distinct SettingsBackend = void*;

// Class to parent cast.
fn gobject::Object* SettingsBackend.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to SettingsBackend::changed *>
extern fn void SettingsBackend.changed(&self, ZString key, void* origin_tag) @extern("g_settings_backend_changed");

<* Maps to SettingsBackend::changed_tree *>
extern fn void SettingsBackend.changed_tree(&self, glib::Tree* tree, void* origin_tag) @extern("g_settings_backend_changed_tree");

<* Maps to SettingsBackend::keys_changed *>
extern fn void SettingsBackend.keys_changed(&self, ZString path, ZString* items, void* origin_tag) @extern("g_settings_backend_keys_changed");

<* Maps to SettingsBackend::path_changed *>
extern fn void SettingsBackend.path_changed(&self, ZString path, void* origin_tag) @extern("g_settings_backend_path_changed");

<* Maps to SettingsBackend::path_writable_changed *>
extern fn void SettingsBackend.path_writable_changed(&self, ZString path) @extern("g_settings_backend_path_writable_changed");

<* Maps to SettingsBackend::writable_changed *>
extern fn void SettingsBackend.writable_changed(&self, ZString key) @extern("g_settings_backend_writable_changed");


// Class Functions

<* Maps to flatten_tree of SettingsBackend *>
extern fn void settings_backend_flatten_tree(glib::Tree* tree, ZString* path, ZString* keys, glib::Variant* values) @extern("g_settings_backend_flatten_tree");

<* Maps to get_default of SettingsBackend *>
extern fn SettingsBackend* settings_backend_get_default() @extern("g_settings_backend_get_default");



<* Maps to GSimpleAction *>
distinct SimpleAction = void*;

// Class to parent cast.
fn gobject::Object* SimpleAction.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SimpleAction *>
extern fn SimpleAction* simple_action_new(ZString name, glib::VariantType* parameter_type) @extern("g_simple_action_new");

<* Maps to new_stateful of SimpleAction *>
extern fn SimpleAction* simple_action_new_stateful(ZString name, glib::VariantType* parameter_type, glib::Variant* state) @extern("g_simple_action_new_stateful");



// Class Methods

<* Maps to SimpleAction::set_enabled *>
extern fn void SimpleAction.set_enabled(&self, bool enabled) @extern("g_simple_action_set_enabled");

<* Maps to SimpleAction::set_state *>
extern fn void SimpleAction.set_state(&self, glib::Variant* value) @extern("g_simple_action_set_state");

<* Maps to SimpleAction::set_state_hint *>
extern fn void SimpleAction.set_state_hint(&self, glib::Variant* state_hint) @extern("g_simple_action_set_state_hint");


// Class Functions



<* Maps to GSimpleActionGroup *>
distinct SimpleActionGroup = void*;

// Class to parent cast.
fn gobject::Object* SimpleActionGroup.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SimpleActionGroup *>
extern fn SimpleActionGroup* simple_action_group_new() @extern("g_simple_action_group_new");



// Class Methods

<* Maps to SimpleActionGroup::add_entries *>
extern fn void SimpleActionGroup.add_entries(&self, ActionEntry entries, int n_entries, void* user_data) @extern("g_simple_action_group_add_entries");

<* Maps to SimpleActionGroup::insert *>
extern fn void SimpleActionGroup.insert(&self, Action* action) @extern("g_simple_action_group_insert");

<* Maps to SimpleActionGroup::lookup *>
extern fn Action* SimpleActionGroup.lookup(&self, ZString action_name) @extern("g_simple_action_group_lookup");

<* Maps to SimpleActionGroup::remove *>
extern fn void SimpleActionGroup.remove(&self, ZString action_name) @extern("g_simple_action_group_remove");


// Class Functions



<* Maps to GSimpleAsyncResult *>
distinct SimpleAsyncResult = void*;

// Class to parent cast.
fn gobject::Object* SimpleAsyncResult.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SimpleAsyncResult *>
extern fn SimpleAsyncResult* simple_async_result_new(gobject::Object* source_object, AsyncReadyCallback callback, void* user_data, void* source_tag) @extern("g_simple_async_result_new");

<* Maps to new_error of SimpleAsyncResult *>
extern fn SimpleAsyncResult* simple_async_result_new_error(gobject::Object* source_object, AsyncReadyCallback callback, void* user_data, glib::Quark domain, int code, ZString format, any rest) @extern("g_simple_async_result_new_error");

<* Maps to new_from_error of SimpleAsyncResult *>
extern fn SimpleAsyncResult* simple_async_result_new_from_error(gobject::Object* source_object, AsyncReadyCallback callback, void* user_data, glib::Error* error) @extern("g_simple_async_result_new_from_error");

<* Maps to new_take_error of SimpleAsyncResult *>
extern fn SimpleAsyncResult* simple_async_result_new_take_error(gobject::Object* source_object, AsyncReadyCallback callback, void* user_data, glib::Error* error) @extern("g_simple_async_result_new_take_error");



// Class Methods

<* Maps to SimpleAsyncResult::complete *>
extern fn void SimpleAsyncResult.complete(&self, ) @extern("g_simple_async_result_complete");

<* Maps to SimpleAsyncResult::complete_in_idle *>
extern fn void SimpleAsyncResult.complete_in_idle(&self, ) @extern("g_simple_async_result_complete_in_idle");

<* Maps to SimpleAsyncResult::get_op_res_gboolean *>
extern fn bool SimpleAsyncResult.get_op_res_gboolean(&self, ) @extern("g_simple_async_result_get_op_res_gboolean");

<* Maps to SimpleAsyncResult::get_op_res_gpointer *>
extern fn void* SimpleAsyncResult.get_op_res_gpointer(&self, ) @extern("g_simple_async_result_get_op_res_gpointer");

<* Maps to SimpleAsyncResult::get_op_res_gssize *>
extern fn isz SimpleAsyncResult.get_op_res_gssize(&self, ) @extern("g_simple_async_result_get_op_res_gssize");

<* Maps to SimpleAsyncResult::get_source_tag *>
extern fn void* SimpleAsyncResult.get_source_tag(&self, ) @extern("g_simple_async_result_get_source_tag");

<* Maps to SimpleAsyncResult::propagate_error *>
extern fn bool SimpleAsyncResult.propagate_error(&self, ) @extern("g_simple_async_result_propagate_error");

<* Maps to SimpleAsyncResult::run_in_thread *>
extern fn void SimpleAsyncResult.run_in_thread(&self, SimpleAsyncThreadFunc func, int io_priority, Cancellable* cancellable) @extern("g_simple_async_result_run_in_thread");

<* Maps to SimpleAsyncResult::set_check_cancellable *>
extern fn void SimpleAsyncResult.set_check_cancellable(&self, Cancellable* check_cancellable) @extern("g_simple_async_result_set_check_cancellable");

<* Maps to SimpleAsyncResult::set_error *>
extern fn void SimpleAsyncResult.set_error(&self, glib::Quark domain, int code, ZString format, any rest) @extern("g_simple_async_result_set_error");

<* Maps to SimpleAsyncResult::set_error_va *>
extern fn void SimpleAsyncResult.set_error_va(&self, glib::Quark domain, int code, ZString format, ZString args) @extern("g_simple_async_result_set_error_va");

<* Maps to SimpleAsyncResult::set_from_error *>
extern fn void SimpleAsyncResult.set_from_error(&self, glib::Error* error) @extern("g_simple_async_result_set_from_error");

<* Maps to SimpleAsyncResult::set_handle_cancellation *>
extern fn void SimpleAsyncResult.set_handle_cancellation(&self, bool handle_cancellation) @extern("g_simple_async_result_set_handle_cancellation");

<* Maps to SimpleAsyncResult::set_op_res_gboolean *>
extern fn void SimpleAsyncResult.set_op_res_gboolean(&self, bool op_res) @extern("g_simple_async_result_set_op_res_gboolean");

<* Maps to SimpleAsyncResult::set_op_res_gpointer *>
extern fn void SimpleAsyncResult.set_op_res_gpointer(&self, void* op_res, glib::DestroyNotify destroy_op_res) @extern("g_simple_async_result_set_op_res_gpointer");

<* Maps to SimpleAsyncResult::set_op_res_gssize *>
extern fn void SimpleAsyncResult.set_op_res_gssize(&self, isz op_res) @extern("g_simple_async_result_set_op_res_gssize");

<* Maps to SimpleAsyncResult::take_error *>
extern fn void SimpleAsyncResult.take_error(&self, glib::Error* error) @extern("g_simple_async_result_take_error");


// Class Functions

<* Maps to is_valid of SimpleAsyncResult *>
extern fn bool simple_async_result_is_valid(AsyncResult* result, gobject::Object* source, void* source_tag) @extern("g_simple_async_result_is_valid");



<* Maps to GSimpleIOStream *>
distinct SimpleIOStream = void*;

// Class to parent cast.
fn IOStream* SimpleIOStream.as_IOStream(&self) => (IOStream*)(self);

// Class Constructors

<* Maps to new of SimpleIOStream *>
extern fn IOStream* simple_io_stream_new(InputStream* input_stream, OutputStream* output_stream) @extern("g_simple_io_stream_new");



// Class Methods


// Class Functions



<* Maps to GSimplePermission *>
distinct SimplePermission = void*;

// Class to parent cast.
fn Permission* SimplePermission.as_Permission(&self) => (Permission*)(self);

// Class Constructors

<* Maps to new of SimplePermission *>
extern fn Permission* simple_permission_new(bool allowed) @extern("g_simple_permission_new");



// Class Methods


// Class Functions



<* Maps to GSimpleProxyResolver *>
distinct SimpleProxyResolver = void*;

// Class to parent cast.
fn gobject::Object* SimpleProxyResolver.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to SimpleProxyResolver::set_default_proxy *>
extern fn void SimpleProxyResolver.set_default_proxy(&self, ZString default_proxy) @extern("g_simple_proxy_resolver_set_default_proxy");

<* Maps to SimpleProxyResolver::set_ignore_hosts *>
extern fn void SimpleProxyResolver.set_ignore_hosts(&self, ZString* ignore_hosts) @extern("g_simple_proxy_resolver_set_ignore_hosts");

<* Maps to SimpleProxyResolver::set_uri_proxy *>
extern fn void SimpleProxyResolver.set_uri_proxy(&self, ZString uri_scheme, ZString proxy) @extern("g_simple_proxy_resolver_set_uri_proxy");


// Class Functions

<* Maps to new of SimpleProxyResolver *>
extern fn ProxyResolver* simple_proxy_resolver_new(ZString default_proxy, ZString* ignore_hosts) @extern("g_simple_proxy_resolver_new");



<* Maps to GSocket *>
distinct Socket = void*;

// Class to parent cast.
fn gobject::Object* Socket.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Socket *>
extern fn Socket* socket_new(SocketFamily family, SocketType type, SocketProtocol protocol) @extern("g_socket_new");

<* Maps to new_from_fd of Socket *>
extern fn Socket* socket_new_from_fd(int fd) @extern("g_socket_new_from_fd");



// Class Methods

<* Maps to Socket::accept *>
extern fn Socket* Socket.accept(&self, Cancellable* cancellable) @extern("g_socket_accept");

<* Maps to Socket::bind *>
extern fn bool Socket.bind(&self, SocketAddress* address, bool allow_reuse) @extern("g_socket_bind");

<* Maps to Socket::check_connect_result *>
extern fn bool Socket.check_connect_result(&self, ) @extern("g_socket_check_connect_result");

<* Maps to Socket::close *>
extern fn bool Socket.close(&self, ) @extern("g_socket_close");

<* Maps to Socket::condition_check *>
extern fn glib::IOCondition Socket.condition_check(&self, glib::IOCondition condition) @extern("g_socket_condition_check");

<* Maps to Socket::condition_timed_wait *>
extern fn bool Socket.condition_timed_wait(&self, glib::IOCondition condition, long timeout_us, Cancellable* cancellable) @extern("g_socket_condition_timed_wait");

<* Maps to Socket::condition_wait *>
extern fn bool Socket.condition_wait(&self, glib::IOCondition condition, Cancellable* cancellable) @extern("g_socket_condition_wait");

<* Maps to Socket::connect *>
extern fn bool Socket.connect(&self, SocketAddress* address, Cancellable* cancellable) @extern("g_socket_connect");

<* Maps to Socket::connection_factory_create_connection *>
extern fn SocketConnection* Socket.connection_factory_create_connection(&self, ) @extern("g_socket_connection_factory_create_connection");

<* Maps to Socket::create_source *>
extern fn glib::Source* Socket.create_source(&self, glib::IOCondition condition, Cancellable* cancellable) @extern("g_socket_create_source");

<* Maps to Socket::get_available_bytes *>
extern fn isz Socket.get_available_bytes(&self, ) @extern("g_socket_get_available_bytes");

<* Maps to Socket::get_blocking *>
extern fn bool Socket.get_blocking(&self, ) @extern("g_socket_get_blocking");

<* Maps to Socket::get_broadcast *>
extern fn bool Socket.get_broadcast(&self, ) @extern("g_socket_get_broadcast");

<* Maps to Socket::get_credentials *>
extern fn Credentials* Socket.get_credentials(&self, ) @extern("g_socket_get_credentials");

<* Maps to Socket::get_family *>
extern fn SocketFamily Socket.get_family(&self, ) @extern("g_socket_get_family");

<* Maps to Socket::get_fd *>
extern fn int Socket.get_fd(&self, ) @extern("g_socket_get_fd");

<* Maps to Socket::get_keepalive *>
extern fn bool Socket.get_keepalive(&self, ) @extern("g_socket_get_keepalive");

<* Maps to Socket::get_listen_backlog *>
extern fn int Socket.get_listen_backlog(&self, ) @extern("g_socket_get_listen_backlog");

<* Maps to Socket::get_local_address *>
extern fn SocketAddress* Socket.get_local_address(&self, ) @extern("g_socket_get_local_address");

<* Maps to Socket::get_multicast_loopback *>
extern fn bool Socket.get_multicast_loopback(&self, ) @extern("g_socket_get_multicast_loopback");

<* Maps to Socket::get_multicast_ttl *>
extern fn uint Socket.get_multicast_ttl(&self, ) @extern("g_socket_get_multicast_ttl");

<* Maps to Socket::get_option *>
extern fn bool Socket.get_option(&self, int level, int optname, int* value) @extern("g_socket_get_option");

<* Maps to Socket::get_protocol *>
extern fn SocketProtocol Socket.get_protocol(&self, ) @extern("g_socket_get_protocol");

<* Maps to Socket::get_remote_address *>
extern fn SocketAddress* Socket.get_remote_address(&self, ) @extern("g_socket_get_remote_address");

<* Maps to Socket::get_socket_type *>
extern fn SocketType Socket.get_socket_type(&self, ) @extern("g_socket_get_socket_type");

<* Maps to Socket::get_timeout *>
extern fn uint Socket.get_timeout(&self, ) @extern("g_socket_get_timeout");

<* Maps to Socket::get_ttl *>
extern fn uint Socket.get_ttl(&self, ) @extern("g_socket_get_ttl");

<* Maps to Socket::is_closed *>
extern fn bool Socket.is_closed(&self, ) @extern("g_socket_is_closed");

<* Maps to Socket::is_connected *>
extern fn bool Socket.is_connected(&self, ) @extern("g_socket_is_connected");

<* Maps to Socket::join_multicast_group *>
extern fn bool Socket.join_multicast_group(&self, InetAddress* group, bool source_specific, ZString iface) @extern("g_socket_join_multicast_group");

<* Maps to Socket::join_multicast_group_ssm *>
extern fn bool Socket.join_multicast_group_ssm(&self, InetAddress* group, InetAddress* source_specific, ZString iface) @extern("g_socket_join_multicast_group_ssm");

<* Maps to Socket::leave_multicast_group *>
extern fn bool Socket.leave_multicast_group(&self, InetAddress* group, bool source_specific, ZString iface) @extern("g_socket_leave_multicast_group");

<* Maps to Socket::leave_multicast_group_ssm *>
extern fn bool Socket.leave_multicast_group_ssm(&self, InetAddress* group, InetAddress* source_specific, ZString iface) @extern("g_socket_leave_multicast_group_ssm");

<* Maps to Socket::listen *>
extern fn bool Socket.listen(&self, ) @extern("g_socket_listen");

<* Maps to Socket::receive *>
extern fn isz Socket.receive(&self, char buffer, usz size, Cancellable* cancellable) @extern("g_socket_receive");

<* Maps to Socket::receive_bytes *>
extern fn glib::Bytes* Socket.receive_bytes(&self, usz size, long timeout_us, Cancellable* cancellable) @extern("g_socket_receive_bytes");

<* Maps to Socket::receive_bytes_from *>
extern fn glib::Bytes* Socket.receive_bytes_from(&self, SocketAddress* address, usz size, long timeout_us, Cancellable* cancellable) @extern("g_socket_receive_bytes_from");

<* Maps to Socket::receive_from *>
extern fn isz Socket.receive_from(&self, SocketAddress* address, char buffer, usz size, Cancellable* cancellable) @extern("g_socket_receive_from");

<* Maps to Socket::receive_message *>
extern fn isz Socket.receive_message(&self, SocketAddress* address, InputVector vectors, int num_vectors, SocketControlMessage* messages, int* num_messages, int* flags, Cancellable* cancellable) @extern("g_socket_receive_message");

<* Maps to Socket::receive_messages *>
extern fn int Socket.receive_messages(&self, InputMessage messages, uint num_messages, int flags, Cancellable* cancellable) @extern("g_socket_receive_messages");

<* Maps to Socket::receive_with_blocking *>
extern fn isz Socket.receive_with_blocking(&self, char buffer, usz size, bool blocking, Cancellable* cancellable) @extern("g_socket_receive_with_blocking");

<* Maps to Socket::send *>
extern fn isz Socket.send(&self, char buffer, usz size, Cancellable* cancellable) @extern("g_socket_send");

<* Maps to Socket::send_message *>
extern fn isz Socket.send_message(&self, SocketAddress* address, OutputVector vectors, int num_vectors, SocketControlMessage* messages, int num_messages, int flags, Cancellable* cancellable) @extern("g_socket_send_message");

<* Maps to Socket::send_message_with_timeout *>
extern fn PollableReturn Socket.send_message_with_timeout(&self, SocketAddress* address, OutputVector vectors, int num_vectors, SocketControlMessage* messages, int num_messages, int flags, long timeout_us, usz* bytes_written, Cancellable* cancellable) @extern("g_socket_send_message_with_timeout");

<* Maps to Socket::send_messages *>
extern fn int Socket.send_messages(&self, OutputMessage messages, uint num_messages, int flags, Cancellable* cancellable) @extern("g_socket_send_messages");

<* Maps to Socket::send_to *>
extern fn isz Socket.send_to(&self, SocketAddress* address, char buffer, usz size, Cancellable* cancellable) @extern("g_socket_send_to");

<* Maps to Socket::send_with_blocking *>
extern fn isz Socket.send_with_blocking(&self, char buffer, usz size, bool blocking, Cancellable* cancellable) @extern("g_socket_send_with_blocking");

<* Maps to Socket::set_blocking *>
extern fn void Socket.set_blocking(&self, bool blocking) @extern("g_socket_set_blocking");

<* Maps to Socket::set_broadcast *>
extern fn void Socket.set_broadcast(&self, bool broadcast) @extern("g_socket_set_broadcast");

<* Maps to Socket::set_keepalive *>
extern fn void Socket.set_keepalive(&self, bool keepalive) @extern("g_socket_set_keepalive");

<* Maps to Socket::set_listen_backlog *>
extern fn void Socket.set_listen_backlog(&self, int backlog) @extern("g_socket_set_listen_backlog");

<* Maps to Socket::set_multicast_loopback *>
extern fn void Socket.set_multicast_loopback(&self, bool loopback) @extern("g_socket_set_multicast_loopback");

<* Maps to Socket::set_multicast_ttl *>
extern fn void Socket.set_multicast_ttl(&self, uint ttl) @extern("g_socket_set_multicast_ttl");

<* Maps to Socket::set_option *>
extern fn bool Socket.set_option(&self, int level, int optname, int value) @extern("g_socket_set_option");

<* Maps to Socket::set_timeout *>
extern fn void Socket.set_timeout(&self, uint timeout) @extern("g_socket_set_timeout");

<* Maps to Socket::set_ttl *>
extern fn void Socket.set_ttl(&self, uint ttl) @extern("g_socket_set_ttl");

<* Maps to Socket::shutdown *>
extern fn bool Socket.shutdown(&self, bool shutdown_read, bool shutdown_write) @extern("g_socket_shutdown");

<* Maps to Socket::speaks_ipv4 *>
extern fn bool Socket.speaks_ipv4(&self, ) @extern("g_socket_speaks_ipv4");


// Class Functions



<* Maps to GSocketAddress *>
distinct SocketAddress = void*;

// Class to parent cast.
fn gobject::Object* SocketAddress.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_from_native of SocketAddress *>
extern fn SocketAddress* socket_address_new_from_native(void* native, usz len) @extern("g_socket_address_new_from_native");



// Class Methods

<* Maps to SocketAddress::get_family *>
extern fn SocketFamily SocketAddress.get_family(&self, ) @extern("g_socket_address_get_family");

<* Maps to SocketAddress::get_native_size *>
extern fn isz SocketAddress.get_native_size(&self, ) @extern("g_socket_address_get_native_size");

<* Maps to SocketAddress::to_native *>
extern fn bool SocketAddress.to_native(&self, void* dest, usz destlen) @extern("g_socket_address_to_native");


// Class Functions



<* Maps to GSocketAddressEnumerator *>
distinct SocketAddressEnumerator = void*;

// Class to parent cast.
fn gobject::Object* SocketAddressEnumerator.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to SocketAddressEnumerator::next *>
extern fn SocketAddress* SocketAddressEnumerator.next(&self, Cancellable* cancellable) @extern("g_socket_address_enumerator_next");

<* Maps to SocketAddressEnumerator::next_async *>
extern fn void SocketAddressEnumerator.next_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_address_enumerator_next_async");

<* Maps to SocketAddressEnumerator::next_finish *>
extern fn SocketAddress* SocketAddressEnumerator.next_finish(&self, AsyncResult* result) @extern("g_socket_address_enumerator_next_finish");


// Class Functions



<* Maps to GSocketClient *>
distinct SocketClient = void*;

// Class to parent cast.
fn gobject::Object* SocketClient.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SocketClient *>
extern fn SocketClient* socket_client_new() @extern("g_socket_client_new");



// Class Methods

<* Maps to SocketClient::add_application_proxy *>
extern fn void SocketClient.add_application_proxy(&self, ZString protocol) @extern("g_socket_client_add_application_proxy");

<* Maps to SocketClient::connect *>
extern fn SocketConnection* SocketClient.connect(&self, SocketConnectable* connectable, Cancellable* cancellable) @extern("g_socket_client_connect");

<* Maps to SocketClient::connect_async *>
extern fn void SocketClient.connect_async(&self, SocketConnectable* connectable, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_client_connect_async");

<* Maps to SocketClient::connect_finish *>
extern fn SocketConnection* SocketClient.connect_finish(&self, AsyncResult* result) @extern("g_socket_client_connect_finish");

<* Maps to SocketClient::connect_to_host *>
extern fn SocketConnection* SocketClient.connect_to_host(&self, ZString host_and_port, ushort default_port, Cancellable* cancellable) @extern("g_socket_client_connect_to_host");

<* Maps to SocketClient::connect_to_host_async *>
extern fn void SocketClient.connect_to_host_async(&self, ZString host_and_port, ushort default_port, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_client_connect_to_host_async");

<* Maps to SocketClient::connect_to_host_finish *>
extern fn SocketConnection* SocketClient.connect_to_host_finish(&self, AsyncResult* result) @extern("g_socket_client_connect_to_host_finish");

<* Maps to SocketClient::connect_to_service *>
extern fn SocketConnection* SocketClient.connect_to_service(&self, ZString domain, ZString service, Cancellable* cancellable) @extern("g_socket_client_connect_to_service");

<* Maps to SocketClient::connect_to_service_async *>
extern fn void SocketClient.connect_to_service_async(&self, ZString domain, ZString service, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_client_connect_to_service_async");

<* Maps to SocketClient::connect_to_service_finish *>
extern fn SocketConnection* SocketClient.connect_to_service_finish(&self, AsyncResult* result) @extern("g_socket_client_connect_to_service_finish");

<* Maps to SocketClient::connect_to_uri *>
extern fn SocketConnection* SocketClient.connect_to_uri(&self, ZString uri, ushort default_port, Cancellable* cancellable) @extern("g_socket_client_connect_to_uri");

<* Maps to SocketClient::connect_to_uri_async *>
extern fn void SocketClient.connect_to_uri_async(&self, ZString uri, ushort default_port, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_client_connect_to_uri_async");

<* Maps to SocketClient::connect_to_uri_finish *>
extern fn SocketConnection* SocketClient.connect_to_uri_finish(&self, AsyncResult* result) @extern("g_socket_client_connect_to_uri_finish");

<* Maps to SocketClient::get_enable_proxy *>
extern fn bool SocketClient.get_enable_proxy(&self, ) @extern("g_socket_client_get_enable_proxy");

<* Maps to SocketClient::get_family *>
extern fn SocketFamily SocketClient.get_family(&self, ) @extern("g_socket_client_get_family");

<* Maps to SocketClient::get_local_address *>
extern fn SocketAddress* SocketClient.get_local_address(&self, ) @extern("g_socket_client_get_local_address");

<* Maps to SocketClient::get_protocol *>
extern fn SocketProtocol SocketClient.get_protocol(&self, ) @extern("g_socket_client_get_protocol");

<* Maps to SocketClient::get_proxy_resolver *>
extern fn ProxyResolver* SocketClient.get_proxy_resolver(&self, ) @extern("g_socket_client_get_proxy_resolver");

<* Maps to SocketClient::get_socket_type *>
extern fn SocketType SocketClient.get_socket_type(&self, ) @extern("g_socket_client_get_socket_type");

<* Maps to SocketClient::get_timeout *>
extern fn uint SocketClient.get_timeout(&self, ) @extern("g_socket_client_get_timeout");

<* Maps to SocketClient::get_tls *>
extern fn bool SocketClient.get_tls(&self, ) @extern("g_socket_client_get_tls");

<* Maps to SocketClient::get_tls_validation_flags *>
extern fn TlsCertificateFlags SocketClient.get_tls_validation_flags(&self, ) @extern("g_socket_client_get_tls_validation_flags");

<* Maps to SocketClient::set_enable_proxy *>
extern fn void SocketClient.set_enable_proxy(&self, bool enable) @extern("g_socket_client_set_enable_proxy");

<* Maps to SocketClient::set_family *>
extern fn void SocketClient.set_family(&self, SocketFamily family) @extern("g_socket_client_set_family");

<* Maps to SocketClient::set_local_address *>
extern fn void SocketClient.set_local_address(&self, SocketAddress* address) @extern("g_socket_client_set_local_address");

<* Maps to SocketClient::set_protocol *>
extern fn void SocketClient.set_protocol(&self, SocketProtocol protocol) @extern("g_socket_client_set_protocol");

<* Maps to SocketClient::set_proxy_resolver *>
extern fn void SocketClient.set_proxy_resolver(&self, ProxyResolver* proxy_resolver) @extern("g_socket_client_set_proxy_resolver");

<* Maps to SocketClient::set_socket_type *>
extern fn void SocketClient.set_socket_type(&self, SocketType type) @extern("g_socket_client_set_socket_type");

<* Maps to SocketClient::set_timeout *>
extern fn void SocketClient.set_timeout(&self, uint timeout) @extern("g_socket_client_set_timeout");

<* Maps to SocketClient::set_tls *>
extern fn void SocketClient.set_tls(&self, bool tls) @extern("g_socket_client_set_tls");

<* Maps to SocketClient::set_tls_validation_flags *>
extern fn void SocketClient.set_tls_validation_flags(&self, TlsCertificateFlags flags) @extern("g_socket_client_set_tls_validation_flags");


// Class Functions



<* Maps to GSocketConnection *>
distinct SocketConnection = void*;

// Class to parent cast.
fn IOStream* SocketConnection.as_IOStream(&self) => (IOStream*)(self);

// Class Constructors



// Class Methods

<* Maps to SocketConnection::connect *>
extern fn bool SocketConnection.connect(&self, SocketAddress* address, Cancellable* cancellable) @extern("g_socket_connection_connect");

<* Maps to SocketConnection::connect_async *>
extern fn void SocketConnection.connect_async(&self, SocketAddress* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_connection_connect_async");

<* Maps to SocketConnection::connect_finish *>
extern fn bool SocketConnection.connect_finish(&self, AsyncResult* result) @extern("g_socket_connection_connect_finish");

<* Maps to SocketConnection::get_local_address *>
extern fn SocketAddress* SocketConnection.get_local_address(&self, ) @extern("g_socket_connection_get_local_address");

<* Maps to SocketConnection::get_remote_address *>
extern fn SocketAddress* SocketConnection.get_remote_address(&self, ) @extern("g_socket_connection_get_remote_address");

<* Maps to SocketConnection::get_socket *>
extern fn Socket* SocketConnection.get_socket(&self, ) @extern("g_socket_connection_get_socket");

<* Maps to SocketConnection::is_connected *>
extern fn bool SocketConnection.is_connected(&self, ) @extern("g_socket_connection_is_connected");


// Class Functions

<* Maps to factory_lookup_type of SocketConnection *>
extern fn usz socket_connection_factory_lookup_type(SocketFamily family, SocketType type, int protocol_id) @extern("g_socket_connection_factory_lookup_type");

<* Maps to factory_register_type of SocketConnection *>
extern fn void socket_connection_factory_register_type(usz g_type, SocketFamily family, SocketType type, int protocol) @extern("g_socket_connection_factory_register_type");



<* Maps to GSocketControlMessage *>
distinct SocketControlMessage = void*;

// Class to parent cast.
fn gobject::Object* SocketControlMessage.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to SocketControlMessage::get_level *>
extern fn int SocketControlMessage.get_level(&self, ) @extern("g_socket_control_message_get_level");

<* Maps to SocketControlMessage::get_msg_type *>
extern fn int SocketControlMessage.get_msg_type(&self, ) @extern("g_socket_control_message_get_msg_type");

<* Maps to SocketControlMessage::get_size *>
extern fn usz SocketControlMessage.get_size(&self, ) @extern("g_socket_control_message_get_size");

<* Maps to SocketControlMessage::serialize *>
extern fn void SocketControlMessage.serialize(&self, void* data) @extern("g_socket_control_message_serialize");


// Class Functions

<* Maps to deserialize of SocketControlMessage *>
extern fn SocketControlMessage* socket_control_message_deserialize(int level, int type, usz size, char data) @extern("g_socket_control_message_deserialize");



<* Maps to GSocketListener *>
distinct SocketListener = void*;

// Class to parent cast.
fn gobject::Object* SocketListener.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SocketListener *>
extern fn SocketListener* socket_listener_new() @extern("g_socket_listener_new");



// Class Methods

<* Maps to SocketListener::accept *>
extern fn SocketConnection* SocketListener.accept(&self, gobject::Object* source_object, Cancellable* cancellable) @extern("g_socket_listener_accept");

<* Maps to SocketListener::accept_async *>
extern fn void SocketListener.accept_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_listener_accept_async");

<* Maps to SocketListener::accept_finish *>
extern fn SocketConnection* SocketListener.accept_finish(&self, AsyncResult* result, gobject::Object* source_object) @extern("g_socket_listener_accept_finish");

<* Maps to SocketListener::accept_socket *>
extern fn Socket* SocketListener.accept_socket(&self, gobject::Object* source_object, Cancellable* cancellable) @extern("g_socket_listener_accept_socket");

<* Maps to SocketListener::accept_socket_async *>
extern fn void SocketListener.accept_socket_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_socket_listener_accept_socket_async");

<* Maps to SocketListener::accept_socket_finish *>
extern fn Socket* SocketListener.accept_socket_finish(&self, AsyncResult* result, gobject::Object* source_object) @extern("g_socket_listener_accept_socket_finish");

<* Maps to SocketListener::add_address *>
extern fn bool SocketListener.add_address(&self, SocketAddress* address, SocketType type, SocketProtocol protocol, gobject::Object* source_object, SocketAddress* effective_address) @extern("g_socket_listener_add_address");

<* Maps to SocketListener::add_any_inet_port *>
extern fn ushort SocketListener.add_any_inet_port(&self, gobject::Object* source_object) @extern("g_socket_listener_add_any_inet_port");

<* Maps to SocketListener::add_inet_port *>
extern fn bool SocketListener.add_inet_port(&self, ushort port, gobject::Object* source_object) @extern("g_socket_listener_add_inet_port");

<* Maps to SocketListener::add_socket *>
extern fn bool SocketListener.add_socket(&self, Socket* socket, gobject::Object* source_object) @extern("g_socket_listener_add_socket");

<* Maps to SocketListener::close *>
extern fn void SocketListener.close(&self, ) @extern("g_socket_listener_close");

<* Maps to SocketListener::set_backlog *>
extern fn void SocketListener.set_backlog(&self, int listen_backlog) @extern("g_socket_listener_set_backlog");


// Class Functions



<* Maps to GSocketService *>
distinct SocketService = void*;

// Class to parent cast.
fn SocketListener* SocketService.as_SocketListener(&self) => (SocketListener*)(self);

// Class Constructors

<* Maps to new of SocketService *>
extern fn SocketService* socket_service_new() @extern("g_socket_service_new");



// Class Methods

<* Maps to SocketService::is_active *>
extern fn bool SocketService.is_active(&self, ) @extern("g_socket_service_is_active");

<* Maps to SocketService::start *>
extern fn void SocketService.start(&self, ) @extern("g_socket_service_start");

<* Maps to SocketService::stop *>
extern fn void SocketService.stop(&self, ) @extern("g_socket_service_stop");


// Class Functions



<* Maps to GSubprocess *>
distinct Subprocess = void*;

// Class to parent cast.
fn gobject::Object* Subprocess.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Subprocess *>
extern fn Subprocess* subprocess_new(SubprocessFlags flags, glib::Error* error, ZString argv0, any rest) @extern("g_subprocess_new");

<* Maps to newv of Subprocess *>
extern fn Subprocess* subprocess_newv(ZString argv, SubprocessFlags flags) @extern("g_subprocess_newv");



// Class Methods

<* Maps to Subprocess::communicate *>
extern fn bool Subprocess.communicate(&self, glib::Bytes* stdin_buf, Cancellable* cancellable, glib::Bytes* stdout_buf, glib::Bytes* stderr_buf) @extern("g_subprocess_communicate");

<* Maps to Subprocess::communicate_async *>
extern fn void Subprocess.communicate_async(&self, glib::Bytes* stdin_buf, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_subprocess_communicate_async");

<* Maps to Subprocess::communicate_finish *>
extern fn bool Subprocess.communicate_finish(&self, AsyncResult* result, glib::Bytes* stdout_buf, glib::Bytes* stderr_buf) @extern("g_subprocess_communicate_finish");

<* Maps to Subprocess::communicate_utf8 *>
extern fn bool Subprocess.communicate_utf8(&self, ZString stdin_buf, Cancellable* cancellable, ZString* stdout_buf, ZString* stderr_buf) @extern("g_subprocess_communicate_utf8");

<* Maps to Subprocess::communicate_utf8_async *>
extern fn void Subprocess.communicate_utf8_async(&self, ZString stdin_buf, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_subprocess_communicate_utf8_async");

<* Maps to Subprocess::communicate_utf8_finish *>
extern fn bool Subprocess.communicate_utf8_finish(&self, AsyncResult* result, ZString* stdout_buf, ZString* stderr_buf) @extern("g_subprocess_communicate_utf8_finish");

<* Maps to Subprocess::force_exit *>
extern fn void Subprocess.force_exit(&self, ) @extern("g_subprocess_force_exit");

<* Maps to Subprocess::get_exit_status *>
extern fn int Subprocess.get_exit_status(&self, ) @extern("g_subprocess_get_exit_status");

<* Maps to Subprocess::get_identifier *>
extern fn ZString Subprocess.get_identifier(&self, ) @extern("g_subprocess_get_identifier");

<* Maps to Subprocess::get_if_exited *>
extern fn bool Subprocess.get_if_exited(&self, ) @extern("g_subprocess_get_if_exited");

<* Maps to Subprocess::get_if_signaled *>
extern fn bool Subprocess.get_if_signaled(&self, ) @extern("g_subprocess_get_if_signaled");

<* Maps to Subprocess::get_status *>
extern fn int Subprocess.get_status(&self, ) @extern("g_subprocess_get_status");

<* Maps to Subprocess::get_stderr_pipe *>
extern fn InputStream* Subprocess.get_stderr_pipe(&self, ) @extern("g_subprocess_get_stderr_pipe");

<* Maps to Subprocess::get_stdin_pipe *>
extern fn OutputStream* Subprocess.get_stdin_pipe(&self, ) @extern("g_subprocess_get_stdin_pipe");

<* Maps to Subprocess::get_stdout_pipe *>
extern fn InputStream* Subprocess.get_stdout_pipe(&self, ) @extern("g_subprocess_get_stdout_pipe");

<* Maps to Subprocess::get_successful *>
extern fn bool Subprocess.get_successful(&self, ) @extern("g_subprocess_get_successful");

<* Maps to Subprocess::get_term_sig *>
extern fn int Subprocess.get_term_sig(&self, ) @extern("g_subprocess_get_term_sig");

<* Maps to Subprocess::send_signal *>
extern fn void Subprocess.send_signal(&self, int signal_num) @extern("g_subprocess_send_signal");

<* Maps to Subprocess::wait *>
extern fn bool Subprocess.wait(&self, Cancellable* cancellable) @extern("g_subprocess_wait");

<* Maps to Subprocess::wait_async *>
extern fn void Subprocess.wait_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_subprocess_wait_async");

<* Maps to Subprocess::wait_check *>
extern fn bool Subprocess.wait_check(&self, Cancellable* cancellable) @extern("g_subprocess_wait_check");

<* Maps to Subprocess::wait_check_async *>
extern fn void Subprocess.wait_check_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_subprocess_wait_check_async");

<* Maps to Subprocess::wait_check_finish *>
extern fn bool Subprocess.wait_check_finish(&self, AsyncResult* result) @extern("g_subprocess_wait_check_finish");

<* Maps to Subprocess::wait_finish *>
extern fn bool Subprocess.wait_finish(&self, AsyncResult* result) @extern("g_subprocess_wait_finish");


// Class Functions



<* Maps to GSubprocessLauncher *>
distinct SubprocessLauncher = void*;

// Class to parent cast.
fn gobject::Object* SubprocessLauncher.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of SubprocessLauncher *>
extern fn SubprocessLauncher* subprocess_launcher_new(SubprocessFlags flags) @extern("g_subprocess_launcher_new");



// Class Methods

<* Maps to SubprocessLauncher::close *>
extern fn void SubprocessLauncher.close(&self, ) @extern("g_subprocess_launcher_close");

<* Maps to SubprocessLauncher::getenv *>
extern fn ZString SubprocessLauncher.getenv(&self, ZString variable) @extern("g_subprocess_launcher_getenv");

<* Maps to SubprocessLauncher::set_child_setup *>
extern fn void SubprocessLauncher.set_child_setup(&self, glib::SpawnChildSetupFunc child_setup, void* user_data, glib::DestroyNotify destroy_notify) @extern("g_subprocess_launcher_set_child_setup");

<* Maps to SubprocessLauncher::set_cwd *>
extern fn void SubprocessLauncher.set_cwd(&self, ZString cwd) @extern("g_subprocess_launcher_set_cwd");

<* Maps to SubprocessLauncher::set_environ *>
extern fn void SubprocessLauncher.set_environ(&self, ZString env) @extern("g_subprocess_launcher_set_environ");

<* Maps to SubprocessLauncher::set_flags *>
extern fn void SubprocessLauncher.set_flags(&self, SubprocessFlags flags) @extern("g_subprocess_launcher_set_flags");

<* Maps to SubprocessLauncher::set_stderr_file_path *>
extern fn void SubprocessLauncher.set_stderr_file_path(&self, ZString path) @extern("g_subprocess_launcher_set_stderr_file_path");

<* Maps to SubprocessLauncher::set_stdin_file_path *>
extern fn void SubprocessLauncher.set_stdin_file_path(&self, ZString path) @extern("g_subprocess_launcher_set_stdin_file_path");

<* Maps to SubprocessLauncher::set_stdout_file_path *>
extern fn void SubprocessLauncher.set_stdout_file_path(&self, ZString path) @extern("g_subprocess_launcher_set_stdout_file_path");

<* Maps to SubprocessLauncher::setenv *>
extern fn void SubprocessLauncher.setenv(&self, ZString variable, ZString value, bool overwrite) @extern("g_subprocess_launcher_setenv");

<* Maps to SubprocessLauncher::spawn *>
extern fn Subprocess* SubprocessLauncher.spawn(&self, glib::Error* error, ZString argv0, any rest) @extern("g_subprocess_launcher_spawn");

<* Maps to SubprocessLauncher::spawnv *>
extern fn Subprocess* SubprocessLauncher.spawnv(&self, ZString argv) @extern("g_subprocess_launcher_spawnv");

<* Maps to SubprocessLauncher::take_fd *>
extern fn void SubprocessLauncher.take_fd(&self, int source_fd, int target_fd) @extern("g_subprocess_launcher_take_fd");

<* Maps to SubprocessLauncher::take_stderr_fd *>
extern fn void SubprocessLauncher.take_stderr_fd(&self, int fd) @extern("g_subprocess_launcher_take_stderr_fd");

<* Maps to SubprocessLauncher::take_stdin_fd *>
extern fn void SubprocessLauncher.take_stdin_fd(&self, int fd) @extern("g_subprocess_launcher_take_stdin_fd");

<* Maps to SubprocessLauncher::take_stdout_fd *>
extern fn void SubprocessLauncher.take_stdout_fd(&self, int fd) @extern("g_subprocess_launcher_take_stdout_fd");

<* Maps to SubprocessLauncher::unsetenv *>
extern fn void SubprocessLauncher.unsetenv(&self, ZString variable) @extern("g_subprocess_launcher_unsetenv");


// Class Functions



<* Maps to GTask *>
distinct Task = void*;

// Class to parent cast.
fn gobject::Object* Task.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of Task *>
extern fn Task* task_new(gobject::Object* source_object, Cancellable* cancellable, AsyncReadyCallback callback, void* callback_data) @extern("g_task_new");



// Class Methods

<* Maps to Task::attach_source *>
extern fn void Task.attach_source(&self, glib::Source* source, glib::SourceFunc callback) @extern("g_task_attach_source");

<* Maps to Task::get_cancellable *>
extern fn Cancellable* Task.get_cancellable(&self, ) @extern("g_task_get_cancellable");

<* Maps to Task::get_check_cancellable *>
extern fn bool Task.get_check_cancellable(&self, ) @extern("g_task_get_check_cancellable");

<* Maps to Task::get_completed *>
extern fn bool Task.get_completed(&self, ) @extern("g_task_get_completed");

<* Maps to Task::get_context *>
extern fn glib::MainContext* Task.get_context(&self, ) @extern("g_task_get_context");

<* Maps to Task::get_name *>
extern fn ZString Task.get_name(&self, ) @extern("g_task_get_name");

<* Maps to Task::get_priority *>
extern fn int Task.get_priority(&self, ) @extern("g_task_get_priority");

<* Maps to Task::get_return_on_cancel *>
extern fn bool Task.get_return_on_cancel(&self, ) @extern("g_task_get_return_on_cancel");

<* Maps to Task::get_source_object *>
extern fn gobject::Object* Task.get_source_object(&self, ) @extern("g_task_get_source_object");

<* Maps to Task::get_source_tag *>
extern fn void* Task.get_source_tag(&self, ) @extern("g_task_get_source_tag");

<* Maps to Task::get_task_data *>
extern fn void* Task.get_task_data(&self, ) @extern("g_task_get_task_data");

<* Maps to Task::had_error *>
extern fn bool Task.had_error(&self, ) @extern("g_task_had_error");

<* Maps to Task::propagate_boolean *>
extern fn bool Task.propagate_boolean(&self, ) @extern("g_task_propagate_boolean");

<* Maps to Task::propagate_int *>
extern fn isz Task.propagate_int(&self, ) @extern("g_task_propagate_int");

<* Maps to Task::propagate_pointer *>
extern fn void* Task.propagate_pointer(&self, ) @extern("g_task_propagate_pointer");

<* Maps to Task::propagate_value *>
extern fn bool Task.propagate_value(&self, gobject::Value* value) @extern("g_task_propagate_value");

<* Maps to Task::return_boolean *>
extern fn void Task.return_boolean(&self, bool result) @extern("g_task_return_boolean");

<* Maps to Task::return_error *>
extern fn void Task.return_error(&self, glib::Error* error) @extern("g_task_return_error");

<* Maps to Task::return_error_if_cancelled *>
extern fn bool Task.return_error_if_cancelled(&self, ) @extern("g_task_return_error_if_cancelled");

<* Maps to Task::return_int *>
extern fn void Task.return_int(&self, isz result) @extern("g_task_return_int");

<* Maps to Task::return_new_error *>
extern fn void Task.return_new_error(&self, glib::Quark domain, int code, ZString format, any rest) @extern("g_task_return_new_error");

<* Maps to Task::return_new_error_literal *>
extern fn void Task.return_new_error_literal(&self, glib::Quark domain, int code, ZString message) @extern("g_task_return_new_error_literal");

<* Maps to Task::return_pointer *>
extern fn void Task.return_pointer(&self, void* result, glib::DestroyNotify result_destroy) @extern("g_task_return_pointer");

<* Maps to Task::return_prefixed_error *>
extern fn void Task.return_prefixed_error(&self, glib::Error* error, ZString format, any rest) @extern("g_task_return_prefixed_error");

<* Maps to Task::return_value *>
extern fn void Task.return_value(&self, gobject::Value* result) @extern("g_task_return_value");

<* Maps to Task::run_in_thread *>
extern fn void Task.run_in_thread(&self, TaskThreadFunc task_func) @extern("g_task_run_in_thread");

<* Maps to Task::run_in_thread_sync *>
extern fn void Task.run_in_thread_sync(&self, TaskThreadFunc task_func) @extern("g_task_run_in_thread_sync");

<* Maps to Task::set_check_cancellable *>
extern fn void Task.set_check_cancellable(&self, bool check_cancellable) @extern("g_task_set_check_cancellable");

<* Maps to Task::set_name *>
extern fn void Task.set_name(&self, ZString name) @extern("g_task_set_name");

<* Maps to Task::set_priority *>
extern fn void Task.set_priority(&self, int priority) @extern("g_task_set_priority");

<* Maps to Task::set_return_on_cancel *>
extern fn bool Task.set_return_on_cancel(&self, bool return_on_cancel) @extern("g_task_set_return_on_cancel");

<* Maps to Task::set_source_tag *>
extern fn void Task.set_source_tag(&self, void* source_tag) @extern("g_task_set_source_tag");

<* Maps to Task::set_static_name *>
extern fn void Task.set_static_name(&self, ZString name) @extern("g_task_set_static_name");

<* Maps to Task::set_task_data *>
extern fn void Task.set_task_data(&self, void* task_data, glib::DestroyNotify task_data_destroy) @extern("g_task_set_task_data");


// Class Functions

<* Maps to is_valid of Task *>
extern fn bool task_is_valid(AsyncResult* result, gobject::Object* source_object) @extern("g_task_is_valid");

<* Maps to report_error of Task *>
extern fn void task_report_error(gobject::Object* source_object, AsyncReadyCallback callback, void* callback_data, void* source_tag, glib::Error* error) @extern("g_task_report_error");

<* Maps to report_new_error of Task *>
extern fn void task_report_new_error(gobject::Object* source_object, AsyncReadyCallback callback, void* callback_data, void* source_tag, glib::Quark domain, int code, ZString format, any rest) @extern("g_task_report_new_error");



<* Maps to GTcpConnection *>
distinct TcpConnection = void*;

// Class to parent cast.
fn SocketConnection* TcpConnection.as_SocketConnection(&self) => (SocketConnection*)(self);

// Class Constructors



// Class Methods

<* Maps to TcpConnection::get_graceful_disconnect *>
extern fn bool TcpConnection.get_graceful_disconnect(&self, ) @extern("g_tcp_connection_get_graceful_disconnect");

<* Maps to TcpConnection::set_graceful_disconnect *>
extern fn void TcpConnection.set_graceful_disconnect(&self, bool graceful_disconnect) @extern("g_tcp_connection_set_graceful_disconnect");


// Class Functions



<* Maps to GTcpWrapperConnection *>
distinct TcpWrapperConnection = void*;

// Class to parent cast.
fn TcpConnection* TcpWrapperConnection.as_TcpConnection(&self) => (TcpConnection*)(self);

// Class Constructors

<* Maps to new of TcpWrapperConnection *>
extern fn SocketConnection* tcp_wrapper_connection_new(IOStream* base_io_stream, Socket* socket) @extern("g_tcp_wrapper_connection_new");



// Class Methods

<* Maps to TcpWrapperConnection::get_base_io_stream *>
extern fn IOStream* TcpWrapperConnection.get_base_io_stream(&self, ) @extern("g_tcp_wrapper_connection_get_base_io_stream");


// Class Functions



<* Maps to GTestDBus *>
distinct TestDBus = void*;

// Class to parent cast.
fn gobject::Object* TestDBus.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of TestDBus *>
extern fn TestDBus* test_d_bus_new(TestDBusFlags flags) @extern("g_test_dbus_new");



// Class Methods

<* Maps to TestDBus::add_service_dir *>
extern fn void TestDBus.add_service_dir(&self, ZString path) @extern("g_test_dbus_add_service_dir");

<* Maps to TestDBus::down *>
extern fn void TestDBus.down(&self, ) @extern("g_test_dbus_down");

<* Maps to TestDBus::get_bus_address *>
extern fn ZString TestDBus.get_bus_address(&self, ) @extern("g_test_dbus_get_bus_address");

<* Maps to TestDBus::get_flags *>
extern fn TestDBusFlags TestDBus.get_flags(&self, ) @extern("g_test_dbus_get_flags");

<* Maps to TestDBus::stop *>
extern fn void TestDBus.stop(&self, ) @extern("g_test_dbus_stop");

<* Maps to TestDBus::up *>
extern fn void TestDBus.up(&self, ) @extern("g_test_dbus_up");


// Class Functions

<* Maps to unset of TestDBus *>
extern fn void test_d_bus_unset() @extern("g_test_dbus_unset");



<* Maps to GThemedIcon *>
distinct ThemedIcon = void*;

// Class to parent cast.
fn gobject::Object* ThemedIcon.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of ThemedIcon *>
extern fn ThemedIcon* themed_icon_new(ZString iconname) @extern("g_themed_icon_new");

<* Maps to new_from_names of ThemedIcon *>
extern fn ThemedIcon* themed_icon_new_from_names(ZString* iconnames, int len) @extern("g_themed_icon_new_from_names");

<* Maps to new_with_default_fallbacks of ThemedIcon *>
extern fn ThemedIcon* themed_icon_new_with_default_fallbacks(ZString iconname) @extern("g_themed_icon_new_with_default_fallbacks");



// Class Methods

<* Maps to ThemedIcon::append_name *>
extern fn void ThemedIcon.append_name(&self, ZString iconname) @extern("g_themed_icon_append_name");

<* Maps to ThemedIcon::get_names *>
extern fn ZString ThemedIcon.get_names(&self, ) @extern("g_themed_icon_get_names");

<* Maps to ThemedIcon::prepend_name *>
extern fn void ThemedIcon.prepend_name(&self, ZString iconname) @extern("g_themed_icon_prepend_name");


// Class Functions



<* Maps to GThreadedResolver *>
distinct ThreadedResolver = void*;

// Class to parent cast.
fn Resolver* ThreadedResolver.as_Resolver(&self) => (Resolver*)(self);

// Class Constructors



// Class Methods


// Class Functions



<* Maps to GThreadedSocketService *>
distinct ThreadedSocketService = void*;

// Class to parent cast.
fn SocketService* ThreadedSocketService.as_SocketService(&self) => (SocketService*)(self);

// Class Constructors

<* Maps to new of ThreadedSocketService *>
extern fn SocketService* threaded_socket_service_new(int max_threads) @extern("g_threaded_socket_service_new");



// Class Methods


// Class Functions



<* Maps to GTlsCertificate *>
distinct TlsCertificate = void*;

// Class to parent cast.
fn gobject::Object* TlsCertificate.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new_from_file of TlsCertificate *>
extern fn TlsCertificate* tls_certificate_new_from_file(ZString file) @extern("g_tls_certificate_new_from_file");

<* Maps to new_from_file_with_password of TlsCertificate *>
extern fn TlsCertificate* tls_certificate_new_from_file_with_password(ZString file, ZString password) @extern("g_tls_certificate_new_from_file_with_password");

<* Maps to new_from_files of TlsCertificate *>
extern fn TlsCertificate* tls_certificate_new_from_files(ZString cert_file, ZString key_file) @extern("g_tls_certificate_new_from_files");

<* Maps to new_from_pem of TlsCertificate *>
extern fn TlsCertificate* tls_certificate_new_from_pem(ZString data, isz length) @extern("g_tls_certificate_new_from_pem");

<* Maps to new_from_pkcs11_uris of TlsCertificate *>
extern fn TlsCertificate* tls_certificate_new_from_pkcs11_uris(ZString pkcs11_uri, ZString private_key_pkcs11_uri) @extern("g_tls_certificate_new_from_pkcs11_uris");

<* Maps to new_from_pkcs12 of TlsCertificate *>
extern fn TlsCertificate* tls_certificate_new_from_pkcs12(char data, usz length, ZString password) @extern("g_tls_certificate_new_from_pkcs12");



// Class Methods

<* Maps to TlsCertificate::get_dns_names *>
extern fn glib::Bytes TlsCertificate.get_dns_names(&self, ) @extern("g_tls_certificate_get_dns_names");

<* Maps to TlsCertificate::get_ip_addresses *>
extern fn InetAddress TlsCertificate.get_ip_addresses(&self, ) @extern("g_tls_certificate_get_ip_addresses");

<* Maps to TlsCertificate::get_issuer *>
extern fn TlsCertificate* TlsCertificate.get_issuer(&self, ) @extern("g_tls_certificate_get_issuer");

<* Maps to TlsCertificate::get_issuer_name *>
extern fn ZString* TlsCertificate.get_issuer_name(&self, ) @extern("g_tls_certificate_get_issuer_name");

<* Maps to TlsCertificate::get_not_valid_after *>
extern fn glib::DateTime* TlsCertificate.get_not_valid_after(&self, ) @extern("g_tls_certificate_get_not_valid_after");

<* Maps to TlsCertificate::get_not_valid_before *>
extern fn glib::DateTime* TlsCertificate.get_not_valid_before(&self, ) @extern("g_tls_certificate_get_not_valid_before");

<* Maps to TlsCertificate::get_subject_name *>
extern fn ZString* TlsCertificate.get_subject_name(&self, ) @extern("g_tls_certificate_get_subject_name");

<* Maps to TlsCertificate::is_same *>
extern fn bool TlsCertificate.is_same(&self, TlsCertificate* cert_two) @extern("g_tls_certificate_is_same");

<* Maps to TlsCertificate::verify *>
extern fn TlsCertificateFlags TlsCertificate.verify(&self, SocketConnectable* identity, TlsCertificate* trusted_ca) @extern("g_tls_certificate_verify");


// Class Functions

<* Maps to list_new_from_file of TlsCertificate *>
extern fn glib::List* tls_certificate_list_new_from_file(ZString file) @extern("g_tls_certificate_list_new_from_file");



<* Maps to GTlsConnection *>
distinct TlsConnection = void*;

// Class to parent cast.
fn IOStream* TlsConnection.as_IOStream(&self) => (IOStream*)(self);

// Class Constructors



// Class Methods

<* Maps to TlsConnection::emit_accept_certificate *>
extern fn bool TlsConnection.emit_accept_certificate(&self, TlsCertificate* peer_cert, TlsCertificateFlags errors) @extern("g_tls_connection_emit_accept_certificate");

<* Maps to TlsConnection::get_certificate *>
extern fn TlsCertificate* TlsConnection.get_certificate(&self, ) @extern("g_tls_connection_get_certificate");

<* Maps to TlsConnection::get_channel_binding_data *>
extern fn bool TlsConnection.get_channel_binding_data(&self, TlsChannelBindingType type, char data) @extern("g_tls_connection_get_channel_binding_data");

<* Maps to TlsConnection::get_ciphersuite_name *>
extern fn ZString* TlsConnection.get_ciphersuite_name(&self, ) @extern("g_tls_connection_get_ciphersuite_name");

<* Maps to TlsConnection::get_database *>
extern fn TlsDatabase* TlsConnection.get_database(&self, ) @extern("g_tls_connection_get_database");

<* Maps to TlsConnection::get_interaction *>
extern fn TlsInteraction* TlsConnection.get_interaction(&self, ) @extern("g_tls_connection_get_interaction");

<* Maps to TlsConnection::get_negotiated_protocol *>
extern fn ZString TlsConnection.get_negotiated_protocol(&self, ) @extern("g_tls_connection_get_negotiated_protocol");

<* Maps to TlsConnection::get_peer_certificate *>
extern fn TlsCertificate* TlsConnection.get_peer_certificate(&self, ) @extern("g_tls_connection_get_peer_certificate");

<* Maps to TlsConnection::get_peer_certificate_errors *>
extern fn TlsCertificateFlags TlsConnection.get_peer_certificate_errors(&self, ) @extern("g_tls_connection_get_peer_certificate_errors");

<* Maps to TlsConnection::get_protocol_version *>
extern fn TlsProtocolVersion TlsConnection.get_protocol_version(&self, ) @extern("g_tls_connection_get_protocol_version");

<* Maps to TlsConnection::get_rehandshake_mode *>
extern fn TlsRehandshakeMode TlsConnection.get_rehandshake_mode(&self, ) @extern("g_tls_connection_get_rehandshake_mode");

<* Maps to TlsConnection::get_require_close_notify *>
extern fn bool TlsConnection.get_require_close_notify(&self, ) @extern("g_tls_connection_get_require_close_notify");

<* Maps to TlsConnection::get_use_system_certdb *>
extern fn bool TlsConnection.get_use_system_certdb(&self, ) @extern("g_tls_connection_get_use_system_certdb");

<* Maps to TlsConnection::handshake *>
extern fn bool TlsConnection.handshake(&self, Cancellable* cancellable) @extern("g_tls_connection_handshake");

<* Maps to TlsConnection::handshake_async *>
extern fn void TlsConnection.handshake_async(&self, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_connection_handshake_async");

<* Maps to TlsConnection::handshake_finish *>
extern fn bool TlsConnection.handshake_finish(&self, AsyncResult* result) @extern("g_tls_connection_handshake_finish");

<* Maps to TlsConnection::set_advertised_protocols *>
extern fn void TlsConnection.set_advertised_protocols(&self, ZString* protocols) @extern("g_tls_connection_set_advertised_protocols");

<* Maps to TlsConnection::set_certificate *>
extern fn void TlsConnection.set_certificate(&self, TlsCertificate* certificate) @extern("g_tls_connection_set_certificate");

<* Maps to TlsConnection::set_database *>
extern fn void TlsConnection.set_database(&self, TlsDatabase* database) @extern("g_tls_connection_set_database");

<* Maps to TlsConnection::set_interaction *>
extern fn void TlsConnection.set_interaction(&self, TlsInteraction* interaction) @extern("g_tls_connection_set_interaction");

<* Maps to TlsConnection::set_rehandshake_mode *>
extern fn void TlsConnection.set_rehandshake_mode(&self, TlsRehandshakeMode mode) @extern("g_tls_connection_set_rehandshake_mode");

<* Maps to TlsConnection::set_require_close_notify *>
extern fn void TlsConnection.set_require_close_notify(&self, bool require_close_notify) @extern("g_tls_connection_set_require_close_notify");

<* Maps to TlsConnection::set_use_system_certdb *>
extern fn void TlsConnection.set_use_system_certdb(&self, bool use_system_certdb) @extern("g_tls_connection_set_use_system_certdb");


// Class Functions



<* Maps to GTlsDatabase *>
distinct TlsDatabase = void*;

// Class to parent cast.
fn gobject::Object* TlsDatabase.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to TlsDatabase::create_certificate_handle *>
extern fn ZString* TlsDatabase.create_certificate_handle(&self, TlsCertificate* certificate) @extern("g_tls_database_create_certificate_handle");

<* Maps to TlsDatabase::lookup_certificate_for_handle *>
extern fn TlsCertificate* TlsDatabase.lookup_certificate_for_handle(&self, ZString handle, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable) @extern("g_tls_database_lookup_certificate_for_handle");

<* Maps to TlsDatabase::lookup_certificate_for_handle_async *>
extern fn void TlsDatabase.lookup_certificate_for_handle_async(&self, ZString handle, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_database_lookup_certificate_for_handle_async");

<* Maps to TlsDatabase::lookup_certificate_for_handle_finish *>
extern fn TlsCertificate* TlsDatabase.lookup_certificate_for_handle_finish(&self, AsyncResult* result) @extern("g_tls_database_lookup_certificate_for_handle_finish");

<* Maps to TlsDatabase::lookup_certificate_issuer *>
extern fn TlsCertificate* TlsDatabase.lookup_certificate_issuer(&self, TlsCertificate* certificate, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable) @extern("g_tls_database_lookup_certificate_issuer");

<* Maps to TlsDatabase::lookup_certificate_issuer_async *>
extern fn void TlsDatabase.lookup_certificate_issuer_async(&self, TlsCertificate* certificate, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_database_lookup_certificate_issuer_async");

<* Maps to TlsDatabase::lookup_certificate_issuer_finish *>
extern fn TlsCertificate* TlsDatabase.lookup_certificate_issuer_finish(&self, AsyncResult* result) @extern("g_tls_database_lookup_certificate_issuer_finish");

<* Maps to TlsDatabase::lookup_certificates_issued_by *>
extern fn glib::List* TlsDatabase.lookup_certificates_issued_by(&self, char issuer_raw_dn, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable) @extern("g_tls_database_lookup_certificates_issued_by");

<* Maps to TlsDatabase::lookup_certificates_issued_by_async *>
extern fn void TlsDatabase.lookup_certificates_issued_by_async(&self, char issuer_raw_dn, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_database_lookup_certificates_issued_by_async");

<* Maps to TlsDatabase::lookup_certificates_issued_by_finish *>
extern fn glib::List* TlsDatabase.lookup_certificates_issued_by_finish(&self, AsyncResult* result) @extern("g_tls_database_lookup_certificates_issued_by_finish");

<* Maps to TlsDatabase::verify_chain *>
extern fn TlsCertificateFlags TlsDatabase.verify_chain(&self, TlsCertificate* chain, ZString purpose, SocketConnectable* identity, TlsInteraction* interaction, TlsDatabaseVerifyFlags flags, Cancellable* cancellable) @extern("g_tls_database_verify_chain");

<* Maps to TlsDatabase::verify_chain_async *>
extern fn void TlsDatabase.verify_chain_async(&self, TlsCertificate* chain, ZString purpose, SocketConnectable* identity, TlsInteraction* interaction, TlsDatabaseVerifyFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_database_verify_chain_async");

<* Maps to TlsDatabase::verify_chain_finish *>
extern fn TlsCertificateFlags TlsDatabase.verify_chain_finish(&self, AsyncResult* result) @extern("g_tls_database_verify_chain_finish");


// Class Functions



<* Maps to GTlsInteraction *>
distinct TlsInteraction = void*;

// Class to parent cast.
fn gobject::Object* TlsInteraction.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to TlsInteraction::ask_password *>
extern fn TlsInteractionResult TlsInteraction.ask_password(&self, TlsPassword* password, Cancellable* cancellable) @extern("g_tls_interaction_ask_password");

<* Maps to TlsInteraction::ask_password_async *>
extern fn void TlsInteraction.ask_password_async(&self, TlsPassword* password, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_interaction_ask_password_async");

<* Maps to TlsInteraction::ask_password_finish *>
extern fn TlsInteractionResult TlsInteraction.ask_password_finish(&self, AsyncResult* result) @extern("g_tls_interaction_ask_password_finish");

<* Maps to TlsInteraction::invoke_ask_password *>
extern fn TlsInteractionResult TlsInteraction.invoke_ask_password(&self, TlsPassword* password, Cancellable* cancellable) @extern("g_tls_interaction_invoke_ask_password");

<* Maps to TlsInteraction::invoke_request_certificate *>
extern fn TlsInteractionResult TlsInteraction.invoke_request_certificate(&self, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable) @extern("g_tls_interaction_invoke_request_certificate");

<* Maps to TlsInteraction::request_certificate *>
extern fn TlsInteractionResult TlsInteraction.request_certificate(&self, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable) @extern("g_tls_interaction_request_certificate");

<* Maps to TlsInteraction::request_certificate_async *>
extern fn void TlsInteraction.request_certificate_async(&self, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_tls_interaction_request_certificate_async");

<* Maps to TlsInteraction::request_certificate_finish *>
extern fn TlsInteractionResult TlsInteraction.request_certificate_finish(&self, AsyncResult* result) @extern("g_tls_interaction_request_certificate_finish");


// Class Functions



<* Maps to GTlsPassword *>
distinct TlsPassword = void*;

// Class to parent cast.
fn gobject::Object* TlsPassword.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of TlsPassword *>
extern fn TlsPassword* tls_password_new(TlsPasswordFlags flags, ZString description) @extern("g_tls_password_new");



// Class Methods

<* Maps to TlsPassword::get_description *>
extern fn ZString TlsPassword.get_description(&self, ) @extern("g_tls_password_get_description");

<* Maps to TlsPassword::get_flags *>
extern fn TlsPasswordFlags TlsPassword.get_flags(&self, ) @extern("g_tls_password_get_flags");

<* Maps to TlsPassword::get_value *>
extern fn char TlsPassword.get_value(&self, usz* length) @extern("g_tls_password_get_value");

<* Maps to TlsPassword::get_warning *>
extern fn ZString TlsPassword.get_warning(&self, ) @extern("g_tls_password_get_warning");

<* Maps to TlsPassword::set_description *>
extern fn void TlsPassword.set_description(&self, ZString description) @extern("g_tls_password_set_description");

<* Maps to TlsPassword::set_flags *>
extern fn void TlsPassword.set_flags(&self, TlsPasswordFlags flags) @extern("g_tls_password_set_flags");

<* Maps to TlsPassword::set_value *>
extern fn void TlsPassword.set_value(&self, char value, isz length) @extern("g_tls_password_set_value");

<* Maps to TlsPassword::set_value_full *>
extern fn void TlsPassword.set_value_full(&self, char value, isz length, glib::DestroyNotify destroy) @extern("g_tls_password_set_value_full");

<* Maps to TlsPassword::set_warning *>
extern fn void TlsPassword.set_warning(&self, ZString warning) @extern("g_tls_password_set_warning");


// Class Functions



<* Maps to GUnixConnection *>
distinct UnixConnection = void*;

// Class to parent cast.
fn SocketConnection* UnixConnection.as_SocketConnection(&self) => (SocketConnection*)(self);

// Class Constructors



// Class Methods

<* Maps to UnixConnection::receive_credentials *>
extern fn Credentials* UnixConnection.receive_credentials(&self, Cancellable* cancellable) @extern("g_unix_connection_receive_credentials");

<* Maps to UnixConnection::receive_credentials_async *>
extern fn void UnixConnection.receive_credentials_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_unix_connection_receive_credentials_async");

<* Maps to UnixConnection::receive_credentials_finish *>
extern fn Credentials* UnixConnection.receive_credentials_finish(&self, AsyncResult* result) @extern("g_unix_connection_receive_credentials_finish");

<* Maps to UnixConnection::receive_fd *>
extern fn int UnixConnection.receive_fd(&self, Cancellable* cancellable) @extern("g_unix_connection_receive_fd");

<* Maps to UnixConnection::send_credentials *>
extern fn bool UnixConnection.send_credentials(&self, Cancellable* cancellable) @extern("g_unix_connection_send_credentials");

<* Maps to UnixConnection::send_credentials_async *>
extern fn void UnixConnection.send_credentials_async(&self, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_unix_connection_send_credentials_async");

<* Maps to UnixConnection::send_credentials_finish *>
extern fn bool UnixConnection.send_credentials_finish(&self, AsyncResult* result) @extern("g_unix_connection_send_credentials_finish");

<* Maps to UnixConnection::send_fd *>
extern fn bool UnixConnection.send_fd(&self, int fd, Cancellable* cancellable) @extern("g_unix_connection_send_fd");


// Class Functions



<* Maps to GUnixCredentialsMessage *>
distinct UnixCredentialsMessage = void*;

// Class to parent cast.
fn SocketControlMessage* UnixCredentialsMessage.as_SocketControlMessage(&self) => (SocketControlMessage*)(self);

// Class Constructors

<* Maps to new of UnixCredentialsMessage *>
extern fn SocketControlMessage* unix_credentials_message_new() @extern("g_unix_credentials_message_new");

<* Maps to new_with_credentials of UnixCredentialsMessage *>
extern fn SocketControlMessage* unix_credentials_message_new_with_credentials(Credentials* credentials) @extern("g_unix_credentials_message_new_with_credentials");



// Class Methods

<* Maps to UnixCredentialsMessage::get_credentials *>
extern fn Credentials* UnixCredentialsMessage.get_credentials(&self, ) @extern("g_unix_credentials_message_get_credentials");


// Class Functions

<* Maps to is_supported of UnixCredentialsMessage *>
extern fn bool unix_credentials_message_is_supported() @extern("g_unix_credentials_message_is_supported");



<* Maps to GUnixFDList *>
distinct UnixFDList = void*;

// Class to parent cast.
fn gobject::Object* UnixFDList.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of UnixFDList *>
extern fn UnixFDList* unix_fd_list_new() @extern("g_unix_fd_list_new");

<* Maps to new_from_array of UnixFDList *>
extern fn UnixFDList* unix_fd_list_new_from_array(int fds, int n_fds) @extern("g_unix_fd_list_new_from_array");



// Class Methods

<* Maps to UnixFDList::append *>
extern fn int UnixFDList.append(&self, int fd) @extern("g_unix_fd_list_append");

<* Maps to UnixFDList::get *>
extern fn int UnixFDList.get(&self, int index_) @extern("g_unix_fd_list_get");

<* Maps to UnixFDList::get_length *>
extern fn int UnixFDList.get_length(&self, ) @extern("g_unix_fd_list_get_length");

<* Maps to UnixFDList::peek_fds *>
extern fn int UnixFDList.peek_fds(&self, int* length) @extern("g_unix_fd_list_peek_fds");

<* Maps to UnixFDList::steal_fds *>
extern fn int UnixFDList.steal_fds(&self, int* length) @extern("g_unix_fd_list_steal_fds");


// Class Functions



<* Maps to GUnixFDMessage *>
distinct UnixFDMessage = void*;

// Class to parent cast.
fn SocketControlMessage* UnixFDMessage.as_SocketControlMessage(&self) => (SocketControlMessage*)(self);

// Class Constructors

<* Maps to new of UnixFDMessage *>
extern fn SocketControlMessage* unix_fd_message_new() @extern("g_unix_fd_message_new");

<* Maps to new_with_fd_list of UnixFDMessage *>
extern fn SocketControlMessage* unix_fd_message_new_with_fd_list(UnixFDList* fd_list) @extern("g_unix_fd_message_new_with_fd_list");



// Class Methods

<* Maps to UnixFDMessage::append_fd *>
extern fn bool UnixFDMessage.append_fd(&self, int fd) @extern("g_unix_fd_message_append_fd");

<* Maps to UnixFDMessage::get_fd_list *>
extern fn UnixFDList* UnixFDMessage.get_fd_list(&self, ) @extern("g_unix_fd_message_get_fd_list");

<* Maps to UnixFDMessage::steal_fds *>
extern fn int UnixFDMessage.steal_fds(&self, int* length) @extern("g_unix_fd_message_steal_fds");


// Class Functions



<* Maps to GUnixInputStream *>
distinct UnixInputStream = void*;

// Class to parent cast.
fn InputStream* UnixInputStream.as_InputStream(&self) => (InputStream*)(self);

// Class Constructors

<* Maps to new of UnixInputStream *>
extern fn InputStream* unix_input_stream_new(int fd, bool close_fd) @extern("g_unix_input_stream_new");



// Class Methods

<* Maps to UnixInputStream::get_close_fd *>
extern fn bool UnixInputStream.get_close_fd(&self, ) @extern("g_unix_input_stream_get_close_fd");

<* Maps to UnixInputStream::get_fd *>
extern fn int UnixInputStream.get_fd(&self, ) @extern("g_unix_input_stream_get_fd");

<* Maps to UnixInputStream::set_close_fd *>
extern fn void UnixInputStream.set_close_fd(&self, bool close_fd) @extern("g_unix_input_stream_set_close_fd");


// Class Functions



<* Maps to GUnixMountMonitor *>
distinct UnixMountMonitor = void*;

// Class to parent cast.
fn gobject::Object* UnixMountMonitor.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of UnixMountMonitor *>
extern fn UnixMountMonitor* unix_mount_monitor_new() @extern("g_unix_mount_monitor_new");



// Class Methods

<* Maps to UnixMountMonitor::set_rate_limit *>
extern fn void UnixMountMonitor.set_rate_limit(&self, int limit_msec) @extern("g_unix_mount_monitor_set_rate_limit");


// Class Functions

<* Maps to get of UnixMountMonitor *>
extern fn UnixMountMonitor* unix_mount_monitor_get() @extern("g_unix_mount_monitor_get");



<* Maps to GUnixOutputStream *>
distinct UnixOutputStream = void*;

// Class to parent cast.
fn OutputStream* UnixOutputStream.as_OutputStream(&self) => (OutputStream*)(self);

// Class Constructors

<* Maps to new of UnixOutputStream *>
extern fn OutputStream* unix_output_stream_new(int fd, bool close_fd) @extern("g_unix_output_stream_new");



// Class Methods

<* Maps to UnixOutputStream::get_close_fd *>
extern fn bool UnixOutputStream.get_close_fd(&self, ) @extern("g_unix_output_stream_get_close_fd");

<* Maps to UnixOutputStream::get_fd *>
extern fn int UnixOutputStream.get_fd(&self, ) @extern("g_unix_output_stream_get_fd");

<* Maps to UnixOutputStream::set_close_fd *>
extern fn void UnixOutputStream.set_close_fd(&self, bool close_fd) @extern("g_unix_output_stream_set_close_fd");


// Class Functions



<* Maps to GUnixSocketAddress *>
distinct UnixSocketAddress = void*;

// Class to parent cast.
fn SocketAddress* UnixSocketAddress.as_SocketAddress(&self) => (SocketAddress*)(self);

// Class Constructors

<* Maps to new of UnixSocketAddress *>
extern fn SocketAddress* unix_socket_address_new(ZString path) @extern("g_unix_socket_address_new");

<* Maps to new_abstract of UnixSocketAddress *>
extern fn SocketAddress* unix_socket_address_new_abstract(ichar path, int path_len) @extern("g_unix_socket_address_new_abstract");

<* Maps to new_with_type of UnixSocketAddress *>
extern fn SocketAddress* unix_socket_address_new_with_type(ichar path, int path_len, UnixSocketAddressType type) @extern("g_unix_socket_address_new_with_type");



// Class Methods

<* Maps to UnixSocketAddress::get_address_type *>
extern fn UnixSocketAddressType UnixSocketAddress.get_address_type(&self, ) @extern("g_unix_socket_address_get_address_type");

<* Maps to UnixSocketAddress::get_is_abstract *>
extern fn bool UnixSocketAddress.get_is_abstract(&self, ) @extern("g_unix_socket_address_get_is_abstract");

<* Maps to UnixSocketAddress::get_path *>
extern fn ZString UnixSocketAddress.get_path(&self, ) @extern("g_unix_socket_address_get_path");

<* Maps to UnixSocketAddress::get_path_len *>
extern fn usz UnixSocketAddress.get_path_len(&self, ) @extern("g_unix_socket_address_get_path_len");


// Class Functions

<* Maps to abstract_names_supported of UnixSocketAddress *>
extern fn bool unix_socket_address_abstract_names_supported() @extern("g_unix_socket_address_abstract_names_supported");



<* Maps to GVfs *>
distinct Vfs = void*;

// Class to parent cast.
fn gobject::Object* Vfs.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to Vfs::get_file_for_path *>
extern fn File* Vfs.get_file_for_path(&self, ZString path) @extern("g_vfs_get_file_for_path");

<* Maps to Vfs::get_file_for_uri *>
extern fn File* Vfs.get_file_for_uri(&self, ZString uri) @extern("g_vfs_get_file_for_uri");

<* Maps to Vfs::get_supported_uri_schemes *>
extern fn ZString Vfs.get_supported_uri_schemes(&self, ) @extern("g_vfs_get_supported_uri_schemes");

<* Maps to Vfs::is_active *>
extern fn bool Vfs.is_active(&self, ) @extern("g_vfs_is_active");

<* Maps to Vfs::parse_name *>
extern fn File* Vfs.parse_name(&self, ZString parse_name) @extern("g_vfs_parse_name");

<* Maps to Vfs::register_uri_scheme *>
extern fn bool Vfs.register_uri_scheme(&self, ZString scheme, VfsFileLookupFunc uri_func, void* uri_data, glib::DestroyNotify uri_destroy, VfsFileLookupFunc parse_name_func, void* parse_name_data, glib::DestroyNotify parse_name_destroy) @extern("g_vfs_register_uri_scheme");

<* Maps to Vfs::unregister_uri_scheme *>
extern fn bool Vfs.unregister_uri_scheme(&self, ZString scheme) @extern("g_vfs_unregister_uri_scheme");


// Class Functions

<* Maps to get_default of Vfs *>
extern fn Vfs* vfs_get_default() @extern("g_vfs_get_default");

<* Maps to get_local of Vfs *>
extern fn Vfs* vfs_get_local() @extern("g_vfs_get_local");



<* Maps to GVolumeMonitor *>
distinct VolumeMonitor = void*;

// Class to parent cast.
fn gobject::Object* VolumeMonitor.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors



// Class Methods

<* Maps to VolumeMonitor::get_connected_drives *>
extern fn glib::List* VolumeMonitor.get_connected_drives(&self, ) @extern("g_volume_monitor_get_connected_drives");

<* Maps to VolumeMonitor::get_mount_for_uuid *>
extern fn Mount* VolumeMonitor.get_mount_for_uuid(&self, ZString uuid) @extern("g_volume_monitor_get_mount_for_uuid");

<* Maps to VolumeMonitor::get_mounts *>
extern fn glib::List* VolumeMonitor.get_mounts(&self, ) @extern("g_volume_monitor_get_mounts");

<* Maps to VolumeMonitor::get_volume_for_uuid *>
extern fn Volume* VolumeMonitor.get_volume_for_uuid(&self, ZString uuid) @extern("g_volume_monitor_get_volume_for_uuid");

<* Maps to VolumeMonitor::get_volumes *>
extern fn glib::List* VolumeMonitor.get_volumes(&self, ) @extern("g_volume_monitor_get_volumes");


// Class Functions

<* Maps to adopt_orphan_mount of VolumeMonitor *>
extern fn Volume* volume_monitor_adopt_orphan_mount(Mount* mount) @extern("g_volume_monitor_adopt_orphan_mount");

<* Maps to get of VolumeMonitor *>
extern fn VolumeMonitor* volume_monitor_get() @extern("g_volume_monitor_get");



<* Maps to GZlibCompressor *>
distinct ZlibCompressor = void*;

// Class to parent cast.
fn gobject::Object* ZlibCompressor.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of ZlibCompressor *>
extern fn ZlibCompressor* zlib_compressor_new(ZlibCompressorFormat format, int level) @extern("g_zlib_compressor_new");



// Class Methods

<* Maps to ZlibCompressor::get_file_info *>
extern fn FileInfo* ZlibCompressor.get_file_info(&self, ) @extern("g_zlib_compressor_get_file_info");

<* Maps to ZlibCompressor::set_file_info *>
extern fn void ZlibCompressor.set_file_info(&self, FileInfo* file_info) @extern("g_zlib_compressor_set_file_info");


// Class Functions



<* Maps to GZlibDecompressor *>
distinct ZlibDecompressor = void*;

// Class to parent cast.
fn gobject::Object* ZlibDecompressor.as_gobject_Object(&self) => (gobject::Object*)(self);

// Class Constructors

<* Maps to new of ZlibDecompressor *>
extern fn ZlibDecompressor* zlib_decompressor_new(ZlibCompressorFormat format) @extern("g_zlib_decompressor_new");



// Class Methods

<* Maps to ZlibDecompressor::get_file_info *>
extern fn FileInfo* ZlibDecompressor.get_file_info(&self, ) @extern("g_zlib_decompressor_get_file_info");


// Class Functions





<* Maps to GAction *>
interface Action {

  fn void activate(glib::Variant* parameter);

  fn void change_state(glib::Variant* value);

  fn bool get_enabled();

  fn ZString get_name();

  fn glib::VariantType* get_parameter_type();

  fn glib::Variant* get_state();

  fn glib::Variant* get_state_hint();

  fn glib::VariantType* get_state_type();

}

<* Maps to GActionGroup *>
interface ActionGroup {

  fn void action_added(ZString action_name);

  fn void action_enabled_changed(ZString action_name, bool enabled);

  fn void action_removed(ZString action_name);

  fn void action_state_changed(ZString action_name, glib::Variant* state);

  fn void activate_action(ZString action_name, glib::Variant* parameter);

  fn void change_action_state(ZString action_name, glib::Variant* value);

  fn bool get_action_enabled(ZString action_name);

  fn glib::VariantType* get_action_parameter_type(ZString action_name);

  fn glib::Variant* get_action_state(ZString action_name);

  fn glib::Variant* get_action_state_hint(ZString action_name);

  fn glib::VariantType* get_action_state_type(ZString action_name);

  fn bool has_action(ZString action_name);

  fn ZString list_actions();

  fn bool query_action(ZString action_name, bool* enabled, glib::VariantType* parameter_type, glib::VariantType* state_type, glib::Variant* state_hint, glib::Variant* state);

}

<* Maps to GActionMap *>
interface ActionMap {

  fn void add_action(Action* action);

  fn void add_action_entries(ActionEntry entries, int n_entries, void* user_data);

  fn Action* lookup_action(ZString action_name);

  fn void remove_action(ZString action_name);

  fn void remove_action_entries(ActionEntry entries, int n_entries);

}

<* Maps to GAppInfo *>
interface AppInfo {

  fn bool add_supports_type(ZString content_type);

  fn bool can_delete();

  fn bool can_remove_supports_type();

  fn bool delete();

  fn AppInfo* dup();

  fn bool equal(AppInfo* appinfo2);

  fn ZString get_commandline();

  fn ZString get_description();

  fn ZString get_display_name();

  fn ZString get_executable();

  fn Icon* get_icon();

  fn ZString get_id();

  fn ZString get_name();

  fn ZString get_supported_types();

  fn bool launch(glib::List* files, AppLaunchContext* context);

  fn bool launch_uris(glib::List* uris, AppLaunchContext* context);

  fn void launch_uris_async(glib::List* uris, AppLaunchContext* context, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool launch_uris_finish(AsyncResult* result);

  fn bool remove_supports_type(ZString content_type);

  fn bool set_as_default_for_extension(ZString extension);

  fn bool set_as_default_for_type(ZString content_type);

  fn bool set_as_last_used_for_type(ZString content_type);

  fn bool should_show();

  fn bool supports_files();

  fn bool supports_uris();

}

<* Maps to GAsyncInitable *>
interface AsyncInitable {

  fn void init_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool init_finish(AsyncResult* res);

  fn gobject::Object* new_finish(AsyncResult* res);

}

<* Maps to GAsyncResult *>
interface AsyncResult {

  fn gobject::Object* get_source_object();

  fn void* get_user_data();

  fn bool is_tagged(void* source_tag);

  fn bool legacy_propagate_error();

}

<* Maps to GConverter *>
interface Converter {

  fn ConverterResult convert(char inbuf, usz inbuf_size, char outbuf, usz outbuf_size, ConverterFlags flags, usz* bytes_read, usz* bytes_written);

  fn glib::Bytes* convert_bytes(glib::Bytes* bytes);

  fn void reset();

}

<* Maps to GDBusInterface *>
interface DBusInterface {

  fn DBusObject* dup_object();

  fn DBusInterfaceInfo* get_info();

  fn DBusObject* get_object();

  fn void set_object(DBusObject* object);

}

<* Maps to GDBusObject *>
interface DBusObject {

  fn DBusInterface* get_interface(ZString interface_name);

  fn glib::List* get_interfaces();

  fn ZString get_object_path();

}

<* Maps to GDBusObjectManager *>
interface DBusObjectManager {

  fn DBusInterface* get_interface(ZString object_path, ZString interface_name);

  fn DBusObject* get_object(ZString object_path);

  fn ZString get_object_path();

  fn glib::List* get_objects();

}

<* Maps to GDatagramBased *>
interface DatagramBased {

  fn glib::IOCondition condition_check(glib::IOCondition condition);

  fn bool condition_wait(glib::IOCondition condition, long timeout, Cancellable* cancellable);

  fn glib::Source* create_source(glib::IOCondition condition, Cancellable* cancellable);

  fn int receive_messages(InputMessage messages, uint num_messages, int flags, long timeout, Cancellable* cancellable);

  fn int send_messages(OutputMessage messages, uint num_messages, int flags, long timeout, Cancellable* cancellable);

}

<* Maps to GDebugController *>
interface DebugController {

  fn bool get_debug_enabled();

  fn void set_debug_enabled(bool debug_enabled);

}

<* Maps to GDesktopAppInfoLookup *>
interface DesktopAppInfoLookup {

  fn AppInfo* get_default_for_uri_scheme(ZString uri_scheme);

}

<* Maps to GDrive *>
interface Drive {

  fn bool can_eject();

  fn bool can_poll_for_media();

  fn bool can_start();

  fn bool can_start_degraded();

  fn bool can_stop();

  fn void eject(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_finish(AsyncResult* result);

  fn void eject_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_with_operation_finish(AsyncResult* result);

  fn ZString enumerate_identifiers();

  fn Icon* get_icon();

  fn ZString* get_identifier(ZString kind);

  fn ZString* get_name();

  fn ZString get_sort_key();

  fn DriveStartStopType get_start_stop_type();

  fn Icon* get_symbolic_icon();

  fn glib::List* get_volumes();

  fn bool has_media();

  fn bool has_volumes();

  fn bool is_media_check_automatic();

  fn bool is_media_removable();

  fn bool is_removable();

  fn void poll_for_media(Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool poll_for_media_finish(AsyncResult* result);

  fn void start(DriveStartFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool start_finish(AsyncResult* result);

  fn void stop(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool stop_finish(AsyncResult* result);

}

<* Maps to GDtlsClientConnection *>
interface DtlsClientConnection {

  fn glib::List* get_accepted_cas();

  fn SocketConnectable* get_server_identity();

  fn TlsCertificateFlags get_validation_flags();

  fn void set_server_identity(SocketConnectable* identity);

  fn void set_validation_flags(TlsCertificateFlags flags);

}

<* Maps to GDtlsConnection *>
interface DtlsConnection {

  fn bool close(Cancellable* cancellable);

  fn void close_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool close_finish(AsyncResult* result);

  fn bool emit_accept_certificate(TlsCertificate* peer_cert, TlsCertificateFlags errors);

  fn TlsCertificate* get_certificate();

  fn bool get_channel_binding_data(TlsChannelBindingType type, char data);

  fn ZString* get_ciphersuite_name();

  fn TlsDatabase* get_database();

  fn TlsInteraction* get_interaction();

  fn ZString get_negotiated_protocol();

  fn TlsCertificate* get_peer_certificate();

  fn TlsCertificateFlags get_peer_certificate_errors();

  fn TlsProtocolVersion get_protocol_version();

  fn TlsRehandshakeMode get_rehandshake_mode();

  fn bool get_require_close_notify();

  fn bool handshake(Cancellable* cancellable);

  fn void handshake_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool handshake_finish(AsyncResult* result);

  fn void set_advertised_protocols(ZString* protocols);

  fn void set_certificate(TlsCertificate* certificate);

  fn void set_database(TlsDatabase* database);

  fn void set_interaction(TlsInteraction* interaction);

  fn void set_rehandshake_mode(TlsRehandshakeMode mode);

  fn void set_require_close_notify(bool require_close_notify);

  fn bool shutdown(bool shutdown_read, bool shutdown_write, Cancellable* cancellable);

  fn void shutdown_async(bool shutdown_read, bool shutdown_write, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool shutdown_finish(AsyncResult* result);

}

<* Maps to GDtlsServerConnection *>
interface DtlsServerConnection {

}

<* Maps to GFile *>
interface File {

  fn FileOutputStream* append_to(FileCreateFlags flags, Cancellable* cancellable);

  fn void append_to_async(FileCreateFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileOutputStream* append_to_finish(AsyncResult* res);

  fn ZString* build_attribute_list_for_copy(FileCopyFlags flags, Cancellable* cancellable);

  fn bool copy(File* destination, FileCopyFlags flags, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data);

  fn void copy_async(File* destination, FileCopyFlags flags, int io_priority, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data, AsyncReadyCallback callback, void* user_data);

  fn void copy_async_with_closures(File* destination, FileCopyFlags flags, int io_priority, Cancellable* cancellable, gobject::Closure* progress_callback_closure, gobject::Closure* ready_callback_closure);

  fn bool copy_attributes(File* destination, FileCopyFlags flags, Cancellable* cancellable);

  fn bool copy_finish(AsyncResult* res);

  fn FileOutputStream* create(FileCreateFlags flags, Cancellable* cancellable);

  fn void create_async(FileCreateFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileOutputStream* create_finish(AsyncResult* res);

  fn FileIOStream* create_readwrite(FileCreateFlags flags, Cancellable* cancellable);

  fn void create_readwrite_async(FileCreateFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileIOStream* create_readwrite_finish(AsyncResult* res);

  fn bool delete(Cancellable* cancellable);

  fn void delete_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool delete_finish(AsyncResult* result);

  fn File* dup();

  fn void eject_mountable(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_mountable_finish(AsyncResult* result);

  fn void eject_mountable_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_mountable_with_operation_finish(AsyncResult* result);

  fn FileEnumerator* enumerate_children(ZString attributes, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn void enumerate_children_async(ZString attributes, FileQueryInfoFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileEnumerator* enumerate_children_finish(AsyncResult* res);

  fn bool equal(File* file2);

  fn Mount* find_enclosing_mount(Cancellable* cancellable);

  fn void find_enclosing_mount_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn Mount* find_enclosing_mount_finish(AsyncResult* res);

  fn ZString* get_basename();

  fn File* get_child(ZString name);

  fn File* get_child_for_display_name(ZString display_name);

  fn File* get_parent();

  fn ZString* get_parse_name();

  fn ZString* get_path();

  fn ZString* get_relative_path(File* descendant);

  fn ZString* get_uri();

  fn ZString* get_uri_scheme();

  fn bool has_parent(File* parent);

  fn bool has_prefix(File* prefix);

  fn bool has_uri_scheme(ZString uri_scheme);

  fn uint hash();

  fn bool is_native();

  fn glib::Bytes* load_bytes(Cancellable* cancellable, ZString* etag_out);

  fn void load_bytes_async(Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn glib::Bytes* load_bytes_finish(AsyncResult* result, ZString* etag_out);

  fn bool load_contents(Cancellable* cancellable, char contents, usz* length, ZString* etag_out);

  fn void load_contents_async(Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool load_contents_finish(AsyncResult* res, char contents, usz* length, ZString* etag_out);

  fn void load_partial_contents_async(Cancellable* cancellable, FileReadMoreCallback read_more_callback, AsyncReadyCallback callback, void* user_data);

  fn bool load_partial_contents_finish(AsyncResult* res, char contents, usz* length, ZString* etag_out);

  fn bool make_directory(Cancellable* cancellable);

  fn void make_directory_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool make_directory_finish(AsyncResult* result);

  fn bool make_directory_with_parents(Cancellable* cancellable);

  fn bool make_symbolic_link(ZString symlink_value, Cancellable* cancellable);

  fn void make_symbolic_link_async(ZString symlink_value, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool make_symbolic_link_finish(AsyncResult* result);

  fn bool measure_disk_usage(FileMeasureFlags flags, Cancellable* cancellable, FileMeasureProgressCallback progress_callback, void* progress_data, ulong* disk_usage, ulong* num_dirs, ulong* num_files);

  fn void measure_disk_usage_async(FileMeasureFlags flags, int io_priority, Cancellable* cancellable, FileMeasureProgressCallback progress_callback, void* progress_data, AsyncReadyCallback callback, void* user_data);

  fn bool measure_disk_usage_finish(AsyncResult* result, ulong* disk_usage, ulong* num_dirs, ulong* num_files);

  fn FileMonitor* monitor(FileMonitorFlags flags, Cancellable* cancellable);

  fn FileMonitor* monitor_directory(FileMonitorFlags flags, Cancellable* cancellable);

  fn FileMonitor* monitor_file(FileMonitorFlags flags, Cancellable* cancellable);

  fn void mount_enclosing_volume(MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool mount_enclosing_volume_finish(AsyncResult* result);

  fn void mount_mountable(MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn File* mount_mountable_finish(AsyncResult* result);

  fn bool move(File* destination, FileCopyFlags flags, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data);

  fn void move_async(File* destination, FileCopyFlags flags, int io_priority, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data, AsyncReadyCallback callback, void* user_data);

  fn void move_async_with_closures(File* destination, FileCopyFlags flags, int io_priority, Cancellable* cancellable, gobject::Closure* progress_callback_closure, gobject::Closure* ready_callback_closure);

  fn bool move_finish(AsyncResult* result);

  fn FileIOStream* open_readwrite(Cancellable* cancellable);

  fn void open_readwrite_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileIOStream* open_readwrite_finish(AsyncResult* res);

  fn ZString peek_path();

  fn void poll_mountable(Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool poll_mountable_finish(AsyncResult* result);

  fn AppInfo* query_default_handler(Cancellable* cancellable);

  fn void query_default_handler_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn AppInfo* query_default_handler_finish(AsyncResult* result);

  fn bool query_exists(Cancellable* cancellable);

  fn FileType query_file_type(FileQueryInfoFlags flags, Cancellable* cancellable);

  fn FileInfo* query_filesystem_info(ZString attributes, Cancellable* cancellable);

  fn void query_filesystem_info_async(ZString attributes, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileInfo* query_filesystem_info_finish(AsyncResult* res);

  fn FileInfo* query_info(ZString attributes, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn void query_info_async(ZString attributes, FileQueryInfoFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileInfo* query_info_finish(AsyncResult* res);

  fn FileAttributeInfoList* query_settable_attributes(Cancellable* cancellable);

  fn FileAttributeInfoList* query_writable_namespaces(Cancellable* cancellable);

  fn FileInputStream* read(Cancellable* cancellable);

  fn void read_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileInputStream* read_finish(AsyncResult* res);

  fn FileOutputStream* replace(ZString etag, bool make_backup, FileCreateFlags flags, Cancellable* cancellable);

  fn void replace_async(ZString etag, bool make_backup, FileCreateFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool replace_contents(char contents, usz length, ZString etag, bool make_backup, FileCreateFlags flags, ZString* new_etag, Cancellable* cancellable);

  fn void replace_contents_async(char contents, usz length, ZString etag, bool make_backup, FileCreateFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn void replace_contents_bytes_async(glib::Bytes* contents, ZString etag, bool make_backup, FileCreateFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool replace_contents_finish(AsyncResult* res, ZString* new_etag);

  fn FileOutputStream* replace_finish(AsyncResult* res);

  fn FileIOStream* replace_readwrite(ZString etag, bool make_backup, FileCreateFlags flags, Cancellable* cancellable);

  fn void replace_readwrite_async(ZString etag, bool make_backup, FileCreateFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn FileIOStream* replace_readwrite_finish(AsyncResult* res);

  fn File* resolve_relative_path(ZString relative_path);

  fn bool set_attribute(ZString attribute, FileAttributeType type, void* value_p, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_byte_string(ZString attribute, ZString value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_int32(ZString attribute, int value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_int64(ZString attribute, long value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_string(ZString attribute, ZString value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_uint32(ZString attribute, uint value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn bool set_attribute_uint64(ZString attribute, ulong value, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn void set_attributes_async(FileInfo* info, FileQueryInfoFlags flags, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool set_attributes_finish(AsyncResult* result, FileInfo* info);

  fn bool set_attributes_from_info(FileInfo* info, FileQueryInfoFlags flags, Cancellable* cancellable);

  fn File* set_display_name(ZString display_name, Cancellable* cancellable);

  fn void set_display_name_async(ZString display_name, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn File* set_display_name_finish(AsyncResult* res);

  fn void start_mountable(DriveStartFlags flags, MountOperation* start_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool start_mountable_finish(AsyncResult* result);

  fn void stop_mountable(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool stop_mountable_finish(AsyncResult* result);

  fn bool supports_thread_contexts();

  fn bool trash(Cancellable* cancellable);

  fn void trash_async(int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool trash_finish(AsyncResult* result);

  fn void unmount_mountable(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool unmount_mountable_finish(AsyncResult* result);

  fn void unmount_mountable_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool unmount_mountable_with_operation_finish(AsyncResult* result);

}

<* Maps to GFileDescriptorBased *>
interface FileDescriptorBased {

  fn int get_fd();

}

<* Maps to GIcon *>
interface Icon {

  fn bool equal(Icon* icon2);

  fn uint hash();

  fn glib::Variant* serialize();

  fn ZString* to_string();

}

<* Maps to GInitable *>
interface Initable {

  fn bool init(Cancellable* cancellable);

}

<* Maps to GListModel *>
interface ListModel {

  fn void* get_item(uint position);

  fn usz get_item_type();

  fn uint get_n_items();

  fn gobject::Object* get_object(uint position);

  fn void items_changed(uint position, uint removed, uint added);

}

<* Maps to GLoadableIcon *>
interface LoadableIcon {

  fn InputStream* load(int size, ZString* type, Cancellable* cancellable);

  fn void load_async(int size, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn InputStream* load_finish(AsyncResult* res, ZString* type);

}

<* Maps to GMemoryMonitor *>
interface MemoryMonitor {

}

<* Maps to GMount *>
interface Mount {

  fn bool can_eject();

  fn bool can_unmount();

  fn void eject(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_finish(AsyncResult* result);

  fn void eject_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_with_operation_finish(AsyncResult* result);

  fn File* get_default_location();

  fn Drive* get_drive();

  fn Icon* get_icon();

  fn ZString* get_name();

  fn File* get_root();

  fn ZString get_sort_key();

  fn Icon* get_symbolic_icon();

  fn ZString* get_uuid();

  fn Volume* get_volume();

  fn void guess_content_type(bool force_rescan, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn ZString guess_content_type_finish(AsyncResult* result);

  fn ZString guess_content_type_sync(bool force_rescan, Cancellable* cancellable);

  fn bool is_shadowed();

  fn void remount(MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool remount_finish(AsyncResult* result);

  fn void shadow();

  fn void unmount(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool unmount_finish(AsyncResult* result);

  fn void unmount_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool unmount_with_operation_finish(AsyncResult* result);

  fn void unshadow();

}

<* Maps to GNetworkMonitor *>
interface NetworkMonitor {

  fn bool can_reach(SocketConnectable* connectable, Cancellable* cancellable);

  fn void can_reach_async(SocketConnectable* connectable, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool can_reach_finish(AsyncResult* result);

  fn NetworkConnectivity get_connectivity();

  fn bool get_network_available();

  fn bool get_network_metered();

}

<* Maps to GPollableInputStream *>
interface PollableInputStream {

  fn bool can_poll();

  fn glib::Source* create_source(Cancellable* cancellable);

  fn bool is_readable();

  fn isz read_nonblocking(char buffer, usz count, Cancellable* cancellable);

}

<* Maps to GPollableOutputStream *>
interface PollableOutputStream {

  fn bool can_poll();

  fn glib::Source* create_source(Cancellable* cancellable);

  fn bool is_writable();

  fn isz write_nonblocking(char buffer, usz count, Cancellable* cancellable);

  fn PollableReturn writev_nonblocking(OutputVector vectors, usz n_vectors, usz* bytes_written, Cancellable* cancellable);

}

<* Maps to GPowerProfileMonitor *>
interface PowerProfileMonitor {

  fn bool get_power_saver_enabled();

}

<* Maps to GProxy *>
interface Proxy {

  fn IOStream* connect(IOStream* connection, ProxyAddress* proxy_address, Cancellable* cancellable);

  fn void connect_async(IOStream* connection, ProxyAddress* proxy_address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn IOStream* connect_finish(AsyncResult* result);

  fn bool supports_hostname();

}

<* Maps to GProxyResolver *>
interface ProxyResolver {

  fn bool is_supported();

  fn ZString lookup(ZString uri, Cancellable* cancellable);

  fn void lookup_async(ZString uri, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn ZString lookup_finish(AsyncResult* result);

}

<* Maps to GRemoteActionGroup *>
interface RemoteActionGroup {

  fn void activate_action_full(ZString action_name, glib::Variant* parameter, glib::Variant* platform_data);

  fn void change_action_state_full(ZString action_name, glib::Variant* value, glib::Variant* platform_data);

}

<* Maps to GSeekable *>
interface Seekable {

  fn bool can_seek();

  fn bool can_truncate();

  fn bool seek(long offset, glib::SeekType type, Cancellable* cancellable);

  fn long tell();

  fn bool truncate(long offset, Cancellable* cancellable);

}

<* Maps to GSocketConnectable *>
interface SocketConnectable {

  fn SocketAddressEnumerator* enumerate();

  fn SocketAddressEnumerator* proxy_enumerate();

  fn ZString* to_string();

}

<* Maps to GTlsBackend *>
interface TlsBackend {

  fn usz get_certificate_type();

  fn usz get_client_connection_type();

  fn TlsDatabase* get_default_database();

  fn usz get_dtls_client_connection_type();

  fn usz get_dtls_server_connection_type();

  fn usz get_file_database_type();

  fn usz get_server_connection_type();

  fn void set_default_database(TlsDatabase* database);

  fn bool supports_dtls();

  fn bool supports_tls();

}

<* Maps to GTlsClientConnection *>
interface TlsClientConnection {

  fn void copy_session_state(TlsClientConnection* source);

  fn glib::List* get_accepted_cas();

  fn SocketConnectable* get_server_identity();

  fn bool get_use_ssl3();

  fn TlsCertificateFlags get_validation_flags();

  fn void set_server_identity(SocketConnectable* identity);

  fn void set_use_ssl3(bool use_ssl3);

  fn void set_validation_flags(TlsCertificateFlags flags);

}

<* Maps to GTlsFileDatabase *>
interface TlsFileDatabase {

}

<* Maps to GTlsServerConnection *>
interface TlsServerConnection {

}

<* Maps to GVolume *>
interface Volume {

  fn bool can_eject();

  fn bool can_mount();

  fn void eject(MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_finish(AsyncResult* result);

  fn void eject_with_operation(MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool eject_with_operation_finish(AsyncResult* result);

  fn ZString enumerate_identifiers();

  fn File* get_activation_root();

  fn Drive* get_drive();

  fn Icon* get_icon();

  fn ZString* get_identifier(ZString kind);

  fn Mount* get_mount();

  fn ZString* get_name();

  fn ZString get_sort_key();

  fn Icon* get_symbolic_icon();

  fn ZString* get_uuid();

  fn void mount(MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);

  fn bool mount_finish(AsyncResult* result);

  fn bool should_automount();

}


<* Maps to action_name_is_valid *>
extern fn bool action_name_is_valid(ZString action_name) @extern("g_action_name_is_valid");

<* Maps to action_parse_detailed_name *>
extern fn bool action_parse_detailed_name(ZString detailed_name, ZString* action_name, glib::Variant* target_value) @extern("g_action_parse_detailed_name");

<* Maps to action_print_detailed_name *>
extern fn ZString* action_print_detailed_name(ZString action_name, glib::Variant* target_value) @extern("g_action_print_detailed_name");

<* Maps to app_info_create_from_commandline *>
extern fn AppInfo* app_info_create_from_commandline(ZString commandline, ZString application_name, AppInfoCreateFlags flags) @extern("g_app_info_create_from_commandline");

<* Maps to app_info_get_all *>
extern fn glib::List* app_info_get_all() @extern("g_app_info_get_all");

<* Maps to app_info_get_all_for_type *>
extern fn glib::List* app_info_get_all_for_type(ZString content_type) @extern("g_app_info_get_all_for_type");

<* Maps to app_info_get_default_for_type *>
extern fn AppInfo* app_info_get_default_for_type(ZString content_type, bool must_support_uris) @extern("g_app_info_get_default_for_type");

<* Maps to app_info_get_default_for_type_async *>
extern fn void app_info_get_default_for_type_async(ZString content_type, bool must_support_uris, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_app_info_get_default_for_type_async");

<* Maps to app_info_get_default_for_type_finish *>
extern fn AppInfo* app_info_get_default_for_type_finish(AsyncResult* result) @extern("g_app_info_get_default_for_type_finish");

<* Maps to app_info_get_default_for_uri_scheme *>
extern fn AppInfo* app_info_get_default_for_uri_scheme(ZString uri_scheme) @extern("g_app_info_get_default_for_uri_scheme");

<* Maps to app_info_get_default_for_uri_scheme_async *>
extern fn void app_info_get_default_for_uri_scheme_async(ZString uri_scheme, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_app_info_get_default_for_uri_scheme_async");

<* Maps to app_info_get_default_for_uri_scheme_finish *>
extern fn AppInfo* app_info_get_default_for_uri_scheme_finish(AsyncResult* result) @extern("g_app_info_get_default_for_uri_scheme_finish");

<* Maps to app_info_get_fallback_for_type *>
extern fn glib::List* app_info_get_fallback_for_type(ZString content_type) @extern("g_app_info_get_fallback_for_type");

<* Maps to app_info_get_recommended_for_type *>
extern fn glib::List* app_info_get_recommended_for_type(ZString content_type) @extern("g_app_info_get_recommended_for_type");

<* Maps to app_info_launch_default_for_uri *>
extern fn bool app_info_launch_default_for_uri(ZString uri, AppLaunchContext* context) @extern("g_app_info_launch_default_for_uri");

<* Maps to app_info_launch_default_for_uri_async *>
extern fn void app_info_launch_default_for_uri_async(ZString uri, AppLaunchContext* context, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_app_info_launch_default_for_uri_async");

<* Maps to app_info_launch_default_for_uri_finish *>
extern fn bool app_info_launch_default_for_uri_finish(AsyncResult* result) @extern("g_app_info_launch_default_for_uri_finish");

<* Maps to app_info_reset_type_associations *>
extern fn void app_info_reset_type_associations(ZString content_type) @extern("g_app_info_reset_type_associations");

<* Maps to async_initable_newv_async *>
extern fn void async_initable_newv_async(usz object_type, uint n_parameters, gobject::Parameter* parameters, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_async_initable_newv_async");

<* Maps to bus_get *>
extern fn void bus_get(BusType bus_type, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_bus_get");

<* Maps to bus_get_finish *>
extern fn DBusConnection* bus_get_finish(AsyncResult* res) @extern("g_bus_get_finish");

<* Maps to bus_get_sync *>
extern fn DBusConnection* bus_get_sync(BusType bus_type, Cancellable* cancellable) @extern("g_bus_get_sync");

<* Maps to bus_own_name *>
extern fn uint bus_own_name(BusType bus_type, ZString name, BusNameOwnerFlags flags, BusAcquiredCallback bus_acquired_handler, BusNameAcquiredCallback name_acquired_handler, BusNameLostCallback name_lost_handler, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_bus_own_name");

<* Maps to bus_own_name_on_connection *>
extern fn uint bus_own_name_on_connection(DBusConnection* connection, ZString name, BusNameOwnerFlags flags, BusNameAcquiredCallback name_acquired_handler, BusNameLostCallback name_lost_handler, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_bus_own_name_on_connection");

<* Maps to bus_own_name_on_connection_with_closures *>
extern fn uint bus_own_name_on_connection_with_closures(DBusConnection* connection, ZString name, BusNameOwnerFlags flags, gobject::Closure* name_acquired_closure, gobject::Closure* name_lost_closure) @extern("g_bus_own_name_on_connection_with_closures");

<* Maps to bus_own_name_with_closures *>
extern fn uint bus_own_name_with_closures(BusType bus_type, ZString name, BusNameOwnerFlags flags, gobject::Closure* bus_acquired_closure, gobject::Closure* name_acquired_closure, gobject::Closure* name_lost_closure) @extern("g_bus_own_name_with_closures");

<* Maps to bus_unown_name *>
extern fn void bus_unown_name(uint owner_id) @extern("g_bus_unown_name");

<* Maps to bus_unwatch_name *>
extern fn void bus_unwatch_name(uint watcher_id) @extern("g_bus_unwatch_name");

<* Maps to bus_watch_name *>
extern fn uint bus_watch_name(BusType bus_type, ZString name, BusNameWatcherFlags flags, BusNameAppearedCallback name_appeared_handler, BusNameVanishedCallback name_vanished_handler, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_bus_watch_name");

<* Maps to bus_watch_name_on_connection *>
extern fn uint bus_watch_name_on_connection(DBusConnection* connection, ZString name, BusNameWatcherFlags flags, BusNameAppearedCallback name_appeared_handler, BusNameVanishedCallback name_vanished_handler, void* user_data, glib::DestroyNotify user_data_free_func) @extern("g_bus_watch_name_on_connection");

<* Maps to bus_watch_name_on_connection_with_closures *>
extern fn uint bus_watch_name_on_connection_with_closures(DBusConnection* connection, ZString name, BusNameWatcherFlags flags, gobject::Closure* name_appeared_closure, gobject::Closure* name_vanished_closure) @extern("g_bus_watch_name_on_connection_with_closures");

<* Maps to bus_watch_name_with_closures *>
extern fn uint bus_watch_name_with_closures(BusType bus_type, ZString name, BusNameWatcherFlags flags, gobject::Closure* name_appeared_closure, gobject::Closure* name_vanished_closure) @extern("g_bus_watch_name_with_closures");

<* Maps to content_type_can_be_executable *>
extern fn bool content_type_can_be_executable(ZString type) @extern("g_content_type_can_be_executable");

<* Maps to content_type_equals *>
extern fn bool content_type_equals(ZString type1, ZString type2) @extern("g_content_type_equals");

<* Maps to content_type_from_mime_type *>
extern fn ZString* content_type_from_mime_type(ZString mime_type) @extern("g_content_type_from_mime_type");

<* Maps to content_type_get_description *>
extern fn ZString* content_type_get_description(ZString type) @extern("g_content_type_get_description");

<* Maps to content_type_get_generic_icon_name *>
extern fn ZString* content_type_get_generic_icon_name(ZString type) @extern("g_content_type_get_generic_icon_name");

<* Maps to content_type_get_icon *>
extern fn Icon* content_type_get_icon(ZString type) @extern("g_content_type_get_icon");

<* Maps to content_type_get_mime_dirs *>
extern fn ZString content_type_get_mime_dirs() @extern("g_content_type_get_mime_dirs");

<* Maps to content_type_get_mime_type *>
extern fn ZString* content_type_get_mime_type(ZString type) @extern("g_content_type_get_mime_type");

<* Maps to content_type_get_symbolic_icon *>
extern fn Icon* content_type_get_symbolic_icon(ZString type) @extern("g_content_type_get_symbolic_icon");

<* Maps to content_type_guess *>
extern fn ZString* content_type_guess(ZString filename, char data, usz data_size, bool* result_uncertain) @extern("g_content_type_guess");

<* Maps to content_type_guess_for_tree *>
extern fn ZString content_type_guess_for_tree(File* root) @extern("g_content_type_guess_for_tree");

<* Maps to content_type_is_a *>
extern fn bool content_type_is_a(ZString type, ZString supertype) @extern("g_content_type_is_a");

<* Maps to content_type_is_mime_type *>
extern fn bool content_type_is_mime_type(ZString type, ZString mime_type) @extern("g_content_type_is_mime_type");

<* Maps to content_type_is_unknown *>
extern fn bool content_type_is_unknown(ZString type) @extern("g_content_type_is_unknown");

<* Maps to content_type_set_mime_dirs *>
extern fn void content_type_set_mime_dirs(ZString* dirs) @extern("g_content_type_set_mime_dirs");

<* Maps to content_types_get_registered *>
extern fn glib::List* content_types_get_registered() @extern("g_content_types_get_registered");

<* Maps to dbus_address_escape_value *>
extern fn ZString* dbus_address_escape_value(ZString string) @extern("g_dbus_address_escape_value");

<* Maps to dbus_address_get_for_bus_sync *>
extern fn ZString* dbus_address_get_for_bus_sync(BusType bus_type, Cancellable* cancellable) @extern("g_dbus_address_get_for_bus_sync");

<* Maps to dbus_address_get_stream *>
extern fn void dbus_address_get_stream(ZString address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_dbus_address_get_stream");

<* Maps to dbus_address_get_stream_finish *>
extern fn IOStream* dbus_address_get_stream_finish(AsyncResult* res, ZString* out_guid) @extern("g_dbus_address_get_stream_finish");

<* Maps to dbus_address_get_stream_sync *>
extern fn IOStream* dbus_address_get_stream_sync(ZString address, ZString* out_guid, Cancellable* cancellable) @extern("g_dbus_address_get_stream_sync");

<* Maps to dbus_annotation_info_lookup *>
extern fn ZString dbus_annotation_info_lookup(DBusAnnotationInfo* annotations, ZString name) @extern("g_dbus_annotation_info_lookup");

<* Maps to dbus_error_encode_gerror *>
extern fn ZString* dbus_error_encode_gerror(glib::Error* error) @extern("g_dbus_error_encode_gerror");

<* Maps to dbus_error_get_remote_error *>
extern fn ZString* dbus_error_get_remote_error(glib::Error* error) @extern("g_dbus_error_get_remote_error");

<* Maps to dbus_error_is_remote_error *>
extern fn bool dbus_error_is_remote_error(glib::Error* error) @extern("g_dbus_error_is_remote_error");

<* Maps to dbus_error_new_for_dbus_error *>
extern fn glib::Error* dbus_error_new_for_dbus_error(ZString dbus_error_name, ZString dbus_error_message) @extern("g_dbus_error_new_for_dbus_error");

<* Maps to dbus_error_quark *>
extern fn glib::Quark dbus_error_quark() @extern("g_dbus_error_quark");

<* Maps to dbus_error_register_error *>
extern fn bool dbus_error_register_error(glib::Quark error_domain, int error_code, ZString dbus_error_name) @extern("g_dbus_error_register_error");

<* Maps to dbus_error_register_error_domain *>
extern fn void dbus_error_register_error_domain(ZString error_domain_quark_name, usz* quark_volatile, DBusErrorEntry entries, uint num_entries) @extern("g_dbus_error_register_error_domain");

<* Maps to dbus_error_strip_remote_error *>
extern fn bool dbus_error_strip_remote_error(glib::Error* error) @extern("g_dbus_error_strip_remote_error");

<* Maps to dbus_error_unregister_error *>
extern fn bool dbus_error_unregister_error(glib::Quark error_domain, int error_code, ZString dbus_error_name) @extern("g_dbus_error_unregister_error");

<* Maps to dbus_escape_object_path *>
extern fn ZString* dbus_escape_object_path(ZString s) @extern("g_dbus_escape_object_path");

<* Maps to dbus_escape_object_path_bytestring *>
extern fn ZString* dbus_escape_object_path_bytestring(char bytes) @extern("g_dbus_escape_object_path_bytestring");

<* Maps to dbus_generate_guid *>
extern fn ZString* dbus_generate_guid() @extern("g_dbus_generate_guid");

<* Maps to dbus_gvalue_to_gvariant *>
extern fn glib::Variant* dbus_gvalue_to_gvariant(gobject::Value* gvalue, glib::VariantType* type) @extern("g_dbus_gvalue_to_gvariant");

<* Maps to dbus_gvariant_to_gvalue *>
extern fn void dbus_gvariant_to_gvalue(glib::Variant* value, gobject::Value* out_gvalue) @extern("g_dbus_gvariant_to_gvalue");

<* Maps to dbus_is_address *>
extern fn bool dbus_is_address(ZString string) @extern("g_dbus_is_address");

<* Maps to dbus_is_error_name *>
extern fn bool dbus_is_error_name(ZString string) @extern("g_dbus_is_error_name");

<* Maps to dbus_is_guid *>
extern fn bool dbus_is_guid(ZString string) @extern("g_dbus_is_guid");

<* Maps to dbus_is_interface_name *>
extern fn bool dbus_is_interface_name(ZString string) @extern("g_dbus_is_interface_name");

<* Maps to dbus_is_member_name *>
extern fn bool dbus_is_member_name(ZString string) @extern("g_dbus_is_member_name");

<* Maps to dbus_is_name *>
extern fn bool dbus_is_name(ZString string) @extern("g_dbus_is_name");

<* Maps to dbus_is_supported_address *>
extern fn bool dbus_is_supported_address(ZString string) @extern("g_dbus_is_supported_address");

<* Maps to dbus_is_unique_name *>
extern fn bool dbus_is_unique_name(ZString string) @extern("g_dbus_is_unique_name");

<* Maps to dbus_unescape_object_path *>
extern fn char dbus_unescape_object_path(ZString s) @extern("g_dbus_unescape_object_path");

<* Maps to dtls_client_connection_new *>
extern fn DtlsClientConnection* dtls_client_connection_new(DatagramBased* base_socket, SocketConnectable* server_identity) @extern("g_dtls_client_connection_new");

<* Maps to dtls_server_connection_new *>
extern fn DtlsServerConnection* dtls_server_connection_new(DatagramBased* base_socket, TlsCertificate* certificate) @extern("g_dtls_server_connection_new");

<* Maps to file_new_build_filenamev *>
extern fn File* file_new_build_filenamev(ZString args) @extern("g_file_new_build_filenamev");

<* Maps to file_new_for_commandline_arg *>
extern fn File* file_new_for_commandline_arg(ZString arg) @extern("g_file_new_for_commandline_arg");

<* Maps to file_new_for_commandline_arg_and_cwd *>
extern fn File* file_new_for_commandline_arg_and_cwd(ZString arg, ZString cwd) @extern("g_file_new_for_commandline_arg_and_cwd");

<* Maps to file_new_for_path *>
extern fn File* file_new_for_path(ZString path) @extern("g_file_new_for_path");

<* Maps to file_new_for_uri *>
extern fn File* file_new_for_uri(ZString uri) @extern("g_file_new_for_uri");

<* Maps to file_new_tmp *>
extern fn File* file_new_tmp(ZString tmpl, FileIOStream* iostream) @extern("g_file_new_tmp");

<* Maps to file_new_tmp_async *>
extern fn void file_new_tmp_async(ZString tmpl, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_new_tmp_async");

<* Maps to file_new_tmp_dir_async *>
extern fn void file_new_tmp_dir_async(ZString tmpl, int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) @extern("g_file_new_tmp_dir_async");

<* Maps to file_new_tmp_dir_finish *>
extern fn File* file_new_tmp_dir_finish(AsyncResult* result) @extern("g_file_new_tmp_dir_finish");

<* Maps to file_new_tmp_finish *>
extern fn File* file_new_tmp_finish(AsyncResult* result, FileIOStream* iostream) @extern("g_file_new_tmp_finish");

<* Maps to file_parse_name *>
extern fn File* file_parse_name(ZString parse_name) @extern("g_file_parse_name");

<* Maps to icon_deserialize *>
extern fn Icon* icon_deserialize(glib::Variant* value) @extern("g_icon_deserialize");

<* Maps to icon_new_for_string *>
extern fn Icon* icon_new_for_string(ZString str) @extern("g_icon_new_for_string");

<* Maps to initable_newv *>
extern fn gobject::Object* initable_newv(usz object_type, uint n_parameters, gobject::Parameter parameters, Cancellable* cancellable) @extern("g_initable_newv");

<* Maps to io_error_from_errno *>
extern fn IOErrorEnum io_error_from_errno(int err_no) @extern("g_io_error_from_errno");

<* Maps to io_error_from_file_error *>
extern fn IOErrorEnum io_error_from_file_error(glib::FileError file_error) @extern("g_io_error_from_file_error");

<* Maps to io_error_quark *>
extern fn glib::Quark io_error_quark() @extern("g_io_error_quark");

<* Maps to io_extension_point_implement *>
extern fn IOExtension* io_extension_point_implement(ZString extension_point_name, usz type, ZString extension_name, int priority) @extern("g_io_extension_point_implement");

<* Maps to io_extension_point_lookup *>
extern fn IOExtensionPoint* io_extension_point_lookup(ZString name) @extern("g_io_extension_point_lookup");

<* Maps to io_extension_point_register *>
extern fn IOExtensionPoint* io_extension_point_register(ZString name) @extern("g_io_extension_point_register");

<* Maps to io_modules_load_all_in_directory *>
extern fn glib::List* io_modules_load_all_in_directory(ZString dirname) @extern("g_io_modules_load_all_in_directory");

<* Maps to io_modules_load_all_in_directory_with_scope *>
extern fn glib::List* io_modules_load_all_in_directory_with_scope(ZString dirname, IOModuleScope* scope) @extern("g_io_modules_load_all_in_directory_with_scope");

<* Maps to io_modules_scan_all_in_directory *>
extern fn void io_modules_scan_all_in_directory(ZString dirname) @extern("g_io_modules_scan_all_in_directory");

<* Maps to io_modules_scan_all_in_directory_with_scope *>
extern fn void io_modules_scan_all_in_directory_with_scope(ZString dirname, IOModuleScope* scope) @extern("g_io_modules_scan_all_in_directory_with_scope");

<* Maps to io_scheduler_cancel_all_jobs *>
extern fn void io_scheduler_cancel_all_jobs() @extern("g_io_scheduler_cancel_all_jobs");

<* Maps to io_scheduler_push_job *>
extern fn void io_scheduler_push_job(IOSchedulerJobFunc job_func, void* user_data, glib::DestroyNotify notify, int io_priority, Cancellable* cancellable) @extern("g_io_scheduler_push_job");

<* Maps to keyfile_settings_backend_new *>
extern fn SettingsBackend* keyfile_settings_backend_new(ZString filename, ZString root_path, ZString root_group) @extern("g_keyfile_settings_backend_new");

<* Maps to memory_monitor_dup_default *>
extern fn MemoryMonitor* memory_monitor_dup_default() @extern("g_memory_monitor_dup_default");

<* Maps to memory_settings_backend_new *>
extern fn SettingsBackend* memory_settings_backend_new() @extern("g_memory_settings_backend_new");

<* Maps to network_monitor_get_default *>
extern fn NetworkMonitor* network_monitor_get_default() @extern("g_network_monitor_get_default");

<* Maps to networking_init *>
extern fn void networking_init() @extern("g_networking_init");

<* Maps to null_settings_backend_new *>
extern fn SettingsBackend* null_settings_backend_new() @extern("g_null_settings_backend_new");

<* Maps to pollable_source_new *>
extern fn glib::Source* pollable_source_new(gobject::Object* pollable_stream) @extern("g_pollable_source_new");

<* Maps to pollable_source_new_full *>
extern fn glib::Source* pollable_source_new_full(gobject::Object* pollable_stream, glib::Source* child_source, Cancellable* cancellable) @extern("g_pollable_source_new_full");

<* Maps to pollable_stream_read *>
extern fn isz pollable_stream_read(InputStream* stream, char buffer, usz count, bool blocking, Cancellable* cancellable) @extern("g_pollable_stream_read");

<* Maps to pollable_stream_write *>
extern fn isz pollable_stream_write(OutputStream* stream, char buffer, usz count, bool blocking, Cancellable* cancellable) @extern("g_pollable_stream_write");

<* Maps to pollable_stream_write_all *>
extern fn bool pollable_stream_write_all(OutputStream* stream, char buffer, usz count, bool blocking, usz* bytes_written, Cancellable* cancellable) @extern("g_pollable_stream_write_all");

<* Maps to power_profile_monitor_dup_default *>
extern fn PowerProfileMonitor* power_profile_monitor_dup_default() @extern("g_power_profile_monitor_dup_default");

<* Maps to proxy_get_default_for_protocol *>
extern fn Proxy* proxy_get_default_for_protocol(ZString protocol) @extern("g_proxy_get_default_for_protocol");

<* Maps to proxy_resolver_get_default *>
extern fn ProxyResolver* proxy_resolver_get_default() @extern("g_proxy_resolver_get_default");

<* Maps to resolver_error_quark *>
extern fn glib::Quark resolver_error_quark() @extern("g_resolver_error_quark");

<* Maps to resource_error_quark *>
extern fn glib::Quark resource_error_quark() @extern("g_resource_error_quark");

<* Maps to resource_load *>
extern fn Resource* resource_load(ZString filename) @extern("g_resource_load");

<* Maps to resources_enumerate_children *>
extern fn ZString resources_enumerate_children(ZString path, ResourceLookupFlags lookup_flags) @extern("g_resources_enumerate_children");

<* Maps to resources_get_info *>
extern fn bool resources_get_info(ZString path, ResourceLookupFlags lookup_flags, usz* size, uint* flags) @extern("g_resources_get_info");

<* Maps to resources_lookup_data *>
extern fn glib::Bytes* resources_lookup_data(ZString path, ResourceLookupFlags lookup_flags) @extern("g_resources_lookup_data");

<* Maps to resources_open_stream *>
extern fn InputStream* resources_open_stream(ZString path, ResourceLookupFlags lookup_flags) @extern("g_resources_open_stream");

<* Maps to resources_register *>
extern fn void resources_register(Resource* resource) @extern("g_resources_register");

<* Maps to resources_unregister *>
extern fn void resources_unregister(Resource* resource) @extern("g_resources_unregister");

<* Maps to settings_schema_source_get_default *>
extern fn SettingsSchemaSource* settings_schema_source_get_default() @extern("g_settings_schema_source_get_default");

<* Maps to simple_async_report_error_in_idle *>
extern fn void simple_async_report_error_in_idle(gobject::Object* object, AsyncReadyCallback callback, void* user_data, glib::Quark domain, int code, ZString format, any rest) @extern("g_simple_async_report_error_in_idle");

<* Maps to simple_async_report_gerror_in_idle *>
extern fn void simple_async_report_gerror_in_idle(gobject::Object* object, AsyncReadyCallback callback, void* user_data, glib::Error* error) @extern("g_simple_async_report_gerror_in_idle");

<* Maps to simple_async_report_take_gerror_in_idle *>
extern fn void simple_async_report_take_gerror_in_idle(gobject::Object* object, AsyncReadyCallback callback, void* user_data, glib::Error* error) @extern("g_simple_async_report_take_gerror_in_idle");

<* Maps to srv_target_list_sort *>
extern fn glib::List* srv_target_list_sort(glib::List* targets) @extern("g_srv_target_list_sort");

<* Maps to tls_backend_get_default *>
extern fn TlsBackend* tls_backend_get_default() @extern("g_tls_backend_get_default");

<* Maps to tls_channel_binding_error_quark *>
extern fn glib::Quark tls_channel_binding_error_quark() @extern("g_tls_channel_binding_error_quark");

<* Maps to tls_client_connection_new *>
extern fn TlsClientConnection* tls_client_connection_new(IOStream* base_io_stream, SocketConnectable* server_identity) @extern("g_tls_client_connection_new");

<* Maps to tls_error_quark *>
extern fn glib::Quark tls_error_quark() @extern("g_tls_error_quark");

<* Maps to tls_file_database_new *>
extern fn TlsFileDatabase* tls_file_database_new(ZString anchors) @extern("g_tls_file_database_new");

<* Maps to tls_server_connection_new *>
extern fn TlsServerConnection* tls_server_connection_new(IOStream* base_io_stream, TlsCertificate* certificate) @extern("g_tls_server_connection_new");

<* Maps to unix_is_mount_path_system_internal *>
extern fn bool unix_is_mount_path_system_internal(ZString mount_path) @extern("g_unix_is_mount_path_system_internal");

<* Maps to unix_is_system_device_path *>
extern fn bool unix_is_system_device_path(ZString device_path) @extern("g_unix_is_system_device_path");

<* Maps to unix_is_system_fs_type *>
extern fn bool unix_is_system_fs_type(ZString fs_type) @extern("g_unix_is_system_fs_type");

<* Maps to unix_mount_at *>
extern fn UnixMountEntry* unix_mount_at(ZString mount_path, ulong* time_read) @extern("g_unix_mount_at");

<* Maps to unix_mount_compare *>
extern fn int unix_mount_compare(UnixMountEntry* mount1, UnixMountEntry* mount2) @extern("g_unix_mount_compare");

<* Maps to unix_mount_copy *>
extern fn UnixMountEntry* unix_mount_copy(UnixMountEntry* mount_entry) @extern("g_unix_mount_copy");

<* Maps to unix_mount_for *>
extern fn UnixMountEntry* unix_mount_for(ZString file_path, ulong* time_read) @extern("g_unix_mount_for");

<* Maps to unix_mount_free *>
extern fn void unix_mount_free(UnixMountEntry* mount_entry) @extern("g_unix_mount_free");

<* Maps to unix_mount_get_device_path *>
extern fn ZString unix_mount_get_device_path(UnixMountEntry* mount_entry) @extern("g_unix_mount_get_device_path");

<* Maps to unix_mount_get_fs_type *>
extern fn ZString unix_mount_get_fs_type(UnixMountEntry* mount_entry) @extern("g_unix_mount_get_fs_type");

<* Maps to unix_mount_get_mount_path *>
extern fn ZString unix_mount_get_mount_path(UnixMountEntry* mount_entry) @extern("g_unix_mount_get_mount_path");

<* Maps to unix_mount_get_options *>
extern fn ZString unix_mount_get_options(UnixMountEntry* mount_entry) @extern("g_unix_mount_get_options");

<* Maps to unix_mount_get_root_path *>
extern fn ZString unix_mount_get_root_path(UnixMountEntry* mount_entry) @extern("g_unix_mount_get_root_path");

<* Maps to unix_mount_guess_can_eject *>
extern fn bool unix_mount_guess_can_eject(UnixMountEntry* mount_entry) @extern("g_unix_mount_guess_can_eject");

<* Maps to unix_mount_guess_icon *>
extern fn Icon* unix_mount_guess_icon(UnixMountEntry* mount_entry) @extern("g_unix_mount_guess_icon");

<* Maps to unix_mount_guess_name *>
extern fn ZString* unix_mount_guess_name(UnixMountEntry* mount_entry) @extern("g_unix_mount_guess_name");

<* Maps to unix_mount_guess_should_display *>
extern fn bool unix_mount_guess_should_display(UnixMountEntry* mount_entry) @extern("g_unix_mount_guess_should_display");

<* Maps to unix_mount_guess_symbolic_icon *>
extern fn Icon* unix_mount_guess_symbolic_icon(UnixMountEntry* mount_entry) @extern("g_unix_mount_guess_symbolic_icon");

<* Maps to unix_mount_is_readonly *>
extern fn bool unix_mount_is_readonly(UnixMountEntry* mount_entry) @extern("g_unix_mount_is_readonly");

<* Maps to unix_mount_is_system_internal *>
extern fn bool unix_mount_is_system_internal(UnixMountEntry* mount_entry) @extern("g_unix_mount_is_system_internal");

<* Maps to unix_mount_point_at *>
extern fn UnixMountPoint* unix_mount_point_at(ZString mount_path, ulong* time_read) @extern("g_unix_mount_point_at");

<* Maps to unix_mount_points_changed_since *>
extern fn bool unix_mount_points_changed_since(ulong time) @extern("g_unix_mount_points_changed_since");

<* Maps to unix_mount_points_get *>
extern fn glib::List* unix_mount_points_get(ulong* time_read) @extern("g_unix_mount_points_get");

<* Maps to unix_mount_points_get_from_file *>
extern fn UnixMountPoint* unix_mount_points_get_from_file(ZString table_path, ulong* time_read_out, usz* n_points_out) @extern("g_unix_mount_points_get_from_file");

<* Maps to unix_mounts_changed_since *>
extern fn bool unix_mounts_changed_since(ulong time) @extern("g_unix_mounts_changed_since");

<* Maps to unix_mounts_get *>
extern fn glib::List* unix_mounts_get(ulong* time_read) @extern("g_unix_mounts_get");

<* Maps to unix_mounts_get_from_file *>
extern fn UnixMountEntry* unix_mounts_get_from_file(ZString table_path, ulong* time_read_out, usz* n_entries_out) @extern("g_unix_mounts_get_from_file");

///END MODULE gio
