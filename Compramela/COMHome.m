//
//  COMHome.m
//  Compramela
//
//  Created by Ricardo Martinez on 11/10/13.
//  Copyright (c) 2013 Ricardo Martinez. All rights reserved.
//

#import "COMHome.h"
#import "COMViewController.h"

@interface COMHome ()
@property NSMutableArray *mainFoods;

@end

@implementation COMHome

- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mainFoods = [[NSMutableArray alloc] init];
    [self loadInitialData];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)loadInitialData{
    COMHome *item1 = [[COMHome alloc] init];
    item1.foodName = @"Bebidas";
    [self.mainFoods addObject:item1];
    COMHome *item2 = [[COMHome alloc] init];
    item2.foodName = @"Carnes";
    [self.mainFoods addObject:item2];
    COMHome *item3 = [[COMHome alloc] init];
    item3.foodName =@"Congelados";
    [self.mainFoods addObject:item3];
    COMHome *item4 = [[COMHome alloc] init];
    item4.foodName =@"Cuidado Personal";
    [self.mainFoods addObject:item4];
    COMHome *item5 = [[COMHome alloc] init];
    item5.foodName =@"Desayunos";
    [self.mainFoods addObject:item5];
    COMHome *item6 = [[COMHome alloc] init];
    item6.foodName =@"Frascos/Enlatados";
    [self.mainFoods addObject:item6];
    COMHome *item7 = [[COMHome alloc] init];
    item7.foodName =@"Frutas";
    [self.mainFoods addObject:item7];
    COMHome *item8 = [[COMHome alloc] init];
    item8.foodName =@"Pasta, Arroz & Granos";
    [self.mainFoods addObject:item8];
    COMHome *item9 = [[COMHome alloc] init];
    item9.foodName =@"Proteina";
    [self.mainFoods addObject:item9];
    COMHome *item10 = [[COMHome alloc] init];
    item10.foodName =@"Sazones/Especies";
    [self.mainFoods addObject:item10];
    COMHome *item11 = [[COMHome alloc] init];
    item11.foodName =@"Varios";
    [self.mainFoods addObject:item11];
    COMHome *item12 = [[COMHome alloc] init];
    item12.foodName =@"Verduras";
    [self.mainFoods addObject:item12];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.mainFoods count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ListPrototypeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    COMHome *mainFoods = [self.mainFoods objectAtIndex:indexPath.row];
    cell.textLabel.text = mainFoods.foodName;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Hello");
    [self performSegueWithIdentifier:@"seg" sender:[tableView cellForRowAtIndexPath:indexPath]];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"seg"]) {
        UIViewController * CONTROLLER = segue.destinationViewController;
        UITableViewCell *cell = (UITableViewCell*)sender;
        CONTROLLER.title = cell.textLabel.text;
    }
    
    
    
}



@end
