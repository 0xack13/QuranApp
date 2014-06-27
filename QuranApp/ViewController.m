//
//  ViewController.m
//  QuranApp
//
//  Created by 0xack13 on 3/7/14.
//  Copyright (c) 2014 0xack13. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myuitextview;



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }

    [myuitextview setFont:[UIFont fontWithName:@"KFGQPCUthmanicScriptHAFS" size:20]];

	// Do any additional setup after loading   the view, typically from a nib.
    //myuitextview.text = [myuitextview.text stringByAppendingString:@"صِرَٰطَ\uFD3F٣\uFD3E غَیۡرِ ٱلۡمَغۡضُوبِ \u06DD٣ عَلَیۡهِمۡ وَلَا ٱلضَّاۤلِّینَ"];
    
   /*
    myuitextview.text = [myuitextview.text stringByAppendingString:@"بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ ١ \
                         ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَٰلَمِينَ ٢ \
                         ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ ٣ مَٰلِكِ يَوۡمِ ٱلدِّينِ ٤ \
                         إِيَّاكَ نَعۡبُدُ وَإِيَّاكَ نَسۡتَعِينُ ٥ ٱهۡدِنَا \
                         ٱلصِّرَٰطَ ٱلۡمُسۡتَقِيمَ ٦ صِرَٰطَ ٱلَّذِينَ أَنۡعَمۡتَ \
                         عَلَيۡهِمۡ غَيۡرِ ٱلۡمَغۡضُوبِ عَلَيۡهِمۡ \
                         وَلَا ٱلضَّآلِّينَ ٧ \
                         "];
    */
    myuitextview.text = [myuitextview.text stringByAppendingString:@"بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ ١  ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَٰلَمِينَ ٢  ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ ٣ مَٰلِكِ يَوۡمِ ٱلدِّينِ ٤  إِيَّاكَ نَعۡبُدُ وَإِيَّاكَ نَسۡتَعِينُ ٥ ٱهۡدِنَا ٱلصِّرَٰطَ ٱلۡمُسۡتَقِيمَ ٦ صِرَٰطَ ٱلَّذِينَ أَنۡعَمۡتَ عَلَيۡهِمۡ غَيۡرِ ٱلۡمَغۡضُوبِ عَلَيۡهِمۡ  وَلَا ٱلضَّآلِّينَ ٧"];
    //myuitextview.text = [myuitextview.text stringByAppendingString:@"صالح ١٢٣ ٣ ٤ 4 "];
    
    
    [myuitextview sizeToFit];
    [myuitextview layoutIfNeeded];
    //myuitextview.font = [UIFont fontWithName:@"me_quran" size:24.0];
    myuitextview.textAlignment = UITextAlignmentCenter;
    //myuitextview.font = [UIFont systemFontOfSize:20];
    //myuitextview.font = [UIFont fontWithName:@"GEDinarOne-Medium" size:16.0];
    //myuitextview.font = [UIFont fontWithName:@"me_quran" size:24.0];
    //NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:myuitextview.text attributes:@{ NSFontAttributeName : [UIFont fontWithName:@"GEDinarOne-Medium" size:16], NSLigatureAttributeName: @2}];
    //[myuitextview sizeToFit];
    CGRect frame = myuitextview.frame;
    
    frame.size = myuitextview.contentSize;
    
    myuitextview.frame = frame;
    
    UILabel* circleLabel = [[UILabel alloc] init];
    [circleLabel setText:@"letter goes here"];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    label.text = @"Hello";
    label.layer.cornerRadius = 8.0;
    [self.view addSubview:label];
    
    //myuitextview.attributedText = attributedString;


}

- (void)scaleTextView:(UIPinchGestureRecognizer *)pinchGestRecognizer{
    CGFloat scale = pinchGestRecognizer.scale;
    
    myuitextview.font = [UIFont fontWithName:myuitextview.font.fontName size:myuitextview.font.pointSize*scale];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
