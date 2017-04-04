//
//  ViewController.m
//  MethodMan
//
//  Created by Shin Park on 4/3/17.
//  Copyright © 2017 shinDev. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bankAccount = 500.50;
    self.itemAmount = 400.00;
}

- (BOOL) canPurchase:(double)amount {
    
    if (self.bankAccount >= amount)
        return YES;
    
    return NO;
}

- (void)declareWinnerWithPlayerAScore:(NSInteger)scoreA playerBScore:(NSInteger)scoreB {
    
    if (scoreA > scoreB)
        NSLog(@"Player A Wins!");
    else if (scoreB > scoreA)
        NSLog(@"Player B Wins!");
    else
        NSLog(@"The game is at a standstill!");
    
}



- (void)playground {
    
    if ([self canPurchase:self.itemAmount]) {
        NSLog(@"We can buy!");
    }
    
    [self declareWinnerWithPlayerAScore:55 playerBScore:66];
    
    Person *person = [[Person alloc]init];
    [person speakName];
    [Person stateSpecies];
    
    UIImage *image1 = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://google.com"]]];
    
    
    
    NSString *urlString = @"http://google.com";
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    UIImage *image2 = [UIImage imageWithData:data];
    
    NSNumber *number = [NSNumber numberWithInt:55];
    NSLog(@"Number: %@", number.stringValue);
    NSLog(@"Number: %@", [number stringValue]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end













