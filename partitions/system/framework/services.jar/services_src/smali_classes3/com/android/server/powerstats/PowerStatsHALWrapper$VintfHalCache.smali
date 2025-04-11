.class public Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;
.super Ljava/lang/Object;
.source "PowerStatsHALWrapper.java"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInstance:Landroid/hardware/power/stats/IPowerStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .locals 2

    monitor-enter p0

    .line 366
    :try_start_0
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerStats HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Landroid/hardware/power/stats/IPowerStats;
    .locals 3

    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;

    if-nez v0, :cond_0

    const-string v0, "android.hardware.power.stats.IPowerStats/default"

    .line 350
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {v0}, Landroid/hardware/power/stats/IPowerStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/power/stats/IPowerStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 355
    :try_start_1
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 357
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register DeathRecipient for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Landroid/hardware/power/stats/IPowerStats;

    move-result-object p0

    return-object p0
.end method
