//
//  ViewController.m
//  Memory
//
//  Created by Hammad  on 9/26/13.
//  Copyright (c) 2013 Hammad Ahmed. All rights reserved.
//

#import "ViewController.h"
#import "MMObject.h"

@interface ViewController ()

{
    NSMutableArray* myArray;
    MMObject* myObject; 
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    myObject =[[MMObject alloc] init];
    
    myArray =[NSMutableArray arrayWithCapacity:10];
    
    
    [super viewDidLoad];

	

    NSLog(@"retainCount = %i (%@)", [myObject retainCount], myObject);
    [myArray addObject:myObject];
    NSLog(@"retainCount = %i (%@)", [myObject retainCount], myObject);

    
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)memoryTest:(id)sender {
    
    NSLog(@"retain count = %i (%@)", [myObject retainCount], myObject);
    
    
}

- (IBAction)removeButton:(id)sender {
    
    [myArray removeObject:myObject];
    
    
    
    
    
}
@end
