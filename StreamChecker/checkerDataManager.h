//
//  checkerDataManager.h
//  StreamChecker
//
//  Created by Jan Damek on /258/12.
//  Copyright (c) 2012 Jan Damek. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum historyIntervalTypes
{
    DESET,
    DVACET,
    TRICET,
    DEN,
    TYDEN,
    MESIC,
    KVARTAL
} HistoryIntervalTyp;

typedef enum serverTypeTypes
{
    ICECAST,
    SHOUTCAST
} ServerTyp;

typedef enum formatTypes
{
    AAC,
    MP3,
    OOG
} FormatTyp;

typedef enum streamStates
{
    WORKING,
    SILENT,
    NODATA
} StreamState;

@interface checkerDataManager : NSObject <NSStreamDelegate>{
    
    BOOL _streamStatusChange;
    BOOL _historyStatusChange;
    
    NSUserDefaults *_defaults;
    
    int _aktStream;
    
    NSMutableArray *_streams;
    NSMutableDictionary *_stream;
    NSMutableArray *_history;
    
    NSMutableArray *_timers;
}

@property (readonly) BOOL streamStatusChange;
@property (readonly) BOOL historyStatusChange;

@property (getter = getOnlyWiFi, setter = setOnlyWiFi:) BOOL onlyWiFi;
@property (getter = getHistoryInterval, setter = setHistoryInterval:) HistoryIntervalTyp historyInterval;
@property (getter = getPushNotify, setter = setPushNotify:) BOOL pushNotify;

@property (readonly) NSMutableArray *streams;

@property (getter = getAktStream, setter = setAktStream:)int aktStream;
@property (getter = getName, setter = setName:) NSString *name;
@property (getter = getUrl, setter = setUrl:) NSString *url;
@property (getter = getInterval, setter = setInterval:) int interval;
@property (getter = getServerTyp, setter = setServerTyp:) ServerTyp serverTyp;
@property (getter = getFormatTyp, setter = setFormatTyp:) FormatTyp formatTyp;

@property (getter = getState, setter = setState:) StreamState state;

@property (retain) NSMutableArray *history;

-(id)init;

-(void)saveData;
-(void)loadData;

-(void) startStreamScaner;

-(BOOL) getOnlyWiFi;
-(void) setOnlyWiFi:(BOOL)onlyWiFi;

-(HistoryIntervalTyp) getHistoryInterval;
-(void) setHistoryInterval:(HistoryIntervalTyp)historyInterval;
+(NSString*)historyIntervalToString:(HistoryIntervalTyp)historyInterval;

-(BOOL) getPushNotify;
-(void) setPushNotify:(BOOL)pushNotify;

-(int) getAktStream;
-(void) setAktStream:(int)aktStream;

-(NSString*) getName;
-(void) setName:(NSString *)name;

-(NSString*) getUrl;
-(void) setUrl:(NSString *)url;

-(int) getInterval;
-(void) setInterval:(int)interval;

-(ServerTyp) getServerTyp;
-(void) setServerTyp:(ServerTyp)serverTyp;
+(NSString*)serverTypeToString:(ServerTyp)serverTyp;

-(FormatTyp) getFormatTyp;
-(void) setFormatTyp:(FormatTyp)formatTyp;
+(NSString*)formatTypToString:(FormatTyp)formatTyp;

-(StreamState) getState;
-(void) setState:(StreamState)state;
+(NSString*)streamStateToString:(StreamState)state;

@end
