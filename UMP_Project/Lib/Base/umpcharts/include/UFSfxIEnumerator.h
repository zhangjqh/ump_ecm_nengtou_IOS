//
//  Created by 宋永强 on 11-7-14.
//
//


@protocol UFSfxIEnumerator <NSObject>

/**
* @brief 获取集合中的当前元素。
*/
- (id)getCurrent;

/**
* @brief  将枚举数设置为其初始位置，该位置位于集合中第一个元素之前。
*/
- (void)reset;

/**
* @brief 将枚举数推进到集合的下一个元素。
* @return 如果枚举数成功地推进到下一个元素，则为 YES；如果枚举数越过集合的结尾，则为 NO。
*/
- (BOOL)moveNext;


@end