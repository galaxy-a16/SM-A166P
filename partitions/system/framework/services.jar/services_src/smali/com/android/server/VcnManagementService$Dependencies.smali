.class public Lcom/android/server/VcnManagementService$Dependencies;
.super Ljava/lang/Object;
.source "VcnManagementService.java"


# instance fields
.field public mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$_VNloC3iCskBRy_SBrw380QTwwc(Ljava/lang/Integer;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/VcnManagementService$Dependencies;->lambda$getRestrictedTransportsFromCarrierConfig$0(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getRestrictedTransportsFromCarrierConfig$0(Ljava/lang/Integer;)I
    .locals 0

    .line 393
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getBinderCallingUid()I
    .locals 0

    .line 335
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {}, Lcom/android/server/VcnManagementService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    .line 311
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 313
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 315
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getRestrictedTransports(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnConfig;)Ljava/util/Set;
    .locals 1

    .line 412
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 413
    invoke-virtual {p3}, Landroid/net/vcn/VcnConfig;->getRestrictedUnderlyingNetworkTransports()Ljava/util/Set;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 418
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService$Dependencies;->getRestrictedTransportsFromCarrierConfig(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Set;

    move-result-object p0

    .line 417
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getRestrictedTransportsFromCarrierConfig(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Set;
    .locals 2

    .line 382
    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    if-nez p0, :cond_0

    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p0, :cond_0

    .line 383
    invoke-static {}, Lcom/android/server/VcnManagementService;->-$$Nest$sfgetRESTRICTED_TRANSPORTS_DEFAULT()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 387
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    move-result-object p0

    if-nez p0, :cond_1

    .line 389
    invoke-static {}, Lcom/android/server/VcnManagementService;->-$$Nest$sfgetRESTRICTED_TRANSPORTS_DEFAULT()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 392
    :cond_1
    invoke-static {}, Lcom/android/server/VcnManagementService;->-$$Nest$sfgetRESTRICTED_TRANSPORTS_DEFAULT()Ljava/util/Set;

    move-result-object p1

    .line 393
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/VcnManagementService$Dependencies$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/VcnManagementService$Dependencies$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    const-string/jumbo p2, "vcn_restricted_transports"

    .line 395
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object p0

    .line 400
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 401
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget v1, p0, v0

    .line 402
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public newPersistableBundleLockingReadWriteHelper(Ljava/lang/String;)Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;
    .locals 0

    .line 346
    new-instance p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-direct {p0, p1}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public newTelephonySubscriptionTracker(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)Lcom/android/server/vcn/TelephonySubscriptionTracker;
    .locals 1

    .line 323
    new-instance p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/vcn/TelephonySubscriptionTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)V

    return-object p0
.end method

.method public newVcn(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)Lcom/android/server/vcn/Vcn;
    .locals 6

    .line 365
    new-instance p0, Lcom/android/server/vcn/Vcn;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vcn/Vcn;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)V

    return-object p0
.end method

.method public newVcnContext(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)Lcom/android/server/vcn/VcnContext;
    .locals 0

    .line 355
    new-instance p0, Lcom/android/server/vcn/VcnContext;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vcn/VcnContext;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)V

    return-object p0
.end method
