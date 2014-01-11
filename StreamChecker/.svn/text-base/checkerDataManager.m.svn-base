//
//  checkerDataManager.m
//  StreamChecker
//
//  Created by Jan Damek on /258/12.
//  Copyright (c) 2012 Jan Damek. All rights reserved.
//

#import "checkerDataManager.h"
#import <CoreLocation/CLLocationManager.h>
#import "Reachability.h"

@implementation checkerDataManager

@synthesize streamStatusChange = _streamStatusChange;
@synthesize historyStatusChange = _historyStatusChange;
@synthesize streams = _streams;
@synthesize history = _history;

+(NSString*)historyIntervalToString:(HistoryIntervalTyp)historyInterval{
    switch (historyInterval) {
        case DESET:
            return NSLocalizedString(@"deset", nil);
            break;
            
        case DVACET:
            return NSLocalizedString(@"dvacet", nil);
            break;
            
        case TRICET:
            return NSLocalizedString(@"tricet", nil);
            break;
            
        case DEN:
            return NSLocalizedString(@"den", nil);
            break;
            
        case TYDEN:
            return NSLocalizedString(@"tyden", nil);
            break;
            
        case MESIC:
            return NSLocalizedString(@"mesic", nil);
            break;
            
        case KVARTAL:
            return NSLocalizedString(@"kvartal", nil);
            break;
            
        default:
            return NSLocalizedString(@"N/A", nil);
            break;
    }
}

+(NSString*)serverTypeToString:(ServerTyp)serverTyp{
    switch (serverTyp) {
        case ICECAST:
            return NSLocalizedString(@"ICCAST", nil);
            break;
            
        case SHOUTCAST:
            return NSLocalizedString(@"SHOUTCAST", nil);
            break;
            
        default:
            return NSLocalizedString(@"N/A", nil);
            break;
    }
};

+(NSString*)formatTypToString:(FormatTyp)formatTyp{
    switch (formatTyp) {
        case MP3:
            return NSLocalizedString(@"MP3", nil);
            break;
            
        case OOG:
            return NSLocalizedString(@"OOG", nil);
            break;
            
        case AAC:
            return NSLocalizedString(@"AAC", nil);
            break;
            
        default:
            return NSLocalizedString(@"N/A", nil);
            break;
    }
};

+(NSString*)streamStateToString:(StreamState)state{
    switch (state) {
        case NODATA:
            return NSLocalizedString(@"nodata", nil);
            break;
            
        case WORKING:
            return NSLocalizedString(@"working", nil);
            break;
            
        case SILENT:
            return NSLocalizedString(@"silent", nil);
            break;
            
        default:
            return NSLocalizedString(@"N/A", nil);
            break;
    }
};


-(id)init{
    id _id =[super init];
    
    _defaults = [NSUserDefaults standardUserDefaults];
    
    [self loadData];
    
    return _id;
};

-(void)saveData{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    
    [_streams writeToFile:[basePath stringByAppendingString:@"/streams.data"] atomically:YES];
};

-(void)loadData{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    
    _streams = [[NSMutableArray alloc] initWithContentsOfFile:[basePath stringByAppendingString:@"/streams.data"]];
    
    if (!_streams){
        _streams = [[NSMutableArray alloc] init];
    }
    
    self.aktStream = 0;

};

#pragma private

-(void)doTestStream:(NSMutableDictionary *)stream{
    
    if (self.onlyWiFi == NO || [[Reachability reachabilityForLocalWiFi] currentReachabilityStatus] == ReachableViaWiFi)
    {
        
        //provede samotny test zda stream spravne bezi
        [stream setObject:[NSNumber numberWithBool:YES] forKey:@"inproces"];
        int pocet = [[stream objectForKey:@"pocetstartu"]intValue]+1;
        [stream setValue:[NSNumber numberWithInt:pocet] forKey:@"pocetstartu"];
        
//        NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:[stream objectForKey:@"url"]]];
                
//        NSData *urlData; 
//        NSURLResponse *response; 
//        NSError *error;
        
//        NSURL *url = [NSURL URLWithString:[stream objectForKey:@"url"]];
        int kHTTPReadStreamBufferSize = 1024;
        int kHTTPReadTimeOutTimeInSeconds = 30;
        
        NSString *u = [stream objectForKey:@"url"];
        CFStringRef url =  (__bridge CFStringRef) u;
        CFURLRef requestURL = CFURLCreateWithString(kCFAllocatorDefault, url, NULL);
        
        CFReadStreamRef httpReadStream = CFReadStreamCreateWithFTPURL(
                                                                  kCFAllocatorDefault, requestURL);
        
        NSMutableData* bodyData = [NSMutableData dataWithCapacity:kHTTPReadStreamBufferSize];
        NSDate* startTimeStamp = [NSDate date];
        NSError *error;
        CFHTTPMessageRef *responseHeader = NULL;
        
        while (TRUE) {
            if (CFReadStreamHasBytesAvailable(httpReadStream)) {
                startTimeStamp = [NSDate date];
                UInt8* streambuffer = malloc(kHTTPReadStreamBufferSize);
                int readBytes = CFReadStreamRead (httpReadStream,streambuffer,kHTTPReadStreamBufferSize);
                NSLog(@"Read: %d",readBytes);
                [bodyData appendBytes:streambuffer length:readBytes];
                free(streambuffer);
            }
            
            if (CFReadStreamGetStatus(httpReadStream) == kCFStreamStatusError) {
                error = (__bridge NSError*)CFReadStreamCopyError (httpReadStream);
                if ([error code] == 61) {
                    NSLog(@"Error occured: %d",[error code]);
                    // connection refused
//                    [PlusError errorForDomainWithCode:kPlusHostUnreachable errorDescription:NSLocalizedString(@"kPlusHostUnreachable",@"") underlyingError:nil url:nil toError:error];
                    
                }
                *responseHeader = nil;
//                *bodyContent = nil;
                break;          
            }
            
            if (CFReadStreamGetStatus(httpReadStream) == kCFStreamStatusAtEnd) {
                NSLog(@"Stream reached end!");
                *responseHeader = (CFHTTPMessageRef)CFReadStreamCopyProperty(httpReadStream, kCFStreamPropertyHTTPResponseHeader);      
                error = nil;
                break;
            }
            
            // timeout management
            NSTimeInterval timeInterval = [startTimeStamp timeIntervalSinceNow]*-1;
            if (timeInterval >= kHTTPReadTimeOutTimeInSeconds) {
//                [PlusError errorForDomainWithCode:kPlusResourceLoadingError errorDescription:NSLocalizedString(@"kPlusResourceLoadingError",@"") underlyingError:nil url:nil toError:error];
                
                break;
            }   
        }     
        
        //na konci testu zapise konec stream testu
        [stream setValue:[NSNumber numberWithBool:NO] forKey:@"inproces"];
        [stream setValue:[NSNumber numberWithInt:0] forKey:@"pocetstartu"];
    }
}

-(void)doTimer:(NSTimer *)theTimer {
    
    _streamStatusChange = NO;

    NSMutableDictionary *s = [theTimer userInfo];
    if (s){
        
        if ([[s objectForKey:@"inproces"] boolValue])
        {
            //testy zda neni blokly test tohoto streamu
            int pocet = [[s objectForKey:@"pocetstartu"]intValue];
            if (pocet>5){
                [s setValue:[NSNumber numberWithInt:0] forKey:@"pocetstartu"];
                [self doTestStream:s];
            }
            
        }else {
            //spusteni testu na stream
            [self doTestStream:s];
        }
    }else {
        //proces udrzeni zive aplikace vcetne timeru a beh na pozadi
        CLLocationManager *locationManager = [[CLLocationManager alloc] init];    
        [locationManager startUpdatingLocation];
        [locationManager stopUpdatingLocation];
        
    }
    
}

-(void) startStreamScaner{
    
    [self stopStreamScaner];
    
    _timers = [[NSMutableArray alloc] init];
    
    // zakladni timer pro hlidani background procesu
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:300 target:self selector:@selector(doTimer:) userInfo:nil repeats:YES]; 
    [_timers addObject:timer];
    
    for (int i=0; i<[_streams count]; i++) {
        //vytvoreni timeru pro kontrolu dle zadaneho casoveho intervalu pro stream;
        
        NSMutableDictionary *s = [_streams objectAtIndex:i];
        int interval = [[s objectForKey:@"interval"] intValue] * 60; 
        
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(doTimer:) userInfo:s repeats:YES]; 
        
        [_timers addObject:timer];
    }
}

-(void) stopStreamScaner{
    //zastavit vsechny casovace
    for (NSTimer *timer in _timers) {
        [timer invalidate];
    }
}

#pragma property setting

-(BOOL) getOnlyWiFi{
    return [_defaults boolForKey:@"onlywifi"];    
};

-(void) setOnlyWiFi:(BOOL)onlyWiFi{
    [_defaults setBool:onlyWiFi forKey:@"onlywifi"];
};

-(HistoryIntervalTyp) getHistoryInterval{
    return (HistoryIntervalTyp)[_defaults integerForKey:@"historyinterval"];
};

-(void) setHistoryInterval:(HistoryIntervalTyp)historyInterval{
    [_defaults setInteger:historyInterval forKey:@"historyinterval"];
};

-(BOOL) getPushNotify{
    return [_defaults boolForKey:@"pushnotify"];
};

-(void) setPushNotify:(BOOL)pushNotify{
    [_defaults setBool:pushNotify forKey:@"pushnotify"];
};


#pragma stream seting

-(int) getAktStream{
    return _aktStream;
};
-(void) setAktStream:(int)aktStream{
    _aktStream = aktStream;
    if (aktStream<[_streams count]) {
        _stream = (NSMutableDictionary*)[_streams objectAtIndex:aktStream];
        if (_stream){
            _history = (NSMutableArray*) [_stream objectForKey:@"history"];
        }else {
            _history = nil;
        }
    }else
    {
        _stream = nil;
        _history = nil;
    }
};


-(NSString*) getName{
    return [_stream objectForKey:@"name"];
};
-(void) setName:(NSString *)name{
    [_stream setObject:name forKey:@"name"];
};

-(NSString*) getUrl{
    return [_stream objectForKey:@"url"];
};
-(void) setUrl:(NSString *)url{
    [_stream setObject:url forKey:@"url"];
};

-(int) getInterval{
    int interval = [[_stream objectForKey:@"interval"] intValue];
    if (interval<5) interval = 5;    
    return interval;
    
};
-(void) setInterval:(int)interval{
    [_stream setObject:[NSNumber numberWithInt:interval] forKey:@"interval"];
};

-(ServerTyp) getServerTyp{
    return [[_stream objectForKey:@"servertype"] intValue];
};
-(void) setServerTyp:(ServerTyp)serverTyp{
    [_stream setObject:[NSNumber numberWithInt:serverTyp] forKey:@"servertype"];
};

-(FormatTyp) getFormatTyp{
    return [[_stream objectForKey:@"formattype"]intValue];
};
-(void) setFormatTyp:(FormatTyp)formatTyp{
    [_stream setObject:[NSNumber numberWithInt:formatTyp] forKey:@"formattype"];
};

-(StreamState) getState{
    return [[_stream objectForKey:@"streamstate"]intValue];    
};
-(void) setState:(StreamState)state{
    [_stream setObject:[NSNumber numberWithInt:state] forKey:@"streamstate"];    
};

@end
