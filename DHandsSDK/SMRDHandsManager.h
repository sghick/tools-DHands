//
//  SMRDHandsManager.h
//  DHands
//
//  Created by 丁治文 on 2019/1/14.
//  Copyright © 2019 sumrise. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SMRDHandsManager : NSObject

/**
 获取一个单例对象
 */
+ (instancetype)sharedManager;

/**
 使用UK初始化
 */
- (void)startWithUK:(NSString *)uk;

/**
 获取验证字符串

 @param time 时间缀
 @param key 密钥
 @param saveTime 有效时间
 */
- (NSString *)validStringWithTime:(NSTimeInterval)time key:(NSString *)key saveTime:(NSTimeInterval)saveTime;

@end

NS_ASSUME_NONNULL_END
