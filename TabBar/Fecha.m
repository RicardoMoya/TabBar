//
//  Fecha.m
//  TabBar
//
//  Created by Ricardo Moya Garcia on 31/08/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import "Fecha.h"

@interface Fecha ()

@end

@implementation Fecha

@synthesize lbFecha;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // cojo la fecha de hoy
    NSDate *hoy = [NSDate dateWithTimeIntervalSinceNow:0];
    
    // La doy Formato
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MMMM-yyy"];
    NSString *fecha = [dateFormat stringFromDate:hoy];
    
    lbFecha.text = fecha;
}



@end
