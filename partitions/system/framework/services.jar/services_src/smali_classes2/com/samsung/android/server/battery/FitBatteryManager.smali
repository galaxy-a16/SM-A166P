.class public Lcom/samsung/android/server/battery/FitBatteryManager;
.super Ljava/lang/Object;
.source "FitBatteryManager.java"


# instance fields
.field public mAlarmListener:Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmRegistered:Z

.field public mAodShowState:I

.field public mConnected:Z

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mProviderUriMap:Ljava/util/HashMap;

.field public mRegistered:Z

.field public mScreenOn:Z

.field public mSyncState:I

.field public mSyncStopOffset:I

.field public mWatchPackageMap:Ljava/util/HashMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/battery/FitBatteryManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckSyncStop(Lcom/samsung/android/server/battery/FitBatteryManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/FitBatteryManager;->checkSyncStop()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mRegistered:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mScreenOn:Z

    const/16 v1, 0x3c

    iput v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncStopOffset:I

    iput v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    iput-boolean v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mConnected:Z

    iput v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAodShowState:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;

    iput-boolean v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmRegistered:Z

    iput-object p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addWatchPackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p2, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".BatteryInfoProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mConnected:Z

    iget-boolean p2, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mRegistered:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mScreenOn:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAodShowState:I

    if-ne p2, p1, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/FitBatteryManager;->requestBatteryDataSync(I)V

    iput p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public aodShowStateChanged(I)V
    .locals 12

    iput p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAodShowState:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mScreenOn:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    if-ne p1, v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncStopOffset:I

    int-to-long v3, p1

    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long v7, v1, v3

    iget-object v5, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    const-string v9, "WatchBatteryManagerAlarm"

    iget-object v10, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;

    iget-object v11, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    iput-boolean v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmRegistered:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmRegistered:Z

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmRegistered:Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/FitBatteryManager;->checkSyncStart()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final checkSyncStart()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSyncStart() / mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAodShowState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAodShowState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FitBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mScreenOn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAodShowState:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mConnected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/battery/FitBatteryManager;->requestBatteryDataSync(I)V

    iput v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    :cond_1
    return-void
.end method

.method public final checkSyncStop()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSyncStop() / mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAodShowState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAodShowState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FitBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/FitBatteryManager;->requestBatteryDataSync(I)V

    iput v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    :cond_0
    return-void
.end method

.method public displayStateChanged(Z)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mScreenOn:Z

    iget-boolean p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmRegistered:Z

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;

    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-boolean v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/FitBatteryManager;->checkSyncStart()V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mScreenOn:Z

    iget p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAodShowState:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    if-ne p1, v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncStopOffset:I

    int-to-long v4, p1

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v8, v2, v4

    iget-object v6, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    const-string v10, "WatchBatteryManagerAlarm"

    iget-object v11, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;

    iget-object v12, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmRegistered:Z

    :cond_2
    :goto_0
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

    iget v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/ mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FitBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mRegistered:Z

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/FitBatteryManager;->checkSyncStart()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mRegistered:Z

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/FitBatteryManager;->checkSyncStop()V

    :goto_0
    return-void
.end method

.method public removeWatchPackageInfo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mConnected:Z

    iput p1, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mSyncState:I

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
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

    const-string v1, "FitBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/battery/FitBatteryManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/battery/FitBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/FitBatteryManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public systemServicesReady()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;-><init>(Lcom/samsung/android/server/battery/FitBatteryManager;Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/battery/FitBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/FitBatteryManager$ScreenOffAlarmListener;

    return-void
.end method
