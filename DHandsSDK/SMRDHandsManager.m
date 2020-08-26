//
//  SMRDHandsManager.m
//  DHands
//
//  Created by 丁治文 on 2019/1/14.
//  Copyright © 2019 sumrise. All rights reserved.
//

#import "SMRDHandsManager.h"

@interface SMRDHandsManager ()

@property (copy  , nonatomic) NSString *uk;

@end

@implementation SMRDHandsManager

+ (instancetype)sharedManager {
    static SMRDHandsManager *_sharedDHandsManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedDHandsManager = [[SMRDHandsManager alloc] init];
    });
    return _sharedDHandsManager;
}

- (void)startWithUK:(NSString *)uk {
    _uk = uk;
}

- (NSString *)validStringWithTime:(NSTimeInterval)time key:(NSString *)key saveTime:(NSTimeInterval)saveTime {
    return nil;
}

@end
