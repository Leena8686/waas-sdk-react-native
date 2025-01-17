// MPCKeyServiceBridge.m
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(MPCKeyService, NSObject)

RCT_EXTERN_METHOD(initialize:(NSString)apiKeyName
                  withPrivateKey:(NSString)privateKey
                  withResolver:(RCTPromiseResolveBlock)resolve
                  withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(registerDevice:(RCTPromiseResolveBlock)resolve
                  withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(pollForPendingDeviceGroup:(NSString)deviceGroup
                  withPollInterval:(nonnull NSNumber)pollInterval
                  withResolver:(RCTPromiseResolveBlock)resolve
                  withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(stopPollingForPendingDeviceGroup:(RCTPromiseResolveBlock)resolve
                  withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(createTxSignature:(NSString)keyName
                  withTransaction: (NSDictionary)transaction
                  withResolver:(RCTPromiseResolveBlock)resolve
                  withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(createSignatureFromTx:(NSString)parent
                  withTransaction:(NSDictionary)transaction
                  withResolver:(RCTPromiseResolveBlock)resolve
                  withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(pollForPendingSignatures:(NSString)deviceGroup
                  withPollInterval:(nonnull NSNumber)pollInterval
                  withResolver:(RCTPromiseResolveBlock)resolve
                  withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(stopPollingForPendingSignatures:(RCTPromiseResolveBlock)resolve
                  withRejecter:(RCTPromiseRejectBlock)reject)


RCT_EXTERN_METHOD(waitPendingSignature:(NSString)operation
                  withResolver:(RCTPromiseResolveBlock)resolve
                  withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(getSignedTransaction:(NSDictionary)tx
                  withSignature:(NSDictionary)signature
                  withResolver:(RCTPromiseResolveBlock)resolve
                  withRejecter:(RCTPromiseRejectBlock)reject)

@end
