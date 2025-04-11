.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field mInactivityThresholdMillis:J

.field public mLastForecastCallTimeMillis:J

.field final mSamples:Landroid/util/ArrayMap;

.field mSevereThresholds:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public static synthetic $r8$lambda$8xDMWptfe4Po_y2hgZAOQwOG-zA(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->lambda$updateTemperature$0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aBlLAo8SCfCGLs7NwQrI1qh7CBY(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperature()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 2

    .line 1347
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    .line 1351
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 1356
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 1360
    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    const-wide/16 v0, 0x2710

    .line 1364
    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    return-void
.end method

.method public static synthetic lambda$updateTemperature$0(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .line 1416
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public createSampleForTesting(JF)Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    .locals 1

    .line 1534
    new-instance v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JF)V

    return-object v0
.end method

.method public getForecast(I)F
    .locals 8

    .line 1476
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1477
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 1478
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1479
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperature()V

    .line 1484
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_1

    .line 1485
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "No temperature samples found"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    monitor-exit v0

    return v2

    .line 1491
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1492
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "No temperature thresholds found"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    monitor-exit v0

    return v2

    .line 1497
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1498
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1499
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1501
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-nez v5, :cond_4

    .line 1503
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No threshold found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 1507
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    iget v4, v4, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 1509
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    .line 1511
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v3

    .line 1512
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_5

    cmpl-float v4, v3, v2

    if-lez v4, :cond_3

    :cond_5
    :goto_1
    move v2, v3

    goto :goto_0

    .line 1518
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getSlopeOf(Ljava/util/List;)F

    move-result v3

    int-to-float v6, p1

    mul-float/2addr v3, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v6

    add-float/2addr v4, v3

    .line 1520
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1519
    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v3

    .line 1521
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_5

    cmpl-float v4, v3, v2

    if-lez v4, :cond_3

    goto :goto_1

    .line 1526
    :cond_7
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 1527
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSlopeOf(Ljava/util/List;)F
    .locals 11

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    const/4 v2, 0x0

    move v6, p0

    move-wide v4, v0

    move v3, v2

    .line 1433
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 1434
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 1435
    iget-wide v8, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    add-long/2addr v4, v8

    .line 1436
    iget v7, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1438
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v7, v3

    div-long/2addr v4, v7

    .line 1439
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 1443
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1444
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 1445
    iget-wide v7, v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    sub-long/2addr v7, v4

    .line 1446
    iget v3, v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    sub-float/2addr v3, v6

    mul-long v9, v7, v7

    add-long/2addr v0, v9

    long-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr p0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    long-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public normalizeTemperature(FF)F
    .locals 2

    .line 1463
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p0

    const/high16 v0, 0x41f00000    # 30.0f

    sub-float/2addr p2, v0

    cmpg-float v1, p1, p2

    if-gtz v1, :cond_0

    .line 1466
    :try_start_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-float/2addr p1, p2

    div-float/2addr p1, v0

    .line 1469
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 1470
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateSevereThresholds()V
    .locals 7

    .line 1368
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1369
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v1}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 1370
    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(ZI)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 1371
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1372
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/thermal/TemperatureThreshold;

    .line 1373
    iget-object v5, v4, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v6, v5

    if-gt v6, v3, :cond_0

    goto :goto_1

    .line 1376
    :cond_0
    aget v5, v5, v3

    .line 1378
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1379
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    iget-object v4, v4, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    aget v4, v4, v3

    .line 1380
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 1379
    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1383
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateTemperature()V
    .locals 10

    .line 1389
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1390
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 1394
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1403
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 1406
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1407
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Temperature;

    .line 1411
    invoke-virtual {v6}, Landroid/os/Temperature;->getValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 1415
    :cond_0
    iget-object v7, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1417
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x1e

    if-ne v8, v9, :cond_1

    .line 1418
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1420
    :cond_1
    new-instance v8, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-virtual {v6}, Landroid/os/Temperature;->getValue()F

    move-result v6

    invoke-direct {v8, p0, v1, v2, v6}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1422
    :cond_2
    monitor-exit v0

    return-void

    .line 1398
    :cond_3
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 1399
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1422
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
