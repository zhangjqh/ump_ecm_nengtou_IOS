//
//  Created by 宋永强 on 11-8-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxGeometry.h"
#import "UFSfxPathFigureCollection.h"

@interface UFSfxPathGeometry : UFSfxGeometry {
    UFSfxPathFigureCollection * _figures;
}

@property(nonatomic, strong, readonly) UFSfxPathFigureCollection *figures;


@end