//
//  ILViewController.m
//  UIIImageCompressExample
//
//  Created by Abraham Kuri on 12/12/13.
//  Copyright (c) 2013 Icalia Labs. All rights reserved.
//

#import "ILViewController.h"
#import "UIImage+ImageCompress.h"

@interface ILViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *compressedImageView;
@property (weak, nonatomic) IBOutlet UILabel *originalImageSizeLabel;
@property (weak, nonatomic) IBOutlet UILabel *compressedImageSizeLabel;

@end

@implementation ILViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Original image setup
    UIImage *imageToCompress = [UIImage imageNamed:@"theJoker.jpg"];
    
    NSData *imageToCompressData = [[NSData alloc] initWithData:UIImageJPEGRepresentation(imageToCompress, 1)];
    
    self.originalImageSizeLabel.text = [NSString stringWithFormat:@"Original size: %i", imageToCompressData.length];
    
    
    //Compressed image almost a 90% reduction
    UIImage *compressedImage = [UIImage compressImage:imageToCompress
                                        compressRatio:0.9f];
    
    
    self.compressedImageView.image = compressedImage;
    
       NSData *compressedImageData = [[NSData alloc] initWithData:UIImageJPEGRepresentation(compressedImage, 1)];
    
    self.compressedImageSizeLabel.text = [NSString stringWithFormat:@"Compressed size: %i", compressedImageData.length];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
