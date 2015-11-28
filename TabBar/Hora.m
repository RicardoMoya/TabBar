//
//  Hora.m
//  TabBar
//
//  Created by Ricardo Moya Garcia on 31/08/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import "Hora.h"

@interface Hora ()

@end

@implementation Hora

@synthesize lbHora;
@synthesize timer;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(setHora) userInfo:nil repeats:YES];
}

-(void) setHora{
    // cojo la fecha de hoy
    NSDate *hoy = [NSDate dateWithTimeIntervalSinceNow:0];
    
    // Calculo la hora, minutos y segundos
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *dateComponents = [gregorian components:(NSHourCalendarUnit  | NSMinuteCalendarUnit | NSSecondCalendarUnit) fromDate:hoy];
    NSInteger horas = [dateComponents hour];
    NSInteger minutos = [dateComponents minute];
    NSInteger segundos2 = [dateComponents second];
    
    lbHora.text = [NSString stringWithFormat:@"%02i:%02i:%02i",horas, minutos, segundos2];
}


@end
