//
//  Cronometro.m
//  TabBar
//
//  Created by Ricardo Moya Garcia on 31/08/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import "Cronometro.h"

@interface Cronometro ()

@end

@implementation Cronometro

@synthesize lbContador, lbEstado;
@synthesize contador;
@synthesize timer;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

// Metodo que se ejecuta cada vez que se activa el timer.
-(void)contar{
    contador = contador +1;
    self.lbContador.text = [[NSNumber numberWithInt:contador] stringValue];
}

- (IBAction)btStart:(id)sender {
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1 // El timer se ejcuta cada segundo
                                             target:self     // Se ejecuta este timer en este view
                                           selector:@selector(contar)      // Se ejecuta el método contar
                                           userInfo:nil
                                            repeats:YES];   // El timer es repetitivo, es decir cada segundo (en esta caso) se ejecuta
    
    self.lbEstado.text = @"Start";
}

- (IBAction)btStop:(id)sender {
    [timer invalidate];
    timer = nil;
    self.lbEstado.text = @"STOP";
}

- (IBAction)btReiniciar:(id)sender {
    contador = 0;
    self.lbContador.text = @"0";
    self.lbEstado.text = @"Le has dado a reiniciar";
}


@end
