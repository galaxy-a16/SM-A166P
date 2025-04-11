.class public Lcom/samsung/android/server/battery/WatchBatteryManager;
.super Ljava/lang/Object;
.source "WatchBatteryManager.java"

# interfaces
.implements Lcom/samsung/android/server/battery/WatchBatteryManagerInterface;


# instance fields
.field public AUTHORITY_URI_LIST:Ljava/util/ArrayList;

.field public BATTERY_INFO_PROVIDER_PERMISSION:Ljava/lang/String;

.field public SUPPORT_URI_LIST:Ljava/util/ArrayList;

.field public mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmRegistered:Z

.field public mAodShowState:I

.field public mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

.field public mCanSyncBatteryInfo:Z

.field public mCheckSupportedVersionRetry:I

.field public mConnected:Z

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mProviderRegistered:Z

.field public mRegistered:Z

.field public mScreenOn:Z

.field public mSyncState:I

.field public mSyncStopOffset:I

.field public mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

.field public mWatchBatteryObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$oMT1j-h15Cuoz6QsXYqrf_KHHh4(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->lambda$retryCheckSupportedVersion$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetSUPPORT_URI_LIST(Lcom/samsung/android/server/battery/WatchBatteryManager;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->SUPPORT_URI_LIST:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/WatchBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/battery/WatchBatteryManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/battery/WatchBatteryManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCanSyncBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCheckSupportedVersionRetry(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnected(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckSupportedVersion(Lcom/samsung/android/server/battery/WatchBatteryManager;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSupportedVersion()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckSyncStop(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStop()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupWatchBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->cleanupWatchBatteryInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateWatchBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->createWatchBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeWatchAuthorities(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->makeWatchAuthorities()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareWatchBatteryInfoSync(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->prepareWatchBatteryInfoSync()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mretryCheckSupportedVersion(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->retryCheckSupportedVersion()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.companionservice.BATTERY_INFO_PROVIDER"

    .line 94
    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->BATTERY_INFO_PROVIDER_PERMISSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    const/4 v1, 0x0

    .line 101
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    const/16 v2, 0x3c

    .line 104
    iput v2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncStopOffset:I

    .line 105
    iput v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 106
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    .line 107
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    .line 108
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderRegistered:Z

    .line 109
    iput v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    .line 110
    iput v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    .line 112
    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    .line 113
    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    .line 114
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    .line 117
    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance p1, Lcom/samsung/android/server/battery/WatchBatteryManager$1;

    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/battery/WatchBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private synthetic lambda$retryCheckSupportedVersion$0()V
    .locals 4

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retryCheckSupportedVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSupportedVersion()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const-string v0, "NOT_SUPPORTED"

    .line 283
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->retryCheckSupportedVersion()V

    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->prepareWatchBatteryInfoSync()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 277
    iput v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    return-void
.end method


# virtual methods
.method public aodShowStateChanged(I)V
    .locals 12

    .line 253
    iput p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 254
    iget-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    if-nez p1, :cond_0

    .line 255
    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    if-ne p1, v0, :cond_2

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncStopOffset:I

    int-to-long v3, p1

    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long v7, v1, v3

    .line 258
    iget-object v5, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    const-string v9, "WatchBatteryManagerAlarm"

    iget-object v10, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    iget-object v11, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 260
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    goto :goto_0

    .line 263
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    if-ne p1, v0, :cond_1

    .line 264
    iget-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 p1, 0x0

    .line 265
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final checkSupportedVersion()I
    .locals 11

    const-string v0, "WatchBatteryManager"

    .line 431
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->SUPPORT_URI_LIST:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 434
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v2

    move v5, v3

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 435
    iget-object v8, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "check_sync_battery_data_supported_version"

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "result"

    .line 437
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 438
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkSupportedVersion("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v1, :cond_1

    .line 440
    iget-object v8, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->SUPPORT_URI_LIST:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v1

    goto :goto_0

    :cond_1
    if-ne v6, v2, :cond_0

    move v5, v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move v6, v2

    move v5, v3

    .line 447
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSupportedVersion - IllegalStateException : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v3, :cond_3

    return v1

    :cond_3
    if-eqz v5, :cond_4

    return v2

    :cond_4
    return v6
.end method

.method public final checkSyncStart()V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSyncStart() / mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAodShowState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mCanSyncBatteryInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    if-nez v0, :cond_1

    .line 318
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V

    .line 319
    iput v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    :cond_1
    return-void
.end method

.method public final checkSyncStop()V
    .locals 2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSyncStop() / mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAodShowState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mCanSyncBatteryInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V

    .line 330
    iput v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    :cond_0
    return-void
.end method

.method public final cleanupWatchBatteryInfo(Ljava/lang/String;)V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->unRegisterBatteryInfoObserver()V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    const/4 p1, 0x0

    .line 308
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStop()V

    return-void
.end method

.method public final createWatchBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 1

    .line 348
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "WatchBatteryManager"

    const-string p1, "bluetoothAdapter is null"

    .line 350
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 353
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 355
    new-instance p1, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-direct {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>()V

    .line 356
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setAddress(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 358
    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    const/4 p0, -0x1

    .line 359
    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    const/4 p0, 0x1

    .line 360
    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    return-object p1
.end method

.method public displayStateChanged(Z)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 231
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 232
    iget-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    if-ne p1, v1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 234
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    goto :goto_0

    .line 238
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    .line 239
    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    if-nez p1, :cond_2

    .line 240
    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    if-ne p1, v1, :cond_2

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncStopOffset:I

    int-to-long v4, p1

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v8, v2, v4

    .line 243
    iget-object v6, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    const-string v10, "WatchBatteryManagerAlarm"

    iget-object v11, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    iget-object v12, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 245
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final makeWatchAuthorities()V
    .locals 7

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

    .line 368
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->BATTERY_INFO_PROVIDER_PERMISSION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "WatchBatteryManager"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 371
    iget-object v4, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authority : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resolve info size : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyPackageRegistered(Z)V
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/ mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/ mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 339
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 342
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStop()V

    :goto_0
    return-void
.end method

.method public final prepareWatchBatteryInfoSync()V
    .locals 1

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->registerBatteryInfoObserver()V

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    return-void
.end method

.method public final registerBatteryInfoObserver()V
    .locals 6

    const-string v0, "WatchBatteryManager"

    .line 378
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderRegistered:Z

    if-nez v1, :cond_1

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->SUPPORT_URI_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerBatteryInfoObserver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v3, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 384
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final requestBatteryDataSync(I)V
    .locals 2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestBatteryDataSync syncData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/battery/WatchBatteryManager$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager$3;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final retryCheckSupportedVersion()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/battery/WatchBatteryManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/battery/WatchBatteryManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public systemServicesReady()V
    .locals 4

    .line 170
    const-class v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 171
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 173
    new-instance v0, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.wearable.action.WEARABLE_DEVICE_CONNECTED"

    .line 176
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.wearable.action.WEARABLE_DEVICE_DISCONNECTED"

    .line 177
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.wearable.action.CAPABILITY_SUPPORT_BATTERY_INFO_SYNC"

    .line 178
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/server/battery/WatchBatteryManager$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/battery/WatchBatteryManager$2;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final unRegisterBatteryInfoObserver()V
    .locals 2

    .line 392
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurred : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WatchBatteryManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
