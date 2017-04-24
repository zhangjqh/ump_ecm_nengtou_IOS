//
//  DESEncryption.m
//  U8ReportSample
//
//  Created by 谢友泽 on 11-11-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "DESEncryption.h"

@implementation DESEncryption

+ (NSString*)TripleDES:(NSString*)plainText encryptOrDecrypt:(CCOperation)encryptOrDecrypt key:(NSString*)key {
    
    
    const void *vplainText;
    size_t plainTextBufferSize;
    
    if (encryptOrDecrypt == kCCDecrypt)
    {   
        NSData *EncryptData = [GTMBase64 decodeData:[plainText dataUsingEncoding:NSUTF8StringEncoding]];
        plainTextBufferSize = [EncryptData length];
        vplainText = [EncryptData bytes];
    }
    else
    {
        NSData* data = [plainText dataUsingEncoding:NSUTF8StringEncoding];
        plainTextBufferSize = [data length];
        vplainText = (const void *)[data bytes];
    }
    
    uint8_t *bufferPtr = NULL;
    size_t bufferPtrSize = 0;
    size_t movedBytes = 0;
    // uint8_t ivkCCBlockSize3DES;
    
    bufferPtrSize = (plainTextBufferSize + kCCBlockSize3DES) & ~(kCCBlockSize3DES - 1);
    bufferPtr = malloc( bufferPtrSize * sizeof(uint8_t));
    memset((void *)bufferPtr, 0x0, bufferPtrSize);
    // memset((void *) iv, 0x0, (size_t) sizeof(iv));
    
    //    NSString *key = @"123456789012345678901234";
//    NSString *initVec = @"init Vec";
    const void *vkey = (const void *) [key UTF8String];
//    const void *vinitVec = (const void *) [initVec UTF8String];
    Byte iv[] = {0x12, 0x34, 0x56, 0x78, 0x90, 0xAB, 0xCD, 0xEF};
    CCCrypt(encryptOrDecrypt,
                       kCCAlgorithmDES,
                       kCCOptionPKCS7Padding,
                       vkey, 
                       
                       kCCKeySizeDES,
                       iv,//vinitVec, //"init Vec", //iv,
                       vplainText, //"Your Name", //plainText,
                       plainTextBufferSize,
                       (void *)bufferPtr,
                       bufferPtrSize,
                       &movedBytes);
//    if (ccStatus == kCCSuccess) NSLog(@"SUCCESS");
    /*else if (ccStatus == kCC ParamError) return @"PARAM ERROR";
     else if (ccStatus == kCCBufferTooSmall) return @"BUFFER TOO SMALL";
     else if (ccStatus == kCCMemoryFailure) return @"MEMORY FAILURE";
     else if (ccStatus == kCCAlignmentError) return @"ALIGNMENT";
     else if (ccStatus == kCCDecodeError) return @"DECODE ERROR";
     else if (ccStatus == kCCUnimplemented) return @"UNIMPLEMENTED"; */
    
    NSString *result;
    
    if (encryptOrDecrypt == kCCDecrypt)
    {
        result = [[NSString alloc] initWithData:[NSData dataWithBytes:(const void *)bufferPtr
                                                                length:(NSUInteger)movedBytes]
                                        encoding:NSUTF8StringEncoding];
    }
    else
    {
        NSData *myData = [NSData dataWithBytes:(const void *)bufferPtr length:(NSUInteger)movedBytes];
        result = [GTMBase64 stringByEncodingData:myData];
    }
    
    free(bufferPtr);
    return result;
    
}



+ (NSData*)TripleDESWithData:(NSData*)recourceData encryptOrDecrypt:(CCOperation)encryptOrDecrypt key:(NSString*)key
{
	
	
	const void *vplainText;
	size_t plainTextBufferSize;
	
	plainTextBufferSize = [recourceData length];
	vplainText = (const void *)[recourceData bytes];
  
	
	uint8_t *bufferPtr = NULL;
	size_t bufferPtrSize = 0;
	size_t movedBytes = 0;
	// uint8_t ivkCCBlockSize3DES;
	
	bufferPtrSize = (plainTextBufferSize + kCCBlockSize3DES) & ~(kCCBlockSize3DES - 1);
	bufferPtr = malloc( bufferPtrSize * sizeof(uint8_t));
	memset((void *)bufferPtr, 0x0, bufferPtrSize);
	const void *vkey = (const void *) [key UTF8String];
	Byte iv[] = {0x12, 0x34, 0x56, 0x78, 0x90, 0xAB, 0xCD, 0xEF};
	CCCrypt(encryptOrDecrypt,
					kCCAlgorithmDES,
					kCCOptionPKCS7Padding,
					vkey,
					
					kCCKeySizeDES,
					iv,//vinitVec, //"init Vec", //iv,
					vplainText, //"Your Name", //plainText,
					plainTextBufferSize,
					(void *)bufferPtr,
					bufferPtrSize,
					&movedBytes);

	
	NSData *result;
	
	if (encryptOrDecrypt == kCCDecrypt)
	{
		result = [NSData dataWithBytes:(const void *)bufferPtr
														length:(NSUInteger)movedBytes];
	}
	else
	{
		result = [NSData dataWithBytes:(const void *)bufferPtr length:(NSUInteger)movedBytes];
	}
	
	free(bufferPtr);
	return result;
	
}

@end
