.class public Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;
.super Ljava/lang/Object;
.source "LegacyWatchBatteryManager.java"

# interfaces
.implements Lcom/samsung/android/server/battery/WatchBatteryManagerInterface;


# instance fields
.field public AUTHORITY_URI_LIST:Ljava/util/ArrayList;

.field public BATTERY_INFO_PROVIDER_PERMISSION:Ljava/lang/String;

.field public SUPPORT_URI_LIST:Ljava/util/ArrayList;

.field public mAlarmManager:Landroid/app/AlarmManager;

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
.method public static synthetic $r8$lambda$TS9m38AwUVLuMfzO9-GD-Jq1y5s(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->lambda$retryCheckSupportedVersion$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetSUPPORT_URI_LIST(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->SUPPORT_URI_LIST:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegistered(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncState(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncStopOffset(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncStopOffset:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCanSyncBatteryInfo(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCanSyncBatteryInfo:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCheckSupportedVersionRetry(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCheckSupportedVersionRetry:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnected(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSyncState(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckSupportedVersion(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->checkSupportedVersion()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckSyncStart(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->checkSyncStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupWatchBatteryInfo(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->cleanupWatchBatteryInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateWatchBatteryInfo(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->createWatchBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeWatchAuthorities(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->makeWatchAuthorities()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareWatchBatteryInfoSync(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->prepareWatchBatteryInfoSync()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestBatteryDataSync(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->requestBatteryDataSync(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mretryCheckSupportedVersion(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->retryCheckSupportedVersion()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.companionservice.BATTERY_INFO_PROVIDER"

    iput-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->BATTERY_INFO_PROVIDER_PERMISSION:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mRegistered:Z

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mScreenOn:Z

    const/16 v2, 0x3c

    iput v2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncStopOffset:I

    iput v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncState:I

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mConnected:Z

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCanSyncBatteryInfo:Z

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mProviderRegistered:Z

    iput v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCheckSupportedVersionRetry:I

    iput-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;

    iget-object p2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private synthetic lambda$retryCheckSupportedVersion$0()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retryCheckSupportedVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCheckSupportedVersionRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyWatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCanSyncBatteryInfo:Z

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCheckSupportedVersionRetry:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->checkSupportedVersion()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const-string v0, "NOT_SUPPORTED"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCheckSupportedVersionRetry:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCheckSupportedVersionRetry:I

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->retryCheckSupportedVersion()V

    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->prepareWatchBatteryInfoSync()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCheckSupportedVersionRetry:I

    return-void
.end method


# virtual methods
.method public aodShowStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final checkSupportedVersion()I
    .locals 11

    const-string v0, "LegacyWatchBatteryManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->SUPPORT_URI_LIST:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

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

    iget-object v8, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "check_sync_battery_data_supported_version"

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "result"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

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

    iget-object v8, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->SUPPORT_URI_LIST:Ljava/util/ArrayList;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSyncStart() / mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mCanSyncBatteryInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCanSyncBatteryInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyWatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCanSyncBatteryInfo:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->requestBatteryDataSync(I)V

    iput v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncState:I

    :cond_0
    return-void
.end method

.method public final checkSyncStop()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSyncStop() / mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mCanSyncBatteryInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCanSyncBatteryInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyWatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->requestBatteryDataSync(I)V

    iput v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncState:I

    :cond_0
    return-void
.end method

.method public final cleanupWatchBatteryInfo(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->unRegisterBatteryInfoObserver()V

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCanSyncBatteryInfo:Z

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->checkSyncStop()V

    return-void
.end method

.method public final createWatchBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "LegacyWatchBatteryManager"

    const-string p1, "bluetoothAdapter is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-direct {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>()V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    return-object p1
.end method

.method public displayStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public final makeWatchAuthorities()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->BATTERY_INFO_PROVIDER_PERMISSION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "LegacyWatchBatteryManager"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/ mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/ mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyWatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mRegistered:Z

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->checkSyncStart()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mRegistered:Z

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->checkSyncStop()V

    :goto_0
    return-void
.end method

.method public final prepareWatchBatteryInfoSync()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mCanSyncBatteryInfo:Z

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->registerBatteryInfoObserver()V

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->checkSyncStart()V

    return-void
.end method

.method public final registerBatteryInfoObserver()V
    .locals 6

    const-string v0, "LegacyWatchBatteryManager"

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mProviderRegistered:Z

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->SUPPORT_URI_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

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

    iget-object v3, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mProviderRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestBatteryDataSync syncData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyWatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$3;-><init>(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final retryCheckSupportedVersion()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public systemServicesReady()V
    .locals 5

    const-class v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    iput-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;-><init>(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener-IA;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.android.wearable.action.WEARABLE_DEVICE_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.wearable.action.WEARABLE_DEVICE_DISCONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.wearable.action.CAPABILITY_SUPPORT_BATTERY_INFO_SYNC"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$2;-><init>(Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;Lcom/samsung/android/server/battery/LegacyWatchBatteryManager$ScreenOffAlarmListener;)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final unRegisterBatteryInfoObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mProviderRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/battery/LegacyWatchBatteryManager;->mProviderRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurred : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LegacyWatchBatteryManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
