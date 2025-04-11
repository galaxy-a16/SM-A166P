.class public Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# instance fields
.field public mCompatibility:I

.field public mRefreshRate:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->reset()Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 320
    instance-of v0, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 324
    :cond_0
    check-cast p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 325
    iget v0, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->refreshRateEquals(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    iget p1, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final refreshRateEquals(F)Z
    .locals 2

    .line 340
    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    const v0, 0x3c23d70a    # 0.01f

    add-float v1, p1, v0

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    sub-float/2addr p1, v0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(FI)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCompatibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(FI)Z
    .locals 1

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->refreshRateEquals(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 307
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    .line 308
    iput p2, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    const/4 p0, 0x1

    return p0
.end method
