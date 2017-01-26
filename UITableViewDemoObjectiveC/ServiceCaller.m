//
//  ServiceCaller.m
//  UITableViewDemoObjectiveC
//
//  Created by Miguel Cerra on 1/25/17.
//  Copyright © 2017 iHart. All rights reserved.
//

#import "ServiceCaller.h"


@implementation ServiceCaller


+(NSDictionary*)executeRequest
{
    
    NSDictionary* response = [[NSDictionary alloc]init];
    
    //if([self isOnline]){
    
    //AFNetWorking 3.0
    
   
    
 
 //NSString* BaseURLString = @"https://itunes.apple.com/us/rss/";
 //NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@topfreeapplications/limit=20/json", BaseURLString]];
    //NSURL *URL = [NSURL URLWithString:@"https://www.raywenderlich.com/demos/weather_sample/weather.php?format=json"];
    NSURL *URL = [NSURL URLWithString:@"https://itunes.apple.com/us/rss/topfreeapplications/limit=20/json"];
    
     AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
 [manager GET:URL.absoluteString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
    NSLog(@"JSON: %@", responseObject);
    // response = (NSDictionary*)responseObject;
} failure:^(NSURLSessionTask *operation, NSError *error) {
     //NSLog(@"Error, no hay coneccion");
     //NSLog(@"Error: %@", error);
    
   
    
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Error al Conectar con el Servicio"
                                 message:@"Ocurrio un Error al conectar con el servicio."
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Ok"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                }];
    
    
    [alert addAction:yesButton];
    
    UIViewController *vc = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    
    [vc presentViewController:alert animated:YES completion:nil];
    
}];
 
  //  }else{
    
    
    
    
    
    
  //  }
 
    return response;


 }


+(Boolean)isOnline
{
    Boolean rp = false;

    if ([[AFNetworkReachabilityManager sharedManager] isReachable]) {
        NSLog(@"Online");
        rp=true;
    }else{
    
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"No hay Coneccion a Internet"
                                     message:@"No se pudo conectar a Internet, por favor revisar su configuracion de red."
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* yesButton = [UIAlertAction
                                    actionWithTitle:@"Ok"
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {
                                        //Handle your yes please button action here
                                    }];
        
        
        [alert addAction:yesButton];
        
        UIViewController *vc = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
        
        
        [vc presentViewController:alert animated:YES completion:nil];
    
        
    
    }

    return rp;

}






@end
