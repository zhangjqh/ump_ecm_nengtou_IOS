/*!
 @header WARowItemParser.m
 @abstract 动态项解析类
 @author Created by Li Xiaopeng on 12-9-22.
 @version 1.00 2012/9/22 Creation (此文档的版本信息)
 */
#import "WARowItemDef.h"
#import "AppDelegate.h"
#import "WARowItemParser.h"
#import "WACheckboxStyle2Cell.h"
#import "WAStyleValue2Cell.h"
#import "WAStyleValue1Cell.h"
#import "WAStyleValue3Cell.h"
#import "WAFreeItemStyle1Cell.h"
#import "WAFreeItemStyle2Cell.h"
#import "WAItem4Cell.h"
#import <QuartzCore/CALayer.h>
#import "WAItemStyleVO.h"

#define WA_SEARCH_SECTIONFONT     @"STHeitiSC-Medium"
#define WA_SEARCHCLUE_SECTIONFONTSIZE 16
#define ROW_ITEM_HTTP @"http"
#define ROW_ITEM_HTTPPRESTR @"http://"

static CWARowItemParser* sharedInstance = nil;

@implementation CWARowItemParser
@synthesize iStyleDic;

@synthesize iReferDelegate;

+(CWARowItemParser*)sharedManager
{
  @synchronized(self) 
  { 
    if(sharedInstance == nil)
      sharedInstance = [[self alloc]init];
  }
  return sharedInstance;
}

+(CWARowItemParser*)sharedManagerWithstyleDic:(NSMutableDictionary *) styleDic
{
  if ([CWARowItemParser sharedManager])
  {
    if ([sharedInstance.iStyleDic count] == 0)
    {
       sharedInstance.IStyleDic = styleDic;
    }
   
  }
  return sharedInstance;
}

+(void) resetStyleDic
{
  sharedInstance.iStyleDic = nil;
}
-(id)init
{
  if (self = [super init]) 
  {
    iContactUtil = [[WAContactUtil alloc] init];
  }
  return self;
}


-(CWARowVO*) rowVOWithRowDic:(NSDictionary*)aDic
{
  CWARowVO* rowVO = [[CWARowVO alloc] init] ;
  
  //解析row结构
  if ([aDic valueForKey:ROW_ITEM_STYLE]) 
  {
    rowVO.iStyle = [aDic valueForKey:ROW_ITEM_STYLE];
  } 
  else 
  {
    return nil;
  }
  
  NSArray* items = [aDic valueForKey:ROW_ITEM_ITEM];
  
  if (items) 
  {
    //解析item结构
    for (NSDictionary* itemDic in items) 
    {
      CWAItemVO* itemVO = [[CWAItemVO alloc] init];
      itemVO.iMode = [itemDic valueForKey:ROW_ITEM_MODE];
      itemVO.iReadOnly = [itemDic valueForKey:ROW_ITEM_READ_ONLY];
      itemVO.iValue = [itemDic valueForKey:ROW_ITEM_VALUE];
      
      itemVO.iReferId = [itemDic valueForKey:ROW_ITEM_REFER_ID];
      itemVO.iReferType = [itemDic valueForKey:ROW_ITEM_REFER_TYPE];
      itemVO.iCheckStatus = [itemDic valueForKey:ROW_ITEM_CHECK_STATUS];
      
      [rowVO.iItemVOArray addObject:itemVO];
    }
  } 
  else 
  {
    return nil;
  }

  return rowVO;
}

-(CGFloat)heightForRowWithRowVO:(CWARowVO*)aRowVO
{
  CGFloat rowHight = 0;
  NSString* style = aRowVO.iStyle;
  NSInteger rowStyle = 0;
  if (style) 
  {
    rowStyle = [style integerValue];
  }
  switch (rowStyle) 
  {
    case 0:
      {
        if ([aRowVO.iItemVOArray count]>1)
        {
          CWAItemVO* itemVO = [aRowVO.iItemVOArray objectAtIndex:1];
          NSString* mode = itemVO.iMode;
          //如果是富文本框则返回142
          if ([mode isEqualToString:ROW_ITEM_TEXT_AREA])
          {
            rowHight = 142;
          }
          else
          {
            rowHight = 50.0f;
          }
        }
        else
        {
          rowHight = 44.0f;
        }
      }
      break;
    case 1:
      rowHight = 44.0f;
      break;
    case 2:
      rowHight = 44.0f;
      break;
    case 3:
      rowHight = 44.0f;
      break;
    //此为双行自由项，高度为88
    case 4:
      rowHight = 88.0f;
      break;
    default:
      break;
  }
  return rowHight;
  
}
#pragma mark - parseRowItemWithTableView(new)
-(UITableViewCell*)parseRowItemWithTableView:(UITableView *)aTableView 
                                    andRowVO:(CWARowVO*)aRowVO
{
  UITableViewCell* cell = nil;
  NSArray* itemVOArray = aRowVO.iItemVOArray;
  NSInteger rowStyle = 0;
  NSString* style = aRowVO.iStyle;
  if (style) 
  {
    rowStyle = [style integerValue];
  }
  //首先根据row的style进行解析，如果不为0则可以直接确定cell的类型
  switch (rowStyle) 
  {
    case 0:
      cell = [self parseRowStyleValue0CellWithTableView:aTableView
                                               andArray:itemVOArray];
      break;
    case 1:
      cell = [self parseRowStyleValue1CellWithTableView:aTableView
                                               andArray:itemVOArray];
      break;
    case 2:
      cell = [self parseRowStyleValue2CellWithTableView:aTableView
                                               andArray:itemVOArray];
      break;
    case 3:
      cell = [self parseRowStyleValue3CellWithTableView:aTableView
                                               andArray:itemVOArray];
      
      break;
    case 4:
      cell = [self parseRowStyleValue4CellWithTableView:aTableView
                                               andArray:itemVOArray];
      
      break;
      
    default:
      break;
  }
  //没有得到cell，则返回数据格式错误的cell
  if (!cell) 
  {
    cell = [self cellForWrongDataFormatWithTableView:aTableView];
  }
  return cell;
}

-(UITableViewCell*)parseRowStyleValue0CellWithTableView:(UITableView *)aTableView
                                               andArray:(NSArray*)aItemVOArray
{
  UITableViewCell* cell = nil;
  NSInteger itemNum = [aItemVOArray count];
  //item值只能为2，否则数据格式错误
  if (itemNum == 2) 
  {
    CWAItemVO* itemVO = [aItemVOArray objectAtIndex:1];
    NSString* isReadOnly = itemVO.iReadOnly;
    //区分cell是编辑态还是查看态
    if ([isReadOnly isEqualToString:ROW_ITEM_YES]) 
    {
      cell = [self parseReadOnlyCellWithTableView:aTableView 
                                         andArray:aItemVOArray];
    } 
    else 
    {
      cell = [self parseEditCellWithTableView:aTableView 
                                     andArray:aItemVOArray];
            
    }
  }
  else if (itemNum == 5)
  {
    cell = [self parseReadOnlyCellWithTableView:aTableView
                                       andArray:aItemVOArray];
  }
  return cell;
}

-(UITableViewCell*)parseRowStyleValue1CellWithTableView:(UITableView *)aTableView
                                               andArray:(NSArray*)aItemVOArray
                                             
{
  UITableViewCell* cell = nil;
//  NSString *CellIdentifier = @"WACheckboxStyle1Cell";
//  cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
  NSInteger itemNum = [aItemVOArray count];
  if (cell == nil) 
  {
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WACheckboxStyle1Cell" owner:nil options:nil];
    cell = [array objectAtIndex:0];
  }
  cell.userInteractionEnabled = NO;
//  UILabel *HeaderLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, 120, 25)];
//    HeaderLabel.text = @"123456";
//    
//    UILabel *HeaderLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(120, 10, 120, 25)];
//    HeaderLabel2.text = @"tongzhimenhao";
//    
//    [cell addSubview:HeaderLabel];
//    [cell addSubview:HeaderLabel2];
    switch (itemNum) 
    {
      //只有一组内容的checkbox
      case 1:
         {
           UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(90, 10, 90, 25)];
           CWAItemVO* itemVO = [aItemVOArray objectAtIndex:0];
           @try
           {
             textLabel.text = itemVO.iValue;
           }
           @catch (NSException *exception)
           {
             textLabel.text = WA_ROWITEMSTRING_EMPTYSTR;
           }
           @finally
           {
             ;
           }
           UIFont * font =[UIFont fontWithName:WA_SEARCH_SECTIONFONT 
                                          size:WA_SEARCHCLUE_SECTIONFONTSIZE];
           
           if (font !=nil)
           {
             [textLabel setFont:font];
           }
           textLabel.backgroundColor = [UIColor clearColor];
           
           [cell addSubview:textLabel];
           if ([itemVO.iCheckStatus isEqualToString:ROW_ITEM_YES])
           {
             UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(210, 0, 20, 44)];
             UIImage* image = [UIImage imageNamed:@"rowitem-freeitem-check-red.png"];
             imageView.image = image;
             [cell addSubview:imageView];
           }
         }
        break;
      //有两组内容的checkbox
      case 2:
        {
          for (int i =0;  i < 2; i++) 
          {
            UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(60 + i*100, 10, 50, 25)];
            CWAItemVO* itemVO = [aItemVOArray objectAtIndex:i];
            @try
            {
              textLabel.text = itemVO.iValue;
            }
            @catch (NSException *exception)
            {
              textLabel.text = WA_ROWITEMSTRING_EMPTYSTR;
            }
            @finally
            {
              ;
            }
            UIFont * font =[UIFont fontWithName:WA_SEARCH_SECTIONFONT 
                                           size:WA_SEARCHCLUE_SECTIONFONTSIZE];
            
            if (font !=nil)
            {
              [textLabel setFont:font];
            }
            textLabel.backgroundColor = [UIColor clearColor];
            [cell addSubview:textLabel];

          }
          
          for (int i =0;  i < 2; i++) 
          {
            CWAItemVO* itemVO = [aItemVOArray objectAtIndex:i];
            if ([itemVO.iCheckStatus isEqualToString:ROW_ITEM_YES])
            {
              UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(110 + i*100, 0, 20, 44)];
              UIImage* image = [UIImage imageNamed:@"rowitem-freeitem-check-red.png"];
              imageView.image = image;
              [cell addSubview:imageView];

            }
          }
        
        }
                
        break;
      //有三组内容的checkbox
      case 3:
        {
          for (int i =0;  i < 3; i++) 
          {
            UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(30 + i*100, 10, 40, 25)];
            CWAItemVO* itemVO = [aItemVOArray objectAtIndex:i];
            @try
            {
              textLabel.text = itemVO.iValue;
            }
            @catch (NSException *exception)
            {
              textLabel.text = WA_ROWITEMSTRING_EMPTYSTR;
            }
            @finally
            {
              ;
            }
            UIFont * font =[UIFont fontWithName:WA_SEARCH_SECTIONFONT 
                                           size:WA_SEARCHCLUE_SECTIONFONTSIZE];
            
            if (font !=nil)
            {
              [textLabel setFont:font];
            }
            textLabel.backgroundColor = [UIColor clearColor];
            [cell addSubview:textLabel];

          }
          
          for (int i =0;  i < 3; i++) 
          {
            CWAItemVO* itemVO = [aItemVOArray objectAtIndex:i];
            if ([itemVO.iCheckStatus isEqualToString:ROW_ITEM_YES])
            {
              UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(70 + i*100, 0, 20, 44)];
              UIImage* image = [UIImage imageNamed:@"rowitem-freeitem-check-red.png"];
              imageView.image = image;
              [cell addSubview:imageView];

            }
          }
        
        }
        
        break;
        
      default:
        break;
    }

  
  return cell;
}

-(UITableViewCell*)parseRowStyleValue2CellWithTableView:(UITableView *)aTableView
                                               andArray:(NSArray*)aItemVOArray
                                          
{
  UITableViewCell* cell = nil;
  cell = [self parseCheckboxStyle2CellWithTableView:aTableView 
                                           andArray:aItemVOArray];
  cell.userInteractionEnabled = NO;
  return cell;
}

-(UITableViewCell*)parseRowStyleValue3CellWithTableView:(UITableView *)aTableView
                                               andArray:(NSArray*)aItemVOArray
                                             
{
  UITableViewCell* cell = nil;
  
//  NSString *CellIdentifier = @"WAFreeItemStyle1Cell";
//  cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) 
  {
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAFreeItemStyle1Cell" owner:nil options:nil];
    cell = [array objectAtIndex:0];
  }
  cell.userInteractionEnabled = NO;
    
  UIImageView* backGroundView = [[UIImageView alloc]init];
  [backGroundView setImage:[UIImage imageNamed:@"rowitem-freeitem-bg"]];
  [cell setBackgroundView:backGroundView];

  
  CGFloat totleWidth = 0;
  CGFloat width = 0;
  CGFloat startPos = 14;
  
  NSInteger itemNum = [aItemVOArray count];
  for (int i = 0; i < itemNum; i++) 
  {
    CWAItemVO* itemVO = [aItemVOArray objectAtIndex:i];
    
    UILabel *textLabel = [[UILabel alloc] init];
    @try
    {
      textLabel.text = itemVO.iValue;
    }
    @catch (NSException *exception) 
    {
      textLabel.text = WA_ROWITEMSTRING_EMPTYSTR;
    }
    @finally
    {
      ;
    }
    textLabel.backgroundColor = [UIColor clearColor];
    [textLabel sizeToFit];

    width = textLabel.bounds.size.width;
    textLabel.frame = CGRectMake(startPos , 0,width, 44);
    [((CWAFreeItemStyle1Cell*)cell).iScrollView addSubview:textLabel];

    
    startPos += width;
    totleWidth += width;
    
    UIImageView* lineView = [[UIImageView alloc] initWithFrame:CGRectMake(startPos , 0, 30, 44)];
    startPos+=30;
    totleWidth += 30;
    [lineView setImage:[UIImage imageNamed:@"rowitem-freeitem-line"]];
    [((CWAFreeItemStyle2Cell*)cell).iScrollView addSubview:lineView];

    
  }
  ((CWAFreeItemStyle1Cell*)cell).iScrollView.contentSize = CGSizeMake(totleWidth,44);
    
  return cell;
}

-(UITableViewCell*)parseRowStyleValue4CellWithTableView:(UITableView *)aTableView
                                               andArray:(NSArray*)aItemVOArray
                                            
{
  UITableViewCell* cell = nil;
//  NSString *CellIdentifier = @"WAFreeItemStyle2Cell";
//  cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];

  if (cell == nil) 
  {
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAFreeItemStyle2Cell" owner:nil options:nil];
    cell = [array objectAtIndex:0];
  }
  cell.userInteractionEnabled = YES;
    
  UIImageView* backGroundView = [[UIImageView alloc]init];
  [backGroundView setImage:[UIImage imageNamed:@"rowitem-freeitem-bg"]];
  [cell setBackgroundView:backGroundView];

  
  UIImageView* scrollViewBG = [[UIImageView alloc] initWithFrame:CGRectMake(0 , 0, 1500, 88)];
  [scrollViewBG setImage:[UIImage imageNamed:@"rowitem-freeitem-bg-line"]];
  [((CWAFreeItemStyle2Cell*)cell).iScrollView addSubview:scrollViewBG];

   
  CGFloat totleWidth = 0;
  
  CGFloat width = 0;
  CGFloat startPos = 14;
  NSInteger itemNum = [aItemVOArray count];
  for (int i = 0; i <  itemNum; i++) 
  {
    
    
    CWAItemVO* topItemVO = [aItemVOArray objectAtIndex:i++];
    
    UILabel *topTextLabel = [[UILabel alloc] init];
    topTextLabel.backgroundColor = [UIColor clearColor];
    @try
    {
      topTextLabel.text = topItemVO.iValue;
    }
    @catch (NSException *exception)
    {
      topTextLabel.text = WA_ROWITEMSTRING_EMPTYSTR;
    }
    @finally
    {
      ;
    }
    
    [topTextLabel sizeToFit];
    
    UILabel *bottomLabel = [[UILabel alloc] init];
    bottomLabel.backgroundColor = [UIColor clearColor];
    CWAItemVO* bottomItemVO = [aItemVOArray objectAtIndex:i];
    
    @try
    {
      bottomLabel.text = bottomItemVO.iValue;
    }
    @catch (NSException *exception)
    {
      bottomLabel.text = WA_ROWITEMSTRING_EMPTYSTR;
    }
    @finally
    {
      ;
    }
    [bottomLabel sizeToFit];
    
    CGFloat topWidth = topTextLabel.bounds.size.width;
    CGFloat bottomWidth = bottomLabel.bounds.size.width;
    if (topWidth <= bottomWidth) 
    {
      width = bottomWidth;
    } 
    else 
    {
      width = topWidth;
            
    }
    topTextLabel.frame = CGRectMake(startPos , 0,width, 44);
    bottomLabel.frame = CGRectMake(startPos , 44, width, 44);
    topTextLabel.textAlignment = NSTextAlignmentCenter;
    bottomLabel.textAlignment = NSTextAlignmentCenter;
      
    [((CWAFreeItemStyle2Cell*)cell).iScrollView addSubview:topTextLabel];

    
    [((CWAFreeItemStyle2Cell*)cell).iScrollView addSubview:bottomLabel];

    
    startPos += width;
    totleWidth += width;
    
    UIImageView* lineView = [[UIImageView alloc] initWithFrame:CGRectMake(startPos , 0, 30, 88)];
    startPos+=30;
    totleWidth += 30;
    [lineView setImage:[UIImage imageNamed:@"rowitem-freeitem-line-high"]];
    [((CWAFreeItemStyle2Cell*)cell).iScrollView addSubview:lineView];

    
  }
  ((CWAFreeItemStyle2Cell*)cell).iScrollView.contentSize = CGSizeMake(totleWidth,88);
    
  
  return cell;
}


#pragma mark - parseEditCellWithTableView

-(UITableViewCell*)parseEditCellWithTableView:(UITableView *)aTableView 
                                       andArray:(NSArray*)aItemVOArray 
                                
{
  UITableViewCell* cell = nil;
  CWAItemVO* itemVO = [aItemVOArray objectAtIndex:1];
  NSString* mode = itemVO.iMode;
  
  if ([mode isEqualToString:ROW_ITEM_CHECK_BOX]) 
  {
    cell = [self pareEditCheckBoxCellWithTableView:aTableView
                              andArray:aItemVOArray];
  } 
  else if ([mode isEqualToString:ROW_ITEM_TEXT_AREA])
  {
    cell = [self parseEditTextAreaCellWithTableView:aTableView 
                                       andArray:aItemVOArray];
    return cell;
  }
  else 
  {
    cell = [self parseEditTextCellWithTableView:aTableView 
                                       andArray:aItemVOArray];
    return cell;

  }
  return cell;
}

-(UITableViewCell*)pareEditCheckBoxCellWithTableView:(UITableView *)aTableView
                                            andArray:(NSArray*)aItemVOArray
                                      
{
  UITableViewCell* cell = nil;
  
  return cell;
}

-(UITableViewCell*)parseEditTextAreaCellWithTableView:(UITableView *)aTableView
                                         andArray:(NSArray*)aItemVOArray 
                                      
{
  UITableViewCell* cell = nil;
  cell = [self parseStyleValue3CellWithTableView:aTableView 
                                        andArray:aItemVOArray
                                 andIsEditable:YES];
  return cell;
}

-(UITableViewCell*)parseEditTextCellWithTableView:(UITableView *)aTableView
                                         andArray:(NSArray*)aItemVOArray 
                            
{
  UITableViewCell* cell = nil;
  
  NSInteger itemNum = [aItemVOArray count];
  if (itemNum == 2) 
  {
    CWAItemVO* itemVO = [aItemVOArray objectAtIndex:1];
    NSString* mode = itemVO.iMode;
    if ([mode isEqualToString:ROW_ITEM_TEXT]) 
    {
      cell = [self parseStyleValue1CellWithTableView:aTableView 
                                            andArray:aItemVOArray
                                      andKeyboardType:UIKeyboardTypeDefault];
      
    } 
    else if ([mode isEqualToString:ROW_ITEM_REFER])
    {
      cell = [self parseStyleValue1CellWithTableView:aTableView 
                                            andArray:aItemVOArray
                                      andKeyboardType:UIKeyboardTypeDefault];
    }
    else if ([mode isEqualToString:ROW_ITEM_DATE])
    {
      cell = [self parseStyleValue1CellWithTableView:aTableView 
                                            andArray:aItemVOArray
                                      andKeyboardType:UIKeyboardTypeDefault];
    }
    else if ([mode isEqualToString:ROW_ITEM_CELLPHONE])
    {
      cell = [self parseStyleValue1CellWithTableView:aTableView 
                                            andArray:aItemVOArray
                                      andKeyboardType:UIKeyboardTypePhonePad];
    }
    else if ([mode isEqualToString:ROW_ITEM_TELPHONE])
    {
      cell = [self parseStyleValue1CellWithTableView:aTableView 
                                            andArray:aItemVOArray
                                     andKeyboardType:UIKeyboardTypePhonePad];
    }
    else if ([mode isEqualToString:ROW_ITEM_EMAIL])
    {
      cell = [self parseStyleValue1CellWithTableView:aTableView 
                                            andArray:aItemVOArray
                                      andKeyboardType:UIKeyboardTypeEmailAddress];
    }
    else if ([mode isEqualToString:ROW_ITEM_NUM])
    {
      cell = [self parseStyleValue1CellWithTableView:aTableView 
                                            andArray:aItemVOArray
                                      andKeyboardType:UIKeyboardTypeNumberPad];
    }
    else if ([mode isEqualToString:ROW_ITEM_PERCENT])
    {
      cell = [self parseStyleValue1CellWithTableView:aTableView 
                                            andArray:aItemVOArray
                                      andKeyboardType:UIKeyboardTypeDefault];
    }
  }
  else 
  {
    return cell;
  }
  
  return cell;
}

-(UITableViewCell*)parseStyleValue1CellWithTableView:(UITableView *)aTableView 
                                            andArray:(NSArray*)aItemVOArray
                                        andKeyboardType:(UIKeyboardType)aKeyboardType
                                     
{
  UITableViewCell* cell = nil;
  
  NSString *CellIdentifier = @"WAStyleValue1Cell";
  cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
  
  if (cell == nil) 
  {
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAStyleValue1Cell" owner:nil options:nil];
    cell = [array objectAtIndex:0];
  }
  CWAItemVO* itemVO = [aItemVOArray objectAtIndex:0];
  @try
  {
    ((CWAStyleValue1Cell*)cell).iKey.text = itemVO.iValue;
  }
  @catch (NSException *exception)
  {
    ((CWAStyleValue1Cell*)cell).iKey.text = WA_ROWITEMSTRING_EMPTYSTR;
  }
  @finally
  {
    ;
  }
  ((CWAStyleValue1Cell*)cell).iValue.keyboardType = aKeyboardType;
  
  return cell;
}

-(UITableViewCell*)parseStyleValue3CellWithTableView:(UITableView *)aTableView 
                                            andArray:(NSArray*)aItemVOArray
                                     andIsEditable:(BOOL)aIsEditable
                                    
{
  UITableViewCell* cell = nil;
  
  NSString *CellIdentifier = @"WAStyleValue3Cell";
  cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
  
  if (cell == nil) 
  {
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAStyleValue3Cell" owner:nil options:nil];
    cell = [array objectAtIndex:0];
  }
  //NSDictionary* itemDic1 = [aArray objectAtIndex:0];
  CWAItemVO* itemKeyVO = [aItemVOArray objectAtIndex:0];
  CWAItemVO* itemValueVO = [aItemVOArray objectAtIndex:1];
  
  ((CWAStyleValue3Cell*)cell).iTextView.text= 
  [[itemKeyVO.iValue stringByAppendingString:@":  "] stringByAppendingString:itemValueVO.iValue]; 
  if (aIsEditable) 
  {
    [((CWAStyleValue3Cell*)cell) registDelegate];
  }
  ((CWAStyleValue3Cell*)cell).iTextView.editable = aIsEditable;
  
  ((CWAStyleValue3Cell*)cell).iTextView.backgroundColor = [UIColor clearColor];
  
  return cell;
}


#pragma mark - parseShowCellWithTableView
-(UITableViewCell*)parseReadOnlyCellWithTableView:(UITableView *)aTableView 
                                       andArray:(NSArray*)aItemVOArray 
                                
{
  UITableViewCell* cell = nil;
  
  NSInteger itemNum = [aItemVOArray count];
  if (itemNum == 2) 
  {
    CWAItemVO* itemVO = [aItemVOArray objectAtIndex:1];
    NSString* mode = itemVO.iMode;
    //checkbox
    if ([mode isEqualToString:ROW_ITEM_CHECK_BOX]) 
    {
      cell = [self pareShowCheckBoxCellWithTableView:aTableView
                                            andArray:aItemVOArray];
    } 
    //富文本框
    else if ([mode isEqualToString:ROW_ITEM_TEXT_AREA])
    {
      cell = [self parseShowTextAreaCellWithTableView:aTableView 
                                         andArray:aItemVOArray];
      return cell;
    }
    else 
    {
      cell = [self parseShowTextCellWithTableView:aTableView 
                                         andArray:aItemVOArray];
      return cell;
      
    }

  }
  else 
  {
    cell = [self parseShowTextCellWithTableView:aTableView
                                       andArray:aItemVOArray];
    return cell;
  }
  
  return cell;
}

-(UITableViewCell*)pareShowCheckBoxCellWithTableView:(UITableView *)aTableView
                                         andArray:(NSArray*)aItemVOArray 
                                  
{
  UITableViewCell* cell = nil;
  return cell;
}

-(UITableViewCell*)parseShowTextAreaCellWithTableView:(UITableView *)aTableView
                                            andArray:(NSArray*)aItemVOArray 
                                       
{
  UITableViewCell* cell = nil;
  cell = [self parseStyleValue3CellWithTableView:aTableView 
                                        andArray:aItemVOArray
                                   andIsEditable:NO];
  return cell;
}

-(UITableViewCell*)parseShowTextCellWithTableView:(UITableView *)aTableView
                                             andArray:(NSArray*)aItemVOArray 
                                       
{
  UITableViewCell* cell = nil;
  
  NSInteger itemNum = [aItemVOArray count];
  
  @try
  {
    if (itemNum == 2)
    {
      CWAItemVO* itemVO = [aItemVOArray objectAtIndex:1];
      NSString* mode = itemVO.iMode;
      NSString *value = itemVO.iValue;
      //根据mode轮询出合适的cell
      if ([mode isEqualToString:ROW_ITEM_TEXT])
      {
        cell = [self parseStyleValue2CellWithTableView:aTableView
                                              andArray:aItemVOArray];
        cell.accessoryType = UITableViewCellAccessoryNone;
        ((CWAStyleValue2Cell*)cell).iImage.hidden = YES;
        
        
        cell.userInteractionEnabled = NO;
        
      }
      else if ([mode isEqualToString:ROW_ITEM_DATE])
      {
        cell = [self parseStyleValue2CellWithTableView:aTableView
                                              andArray:aItemVOArray];
        cell.userInteractionEnabled = NO;
        cell.accessoryType = UITableViewCellAccessoryNone;
        ((CWAStyleValue2Cell*)cell).iImage.hidden = YES;
      }
      else if ([mode isEqualToString:ROW_ITEM_REFER])
      {
        cell = [self parseStyleValue2CellWithTableView:aTableView
                                              andArray:aItemVOArray];
        CWAItemVO* itemVOValue = [aItemVOArray objectAtIndex:1];
        if (itemVOValue.iReferId && itemVOValue.iReferType &&
            ![itemVOValue.iReferId isEqualToString:@""] && ![itemVOValue.iReferType isEqualToString:@""])
        {
          cell.selectionStyle = UITableViewCellSelectionStyleBlue;
          cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
          ((CWAStyleValue2Cell*)cell).iImage.hidden = YES;
          cell.userInteractionEnabled = YES;
        }
        else
        {
          cell.selectionStyle = UITableViewCellSelectionStyleNone;
          cell.accessoryType = UITableViewCellAccessoryNone;
          ((CWAStyleValue2Cell*)cell).iImage.hidden = YES;
          cell.userInteractionEnabled = NO;
        }
        
      }
      
      else if ([mode isEqualToString:ROW_ITEM_CELLPHONE])
      {
        cell = [self parseStyleValue2CellWithTableView:aTableView
                                              andArray:aItemVOArray];
        cell.accessoryType = UITableViewCellAccessoryNone;
        ((CWAStyleValue2Cell*)cell).iImage.hidden = NO;
        ((CWAStyleValue2Cell*)cell).iImage.backgroundColor = [UIColor clearColor];
        //如果联系方式为空，则不可以有点击响应
        [((CWAStyleValue2Cell*)cell).iImage setImage:[UIImage imageNamed:CONTACT_CELL_IMAGE]];
        if (value && ![value isEqualToString:@""] && ![value isEqualToString:@"空"] )
        {
          cell.userInteractionEnabled = YES;
        }
        else
        {
          cell.userInteractionEnabled = NO;
        }
      }
      else if ([mode isEqualToString:ROW_ITEM_TELPHONE])
      {
        cell = [self parseStyleValue2CellWithTableView:aTableView
                                              andArray:aItemVOArray];
        cell.accessoryType = UITableViewCellAccessoryNone;
        ((CWAStyleValue2Cell*)cell).iImage.hidden = NO;
        ((CWAStyleValue2Cell*)cell).iImage.backgroundColor = [UIColor clearColor];
        [((CWAStyleValue2Cell*)cell).iImage setImage:[UIImage imageNamed:CONTACT_TELPHONE_IMAGE]];
        //如果联系方式为空，则不可以有点击响应
        if (value && ![value isEqualToString:@""] && ![value isEqualToString:@"空"] )
        {
          cell.userInteractionEnabled = YES;
        }
        else
        {
          cell.userInteractionEnabled = NO;
        }
      }
      
      else if ([mode isEqualToString:ROW_ITEM_WEB])
      {
        cell = [self parseStyleValue2CellWithTableView:aTableView
                                              andArray:aItemVOArray];
        cell.accessoryType = UITableViewCellAccessoryNone;
        ((CWAStyleValue2Cell*)cell).iImage.hidden = NO;
        ((CWAStyleValue2Cell*)cell).iImage.backgroundColor = [UIColor clearColor];
        //[((CWAStyleValue2Cell*)cell).iImage setImage:[UIImage imageNamed:CONTACT_TELPHONE_IMAGE]];
        //如果联系方式为空，则不可以有点击响应
        if (value && ![value isEqualToString:@""] && ![value isEqualToString:@"空"] )
        {
          cell.userInteractionEnabled = YES;
        }
        else
        {
          cell.userInteractionEnabled = NO;
        }
      }
      
      else if ([mode isEqualToString:ROW_ITEM_EMAIL])
      {
        cell = [self parseStyleValue2CellWithTableView:aTableView
                                              andArray:aItemVOArray];
        cell.accessoryType = UITableViewCellAccessoryNone;
        ((CWAStyleValue2Cell*)cell).iImage.hidden = NO;
        ((CWAStyleValue2Cell*)cell).iImage.backgroundColor = [UIColor clearColor];
        [((CWAStyleValue2Cell*)cell).iImage setImage:[UIImage imageNamed:CONTACT_EMAIL_IMAGE]];
        //如果联系方式为空，则不可以有点击响应
        if (value && ![value isEqualToString:@""] && ![value isEqualToString:@"空"] )
        {
          cell.userInteractionEnabled = YES;
        }
        else
        {
          cell.userInteractionEnabled = NO;
        }
      }
      else if ([mode isEqualToString:ROW_ITEM_NUM])
      {
        cell = [self parseStyleValue2CellWithTableView:aTableView
                                              andArray:aItemVOArray];
        cell.userInteractionEnabled = NO;
        cell.accessoryType = UITableViewCellAccessoryNone;
        ((CWAStyleValue2Cell*)cell).iImage.hidden = YES;
      }
      else if ([mode isEqualToString:ROW_ITEM_PERCENT])
      {
        cell = [self parseStyleValue2CellWithTableView:aTableView
                                              andArray:aItemVOArray];
        @try
        {
          NSMutableString* percent = [[NSMutableString alloc]init];
          [percent setString:((CWAStyleValue2Cell*)cell).iValue.text];
          //      NSInteger rate = [percent intValue];
          //      if (0 <= rate && rate< 30)
          //      {
          //        ((CWAStyleValue2Cell*)cell).iValue.backgroundColor = [UIColor redColor];
          //      }
          //      else if(30 <= rate && rate< 60)
          //      {
          //        ((CWAStyleValue2Cell*)cell).iValue.backgroundColor = [UIColor yellowColor];
          //      }
          //      else if(60 <= rate && rate< 100)
          //      {
          //        ((CWAStyleValue2Cell*)cell).iValue.backgroundColor = [UIColor greenColor];
          //      }
          //      else
          //      {
          //        ((CWAStyleValue2Cell*)cell).iValue.backgroundColor = [UIColor clearColor];
          //      }
          [percent appendString:@"%"];
          ((CWAStyleValue2Cell*)cell).iValue.text = percent;
          //[((CWAStyleValue2Cell*)cell).iValue sizeToFit];
          
          
          
        }
        @catch (NSException *exception)
        {
          ((CWAStyleValue2Cell*)cell).iValue.text = WA_ROWITEMSTRING_EMPTYSTR;
        }
        @finally
        {
          ;
        }
        cell.userInteractionEnabled = NO;
        cell.accessoryType = UITableViewCellAccessoryNone;
        ((CWAStyleValue2Cell*)cell).iImage.hidden = YES;
      }
    }
    else if (itemNum == 5)
    {
      NSString *CellIdentifier = @"CellTableIdentifier";
      cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
      
      if (cell == nil)
      {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAItem4Cell" owner:nil options:nil];
        cell = [array objectAtIndex:0];
      }
      for (CWAItemVO* itemVO in aItemVOArray)
      {
        NSString *mode = itemVO.iMode;
        if ([@"linkname" isEqualToString:mode])
        {
          @try
          {
            ((WAItem4Cell*)cell).name.text = itemVO.iValue;
          }
          @catch (NSException *exception)
          {
            ((WAItem4Cell*)cell).name.text = WA_ROWITEMSTRING_EMPTYSTR;
          }
          @finally
          {
            ;
          }
          
        }
        if ([@"linkjob" isEqualToString:mode])
        {
          @try
          {
            ((WAItem4Cell*)cell).title.text =itemVO.iValue;
          }
          @catch (NSException *exception)
          {
            ((WAItem4Cell*)cell).title.text =WA_ROWITEMSTRING_EMPTYSTR;
          }
          @finally
          {
            ;
          }
        }
        if ([@"cellphone" isEqualToString:mode])
        {
          @try
          {
            ((WAItem4Cell*)cell).cellPhone.text = itemVO.iValue ;
          }
          @catch (NSException *exception)
          {
            ((WAItem4Cell*)cell).cellPhone.text = WA_ROWITEMSTRING_EMPTYSTR ;
          }
          @finally
          {
            ;
          }
          
          
        }
        if ([@"telphone" isEqualToString:mode])
        {
          @try
          {
            ((WAItem4Cell*)cell).tel.text = itemVO.iValue ;
          }
          @catch (NSException *exception)
          {
            ((WAItem4Cell*)cell).tel.text = WA_ROWITEMSTRING_EMPTYSTR ;
          }
          @finally
          {
            ;
          }
          
        }
        if ([@"text" isEqualToString:mode])
        {
          if ([@"Y" isEqualToString:itemVO.iValue])
          {
            
            [((WAItem4Cell*)cell).mainConct
             setBackgroundImage: [UIImage imageNamed:@"start"]
             forState:UIControlStateNormal];
          }
          else
          {
            ((WAItem4Cell*)cell).mainConct.hidden = YES;
          }
          
        }
        
      }
      /*
       CWAItemVO* itemVOIsMain = [aItemVOArray objectAtIndex:0];
       if ([itemVOIsMain.iValue isEqualToString:@"main"])
       {
       
       [((WAItem4Cell*)cell).mainConct
       setBackgroundImage: [UIImage imageNamed:@"start"]
       forState:UIControlStateNormal];
       }
       else
       {
       ((WAItem4Cell*)cell).mainConct.hidden = YES;
       }
       
       CWAItemVO* itemVOName = [aItemVOArray objectAtIndex:1];
       ((WAItem4Cell*)cell).name.text = itemVOName.iValue;
       
       CWAItemVO* itemVOTitle = [aItemVOArray objectAtIndex:2];
       ((WAItem4Cell*)cell).title.text =itemVOTitle.iValue;
       
       CWAItemVO* itemVOTel = [aItemVOArray objectAtIndex:4];
       [((WAItem4Cell*)cell).tel setTitle:itemVOTel.iValue forState:UIControlStateNormal];
       
       CWAItemVO* itemVOCell = [aItemVOArray objectAtIndex:3];
       [((WAItem4Cell*)cell).cellPhone setTitle:itemVOCell.iValue forState:UIControlStateNormal];
       */
      cell.userInteractionEnabled = YES;
      return cell;
    }
    else
    {
      return cell;
    }
  }
  @catch (NSException *exception)
  {
  }
  @finally
  {
    ;
  }
  
  return cell;
}

-(UITableViewCell*)parseStyleValue2CellWithTableView:(UITableView *)aTableView 
                                            andArray:(NSArray*)aItemVOArray
{
  UITableViewCell* cell = nil;
  
  NSString *CellIdentifier = @"WAStyleValue2Cell";
  cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
  
  if (cell == nil) 
  {
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAStyleValue2Cell" owner:nil options:nil];
    cell = [array objectAtIndex:0];
  }
  
  CWAItemVO* itemVOValue = [aItemVOArray objectAtIndex:1];
  CWAItemVO* itemVOKey = [aItemVOArray objectAtIndex:0];
  
  @try
  {
    ((CWAStyleValue2Cell*)cell).iValue.text = itemVOValue.iValue;
  }
  @catch (NSException *exception)
  {
    ((CWAStyleValue2Cell*)cell).iValue.text = WA_ROWITEMSTRING_EMPTYSTR;
  }
  @finally
  {
    ;
  }
  @try
  {
    ((CWAStyleValue2Cell*)cell).iKey.text = itemVOKey.iValue;
  }
  @catch (NSException *exception)
  {
    ((CWAStyleValue2Cell*)cell).iKey.text = WA_ROWITEMSTRING_EMPTYSTR;
  }
  @finally
  {
    ;
  }
  
  NSString* mode = itemVOValue.iMode;  
  
  if ([[iStyleDic objectForKey:mode] isKindOfClass:[CWAItemStyleVO class]])
  {
    CWAItemStyleVO *aItemStyleVO = (CWAItemStyleVO *)[iStyleDic objectForKey:mode];
    
    //加载新样式
    if ([ROW_STYLE_NC63 isEqualToString:aItemStyleVO.iStyle])
    {
      if ([mode isEqualToString:ROW_ITEM_CELLPHONE]||[mode isEqualToString:ROW_ITEM_TELPHONE]
          ||[mode isEqualToString:ROW_ITEM_EMAIL]||[mode isEqualToString:ROW_ITEM_WEB])
      {
        ((CWAStyleValue2Cell*)cell).iValue.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:17.0];
      }
      else
      {
        ((CWAStyleValue2Cell*)cell).iValue.font = [UIFont fontWithName:@"STHeitiSC-Medium" size:17.0];
        
      }
      ((CWAStyleValue2Cell*)cell).iValue.frame = WA_FRAME_106_6_186_33;
      ((CWAStyleValue2Cell*)cell).iValue.textColor = [UIColor blackColor];
      ((CWAStyleValue2Cell*)cell).iValue.alpha = 1.0f;
      ((CWAStyleValue2Cell*)cell).iValue.textAlignment = NSTextAlignmentLeft;
      ((CWAStyleValue2Cell*)cell).iValue.minimumFontSize = WA_SIZE_MINLABELSIZE;
      ((CWAStyleValue2Cell*)cell).iValue.numberOfLines = 0;
      [((CWAStyleValue2Cell*)cell).iValue adjustFontSizeToFit];
      
      ((CWAStyleValue2Cell *)cell).iKey.frame = WA_FRAME_8_6_90_33;
      ((CWAStyleValue2Cell *)cell).iKey.textColor = WA_COLOR_046088146;
      ((CWAStyleValue2Cell *)cell).iKey.alpha = 1.0f;
      ((CWAStyleValue2Cell *)cell).iKey.font = WA_FONT_STHEITISC_MEDIUM;
      ((CWAStyleValue2Cell*)cell).iKey.textAlignment = NSTextAlignmentRight;
      ((CWAStyleValue2Cell *)cell).iKey.minimumFontSize = WA_SIZE_MINLABELSIZE;
      ((CWAStyleValue2Cell *)cell).iKey.numberOfLines = 0;
      [((CWAStyleValue2Cell *)cell).iKey adjustFontSizeToFit];
    }
    else if([ROW_STYLE_NC63_TEXT_VALUE2 isEqualToString:aItemStyleVO.iStyle])
    {
      ((CWAStyleValue2Cell *)cell).iKey.frame = WA_FRAME_8_6_90_33;
      ((CWAStyleValue2Cell *)cell).iKey.textColor = WA_COLOR_046088146;
      ((CWAStyleValue2Cell *)cell).iKey.alpha = 1.0f;
      ((CWAStyleValue2Cell *)cell).iKey.font = WA_FONT_STHEITISC_MEDIUM;
      ((CWAStyleValue2Cell*)cell).iKey.textAlignment = NSTextAlignmentRight;
      ((CWAStyleValue2Cell *)cell).iKey.minimumFontSize = WA_SIZE_MINLABELSIZE;
      ((CWAStyleValue2Cell *)cell).iKey.numberOfLines = 0;
      [((CWAStyleValue2Cell *)cell).iKey adjustFontSizeToFit];
      
      if ([mode isEqualToString:ROW_ITEM_CELLPHONE]||[mode isEqualToString:ROW_ITEM_TELPHONE]
          ||[mode isEqualToString:ROW_ITEM_EMAIL]||[mode isEqualToString:ROW_ITEM_WEB])
      {
        ((CWAStyleValue2Cell*)cell).iValue.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:17.0];
      }
      else
      {
        ((CWAStyleValue2Cell*)cell).iValue.font = [UIFont fontWithName:@"STHeitiSC-Medium" size:17.0];
      }
      ((CWAStyleValue2Cell*)cell).iValue.frame = WA_FRAME_106_6_186_33;
      ((CWAStyleValue2Cell*)cell).iValue.textColor = [UIColor blackColor];
      ((CWAStyleValue2Cell*)cell).iValue.alpha = 1.0f;
      ((CWAStyleValue2Cell*)cell).iValue.textAlignment = NSTextAlignmentLeft;
      ((CWAStyleValue2Cell*)cell).iValue.minimumFontSize = WA_SIZE_MINLABELSIZE;
      ((CWAStyleValue2Cell*)cell).iValue.numberOfLines = 0;
      [((CWAStyleValue2Cell*)cell).iValue adjustFontSizeToFit];
    }

  }
  
    
 
  
  return cell;
}

-(UITableViewCell*)parseCheckboxStyle2CellWithTableView:(UITableView *)aTableView 
                                               andArray:(NSArray*)aItemVOArray 
                                             
{
  UITableViewCell* cell = nil;
  
  CWAItemVO* itemVO = [aItemVOArray objectAtIndex:0];    
  NSString *checkStatus = itemVO.iCheckStatus;
  NSString *value = itemVO.iValue;
      
  NSString *CellIdentifier = @"WACheckboxStyle2Cell";
   cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
  
  if (cell == nil) 
  {
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WACheckboxStyle2Cell" owner:nil options:nil];
    cell = [array objectAtIndex:0];        
  }
  BOOL switchStatus = NO;
  //根据返回的状态，确定开关状态
  if ([checkStatus isEqualToString:ROW_ITEM_YES]) 
  {
    switchStatus = YES;
  } 
  else 
  {
    switchStatus = NO;
  }
  @try
  {
    ((CWACheckboxStyle2Cell*)cell).iText.text = value;
  }
  @catch (NSException *exception)
  {
    ((CWACheckboxStyle2Cell*)cell).iText.text = WA_ROWITEMSTRING_EMPTYSTR;
  }
  @finally
  {
    ;
  }
  [((CWACheckboxStyle2Cell*)cell).iSwitch setOn:switchStatus animated:NO];

  return cell;
}

//如果出错，则显示数据格式错误cell
-(UITableViewCell*)cellForWrongDataFormatWithTableView:(UITableView *)aTableView
{
  UITableViewCell* cell = nil;
  
  NSString *CellIdentifier = @"WAStyleValue4Cell";
  cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
  
  if (cell == nil) 
  {
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAStyleValue4Cell" owner:nil options:nil];
    cell = [array objectAtIndex:0];
    
  }
  
  return cell;
}


#pragma mark - performActionWithViewController

-(void)performActionWithViewController:(UIViewController*)aViewController
                            andRowVO:(CWARowVO*)aRowVO
{

  CWAItemVO* itemVO = [aRowVO.iItemVOArray objectAtIndex:1];
  NSString* mode = itemVO.iMode;
  CWAItemStyleVO *aItemStyleVO = nil;
  if ([[iStyleDic objectForKey:mode] isKindOfClass:[CWAItemStyleVO class]])
  {
    aItemStyleVO = (CWAItemStyleVO *)[iStyleDic objectForKey:mode];
  }
  //如果是联系方式，则显示出actionsheet
  if ([mode isEqualToString:ROW_ITEM_CELLPHONE])
  {
     [self showActionSheetWithViewController:aViewController andRowVO:aRowVO];
  }
  else if ([mode isEqualToString:ROW_ITEM_EMAIL])
  {
    //直接发邮件
    if (aItemStyleVO && [aItemStyleVO.iAction isEqualToString:ROW_EMAIL_ACTION_NC63])
    {
      //发邮件      
      NSArray *mailList = [NSArray arrayWithObjects:itemVO.iValue, nil];
      //[iValue release];
      [iContactUtil sendEmail:mailList
                 ccRecipients:nil
                bccRecipients:nil
                      subject:nil
                  messageBody:nil
                       target:aViewController];
    }
    else
    {
      [self showActionSheetWithViewController:aViewController andRowVO:aRowVO];
    }
  }
  else if ([mode isEqualToString:ROW_ITEM_TELPHONE])
  {
    //直接打电话
    if (aItemStyleVO && [aItemStyleVO.iAction isEqualToString:ROW_TELPHONE_ACTION_NC63])
    {
      //打电话
      [WAContactUtil contact:itemVO.iValue flag:0];
    }
    else
    {
      [self showActionSheetWithViewController:aViewController andRowVO:aRowVO];
    } 
  }
  else if ([mode isEqualToString:ROW_ITEM_WEB])
  {
    //直接打开网址
    if (aItemStyleVO && [aItemStyleVO.iAction isEqualToString:ROW_WEB_ACTION_NC63])
    {
      [self openURLWithString:itemVO.iValue];
    }
    else
    {
      [self showActionSheetWithViewController:aViewController andRowVO:aRowVO];
    }
    
  }
//如果是参照，则走代理
  else if ([mode isEqualToString:ROW_ITEM_REFER])
  {
    if (iReferDelegate && [iReferDelegate respondsToSelector:@selector(sendReferRequestWithID:andType:)]) 
    {
      [iReferDelegate sendReferRequestWithID:itemVO.iReferId andType:itemVO.iReferType];
    }
  }
  
    
}

- (void)openURLWithString:(NSString *)aURLStr
{
  @try
  {
    if ([self isNeedToAddHead:aURLStr])
    {
      aURLStr = [ROW_ITEM_HTTPPRESTR stringByAppendingString:aURLStr];
    }
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:aURLStr]];
  }
  @catch (NSException *exception)
  {
  }
  @finally
  {
    ;
  }
}

- (BOOL)isNeedToAddHead:(NSString *)aStr
{
  NSString *aPreString = [NSString stringWithFormat:@"%@",ROW_ITEM_HTTP];
  NSString *aPreSubString = [CWAStringUtil getStringToIndex:[aPreString length] fromString:aStr];
  aPreSubString = [CWAStringUtil lowercaseWAString:aPreSubString];
  if (!aPreSubString)
  {
    aPreSubString = @"";
  }
  if ([aPreSubString isEqualToString:aPreString])
  {
    return NO;
  }
  else
  {
    return YES;
  }  
}

-(void)showActionSheetWithViewController:(UIViewController*)aViewController
                              andRowVO:(CWARowVO*)aRowVO
{
  CWAItemVO* itemVO = [aRowVO.iItemVOArray objectAtIndex:1];
  NSString* mode = itemVO.iMode;
  UIActionSheet *actionSheet = nil;
  //手机
  if ([mode isEqualToString:ROW_ITEM_CELLPHONE]) 
  {
    actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) destructiveButtonTitle:nil otherButtonTitles:NSLocalizedStringFromTable(@"telephone", @"component_contact",nil),NSLocalizedStringFromTable(@"sms", @"component_contact",nil),nil];
      
  } 
  //邮件
  else if([mode isEqualToString:ROW_ITEM_EMAIL])
  {
        actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) destructiveButtonTitle:nil otherButtonTitles:NSLocalizedStringFromTable(@"email", @"component_contact",nil),nil];
  }
  //座机
  else if([mode isEqualToString:ROW_ITEM_TELPHONE])
  {
    actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) destructiveButtonTitle:nil otherButtonTitles:NSLocalizedStringFromTable(@"telephone", @"component_contact",nil),nil];
  }
  //webaddress
  else if ([mode isEqualToString:ROW_ITEM_WEB])
  {
    actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) destructiveButtonTitle:nil otherButtonTitles:NSLocalizedStringFromTable(@"webAddress", @"component_contact",nil),nil];
    
  }
  
  iValue = itemVO.iValue;
  iViewController = aViewController;
  actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
  actionSheet.destructiveButtonIndex = 0;	// make the second button red (destructive)
  [actionSheet showInView:aViewController.view]; // show from our table view (pops up in the middle of the table)

}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{

	// the user clicked one of the OK/Cancel buttons
  if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:NSLocalizedStringFromTable(@"telephone", @"component_contact",nil)]) 
  {
    
    //打电话
    [WAContactUtil contact:iValue flag:0];
    
  }
  else if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:NSLocalizedStringFromTable(@"sms", @"component_contact",nil)]) 
  {
    
    //发短信
    [iContactUtil sendSMS:iValue content:@"" target:iViewController];

  }
  else if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:NSLocalizedStringFromTable(@"email", @"component_contact",nil)]) 
  {
    
    //发邮件
    
    NSArray *mailList = [NSArray arrayWithObjects:iValue, nil];
    //[iValue release];
    [iContactUtil sendEmail:mailList ccRecipients:nil bccRecipients:nil subject:nil messageBody:nil target:iViewController];
    
  }
  //打开网址
  else if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:NSLocalizedStringFromTable(@"webAddress", @"component_contact",nil)])
  {
   
      [self openURLWithString:iValue];
  }

}

@end
