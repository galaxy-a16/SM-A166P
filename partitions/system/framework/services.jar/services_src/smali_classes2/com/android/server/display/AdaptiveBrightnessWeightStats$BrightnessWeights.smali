.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# instance fields
.field public mBrightness:F

.field public mLastUserBrightnessTime:J

.field public mLux:F

.field public mWeight:F


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 0

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 536
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 537
    iput p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 538
    iput-wide p4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .locals 7

    .line 586
    new-instance v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    iget v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    iget-wide v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;-><init>(FFFJ)V

    return-object v6
.end method

.method public getBrightness()F
    .locals 0

    .line 578
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    return p0
.end method

.method public getLastUserBrightnessTime()J
    .locals 2

    .line 552
    iget-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    return-wide v0
.end method

.method public getLux()F
    .locals 0

    .line 570
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    return p0
.end method

.method public getWeight()F
    .locals 0

    .line 582
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    return-void
.end method

.method public set(FFF)V
    .locals 0

    .line 542
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 543
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 544
    iput p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    return-void
.end method

.method public setBrightness(F)V
    .locals 0

    .line 574
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    return-void
.end method

.method public setLastUserBrightnessTime(J)V
    .locals 0

    .line 548
    iput-wide p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 600
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v1, v2

    const-string v3, "%d"

    if-gez v2, :cond_1

    float-to-int v1, v1

    .line 601
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x447a0000    # 1000.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    float-to-int v1, v1

    .line 602
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/high16 v2, 0x45610000    # 3600.0f

    div-float/2addr v1, v2

    .line 603
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1fh"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 605
    :goto_0
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d:%s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 563
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 564
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 565
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 566
    iget-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
