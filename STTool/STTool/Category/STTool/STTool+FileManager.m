//
//  STTool+FileManager.m
//  Together
//
//  Created by TangJR on 2/4/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "STTool+FileManager.h"
#import <UIKit/UIKit.h>

@implementation STTool (FileManager)

+ (NSString *)st_documentPath {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
}

+ (NSString *)st_cachesPath {
    return [[NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:@"Caches"];
}

+ (NSString *)st_cookiesPath {
    return [[NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:@"Cookies"];
}

+ (NSString *)st_preferencesPath {
    return [[NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:@"Preferences"];
}

+ (NSString *)st_tempPath {
    return [NSHomeDirectory() stringByAppendingFormat:@"/tmp"];
}

+ (BOOL)st_createDirectoryAtPath:(NSString *)path {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isDirExist = [fileManager fileExistsAtPath:path];
    
    if(!isDirExist) {
        return [fileManager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:NULL];
    }
    return NO;
}

+ (id)st_fileWithPath:(NSString *)filePath fileClass:(Class)fileClass {
    if (![[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        return nil;
    }
    if (fileClass == [NSDictionary class]) {
        return [[NSDictionary alloc] initWithContentsOfFile:filePath];
    }
    if (fileClass == [NSArray class]) {
        return [[NSArray alloc] initWithContentsOfFile:filePath];
    }
    if (fileClass == [UIImage class]) {
        return [UIImage imageWithContentsOfFile:filePath];
    }
    if (fileClass == [NSString class]) {
        return [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
    }
    return nil;
}

+ (BOOL)st_saveWithPath:(NSString *)filePath fileName:(NSString *)fileName fileData:(NSData *)fileData shouldReplace:(BOOL)shouldReplace {
    NSString *fullPath = [filePath stringByAppendingPathComponent:fileName];
    BOOL isFileExist = [[NSFileManager defaultManager] fileExistsAtPath:fullPath];
    if (shouldReplace == NO && isFileExist) {
        return NO;
    }
    if (isFileExist == NO) {
        NSError *error = nil;
        [[NSFileManager defaultManager] createDirectoryAtPath:filePath withIntermediateDirectories:YES attributes:nil error:&error];
        if (error != NULL) {
            return NO;
        }
    }
    return [fileData writeToFile:fullPath atomically:YES];
}

+ (BOOL)st_copyWithFromPath:(NSString *)fromPath toPath:(NSString *)toPath shouldReplace:(BOOL)shouldReplace {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isFromPathExist = [fileManager fileExistsAtPath:fromPath];
    if (!isFromPathExist) {
        return NO;
    }
    BOOL isToPathExist = [fileManager fileExistsAtPath:toPath];
    if (shouldReplace == NO && isToPathExist) {
        return NO;
    }
    NSError *error = nil;
    [fileManager copyItemAtPath:fromPath toPath:toPath error:&error];
    if (error == nil) {
        return YES;
    }
    return NO;
}

+ (NSArray *)st_filePathsWithFolderPath:(NSString *)folderPath {
    NSFileManager *manager = [NSFileManager defaultManager];
    NSArray *fileAndFolderPaths = [manager contentsOfDirectoryAtPath:folderPath error:NULL];
    return fileAndFolderPaths;
}

@end