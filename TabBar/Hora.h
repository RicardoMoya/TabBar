//
//  Hora.h
//  TabBar
//
//  Created by Ricardo Moya Garcia on 31/08/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Hora : UIViewController

@property (nonatomic, strong) NSTimer *timer;
@property (strong, nonatomic) IBOutlet UILabel *lbHora;

@end
