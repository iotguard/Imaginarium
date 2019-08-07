//
//  ViewController.m
//  Imaginarium
//
//  Created by dianyi on 2019/8/7.
//  Copyright © 2019 dianyi. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        NSString *url = @"https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo/bd_logo1_31bdc765.png";
        if ([segue.identifier isEqualToString:@"photo_2"]) {
            url = @"https://assets.burberry.com/is/image/Burberryltd/scarf_preco_exit2.jpg?$BBY_V2_BASIC=&qty=80,1$&wid=569";
        } else if ([segue.identifier isEqualToString:@"photo_3"]) {
            url = @"https://assets.burberry.com/is/image/Burberryltd/E247F912-7E40-488C-8967-1EF353ACE77B.jpg?$BBY_V2_BASIC=&qty=80,1$&wid=569";
        }
        
        ivc.imageURL = [NSURL URLWithString:url];
        ivc.title = segue.identifier;
    }
}

@end
