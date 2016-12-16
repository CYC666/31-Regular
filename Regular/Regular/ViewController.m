//
//  ViewController.m
//  Regular
//
//  Created by mac on 16/12/16.
//  Copyright © 2016年 CYC. All rights reserved.
//

#import "ViewController.h"
#import "RegexKitLite.h"
#import "WPLabel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showLabel;
@property (weak, nonatomic) IBOutlet UITextField *input;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)action:(id)sender {

    [_input endEditing:YES];
    
    
    NSString *text = @"夹手夹<help>4006-656-212</help>脚13705038428啊可视对讲啊13788290033,13788290032,13388290033张三：010-88669900,李四电话010-55443322发送0731-8373834垃圾费";
    
    NSMutableAttributedString *attributeStr = [[NSMutableAttributedString alloc] initWithString:text];
    
    NSDictionary *styeDic = @{
                              @"help":[WPAttributedStyleAction styledActionWithAction:^{
                                  
                                  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://13705038428"]];
                                  
                              }],
                              @"link":[UIColor orangeColor]
                              };

    _showLabel.attributedText = [text attributedStringWithStyleBook:styeDic];
    
    
    
//    NSString * MOBILE = @"1\\d\\d\\d\\d\\d\\d\\d\\d\\d\\d";
//    NSArray *result = [text componentsMatchedByRegex:MOBILE];
//    
//    for (NSString *str in result) {
//        
//        NSRange range = [text rangeOfString:str];
//        [attributeStr addAttribute:NSForegroundColorAttributeName value:[UIColor cyanColor] range:range];
//        
//    }
//    
//    NSString *call = @"\\d\\d\\d-\\d\\d\\d\\d\\d\\d\\d\\d";
//    NSArray *newArray = [text componentsMatchedByRegex:call];
//    
//    for (NSString *str in newArray) {
//        NSRange range = [text rangeOfString:str];
//        [attributeStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:range];
//        
//    }
//    
//    for (NSString *str in newArray) {
//        NSRange range = [text rangeOfString:str];
//        NSTextStorage *textStorage = [[NSTextStorage alloc] initWithAttributedString:attributeStr];
//        NSLayoutManager *manager = [[NSLayoutManager alloc] init];
//        [textStorage addLayoutManager:manager];
//        NSTextContainer *container = [[NSTextContainer alloc] initWithSize:_showLabel.frame.size];
//        container.lineFragmentPadding = 0;
//        container.lineBreakMode = NSLineBreakByCharWrapping;
//        [manager addTextContainer:container];
//        NSRange ggrange;
//        [manager characterRangeForGlyphRange:range actualGlyphRange:&ggrange];
//        CGRect frame = [manager boundingRectForGlyphRange:ggrange
//                                          inTextContainer:container];
//        UIControl *phoneControl = [[UIControl alloc] initWithFrame:frame];
//        phoneControl.backgroundColor = [UIColor orangeColor];
//        [phoneControl addTarget:self action:@selector(takePhone:) forControlEvents:UIControlEventTouchUpInside];
//        [_showLabel addSubview:phoneControl];
//    }

    
    
    
    
    
    
    


}


- (void)takePhone:(UIControl *)control {

    
}




@end
