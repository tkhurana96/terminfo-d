module terminfo.d.test.xterm;

unittest {
ubyte[] testdata = [
 26,   1,  48,   0,  38,   0,  15,   0, 157,   1, 146,   5, 120, 116, 101,
114, 109, 124, 120, 116, 101, 114, 109,  32, 116, 101, 114, 109, 105, 110,
 97, 108,  32, 101, 109, 117, 108,  97, 116, 111, 114,  32,  40,  88,  32,
 87, 105, 110, 100, 111, 119,  32,  83, 121, 115, 116, 101, 109,  41,   0,
  0,   1,   0,   0,   1,   0,   0,   0,   1,   0,   0,   0,   0,   1,   1,
  0,   0,   0,   0,   0,   0,   0,   1,   0,   0,   1,   0,   0,   1,   0,
  0,   0,   0,   0,   0,   0,   0,   1,  80,   0,   8,   0,  24,   0, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255,   8,   0,  64,   0,   0,   0,   4,   0,   6,   0,   8,
  0,  25,   0,  30,   0,  38,   0,  42,   0,  46,   0, 255, 255,  57,   0,
 74,   0,  76,   0,  80,   0,  87,   0, 255, 255,  89,   0, 102,   0, 255,
255, 106,   0, 110,   0, 120,   0, 124,   0, 255, 255, 255, 255, 128,   0,
132,   0, 137,   0, 142,   0, 255, 255, 151,   0, 156,   0, 161,   0, 255,
255, 166,   0, 171,   0, 176,   0, 181,   0, 190,   0, 194,   0, 201,   0,
255, 255, 210,   0, 215,   0, 221,   0, 227,   0, 255, 255, 255, 255, 255,
255, 245,   0, 255, 255, 255, 255, 255, 255,   7,   1, 255, 255,  11,   1,
255, 255, 255, 255, 255, 255,  13,   1, 255, 255,  18,   1, 255, 255, 255,
255, 255, 255, 255, 255,  22,   1,  26,   1,  32,   1,  36,   1,  40,   1,
 44,   1,  50,   1,  56,   1,  62,   1,  68,   1,  74,   1,  78,   1, 255,
255,  83,   1, 255, 255,  87,   1,  92,   1,  97,   1, 101,   1, 108,   1,
255, 255, 115,   1, 119,   1, 127,   1, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
135,   1, 144,   1, 255, 255, 255, 255, 153,   1, 162,   1, 171,   1, 180,
  1, 189,   1, 198,   1, 207,   1, 216,   1, 225,   1, 234,   1, 255, 255,
255, 255, 255, 255, 243,   1, 247,   1, 252,   1, 255, 255,   1,   2,   4,
  2, 255, 255, 255, 255,  22,   2,  25,   2,  36,   2,  39,   2,  41,   2,
 44,   2, 137,   2, 255, 255, 140,   2, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 142,   2, 255, 255, 255, 255, 255, 255, 255, 255,
146,   2, 255, 255, 199,   2, 255, 255, 255, 255, 203,   2, 209,   2, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 215,   2, 219,   2, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
223,   2, 255, 255, 255, 255, 230,   2, 255, 255, 255, 255, 255, 255, 255,
255, 237,   2, 244,   2, 251,   2, 255, 255, 255, 255,   2,   3, 255, 255,
  9,   3, 255, 255, 255, 255, 255, 255,  16,   3, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255,  23,   3,  29,   3,  35,   3,  42,   3,  49,   3,
 56,   3,  63,   3,  71,   3,  79,   3,  87,   3,  95,   3, 103,   3, 111,
  3, 119,   3, 127,   3, 134,   3, 141,   3, 148,   3, 155,   3, 163,   3,
171,   3, 179,   3, 187,   3, 195,   3, 203,   3, 211,   3, 219,   3, 226,
  3, 233,   3, 240,   3, 247,   3, 255,   3,   7,   4,  15,   4,  23,   4,
 31,   4,  39,   4,  47,   4,  55,   4,  62,   4,  69,   4,  76,   4,  83,
  4,  91,   4,  99,   4, 107,   4, 115,   4, 123,   4, 131,   4, 139,   4,
147,   4, 154,   4, 161,   4, 168,   4, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 173,   4, 184,   4, 189,   4,
208,   4, 212,   4, 255, 255, 255, 255, 255, 255, 255, 255, 221,   4,  35,
  5, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
105,   5, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 110,   5, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 116,   5,
255, 255, 255, 255, 255, 255, 120,   5, 130,   5, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 140,   5, 143,   5,  27,  91,  90,   0,   7,   0,
 13,   0,  27,  91,  37, 105,  37, 112,  49,  37, 100,  59,  37, 112,  50,
 37, 100, 114,   0,  27,  91,  51, 103,   0,  27,  91,  72,  27,  91,  50,
 74,   0,  27,  91,  75,   0,  27,  91,  74,   0,  27,  91,  37, 105,  37,
112,  49,  37, 100,  71,   0,  27,  91,  37, 105,  37, 112,  49,  37, 100,
 59,  37, 112,  50,  37, 100,  72,   0,  10,   0,  27,  91,  72,   0,  27,
 91,  63,  50,  53, 108,   0,   8,   0,  27,  91,  63,  49,  50, 108,  27,
 91,  63,  50,  53, 104,   0,  27,  91,  67,   0,  27,  91,  65,   0,  27,
 91,  63,  49,  50,  59,  50,  53, 104,   0,  27,  91,  80,   0,  27,  91,
 77,   0,  27,  40,  48,   0,  27,  91,  53, 109,   0,  27,  91,  49, 109,
  0,  27,  91,  63,  49,  48,  52,  57, 104,   0,  27,  91,  50, 109,   0,
 27,  91,  52, 104,   0,  27,  91,  56, 109,   0,  27,  91,  55, 109,   0,
 27,  91,  55, 109,   0,  27,  91,  52, 109,   0,  27,  91,  37, 112,  49,
 37, 100,  88,   0,  27,  40,  66,   0,  27,  40,  66,  27,  91, 109,   0,
 27,  91,  63,  49,  48,  52,  57, 108,   0,  27,  91,  52, 108,   0,  27,
 91,  50,  55, 109,   0,  27,  91,  50,  52, 109,   0,  27,  91,  63,  53,
104,  36,  60,  49,  48,  48,  47,  62,  27,  91,  63,  53, 108,   0,  27,
 91,  33, 112,  27,  91,  63,  51,  59,  52, 108,  27,  91,  52, 108,  27,
 62,   0,  27,  91,  76,   0,   8,   0,  27,  91,  51, 126,   0,  27,  79,
 66,   0,  27,  79,  80,   0,  27,  91,  50,  49, 126,   0,  27,  79,  81,
  0,  27,  79,  82,   0,  27,  79,  83,   0,  27,  91,  49,  53, 126,   0,
 27,  91,  49,  55, 126,   0,  27,  91,  49,  56, 126,   0,  27,  91,  49,
 57, 126,   0,  27,  91,  50,  48, 126,   0,  27,  79,  72,   0,  27,  91,
 50, 126,   0,  27,  79,  68,   0,  27,  91,  54, 126,   0,  27,  91,  53,
126,   0,  27,  79,  67,   0,  27,  91,  49,  59,  50,  66,   0,  27,  91,
 49,  59,  50,  65,   0,  27,  79,  65,   0,  27,  91,  63,  49, 108,  27,
 62,   0,  27,  91,  63,  49, 104,  27,  61,   0,  27,  91,  63,  49,  48,
 51,  52, 108,   0,  27,  91,  63,  49,  48,  51,  52, 104,   0,  27,  91,
 37, 112,  49,  37, 100,  80,   0,  27,  91,  37, 112,  49,  37, 100,  77,
  0,  27,  91,  37, 112,  49,  37, 100,  66,   0,  27,  91,  37, 112,  49,
 37, 100,  64,   0,  27,  91,  37, 112,  49,  37, 100,  83,   0,  27,  91,
 37, 112,  49,  37, 100,  76,   0,  27,  91,  37, 112,  49,  37, 100,  68,
  0,  27,  91,  37, 112,  49,  37, 100,  67,   0,  27,  91,  37, 112,  49,
 37, 100,  84,   0,  27,  91,  37, 112,  49,  37, 100,  65,   0,  27,  91,
105,   0,  27,  91,  52, 105,   0,  27,  91,  53, 105,   0,  27,  99,   0,
 27,  91,  33, 112,  27,  91,  63,  51,  59,  52, 108,  27,  91,  52, 108,
 27,  62,   0,  27,  56,   0,  27,  91,  37, 105,  37, 112,  49,  37, 100,
100,   0,  27,  55,   0,  10,   0,  27,  77,   0,  37,  63,  37, 112,  57,
 37, 116,  27,  40,  48,  37, 101,  27,  40,  66,  37,  59,  27,  91,  48,
 37,  63,  37, 112,  54,  37, 116,  59,  49,  37,  59,  37,  63,  37, 112,
 53,  37, 116,  59,  50,  37,  59,  37,  63,  37, 112,  50,  37, 116,  59,
 52,  37,  59,  37,  63,  37, 112,  49,  37, 112,  51,  37, 124,  37, 116,
 59,  55,  37,  59,  37,  63,  37, 112,  52,  37, 116,  59,  53,  37,  59,
 37,  63,  37, 112,  55,  37, 116,  59,  56,  37,  59, 109,   0,  27,  72,
  0,   9,   0,  27,  79,  69,   0,  96,  96,  97,  97, 102, 102, 103, 103,
105, 105, 106, 106, 107, 107, 108, 108, 109, 109, 110, 110, 111, 111, 112,
112, 113, 113, 114, 114, 115, 115, 116, 116, 117, 117, 118, 118, 119, 119,
120, 120, 121, 121, 122, 122, 123, 123, 124, 124, 125, 125, 126, 126,   0,
 27,  91,  90,   0,  27,  91,  63,  55, 104,   0,  27,  91,  63,  55, 108,
  0,  27,  79,  70,   0,  27,  79,  77,   0,  27,  91,  51,  59,  50, 126,
  0,  27,  91,  49,  59,  50,  70,   0,  27,  91,  49,  59,  50,  72,   0,
 27,  91,  50,  59,  50, 126,   0,  27,  91,  49,  59,  50,  68,   0,  27,
 91,  54,  59,  50, 126,   0,  27,  91,  53,  59,  50, 126,   0,  27,  91,
 49,  59,  50,  67,   0,  27,  91,  50,  51, 126,   0,  27,  91,  50,  52,
126,   0,  27,  91,  49,  59,  50,  80,   0,  27,  91,  49,  59,  50,  81,
  0,  27,  91,  49,  59,  50,  82,   0,  27,  91,  49,  59,  50,  83,   0,
 27,  91,  49,  53,  59,  50, 126,   0,  27,  91,  49,  55,  59,  50, 126,
  0,  27,  91,  49,  56,  59,  50, 126,   0,  27,  91,  49,  57,  59,  50,
126,   0,  27,  91,  50,  48,  59,  50, 126,   0,  27,  91,  50,  49,  59,
 50, 126,   0,  27,  91,  50,  51,  59,  50, 126,   0,  27,  91,  50,  52,
 59,  50, 126,   0,  27,  91,  49,  59,  53,  80,   0,  27,  91,  49,  59,
 53,  81,   0,  27,  91,  49,  59,  53,  82,   0,  27,  91,  49,  59,  53,
 83,   0,  27,  91,  49,  53,  59,  53, 126,   0,  27,  91,  49,  55,  59,
 53, 126,   0,  27,  91,  49,  56,  59,  53, 126,   0,  27,  91,  49,  57,
 59,  53, 126,   0,  27,  91,  50,  48,  59,  53, 126,   0,  27,  91,  50,
 49,  59,  53, 126,   0,  27,  91,  50,  51,  59,  53, 126,   0,  27,  91,
 50,  52,  59,  53, 126,   0,  27,  91,  49,  59,  54,  80,   0,  27,  91,
 49,  59,  54,  81,   0,  27,  91,  49,  59,  54,  82,   0,  27,  91,  49,
 59,  54,  83,   0,  27,  91,  49,  53,  59,  54, 126,   0,  27,  91,  49,
 55,  59,  54, 126,   0,  27,  91,  49,  56,  59,  54, 126,   0,  27,  91,
 49,  57,  59,  54, 126,   0,  27,  91,  50,  48,  59,  54, 126,   0,  27,
 91,  50,  49,  59,  54, 126,   0,  27,  91,  50,  51,  59,  54, 126,   0,
 27,  91,  50,  52,  59,  54, 126,   0,  27,  91,  49,  59,  51,  80,   0,
 27,  91,  49,  59,  51,  81,   0,  27,  91,  49,  59,  51,  82,   0,  27,
 91,  49,  59,  51,  83,   0,  27,  91,  49,  53,  59,  51, 126,   0,  27,
 91,  49,  55,  59,  51, 126,   0,  27,  91,  49,  56,  59,  51, 126,   0,
 27,  91,  49,  57,  59,  51, 126,   0,  27,  91,  50,  48,  59,  51, 126,
  0,  27,  91,  50,  49,  59,  51, 126,   0,  27,  91,  50,  51,  59,  51,
126,   0,  27,  91,  50,  52,  59,  51, 126,   0,  27,  91,  49,  59,  52,
 80,   0,  27,  91,  49,  59,  52,  81,   0,  27,  91,  49,  59,  52,  82,
  0,  27,  91,  49,  75,   0,  27,  91,  37, 105,  37, 100,  59,  37, 100,
 82,   0,  27,  91,  54, 110,   0,  27,  91,  63,  37,  91,  59,  48,  49,
 50,  51,  52,  53,  54,  55,  56,  57,  93,  99,   0,  27,  91,  99,   0,
 27,  91,  51,  57,  59,  52,  57, 109,   0,  27,  91,  51,  37,  63,  37,
112,  49,  37, 123,  49, 125,  37,  61,  37, 116,  52,  37, 101,  37, 112,
 49,  37, 123,  51, 125,  37,  61,  37, 116,  54,  37, 101,  37, 112,  49,
 37, 123,  52, 125,  37,  61,  37, 116,  49,  37, 101,  37, 112,  49,  37,
123,  54, 125,  37,  61,  37, 116,  51,  37, 101,  37, 112,  49,  37, 100,
 37,  59, 109,   0,  27,  91,  52,  37,  63,  37, 112,  49,  37, 123,  49,
125,  37,  61,  37, 116,  52,  37, 101,  37, 112,  49,  37, 123,  51, 125,
 37,  61,  37, 116,  54,  37, 101,  37, 112,  49,  37, 123,  52, 125,  37,
 61,  37, 116,  49,  37, 101,  37, 112,  49,  37, 123,  54, 125,  37,  61,
 37, 116,  51,  37, 101,  37, 112,  49,  37, 100,  37,  59, 109,   0,  27,
 91,  51, 109,   0,  27,  91,  50,  51, 109,   0,  27,  91,  77,   0,  27,
 91,  51,  37, 112,  49,  37, 100, 109,   0,  27,  91,  52,  37, 112,  49,
 37, 100, 109,   0,  27, 108,   0,  27, 109,   0,   3,   0,   1,   0,  65,
  0, 134,   0, 253,   2,   1,   0,   1,   0, 255, 255,   0,   0,   7,   0,
255, 255,  19,   0,  24,   0, 255, 255,  42,   0,  48,   0, 255, 255,  58,
  0,  65,   0,  72,   0,  79,   0,  86,   0,  93,   0, 100,   0, 107,   0,
114,   0, 121,   0, 128,   0, 135,   0, 142,   0, 149,   0, 156,   0, 163,
  0, 170,   0, 177,   0, 184,   0, 191,   0, 198,   0, 205,   0, 212,   0,
219,   0, 226,   0, 233,   0, 240,   0, 247,   0, 254,   0,   5,   1,  12,
  1,  19,   1,  26,   1,  33,   1,  40,   1,  47,   1,  54,   1,  61,   1,
 68,   1,  75,   1,  82,   1,  89,   1,  96,   1, 103,   1, 110,   1, 117,
  1, 124,   1, 131,   1, 138,   1, 145,   1, 152,   1, 159,   1, 255, 255,
255, 255, 255, 255, 255, 255,   0,   0,   3,   0,   6,   0,   9,   0,  12,
  0,  15,   0,  18,   0,  21,   0,  24,   0,  27,   0,  30,   0,  33,   0,
 36,   0,  39,   0,  44,   0,  49,   0,  54,   0,  59,   0,  64,   0,  68,
  0,  73,   0,  78,   0,  83,   0,  88,   0,  93,   0,  99,   0, 105,   0,
111,   0, 117,   0, 123,   0, 129,   0, 135,   0, 141,   0, 147,   0, 153,
  0, 158,   0, 163,   0, 168,   0, 173,   0, 178,   0, 184,   0, 190,   0,
196,   0, 202,   0, 208,   0, 214,   0, 220,   0, 226,   0, 232,   0, 238,
  0, 244,   0, 250,   0,   0,   1,   6,   1,  12,   1,  18,   1,  24,   1,
 30,   1,  36,   1,  42,   1,  46,   1,  51,   1,  56,   1,  61,   1,  66,
  1,  71,   1,  75,   1,  79,   1,  83,   1,  27,  93,  49,  49,  50,   7,
  0,  27,  93,  49,  50,  59,  37, 112,  49,  37, 115,   7,   0,  27,  91,
 51,  74,   0,  27,  93,  53,  50,  59,  37, 112,  49,  37, 115,  59,  37,
112,  50,  37, 115,   7,   0,  27,  91,  50,  32, 113,   0,  27,  91,  37,
112,  49,  37, 100,  32, 113,   0,  27,  91,  51,  59,  51, 126,   0,  27,
 91,  51,  59,  52, 126,   0,  27,  91,  51,  59,  53, 126,   0,  27,  91,
 51,  59,  54, 126,   0,  27,  91,  51,  59,  55, 126,   0,  27,  91,  49,
 59,  50,  66,   0,  27,  91,  49,  59,  51,  66,   0,  27,  91,  49,  59,
 52,  66,   0,  27,  91,  49,  59,  53,  66,   0,  27,  91,  49,  59,  54,
 66,   0,  27,  91,  49,  59,  55,  66,   0,  27,  91,  49,  59,  51,  70,
  0,  27,  91,  49,  59,  52,  70,   0,  27,  91,  49,  59,  53,  70,   0,
 27,  91,  49,  59,  54,  70,   0,  27,  91,  49,  59,  55,  70,   0,  27,
 91,  49,  59,  51,  72,   0,  27,  91,  49,  59,  52,  72,   0,  27,  91,
 49,  59,  53,  72,   0,  27,  91,  49,  59,  54,  72,   0,  27,  91,  49,
 59,  55,  72,   0,  27,  91,  50,  59,  51, 126,   0,  27,  91,  50,  59,
 52, 126,   0,  27,  91,  50,  59,  53, 126,   0,  27,  91,  50,  59,  54,
126,   0,  27,  91,  50,  59,  55, 126,   0,  27,  91,  49,  59,  51,  68,
  0,  27,  91,  49,  59,  52,  68,   0,  27,  91,  49,  59,  53,  68,   0,
 27,  91,  49,  59,  54,  68,   0,  27,  91,  49,  59,  55,  68,   0,  27,
 91,  54,  59,  51, 126,   0,  27,  91,  54,  59,  52, 126,   0,  27,  91,
 54,  59,  53, 126,   0,  27,  91,  54,  59,  54, 126,   0,  27,  91,  54,
 59,  55, 126,   0,  27,  91,  53,  59,  51, 126,   0,  27,  91,  53,  59,
 52, 126,   0,  27,  91,  53,  59,  53, 126,   0,  27,  91,  53,  59,  54,
126,   0,  27,  91,  53,  59,  55, 126,   0,  27,  91,  49,  59,  51,  67,
  0,  27,  91,  49,  59,  52,  67,   0,  27,  91,  49,  59,  53,  67,   0,
 27,  91,  49,  59,  54,  67,   0,  27,  91,  49,  59,  55,  67,   0,  27,
 91,  49,  59,  50,  65,   0,  27,  91,  49,  59,  51,  65,   0,  27,  91,
 49,  59,  52,  65,   0,  27,  91,  49,  59,  53,  65,   0,  27,  91,  49,
 59,  54,  65,   0,  27,  91,  49,  59,  55,  65,   0,  65,  88,   0,  71,
 48,   0,  88,  84,   0,  85,  56,   0,  67, 114,   0,  67, 115,   0,  69,
 48,   0,  69,  51,   0,  77, 115,   0,  83,  48,   0,  83, 101,   0,  83,
115,   0,  84,  83,   0, 107,  68,  67,  51,   0, 107,  68,  67,  52,   0,
107,  68,  67,  53,   0, 107,  68,  67,  54,   0, 107,  68,  67,  55,   0,
107,  68,  78,   0, 107,  68,  78,  51,   0, 107,  68,  78,  52,   0, 107,
 68,  78,  53,   0, 107,  68,  78,  54,   0, 107,  68,  78,  55,   0, 107,
 69,  78,  68,  51,   0, 107,  69,  78,  68,  52,   0, 107,  69,  78,  68,
 53,   0, 107,  69,  78,  68,  54,   0, 107,  69,  78,  68,  55,   0, 107,
 72,  79,  77,  51,   0, 107,  72,  79,  77,  52,   0, 107,  72,  79,  77,
 53,   0, 107,  72,  79,  77,  54,   0, 107,  72,  79,  77,  55,   0, 107,
 73,  67,  51,   0, 107,  73,  67,  52,   0, 107,  73,  67,  53,   0, 107,
 73,  67,  54,   0, 107,  73,  67,  55,   0, 107,  76,  70,  84,  51,   0,
107,  76,  70,  84,  52,   0, 107,  76,  70,  84,  53,   0, 107,  76,  70,
 84,  54,   0, 107,  76,  70,  84,  55,   0, 107,  78,  88,  84,  51,   0,
107,  78,  88,  84,  52,   0, 107,  78,  88,  84,  53,   0, 107,  78,  88,
 84,  54,   0, 107,  78,  88,  84,  55,   0, 107,  80,  82,  86,  51,   0,
107,  80,  82,  86,  52,   0, 107,  80,  82,  86,  53,   0, 107,  80,  82,
 86,  54,   0, 107,  80,  82,  86,  55,   0, 107,  82,  73,  84,  51,   0,
107,  82,  73,  84,  52,   0, 107,  82,  73,  84,  53,   0, 107,  82,  73,
 84,  54,   0, 107,  82,  73,  84,  55,   0, 107,  85,  80,   0, 107,  85,
 80,  51,   0, 107,  85,  80,  52,   0, 107,  85,  80,  53,   0, 107,  85,
 80,  54,   0, 107,  85,  80,  55,   0, 107,  97,  50,   0, 107,  98,  49,
  0, 107,  98,  51,   0, 107,  99,  50,   0
];

import terminfo.d;

auto t = Terminfo(testdata);

assert(t.get(BOOL.autoLeftMargin) == false);
assert(t.get(BOOL.autoRightMargin) == true);
assert(t.get(BOOL.noEscCtlc) == false);
assert(t.get(BOOL.ceolStandoutGlitch) == false);
assert(t.get(BOOL.eatNewlineGlitch) == true);
assert(t.get(BOOL.eraseOverstrike) == false);
assert(t.get(BOOL.genericType) == false);
assert(t.get(BOOL.hardCopy) == false);
assert(t.get(BOOL.hasMetaKey) == true);
assert(t.get(BOOL.hasStatusLine) == false);
assert(t.get(BOOL.insertNullGlitch) == false);
assert(t.get(BOOL.memoryAbove) == false);
assert(t.get(BOOL.memoryBelow) == false);
assert(t.get(BOOL.moveInsertMode) == true);
assert(t.get(BOOL.moveStandoutMode) == true);
assert(t.get(BOOL.overStrike) == false);
assert(t.get(BOOL.statusLineEscOk) == false);
assert(t.get(BOOL.destTabsMagicSmso) == false);
assert(t.get(BOOL.tildeGlitch) == false);
assert(t.get(BOOL.transparentUnderline) == false);
assert(t.get(BOOL.xonXoff) == false);
assert(t.get(BOOL.needsXonXoff) == false);
assert(t.get(BOOL.prtrSilent) == true);
assert(t.get(BOOL.hardCursor) == false);
assert(t.get(BOOL.nonRevRmcup) == false);
assert(t.get(BOOL.noPadChar) == true);
assert(t.get(BOOL.nonDestScrollRegion) == false);
assert(t.get(BOOL.canChange) == false);
assert(t.get(BOOL.backColorErase) == true);
assert(t.get(BOOL.hueLightnessSaturation) == false);
assert(t.get(BOOL.colAddrGlitch) == false);
assert(t.get(BOOL.crCancelsMicroMode) == false);
assert(t.get(BOOL.hasPrintWheel) == false);
assert(t.get(BOOL.rowAddrGlitch) == false);
assert(t.get(BOOL.semiAutoRightMargin) == false);
assert(t.get(BOOL.cpiChangesRes) == false);
assert(t.get(BOOL.lpiChangesRes) == false);
assert(t.get(BOOL.backspacesWithBs) == true);
assert(t.get(BOOL.crtNoScrolling) == false);
assert(t.get(BOOL.noCorrectlyWorkingCr) == false);
assert(t.get(BOOL.gnuHasMetaKey) == false);
assert(t.get(BOOL.linefeedIsNewline) == false);
assert(t.get(BOOL.hasHardwareTabs) == false);
assert(t.get(BOOL.returnDoesClrEol) == false);

assert(t.get(NUM.columns) == 80);
assert(t.get(NUM.initTabs) == 8);
assert(t.get(NUM.lines) == 24);
assert(t.get(NUM.linesOfMemory) == 65535);
assert(t.get(NUM.magicCookieGlitch) == 65535);
assert(t.get(NUM.paddingBaudRate) == 65535);
assert(t.get(NUM.virtualTerminal) == 65535);
assert(t.get(NUM.widthStatusLine) == 65535);
assert(t.get(NUM.numLabels) == 65535);
assert(t.get(NUM.labelHeight) == 65535);
assert(t.get(NUM.labelWidth) == 65535);
assert(t.get(NUM.maxAttributes) == 65535);
assert(t.get(NUM.maximumWindows) == 65535);
assert(t.get(NUM.maxColors) == 8);
assert(t.get(NUM.maxPairs) == 64);
assert(t.get(NUM.noColorVideo) == 0);
assert(t.get(NUM.bufferCapacity) == 0);
assert(t.get(NUM.dotVertSpacing) == 0);
assert(t.get(NUM.dotHorzSpacing) == 0);
assert(t.get(NUM.maxMicroAddress) == 0);
assert(t.get(NUM.maxMicroJump) == 0);
assert(t.get(NUM.microColSize) == 0);
assert(t.get(NUM.microLineSize) == 0);
assert(t.get(NUM.numberOfPins) == 0);
assert(t.get(NUM.outputResChar) == 0);
assert(t.get(NUM.outputResLine) == 0);
assert(t.get(NUM.outputResHorzInch) == 0);
assert(t.get(NUM.outputResVertInch) == 0);
assert(t.get(NUM.printRate) == 0);
assert(t.get(NUM.wideCharSize) == 0);
assert(t.get(NUM.buttons) == 0);
assert(t.get(NUM.bitImageEntwining) == 0);
assert(t.get(NUM.bitImageType) == 0);
assert(t.get(NUM.magicCookieGlitchUl) == 0);
assert(t.get(NUM.carriageReturnDelay) == 0);
assert(t.get(NUM.newLineDelay) == 0);
assert(t.get(NUM.backspaceDelay) == 0);
assert(t.get(NUM.horizontalTabDelay) == 0);
assert(t.get(NUM.numberOfFunctionKeys) == 0);

assert(t.get(STR.backTab) == "\033[Z");
assert(t.get(STR.bell) == "\a");
assert(t.get(STR.carriageReturn) == "\r");
assert(t.get(STR.changeScrollRegion) == "\033[%i%p1%d;%p2%dr");
assert(t.get(STR.clearAllTabs) == "\033[3g");
assert(t.get(STR.clearScreen) == "\033[H\033[2J");
assert(t.get(STR.clrEol) == "\033[K");
assert(t.get(STR.clrEos) == "\033[J");
assert(t.get(STR.columnAddress) == "\033[%i%p1%dG");
assert(t.get(STR.cursorAddress) == "\033[%i%p1%d;%p2%dH");
assert(t.get(STR.cursorDown) == "\n");
assert(t.get(STR.cursorHome) == "\033[H");
assert(t.get(STR.cursorInvisible) == "\033[?25l");
assert(t.get(STR.cursorLeft) == "\b");
assert(t.get(STR.cursorNormal) == "\033[?12l\033[?25h");
assert(t.get(STR.cursorRight) == "\033[C");
assert(t.get(STR.cursorUp) == "\033[A");
assert(t.get(STR.cursorVisible) == "\033[?12;25h");
assert(t.get(STR.deleteCharacter) == "\033[P");
assert(t.get(STR.deleteLine) == "\033[M");
assert(t.get(STR.enterAltCharsetMode) == "\033(0");
assert(t.get(STR.enterBlinkMode) == "\033[5m");
assert(t.get(STR.enterBoldMode) == "\033[1m");
assert(t.get(STR.enterCaMode) == "\033[?1049h");
assert(t.get(STR.enterDimMode) == "\033[2m");
assert(t.get(STR.enterInsertMode) == "\033[4h");
assert(t.get(STR.enterSecureMode) == "\033[8m");
assert(t.get(STR.enterReverseMode) == "\033[7m");
assert(t.get(STR.enterStandoutMode) == "\033[7m");
assert(t.get(STR.enterUnderlineMode) == "\033[4m");
assert(t.get(STR.eraseChars) == "\033[%p1%dX");
assert(t.get(STR.exitAltCharsetMode) == "\033(B");
assert(t.get(STR.exitAttributeMode) == "\033(B\033[m");
assert(t.get(STR.exitCaMode) == "\033[?1049l");
assert(t.get(STR.exitInsertMode) == "\033[4l");
assert(t.get(STR.exitStandoutMode) == "\033[27m");
assert(t.get(STR.exitUnderlineMode) == "\033[24m");
assert(t.get(STR.flashScreen) == "\033[?5h$<100/>\033[?5l");
assert(t.get(STR.init2string) == "\033[!p\033[?3;4l\033[4l\033>");
assert(t.get(STR.insertLine) == "\033[L");
assert(t.get(STR.keyBackspace) == "\b");
assert(t.get(STR.keyDc) == "\033[3~");
assert(t.get(STR.keyDown) == "\033OB");
assert(t.get(STR.keyF1) == "\033OP");
assert(t.get(STR.keyF10) == "\033[21~");
assert(t.get(STR.keyF2) == "\033OQ");
assert(t.get(STR.keyF3) == "\033OR");
assert(t.get(STR.keyF4) == "\033OS");
assert(t.get(STR.keyF5) == "\033[15~");
assert(t.get(STR.keyF6) == "\033[17~");
assert(t.get(STR.keyF7) == "\033[18~");
assert(t.get(STR.keyF8) == "\033[19~");
assert(t.get(STR.keyF9) == "\033[20~");
assert(t.get(STR.keyHome) == "\033OH");
assert(t.get(STR.keyIc) == "\033[2~");
assert(t.get(STR.keyLeft) == "\033OD");
assert(t.get(STR.keyNpage) == "\033[6~");
assert(t.get(STR.keyPpage) == "\033[5~");
assert(t.get(STR.keyRight) == "\033OC");
assert(t.get(STR.keySf) == "\033[1;2B");
assert(t.get(STR.keySr) == "\033[1;2A");
assert(t.get(STR.keyUp) == "\033OA");
assert(t.get(STR.keypadLocal) == "\033[?1l\033>");
assert(t.get(STR.keypadXmit) == "\033[?1h\033=");
assert(t.get(STR.metaOff) == "\033[?1034l");
assert(t.get(STR.metaOn) == "\033[?1034h");
assert(t.get(STR.parmDch) == "\033[%p1%dP");
assert(t.get(STR.parmDeleteLine) == "\033[%p1%dM");
assert(t.get(STR.parmDownCursor) == "\033[%p1%dB");
assert(t.get(STR.parmIch) == "\033[%p1%d@");
assert(t.get(STR.parmIndex) == "\033[%p1%dS");
assert(t.get(STR.parmInsertLine) == "\033[%p1%dL");
assert(t.get(STR.parmLeftCursor) == "\033[%p1%dD");
assert(t.get(STR.parmRightCursor) == "\033[%p1%dC");
assert(t.get(STR.parmRindex) == "\033[%p1%dT");
assert(t.get(STR.parmUpCursor) == "\033[%p1%dA");
assert(t.get(STR.printScreen) == "\033[i");
assert(t.get(STR.prtrOff) == "\033[4i");
assert(t.get(STR.prtrOn) == "\033[5i");
assert(t.get(STR.reset1string) == "\033c");
assert(t.get(STR.reset2string) == "\033[!p\033[?3;4l\033[4l\033>");
assert(t.get(STR.restoreCursor) == "\0338");
assert(t.get(STR.rowAddress) == "\033[%i%p1%dd");
assert(t.get(STR.saveCursor) == "\0337");
assert(t.get(STR.scrollForward) == "
");
assert(t.get(STR.scrollReverse) == "\033M");
assert(t.get(STR.setAttributes) == "%?%p9%t\033(0%e\033(B%;\033[0%?%p6%t;1%;%?%p5%t;2%;%?%p2%t;4%;%?%p1%p3%|%t;7%;%?%p4%t;5%;%?%p7%t;8%;m");
assert(t.get(STR.setTab) == "\033H");
assert(t.get(STR.tab) == "	");
assert(t.get(STR.keyB2) == "\033OE");
assert(t.get(STR.acsChars) == "``aaffggiijjkkllmmnnooppqqrrssttuuvvwwxxyyzz{{||}}~~");
assert(t.get(STR.keyBtab) == "\033[Z");
assert(t.get(STR.enterAmMode) == "\033[?7h");
assert(t.get(STR.exitAmMode) == "\033[?7l");
assert(t.get(STR.keyEnd) == "\033OF");
assert(t.get(STR.keyEnter) == "\033OM");
assert(t.get(STR.keySdc) == "\033[3;2~");
assert(t.get(STR.keySend) == "\033[1;2F");
assert(t.get(STR.keyShome) == "\033[1;2H");
assert(t.get(STR.keySic) == "\033[2;2~");
assert(t.get(STR.keySleft) == "\033[1;2D");
assert(t.get(STR.keySnext) == "\033[6;2~");
assert(t.get(STR.keySprevious) == "\033[5;2~");
assert(t.get(STR.keySright) == "\033[1;2C");
assert(t.get(STR.keyF11) == "\033[23~");
assert(t.get(STR.keyF12) == "\033[24~");
assert(t.get(STR.keyF13) == "\033[1;2P");
assert(t.get(STR.keyF14) == "\033[1;2Q");
assert(t.get(STR.keyF15) == "\033[1;2R");
assert(t.get(STR.keyF16) == "\033[1;2S");
assert(t.get(STR.keyF17) == "\033[15;2~");
assert(t.get(STR.keyF18) == "\033[17;2~");
assert(t.get(STR.keyF19) == "\033[18;2~");
assert(t.get(STR.keyF20) == "\033[19;2~");
assert(t.get(STR.keyF21) == "\033[20;2~");
assert(t.get(STR.keyF22) == "\033[21;2~");
assert(t.get(STR.keyF23) == "\033[23;2~");
assert(t.get(STR.keyF24) == "\033[24;2~");
assert(t.get(STR.keyF25) == "\033[1;5P");
assert(t.get(STR.keyF26) == "\033[1;5Q");
assert(t.get(STR.keyF27) == "\033[1;5R");
assert(t.get(STR.keyF28) == "\033[1;5S");
assert(t.get(STR.keyF29) == "\033[15;5~");
assert(t.get(STR.keyF30) == "\033[17;5~");
assert(t.get(STR.keyF31) == "\033[18;5~");
assert(t.get(STR.keyF32) == "\033[19;5~");
assert(t.get(STR.keyF33) == "\033[20;5~");
assert(t.get(STR.keyF34) == "\033[21;5~");
assert(t.get(STR.keyF35) == "\033[23;5~");
assert(t.get(STR.keyF36) == "\033[24;5~");
assert(t.get(STR.keyF37) == "\033[1;6P");
assert(t.get(STR.keyF38) == "\033[1;6Q");
assert(t.get(STR.keyF39) == "\033[1;6R");
assert(t.get(STR.keyF40) == "\033[1;6S");
assert(t.get(STR.keyF41) == "\033[15;6~");
assert(t.get(STR.keyF42) == "\033[17;6~");
assert(t.get(STR.keyF43) == "\033[18;6~");
assert(t.get(STR.keyF44) == "\033[19;6~");
assert(t.get(STR.keyF45) == "\033[20;6~");
assert(t.get(STR.keyF46) == "\033[21;6~");
assert(t.get(STR.keyF47) == "\033[23;6~");
assert(t.get(STR.keyF48) == "\033[24;6~");
assert(t.get(STR.keyF49) == "\033[1;3P");
assert(t.get(STR.keyF50) == "\033[1;3Q");
assert(t.get(STR.keyF51) == "\033[1;3R");
assert(t.get(STR.keyF52) == "\033[1;3S");
assert(t.get(STR.keyF53) == "\033[15;3~");
assert(t.get(STR.keyF54) == "\033[17;3~");
assert(t.get(STR.keyF55) == "\033[18;3~");
assert(t.get(STR.keyF56) == "\033[19;3~");
assert(t.get(STR.keyF57) == "\033[20;3~");
assert(t.get(STR.keyF58) == "\033[21;3~");
assert(t.get(STR.keyF59) == "\033[23;3~");
assert(t.get(STR.keyF60) == "\033[24;3~");
assert(t.get(STR.keyF61) == "\033[1;4P");
assert(t.get(STR.keyF62) == "\033[1;4Q");
assert(t.get(STR.keyF63) == "\033[1;4R");
assert(t.get(STR.clrBol) == "\033[1K");
assert(t.get(STR.user6) == "\033[%i%d;%dR");
assert(t.get(STR.user7) == "\033[6n");
assert(t.get(STR.user8) == "\033[?%[;0123456789]c");
assert(t.get(STR.user9) == "\033[c");
assert(t.get(STR.origPair) == "\033[39;49m");
assert(t.get(STR.setForeground) == "\033[3%?%p1%{1}%=%t4%e%p1%{3}%=%t6%e%p1%{4}%=%t1%e%p1%{6}%=%t3%e%p1%d%;m");
assert(t.get(STR.setBackground) == "\033[4%?%p1%{1}%=%t4%e%p1%{3}%=%t6%e%p1%{4}%=%t1%e%p1%{6}%=%t3%e%p1%d%;m");
assert(t.get(STR.enterItalicsMode) == "\033[3m");
assert(t.get(STR.exitItalicsMode) == "\033[23m");
assert(t.get(STR.keyMouse) == "\033[M");
assert(t.get(STR.setAForeground) == "\033[3%p1%dm");
assert(t.get(STR.setABackground) == "\033[4%p1%dm");
assert(t.get(STR.memoryLock) == "\033l");
assert(t.get(STR.memoryUnlock) == "\033m");
}
