//ption.h
//  U8ReportSample
//
//  Created by 谢友泽 on 11-11-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>
#import <UMIOSControls/GTMBase64.h>

@interface DESEncryption : NSObject {
    
}

+ (NSString*)TripleDES:(NSString*)plainText encryptOrDecrypt:(CCOperation)encryptOrDecrypt key:(NSString*)key;

+ (NSData*)TripleDESWithData:(NSData*)recourceData encryptOrDecrypt:(CCOperation)encryptOrDecrypt key:(NSString*)key;
@end
