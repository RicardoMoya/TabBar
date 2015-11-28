//
//  Cronometro.h
//  TabBar
//
//  Created by Ricardo Moya Garcia on 31/08/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cronometro : UIViewController

@property (nonatomic, strong) NSTimer *timer;

@property (nonatomic, assign) int contador;

@property (strong, nonatomic) IBOutlet UILabel *lbContador;
@property (strong, nonatomic) IBOutlet UILabel *lbEstado;

- (IBAction)btStart:(id)sender;
- (IBAction)btStop:(id)sender;
- (IBAction)btReiniciar:(id)sender;

@end
