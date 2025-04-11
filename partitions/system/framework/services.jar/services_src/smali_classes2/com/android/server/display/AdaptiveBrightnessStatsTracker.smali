.class public Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessStatsTracker.java"


# static fields
.field static final MAX_DAYS_TO_TRACK:I = 0x7


# instance fields
.field public final mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

.field public mBucketBoundariesForStats:[F

.field public mCurrentAmbientLux:F

.field public mCurrentScreenBrightness:F

.field public mCurrentScreenBrightnessSpline:Landroid/util/Spline;

.field public mCurrentUserId:I

.field public final mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

.field public final mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$j210nxbksmpeSsMKmGHKwP7NlV4(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->lambda$new$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmBucketBoundariesForStats(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/UserManager;Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    if-eqz p2, :cond_0

    .line 83
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-direct {p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    .line 87
    :goto_0
    new-instance p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-direct {p1, p0, p3}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;-><init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;Lcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 88
    new-instance p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    new-instance p2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)V

    invoke-direct {p1, p2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;-><init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;)V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 89
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    .line 91
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->initBucketBoundariesForStats()V

    return-void
.end method

.method private synthetic lambda$new$0()J
    .locals 2

    .line 88
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->elapsedRealtimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized add(IFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Z)V
    .locals 13

    move-object v1, p0

    move v0, p1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget v4, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    if-ne v0, v4, :cond_0

    .line 128
    iget-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v5

    iget v6, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    iget v7, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightness:F

    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 129
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec()F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightnessSpline:Landroid/util/Spline;

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move/from16 v12, p6

    .line 128
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->log(ILjava/time/LocalDate;FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V

    goto :goto_0

    .line 135
    :cond_0
    iput v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    .line 137
    :goto_0
    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 138
    :goto_1
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->reset()V

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->start()V

    :cond_2
    move v0, p2

    .line 146
    iput v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    move/from16 v0, p3

    .line 147
    iput v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightness:F

    move-object/from16 v0, p4

    .line 148
    iput-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightnessSpline:Landroid/util/Spline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDirectly(IFFFLandroid/util/Spline;)V
    .locals 10

    monitor-enter p0

    .line 199
    :try_start_0
    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    if-ne p1, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->log(ILjava/time/LocalDate;FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AdaptiveBrightnessStats:"

    .line 172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserStats(I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getUserStats(I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final initBucketBoundariesForStats()V
    .locals 5

    const/16 v0, 0x38

    new-array v1, v0, [F

    .line 177
    fill-array-data v1, :array_0

    .line 183
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 186
    aget v3, v1, v2

    sget v4, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x37

    .line 193
    :cond_2
    :goto_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x41900000    # 18.0f
        0x41a80000    # 21.0f
        0x41d00000    # 26.0f
        0x41f80000    # 31.0f
        0x42140000    # 37.0f
        0x42340000    # 45.0f
        0x42540000    # 53.0f
        0x42800000    # 64.0f
        0x429a0000    # 77.0f
        0x42b80000    # 92.0f
        0x42de0000    # 111.0f
        0x43050000    # 133.0f
        0x43200000    # 160.0f
        0x43400000    # 192.0f
        0x43660000    # 230.0f
        0x438a0000    # 276.0f
        0x43a58000    # 331.0f
        0x43c68000    # 397.0f
        0x43ee8000    # 477.0f
        0x440f0000    # 572.0f
        0x442bc000    # 687.0f
        0x444e0000    # 824.0f
        0x44774000    # 989.0f
        0x44946000    # 1187.0f
        0x44b20000    # 1424.0f
        0x44d5a000    # 1709.0f
        0x45003000    # 2051.0f
        0x4519d000    # 2461.0f
        0x45389000    # 2953.0f
        0x455d8000    # 3544.0f
        0x4584e800    # 4253.0f
        0x459f7800    # 5103.0f
        0x45bf6000    # 6124.0f
        0x45e5a800    # 7349.0f
        0x4609cc00    # 8819.0f
        0x46255800    # 10582.0f
        0x46466c00    # 12699.0f
        0x466e1c00    # 15239.0f
        0x468edc00    # 18286.0f
        0x46ab7000    # 21944.0f
        0x46cdb800    # 26332.0f
        0x46f6de00    # 31599.0f
        0x47141e00    # 37918.0f
        0x4731be00    # 45502.0f
    .end array-data
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readStats(Ljava/io/InputStream;)V
    .locals 1

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->readFromXML(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->start()V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxWeight(I)V
    .locals 1

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->setMaxWeight(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start(Z)V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->reset()V

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 11

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    iget v5, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightness:F

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 104
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec()F

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightnessSpline:Landroid/util/Spline;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 103
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->log(ILjava/time/LocalDate;FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->reset()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 108
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized summarizeStats(I)V
    .locals 2

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->summarizeStats(ILjava/time/LocalDate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeStats(Ljava/io/OutputStream;)V
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->writeToXML(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
