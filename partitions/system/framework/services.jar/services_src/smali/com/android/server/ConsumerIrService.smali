.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# instance fields
.field public mAidlService:Landroid/hardware/ir/IConsumerIr;

.field public final mContext:Landroid/content/Context;

.field public final mHalLock:Ljava/lang/Object;

.field public final mHasNativeHal:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    .line 49
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "ConsumerIrService"

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/android/server/ConsumerIrService;->getHalService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.consumerir"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native getHidlHalService()Z
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halTransmit(I[I)I
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .locals 6

    .line 133
    invoke-super {p0}, Landroid/hardware/IConsumerIrService$Stub;->getCarrierFrequencies_enforcePermission()V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 137
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 140
    :try_start_1
    invoke-interface {p0}, Landroid/hardware/ir/IConsumerIr;->getCarrierFreqs()[Landroid/hardware/ir/ConsumerIrFreqRange;

    move-result-object p0

    .line 141
    array-length v1, p0

    if-gtz v1, :cond_0

    const-string v1, "ConsumerIrService"

    const-string v2, "Error getting carrier frequencies."

    .line 142
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 145
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 146
    aget-object v4, p0, v2

    iget v5, v4, Landroid/hardware/ir/ConsumerIrFreqRange;->minHz:I

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 147
    iget v4, v4, Landroid/hardware/ir/ConsumerIrFreqRange;->maxHz:I

    aput v4, v1, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    :try_start_2
    monitor-exit v0

    return-object v1

    .line 151
    :catch_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_2
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 156
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getHalService()Z
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/ir/IConsumerIr;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/hardware/ir/IConsumerIr$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ir/IConsumerIr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 82
    :cond_0
    invoke-static {}, Lcom/android/server/ConsumerIrService;->getHidlHalService()Z

    move-result p0

    return p0
.end method

.method public hasIrEmitter()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    return p0
.end method

.method public final throwIfNoIrEmitter()V
    .locals 1

    .line 86
    iget-boolean p0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz p0, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "IR emitter not available"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .locals 5

    .line 95
    invoke-super {p0}, Landroid/hardware/IConsumerIrService$Stub;->transmit_enforcePermission()V

    .line 99
    array-length p1, p3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget v3, p3, v2

    if-lez v3, :cond_0

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-positive IR slice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/32 v2, 0x1e8480

    cmp-long p1, v0, v2

    if-gtz p1, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 113
    iget-object p1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 114
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 116
    :try_start_1
    invoke-interface {p0, p2, p3}, Landroid/hardware/ir/IConsumerIr;->transmit(I[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "ConsumerIrService"

    .line 118
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error transmitting frequency: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    :cond_2
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    move-result p0

    if-gez p0, :cond_3

    const-string p2, "ConsumerIrService"

    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error transmitting: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 107
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IR pattern too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
