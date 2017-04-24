//
//  MnemonicSymbol.h
//  DyTest
//
//  Created by zhangnan on 13-11-4.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#ifndef DyTest_MnemonicSymbol_h
#define DyTest_MnemonicSymbol_h

typedef enum _MnemonicSymbol {
	CREATE = 0x11,
	MOVE = 2,
	EVENT = 3,
	ADD = 4,
	REMOVE = 5,
	UPDATE = 6,
	IIF = 7,
	RETURN = 8,
    FUNCTION_BEGIN = 9,
    FUNCTION_END = 10,
    ACTION = 11,
}MnemonicSymbol;

#endif
