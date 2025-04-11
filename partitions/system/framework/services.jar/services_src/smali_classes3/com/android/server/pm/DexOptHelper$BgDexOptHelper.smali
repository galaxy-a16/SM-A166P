.class public Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;
.super Ljava/lang/Object;
.source "DexOptHelper.java"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# static fields
.field public static SurfaceTemperatureThreshold:I = 0x0

.field public static abortCount:I = 0x0

.field public static enableTemperaturePolicy:Z = false

.field public static initialSurfaceTemperature:I = 0x0

.field public static policySelector:Z = true


# instance fields
.field public mArtManager:Lcom/android/server/art/ArtManagerLocal;

.field public mContext:Landroid/content/Context;

.field public mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

.field public volatile mObserveStarted:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmObserveStarted(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelBackgroundDexoptJob(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->cancelBackgroundDexoptJob()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBatteryLevel(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreachedToThermalThrottleLevel(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->reachedToThermalThrottleLevel()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleObserveThermal(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->scheduleObserveThermal()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/art/ArtManagerLocal;)V
    .locals 1

    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1337
    iput-boolean v0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    .line 1341
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mContext:Landroid/content/Context;

    .line 1342
    new-instance p1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;-><init>(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    .line 1343
    iput-object p3, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    return-void
.end method

.method public static exceedSurfaceTemperatureThreshold()Z
    .locals 3

    .line 1428
    invoke-static {}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->getSkinTemperature()I

    move-result v0

    .line 1430
    sget v1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    if-le v0, v1, :cond_0

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborted by thermal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (initial : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " threshold : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getAbortCount()I
    .locals 1

    .line 1380
    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    return v0
.end method

.method public static getInitialSurfaceTemperature()I
    .locals 1

    .line 1424
    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    return v0
.end method

.method public static getSkinTemperature()I
    .locals 1

    const/16 v0, 0x9

    .line 1405
    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1409
    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getTemperaturePolicy()Z
    .locals 1

    .line 1420
    sget-boolean v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->enableTemperaturePolicy:Z

    return v0
.end method

.method public static initSurfaceTemperature()V
    .locals 2

    .line 1384
    invoke-static {}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->getSkinTemperature()I

    move-result v0

    sput v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    const/16 v1, 0x168

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    .line 1387
    sput v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x172

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x8

    .line 1389
    sput v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x17c

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x5

    .line 1391
    sput v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x186

    if-gt v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    .line 1393
    sput v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x190

    .line 1395
    sput v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    .line 1398
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceTemperature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] threashold ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setTemperaturePolicy(Z)V
    .locals 0

    .line 1416
    sput-boolean p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->enableTemperaturePolicy:Z

    return-void
.end method

.method public static toggleBatteryLevelPolicy()V
    .locals 4

    .line 1370
    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    const/4 v2, 0x0

    .line 1371
    sput-boolean v2, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    .line 1374
    sput v2, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    .line 1375
    sput-boolean v1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public canRunBgDexOpt()Z
    .locals 4

    .line 1469
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->isBatteryFullyCharged()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t run bg dexopt by not fully charged: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->getBatteryLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " abortCount: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->getAbortCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1470
    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1473
    invoke-static {}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->toggleBatteryLevelPolicy()V

    return v1

    .line 1477
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->reachedToThermalThrottleLevel()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Can\'t run bg dexopt by thermal throttling"

    .line 1478
    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final cancelBackgroundDexoptJob()V
    .locals 2

    const-string v0, "BgDexOptHelper"

    const-string v1, "Cancel bg dexopt job"

    .line 1520
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    invoke-virtual {p0}, Lcom/android/server/art/ArtManagerLocal;->cancelBackgroundDexoptJob()V

    return-void
.end method

.method public final getBatteryLevel()I
    .locals 0

    .line 1465
    const-class p0, Landroid/os/BatteryManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public final isBatteryFullyCharged()Z
    .locals 5

    .line 1450
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->getBatteryLevel()I

    move-result v0

    .line 1453
    sget-boolean v1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_0

    const-string p0, "BgDexOptHelper"

    const-string v0, "Not fully charged. Optimize only recently used packages"

    .line 1454
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1459
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    if-eqz p0, :cond_1

    .line 1461
    invoke-virtual {p0}, Landroid/os/BatteryManager;->computeChargeTimeRemaining()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .locals 1

    .line 1357
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bg-dexopt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BgDexOptHelper"

    const-string v0, "Bg dexopt finished"

    .line 1359
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->stopObserveThermal()V

    .line 1364
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    invoke-virtual {p1, p0}, Lcom/android/server/art/ArtManagerLocal;->removeDexoptDoneCallback(Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    :cond_0
    return-void
.end method

.method public final reachedToThermalThrottleLevel()Z
    .locals 4

    .line 1486
    invoke-static {}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->getTemperaturePolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1487
    invoke-static {}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->exceedSurfaceTemperatureThreshold()Z

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x9

    .line 1491
    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 1496
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v0

    .line 1497
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->isBatteryFullyCharged()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x190

    goto :goto_0

    :cond_2
    const/16 p0, 0x177

    :goto_0
    if-lt v0, p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 1501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current temperature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", criteria: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", reached: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_4
    return v1
.end method

.method public final scheduleObserveThermal()V
    .locals 3

    .line 1508
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startObserveThermal()V
    .locals 3

    const-string v0, "BgDexOptHelper"

    const-string v1, "Start observing thermal"

    .line 1348
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1350
    iput-boolean v0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->scheduleObserveThermal()V

    .line 1352
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    return-void
.end method

.method public stopObserveThermal()V
    .locals 2

    const-string v0, "BgDexOptHelper"

    const-string v1, "Stop observing thermal"

    .line 1443
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1445
    iput-boolean v0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->unscheduleObserveThermal()V

    return-void
.end method

.method public final unscheduleObserveThermal()V
    .locals 2

    .line 1513
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
