//
//  ViewController.m
//  DataTypesAndMethod
//
//  Created by rem{e}koh on 9/27/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField *firstTextField;

@property (nonatomic, weak) IBOutlet UITextField *secondTextField;

@property (nonatomic, weak) IBOutlet UILabel *resultsLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(int)add:(int)number1 secondNumber:(int)number2{
    return number1 + number2;
}

-(int)subtract:(int)number1 secondNumber:(int)number2{
    return number1 - number2;
}

-(int)multiply:(int)number1 secondNumber:(int)number2{
    return number1 * number2;
}

-(float)divide:(float)number1 secondNumber:(float)number2{
    return number1 / number2;
}

- (IBAction)addButtonClicked {
    
    NSString *number1 = self.firstTextField.text;
     int value1 = [number1 intValue];
    
    NSString *number2 = self.secondTextField.text;
     int value2 = [number2 intValue];
    
    int results = [self add:value1 secondNumber:value2];
    
    NSString *resultString = [NSString stringWithFormat:@"%d",results];
    
    self.resultsLabel.text = resultString;
}

- (IBAction)subtractButtonClicked {
    NSString *number1 = self.firstTextField.text;
    int value1 = [number1 intValue];
    
    NSString *number2 = self.secondTextField.text;
    int value2 = [number2 intValue];
    
    int results = [self subtract:value1 secondNumber:value2];
    
    NSString *resultString = [NSString stringWithFormat:@"%d",results];
    
    self.resultsLabel.text = resultString;
}

- (IBAction)multiplyButtonClicked {
    NSString *number1 = self.firstTextField.text;
    int value1 = [number1 intValue];
    
    NSString *number2 = self.secondTextField.text;
    int value2 = [number2 intValue];
    
    int results = [self multiply:value1 secondNumber:value2];
    
    NSString *resultString = [NSString stringWithFormat:@"%d",results];
    
    self.resultsLabel.text = resultString;
    
}

- (IBAction)divideButtonClicked {
    NSString *number1 = self.firstTextField.text;
    float value1 = [number1 floatValue];
    
    NSString *number2 = self.secondTextField.text;
    float value2 = [number2 floatValue];
    
    float results = [self divide:value1 secondNumber:value2];
    
    NSString *resultString = [NSString stringWithFormat:@"%f",results];
    
    self.resultsLabel.text = resultString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
