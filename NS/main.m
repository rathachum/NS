//
//  main.m
//  NS
//
//  Created by Chum Ratha on 11/4/15.
//  Copyright © 2015 Chum Ratha. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    /*NSMutableString *s=[[NSMutableString alloc]initWithCapacity:30];
    [s appendFormat:@"game"];
    NSLog(@"%@",s);

    
    NSArray *a=[[NSArray alloc]initWithObjects:@"game", nil];
    NSArray *c=@[@"game",@"loy"];
    NSLog(@"%@    %@",a[0],[c objectAtIndex:1]);
    
    
    
    
    NSArray *ukMakes = @[@"Aston Martin", @"Lotus", @"Jaguar", @"Bentley"];
    NSLog(@"%@", [ukMakes componentsJoinedByString:@", "]);
    */
    /*
    NSMutableData *md=[[NSMutableData alloc]initWithCapacity:4];
    
    
    
    NSDictionary *d=@{
                     @"a":@"apple",
                      @"b":@"boy"
                      };
    NSLog(@"%@   %@",d[@"b"],[d objectForKey:@"a"]);*/
    
    
    
    
    
    
    
    
    NSMutableData *data1, *data2;
    NSString *myString = @"string for data1";
    NSString *yourString = @"string for data2";
    const char *utfMyString = [myString UTF8String];
    const char *utfYourString = [yourString UTF8String];
    unsigned char *firstBuffer, secondBuffer[20];
    
    /* initialize data1, data2, and secondBuffer... */
    data1 = [NSMutableData dataWithBytes:utfMyString length:strlen(utfMyString)+1];
    data2 = [NSMutableData dataWithBytes:utfYourString length:strlen(utfYourString)+1];
    
    [data2 getBytes:secondBuffer length:20];
    NSLog(@"data2 before: \"%s\"\n", (char *)secondBuffer);
    
    firstBuffer = [data2 mutableBytes];
    NSLog(@"%s",(char *)firstBuffer);
    [data1 getBytes:firstBuffer length:[data2 length]];
    NSLog(@"data1: \"%s\"\n", (char *)firstBuffer);
    
    [data2 getBytes:secondBuffer length:20];
    NSLog(@"data2 after: \"%s\"\n", (char *)secondBuffer);
    
    
    
    
    return 0;
}
