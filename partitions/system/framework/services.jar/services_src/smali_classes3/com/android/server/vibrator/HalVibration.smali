.class public final Lcom/android/server/vibrator/HalVibration;
.super Lcom/android/server/vibrator/Vibration;
.source "HalVibration.java"


# instance fields
.field public mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public mEffect:Landroid/os/CombinedVibration;

.field public mEngineData:[I

.field public final mFallbacks:Landroid/util/SparseArray;

.field public mFrequency:I

.field public mMagnitude:I

.field public mOriginalEffect:Landroid/os/CombinedVibration;

.field public mPattern:[J

.field public mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public mTimeout:J


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;J[JII[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p10}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    iput-wide p3, p0, Lcom/android/server/vibrator/HalVibration;->mTimeout:J

    iput-object p5, p0, Lcom/android/server/vibrator/HalVibration;->mPattern:[J

    iput p6, p0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    iput p7, p0, Lcom/android/server/vibrator/HalVibration;->mFrequency:I

    iput-object p8, p0, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    iput-object p9, p0, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/vibrator/HalVibration;->mTimeout:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mPattern:[J

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    iput p3, p0, Lcom/android/server/vibrator/HalVibration;->mFrequency:I

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mEffect:Landroid/os/CombinedVibration;

    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method


# virtual methods
.method public addFallback(ILandroid/os/VibrationEffect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public canPipelineWith(Lcom/android/server/vibrator/HalVibration;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    iget v1, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    iget v2, v2, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1, v1}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/vibrator/HalVibration;->isRepeating()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public end(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/vibrator/HalVibration;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/Vibration$CallerInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationStats;->reportEnded(Lcom/android/server/vibrator/Vibration$CallerInfo;)Z

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public getCommonData()[Lcom/samsung/android/server/vibrator/CommonPatternInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    return-object p0
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .locals 8

    new-instance v7, Lcom/android/server/vibrator/Vibration$DebugInfo;

    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v3, p0, Lcom/android/server/vibrator/HalVibration;->mEffect:Landroid/os/CombinedVibration;

    iget-object v4, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLcom/android/server/vibrator/Vibration$CallerInfo;)V

    return-object v7
.end method

.method public getEffect()Landroid/os/CombinedVibration;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mEffect:Landroid/os/CombinedVibration;

    return-object p0
.end method

.method public getEngineData()[I
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    return-object p0
.end method

.method public getFallback(I)Landroid/os/VibrationEffect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public getMagnitude()I
    .locals 0

    iget p0, p0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    return p0
.end method

.method public getStatsInfo(J)Lcom/android/server/vibrator/VibrationStats$StatsInfo;
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/vibrator/HalVibration;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v3, v0

    new-instance v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    iget v2, v1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    iget-object v1, v1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    iget-object v6, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    move-object v1, v0

    move-wide v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;-><init>(IIILcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;J)V

    return-object v0
.end method

.method public getTimeOut()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/HalVibration;->mTimeout:J

    return-wide v0
.end method

.method public hasEnded()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRepeating()Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {p0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setMagnitude(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    return-void
.end method

.method public waitForEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
