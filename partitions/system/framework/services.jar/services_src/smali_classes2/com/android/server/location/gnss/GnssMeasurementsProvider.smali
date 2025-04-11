.class public final Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "GnssMeasurementsProvider.java"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;


# instance fields
.field public final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mLogger:Lcom/android/server/location/injector/LocationUsageLogger;


# direct methods
.method public static synthetic $r8$lambda$VRpHPMdfP6ckq4iaMLVi3VlUrYw(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->lambda$onReportMeasurements$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wjAuYI6DkZgaJFXjexxUZ_Zj_50(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->lambda$onReportMeasurements$1(Landroid/location/GnssMeasurementsEvent;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/AppOpsHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 92
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 93
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 94
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 96
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 97
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addMeasurementCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;)V

    return-void
.end method

.method public static synthetic lambda$onReportMeasurements$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;)V
    .locals 0

    .line 260
    invoke-interface {p1, p0}, Landroid/location/IGnssMeasurementsListener;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method private synthetic lambda$onReportMeasurements$1(Landroid/location/GnssMeasurementsEvent;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 1

    .line 258
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/4 v0, 0x1

    .line 259
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    .line 258
    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 260
    new-instance p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;-><init>(Landroid/location/GnssMeasurementsEvent;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addListener(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .locals 0

    .line 48
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    check-cast p3, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->addListener(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method

.method public createRegistration(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .locals 1

    .line 114
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V

    return-object v0
.end method

.method public bridge synthetic createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .locals 0

    .line 48
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    check-cast p3, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->createRegistration(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;
    .locals 0

    .line 270
    sget-object p0, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_MEASUREMENT:Landroid/location/LocationConstants$LISTENER_TYPE;

    return-object p0
.end method

.method public isSupported()Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->isMeasurementSupported()Z

    move-result p0

    return p0
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Landroid/location/GnssMeasurementRequest;
    .locals 6

    .line 192
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->isGnssMeasurementsFullTrackingEnabled()Z

    move-result p0

    .line 196
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 197
    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssMeasurementRequest;

    .line 199
    invoke-virtual {v3}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v3}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move p0, v5

    .line 205
    :cond_1
    invoke-virtual {v3}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v5

    .line 208
    :cond_2
    invoke-virtual {v3}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 211
    :cond_3
    new-instance p1, Landroid/location/GnssMeasurementRequest$Builder;

    invoke-direct {p1}, Landroid/location/GnssMeasurementRequest$Builder;-><init>()V

    .line 212
    invoke-virtual {p1, p0}, Landroid/location/GnssMeasurementRequest$Builder;->setFullTracking(Z)Landroid/location/GnssMeasurementRequest$Builder;

    move-result-object p0

    .line 213
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurementRequest$Builder;->setCorrelationVectorOutputsEnabled(Z)Landroid/location/GnssMeasurementRequest$Builder;

    move-result-object p0

    .line 214
    invoke-virtual {p0, v2}, Landroid/location/GnssMeasurementRequest$Builder;->setIntervalMillis(I)Landroid/location/GnssMeasurementRequest$Builder;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Landroid/location/GnssMeasurementRequest$Builder;->build()Landroid/location/GnssMeasurementRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/GnssMeasurementRequest;

    move-result-object p0

    return-object p0
.end method

.method public onActive()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SettingsHelper;->addOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    return-void
.end method

.method public onHalRestarted()V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->resetService()V

    return-void
.end method

.method public onInactive()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SettingsHelper;->removeOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    return-void
.end method

.method public onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .locals 11

    .line 220
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 223
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 229
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    .line 220
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0

    .line 48
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .locals 11

    .line 236
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 239
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 245
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    .line 236
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0

    .line 48
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onReportMeasurements(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1

    .line 257
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    return-void
.end method

.method public onSettingChanged()V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    return-void
.end method

.method public registerWithService(Landroid/location/GnssMeasurementRequest;Ljava/util/Collection;)Z
    .locals 3

    .line 120
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result p2

    const v0, 0x7fffffff

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    return v1

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result p2

    .line 124
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v0

    .line 125
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v2

    .line 123
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->startMeasurementCollection(ZZI)Z

    move-result p0

    const-string p2, "GnssManager"

    if-eqz p0, :cond_1

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "starting gnss measurements ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "error starting gnss measurements"

    .line 131
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    .line 48
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->registerWithService(Landroid/location/GnssMeasurementRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public reregisterWithService(Landroid/location/GnssMeasurementRequest;Landroid/location/GnssMeasurementRequest;Ljava/util/Collection;)Z
    .locals 3

    .line 140
    invoke-virtual {p2}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result p1

    const v0, 0x7fffffff

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->unregisterWithService()V

    return v1

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 145
    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->getConfiguration()Lcom/android/server/location/gnss/GnssConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object p1

    .line 146
    iget v0, p1, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMinor:I

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->unregisterWithService()V

    .line 155
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->registerWithService(Landroid/location/GnssMeasurementRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    .line 48
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    check-cast p2, Landroid/location/GnssMeasurementRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->reregisterWithService(Landroid/location/GnssMeasurementRequest;Landroid/location/GnssMeasurementRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public unregisterWithService()V
    .locals 1

    .line 160
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopMeasurementCollection()Z

    move-result p0

    const-string v0, "GnssManager"

    if-eqz p0, :cond_0

    const-string/jumbo p0, "stopping gnss measurements"

    .line 162
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "error stopping gnss measurements"

    .line 165
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
