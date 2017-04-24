//
//  SymbolTable.h
//  DyTest
//
//  Created by zhangnan on 13-11-4.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

class SymbolTable{
private:
    static  long long serialVersionUID;
    NSMutableDictionary* muDict;
public:
    SymbolTable();
    ~SymbolTable();
    void setObjectForKey(id anObject, id <NSCopying> aKey);
    id objectForKey(id aKey);
};
