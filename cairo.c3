module cairo;

distinct Context = void*;
distinct Region = void*;
distinct Surface = void*;
distinct FontOptions = void*;

distinct Content = uint;

const Content CONTENT_COLOR        = 0x1000;
const Content CONTENT_ALPHA        = 0x2000;
const Content CONTENT_COLOR_ALPHA  = 0x3000;
