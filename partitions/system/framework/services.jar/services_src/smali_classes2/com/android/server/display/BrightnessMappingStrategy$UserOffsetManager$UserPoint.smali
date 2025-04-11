.class public Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mBrightness:F

.field public final mBrightnessOffset:F

.field public final mLowerBoundary:F

.field public final mLux:F

.field public final mUpperBoundary:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 1004
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    sub-float/2addr p2, p3

    .line 1006
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    const/high16 p2, 0x40200000    # 2.5f

    div-float p3, p1, p2

    const/high16 v0, 0x41200000    # 10.0f

    sub-float v1, p1, v0

    .line 1008
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    mul-float/2addr p2, p1

    add-float/2addr p1, v0

    .line 1010
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)I
    .locals 1

    .line 1032
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    iget p1, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 993
    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->compareTo(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)I

    move-result p0

    return p0
.end method

.method public isInSameBoundary(F)Z
    .locals 1

    .line 1015
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInSameBoundary(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)Z
    .locals 1

    .line 1023
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    iget p1, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1052
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    .line 1055
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    mul-float/2addr v0, v1

    .line 1056
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    mul-float/2addr v0, v1

    .line 1057
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    .line 1058
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 1059
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    .line 1060
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%5.1f -> %5.1f (%+6.1f) @ %6.1f < %6.1f < %6.1f"

    .line 1054
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
