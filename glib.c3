module glib;

alias Quark = uint;
alias Pid = int;
alias DestroyNotify = fn void(void* data);
alias DuplicateFunc = fn void*(void* data, void* user_data);
alias CompareDataFunc = fn int(void* a, void* b, void* user_data);
alias EqualFunc = fn bool(void* a, void* b);
alias EqualFuncFull = fn bool(void* a, void* b, void* user_data);
alias SourceFunc = fn bool(void* user_data);
alias SpawnChildSetupFunc = fn void(void* user_data);

typedef Bytes = void*;
typedef DateTime = void*;

struct Error{
  Quark domain;
  int code;
  ZString message;
}

enum IOCondition: uint (inline uint s) {
  IO_IN = 1,
  IO_OUT = 4,
  IO_PRI = 2,
  IO_ERR = 8,
  IO_HUP = 16,
  IO_NVAL = 32,
}

struct List {
  void* data;
  List* next;
  List* prev;
}

struct SList {
  void* data;
  SList* next;
}

typedef MainContext = void*;
typedef OptionGroup = void*;
typedef Source = void*;
typedef Tree = void*;
typedef Variant = void*;
typedef VariantDict = void*;
typedef VariantType = void*;

struct PollFD {
  int fd;
  ushort events;
  ushort revents;
}

struct OptionEntry {
  ZString long_name;
  ichar short_name;
  int flags;
  OptionArg arg;
  void* arg_data;
  ZString description;
  ZString arg_descripiton;
}

struct TimeVal {
  long tv_sec;
  long tv_usec;
}

enum OptionArg: uint(inline uint s) {
  NONE = 0,
  STRING = 1,
  INT = 2,
  CALLBACK = 3,
  FILENAME = 4,
  STRING_ARRAY = 5,
  FILENAME_ARRAY = 6,
  DOUBLE = 7,
  INT64 = 8,
}

enum OptionFlags: uint(inline uint s) {
  NONE = 0,
  HIDDEN = 1,
  IN_MAIN = 2,
  REVERSE = 4,
  NO_ARG = 8,
  FILENAME = 16,
  OPTIONAL_ARG = 32,
  FLAG_NOALIAS = 64,
  FLAG_DEPRECATED = 128,
}

enum SpawnFlags: uint(inline uint s) {
  DEFAULT                = 0,
  LEAVE_DESCRIPTORS_OPEN = 1 << 0,
  DO_NOT_REAP_CHILD      = 1 << 1,
  SEARCH_PATH            = 1 << 2,
  STDOUT_TO_DEV_NULL     = 1 << 3,
  STDERR_TO_DEV_NULL     = 1 << 4,
  CHILD_INHERITS_STDIN   = 1 << 5,
  FILE_AND_ARGV_ZERO     = 1 << 6,
  SEARCH_PATH_FROM_ENVP  = 1 << 7,
  CLOEXEC_PIPES          = 1 << 8,
  CHILD_INHERITS_STDOUT  = 1 << 9,
  CHILD_INHERITS_STDERR  = 1 << 10,
  STDIN_FROM_DEV_NULL    = 1 << 11
}

enum SeekType: uint(inline uint s) {
  CUR = 0,
  SET = 1,
  END = 2
}

typedef HashTable = void*;

extern fn bool HashTable.contains(&self, void* key) @extern("g_hash_table_contains");
extern fn bool HashTable.add(&self, void* key) @extern("g_hash_table_add");
extern fn void HashTable.destroy(&self) @extern("g_hash_table_destroy");
extern fn bool HashTable.insert(&self, void* key, void* value) @extern("g_hash_table_insert");
extern fn void* HashTable.lookup(&self, void* key) @extern("g_hash_table_lookup");
extern fn List* HashTable.get_keys(&self) @extern("g_hash_table_get_keys");

struct String {
  ZString str;
  usz len;
  usz allocated_len;
}

typedef KeyFile = void*;

enum FileError {
  EXIST,
  ISDIR,
  ACCES,
  NAMETOOLONG,
  NOENT,
  NOTDIR,
  NXIO,
  NODEV,
  ROFS,
  TXTBSY,
  FAULT,
  LOOP,
  NOSPC,
  NOMEM,
  MFILE,
  NFILE,
  BADF,
  INVAL,
  PIPE,
  AGAIN,
  INTR,
  IO,
  PERM,
  NOSYS,
  FAILED
}
