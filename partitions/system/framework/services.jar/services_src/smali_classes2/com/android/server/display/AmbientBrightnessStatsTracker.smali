.class public Lcom/android/server/display/AmbientBrightnessStatsTracker;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# static fields
.field static final BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

.field static final MAX_DAYS_TO_TRACK:I = 0x7


# instance fields
.field public final mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

.field public mCurrentAmbientBrightness:F

.field public mCurrentUserId:I

.field public final mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

.field public final mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$OIIV5xqf-PRxPN2e6I0m_5ycuIo(Lcom/android/server/display/AmbientBrightnessStatsTracker;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->lambda$new$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 56
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
        0x43960000    # 300.0f
        0x447a0000    # 1000.0f
        0x453b8000    # 3000.0f
        0x461c4000    # 10000.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/os/UserManager;Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    if-eqz p2, :cond_0

    .line 71
    iput-object p2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-direct {p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 75
    :goto_0
    new-instance p1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-direct {p1, p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V

    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 76
    new-instance p1, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    new-instance p2, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V

    invoke-direct {p1, p2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;)V

    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 77
    iput p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    return-void
.end method

.method private synthetic lambda$new$0()J
    .locals 2

    .line 76
    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->elapsedRealtimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized add(IF)V
    .locals 4

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    iget-object v3, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 98
    invoke-virtual {v3}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->totalDurationSec()F

    move-result v3

    .line 97
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->log(ILjava/time/LocalDate;FF)V

    goto :goto_0

    .line 103
    :cond_0
    iput p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->reset()V

    .line 106
    iget-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->start()V

    .line 107
    iput p2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_1
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
    const-string v0, "AmbientBrightnessStats:"

    .line 128
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserStats(I)Ljava/util/ArrayList;
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getUserStats(I)Ljava/util/ArrayList;

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

.method public declared-synchronized readStats(Ljava/io/InputStream;)V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->readFromXML(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->reset()V

    .line 82
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 5

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    iget v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    iget-object v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    iget-object v4, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 88
    invoke-virtual {v4}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->totalDurationSec()F

    move-result v4

    .line 87
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->log(ILjava/time/LocalDate;FF)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->reset()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 91
    iput v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeStats(Ljava/io/OutputStream;)V
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->writeToXML(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
