//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>

enum {
  JSONParseOptionNone                     = 0,
  JSONParseOptionStrict                   = 0,
  JSONParseOptionComments                 = (1 << 0),
  JSONParseOptionUnicodeNewlines          = (1 << 1),
  JSONParseOptionLooseUnicode             = (1 << 2),
  JSONParseOptionPermitTextAfterValidJSON = (1 << 3),
  JSONParseOptionValidFlags               = (JSONParseOptionComments | JSONParseOptionUnicodeNewlines | JSONParseOptionLooseUnicode | JSONParseOptionPermitTextAfterValidJSON),
};
typedef NSUInteger JSONParseOptionFlags;

enum {
  JSONSerializeOptionNone                 = 0,
  JSONSerializeOptionPretty               = (1 << 0),
  JSONSerializeOptionEscapeUnicode        = (1 << 1),
  JSONSerializeOptionEscapeForwardSlashes = (1 << 4),
  JSONSerializeOptionValidFlags           = (JSONSerializeOptionPretty | JSONSerializeOptionEscapeUnicode | JSONSerializeOptionEscapeForwardSlashes),
};
typedef NSUInteger JSONSerializeOptionFlags;

typedef enum
{
    DATATYPE_BINARY = 4,
    DATATYPE_BOOLEAN = 2,
    DATATYPE_BYTE = 6,
    DATATYPE_CHAR = 5,
    DATATYPE_DATE = 14,
    DATATYPE_DATETIME = 0x10,
    DATATYPE_DECIMAL = 11,
    DATATYPE_DOUBLE = 13,
    DATATYPE_FLOAT = 12,
    DATATYPE_INT = 8,
    DATATYPE_INTEGER = 10,
    DATATYPE_LIST = 0x11,
    DATATYPE_LONG = 9,
    DATATYPE_OBJECT = 1,
    DATATYPE_SHORT = 7,
    DATATYPE_STRING = 3,
    DATATYPE_TIME = 15,
    DATATYPE_VOID = 0,
} UMPDateTypeCode;

typedef enum
{
	Pending_NO      = 'N',
	Pending_Create   = 'C',
	Pending_Update   = 'U',
	Pending_Delete   = 'D',
	Pending_Parent = 'P',
} UMPEntityPendingState;

typedef enum {
    CascadeType_None = 0,
    CascadeType_Delete = 1,
    CascadeType_Remove = CascadeType_Delete << 1,
    CascadeType_Refresh = CascadeType_Remove << 1,
    CascadeType_All = CascadeType_Delete | CascadeType_Remove | CascadeType_Refresh
} UMPCascadeType;

typedef enum {
    Parameter_Positional = 0x0001,
    Parameter_Named = 0x0002,
    Parameter_List = 0x0010,
} UMPParameterFlags;

typedef enum {
    JoinType_Inner = 1,
    JoinType_LeftJoin = 2
} UFSfxJoinType;

typedef enum {
    SortOrder_Asc = 1,
    SortOrder_Desc = 2,
} UFSfxSortOrderType;

