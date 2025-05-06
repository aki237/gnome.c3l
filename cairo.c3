module cairo;

typedef Context = void*;
typedef Region = void*;
typedef Surface = void*;
typedef FontOptions = void*;

typedef Content = uint;

const Content CONTENT_COLOR        = 0x1000;
const Content CONTENT_ALPHA        = 0x2000;
const Content CONTENT_COLOR_ALPHA  = 0x3000;
