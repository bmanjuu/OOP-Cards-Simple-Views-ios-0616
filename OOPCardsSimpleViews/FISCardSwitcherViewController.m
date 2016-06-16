//  FISCardSwitcherViewController.m

#import "FISCardSwitcherViewController.h"

@interface FISCardSwitcherViewController ()

@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleLabel;

@end

@implementation FISCardSwitcherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.threeOfSpades = [[FISCard alloc] initWithSuit:@"♠️"
                                                  rank:@"3"];
    self.fourOfClubs = [[FISCard alloc] initWithSuit:@"♣️"
                                                rank:@"4"];
    self.eightOfDiamonds = [[FISCard alloc] initWithSuit:@"♦️"
                                                    rank:@"8"];
    self.tenOfHearts = [[FISCard alloc] initWithSuit:@"♥️"
                                                rank:@"10"];
}

-(void)changeLabels:(FISCard *)card {
//    for(id label in self.view.subviews){
//        if([label isKindOfClass:[UILabel class]]){
//            label.text
//        }
//    }
    self.topLabel.text = card.cardLabel;
    self.middleLabel.text = card.cardLabel;
    self.bottomLabel.text = card.cardLabel;
}

- (IBAction)threeOfSpadesClick:(id)sender {
    
    [self changeLabels:self.threeOfSpades];
    
}


- (IBAction)fourOfClubsClick:(id)sender {
    
    [self changeLabels:self.fourOfClubs];
}


- (IBAction)eightOfDiamondsClick:(id)sender {
    
    [self changeLabels:self.eightOfDiamonds];
}


- (IBAction)tenOfHeartsClick:(id)sender {
    
    [self changeLabels:self.tenOfHearts]; 
}


@end
