//
//  UMMap.h
//  UMIOSControls
//
//  Created by zhangyuv on 13-6-28.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>


@class UMMap;

@protocol UMMapBindRelevantDelegate <NSObject>

- (void)showAnnotationOnMap:(NSArray*)annotationArray;

@end

@interface UMMapController: UIViewController<CLLocationManagerDelegate,MKMapViewDelegate,UMMapBindRelevantDelegate>
@property (nonatomic, readonly) UMMap*  viewObject;
@property (nonatomic,copy) NSString *lineWidth;
@property (nonatomic,copy) NSString *strokeColor;

@property (nonatomic,copy) NSString * aroundpoi;
@property (nonatomic,copy) NSString * isAuto;
@property (nonatomic,copy) NSString * location_img;
@property (nonatomic,copy) NSString * around_img;
@property (nonatomic,copy) NSString * posX;
@property (nonatomic,copy) NSString * posY;
@property (nonatomic,copy) NSString * position;
@property (nonatomic,copy) NSString * onlyonce;
@property (nonatomic,copy) NSString * controlId;
- (void)openLocation:(CLLocationCoordinate2D)location;
- (void)showUserLocation;

- (void)beginLocation;
- (void)stopLocation;

- (void)drawLineWithSourceCLPm:(CLPlacemark *)sourceCLPm destinationCLPm:(CLPlacemark *)destinationCLPm;//绘制路径
@end

