.class public final Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mBucketBoundaries:[F

.field public final mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

.field public mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

.field public final mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;


# direct methods
.method public static bridge synthetic -$$Nest$smfindBrightnessIndex(FLjava/util/ArrayList;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->findBrightnessIndex(FLjava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetBucketIndex(F[F)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetDistributionRatio(FFFF)F
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getDistributionRatio(FFFF)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetLowerBoundary(F)F
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getLowerBoundary(F)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetUpperBoundary(F)F
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getUpperBoundary(F)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smprintCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;

    invoke-direct {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;-><init>()V

    sput-object v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    new-array v0, v0, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    const/4 v0, 0x0

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 176
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->readFromParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdaptiveBrightnessWeightStats (parcel): mBrightnessMapper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessWeightStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 184
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/server/display/AdaptiveBrightnessWeightStats-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([FLcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V

    return-void
.end method

.method public constructor <init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 9

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "bucketBoundaries"

    const/4 v2, 0x0

    .line 108
    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 110
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 113
    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->checkSorted([F)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "AdaptiveBrightnessWeightStats"

    const-string v1, "AdaptiveBrightnessWeightStats: stats is null. default!"

    .line 116
    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    array-length p2, p1

    new-array p2, p2, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 120
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 121
    aget v1, p1, v0

    invoke-virtual {p3, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(F)F

    move-result v1

    .line 122
    new-instance v8, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget v3, p1, v0

    .line 123
    invoke-virtual {p3, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v4

    const/high16 v5, 0x42700000    # 60.0f

    const-wide/16 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;-><init>(FFFJ)V

    aput-object v8, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    const-string v1, "AdaptiveBrightnessWeightStats - orig stats"

    .line 132
    invoke-static {v1, p2, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 134
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 135
    aget v1, p1, v0

    invoke-virtual {p3, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(F)F

    move-result v1

    .line 136
    aget-object v2, p2, v0

    invoke-virtual {p3, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 141
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    const-string v0, "AdaptiveBrightnessWeightStats - mStats"

    .line 142
    invoke-static {v0, p2, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 144
    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 146
    new-instance p2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-direct {p2, p1, p3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 147
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 150
    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->initTransientStats()V

    return-void

    .line 128
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bucket boundaries and stats must be of same size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bucket boundaries must contain at least 1 value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkSorted([F)V
    .locals 5

    .line 494
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 497
    aget v2, p0, v0

    move v3, v1

    .line 498
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 499
    aget v4, p0, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 500
    aget v2, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static findBrightnessIndex(FLjava/util/ArrayList;)I
    .locals 3

    .line 296
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 299
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v2

    .line 298
    invoke-static {p0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F
    .locals 0

    if-eqz p2, :cond_0

    .line 339
    invoke-virtual {p2, p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessForSpline(FLandroid/util/Spline;)F

    move-result p0

    .line 340
    invoke-virtual {p2, p0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    :goto_0
    return p0
.end method

.method public static getBucketIndex(F[F)I
    .locals 6

    const/4 v0, 0x0

    .line 351
    aget v1, p1, v0

    cmpg-float v1, p0, v1

    if-ltz v1, :cond_7

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    goto :goto_3

    .line 356
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    :goto_0
    if-ge v0, v1, :cond_4

    add-int v2, v0, v1

    .line 358
    div-int/lit8 v2, v2, 0x2

    .line 359
    aget v3, p1, v2

    cmpg-float v4, v3, p0

    if-gtz v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    aget v5, p1, v4

    cmpg-float v5, p0, v5

    if-gez v5, :cond_2

    move v0, v2

    move v1, v4

    goto :goto_1

    :cond_2
    cmpg-float v4, v3, p0

    if-gez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_3
    cmpl-float v3, v3, p0

    if-lez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_4
    :goto_1
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, p0, v2

    if-gez v2, :cond_5

    .line 373
    aget v2, p1, v0

    sub-float v2, p0, v2

    aget p1, p1, v1

    sub-float/2addr p1, p0

    cmpg-float p0, v2, p1

    if-gtz p0, :cond_6

    goto :goto_2

    .line 379
    :cond_5
    aget v2, p1, v0

    div-float v2, p0, v2

    aget p1, p1, v1

    div-float/2addr p1, p0

    cmpg-float p0, v2, p1

    if-gtz p0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    return v0

    :cond_7
    :goto_3
    const/4 p0, -0x1

    return p0
.end method

.method public static getDistributionRatio(FFFF)F
    .locals 3

    .line 313
    invoke-static {p0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    cmpg-float v0, p1, p2

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-gez v0, :cond_4

    cmpg-float v0, p2, p3

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    cmpg-float v0, p0, p2

    if-gez v0, :cond_2

    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float v1, p0, p2

    goto :goto_0

    :cond_2
    cmpl-float p1, p0, p2

    if-lez p1, :cond_3

    sub-float p0, p3, p0

    sub-float/2addr p3, p2

    div-float v1, p0, p3

    :cond_3
    :goto_0
    return v1

    .line 319
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDistributionRatio: wrong boundary "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " < "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdaptiveBrightnessWeightStats"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getLowerBoundary(F)F
    .locals 2

    const/high16 v0, 0x40200000    # 2.5f

    div-float v0, p0, v0

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr p0, v1

    .line 286
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static getUpperBoundary(F)F
    .locals 2

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr p0, v1

    .line 291
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V
    .locals 6

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    move v3, p0

    .line 480
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 481
    aget v4, p2, v3

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%9d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    :cond_0
    array-length p2, p1

    :goto_1
    if-ge p0, p2, :cond_1

    aget-object v3, p1, p0

    const-string v4, "%9s"

    .line 485
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 488
    :cond_1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdaptiveBrightnessWeightStats"

    .line 488
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 209
    :cond_1
    const-class v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 212
    :cond_2
    check-cast p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 213
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    iget-object v3, p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iget-object p1, p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 214
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getBucketBoundaries()[F
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    return-object p0
.end method

.method public final getBucketIndex(F)I
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {p1, p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result p0

    return p0
.end method

.method public getContinuityCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .locals 1

    .line 514
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    if-eqz p0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "AdaptiveBrightnessWeightStats"

    const-string/jumbo v0, "mContinuityStatsCollector is null"

    .line 517
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    return-object p0
.end method

.method public getTimeCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .locals 1

    .line 506
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    if-eqz p0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "AdaptiveBrightnessWeightStats"

    const-string/jumbo v0, "mTimeStatsCollector is null"

    .line 509
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 222
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public log(FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V
    .locals 4

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p7, :cond_1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    .line 260
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log: l:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " u:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p7, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 265
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessWeightStats"

    .line 264
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F)I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_3

    if-eqz p4, :cond_3

    .line 271
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->updateTransientStats(FFFLandroid/util/Spline;)V

    if-eqz p7, :cond_3

    if-eqz p5, :cond_3

    .line 274
    iget p2, p5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    iget p3, p5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    sub-float p3, p2, p3

    .line 275
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    invoke-virtual {p4, p1, p2, p3, p6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addUserBrightnessStat(FFFLandroid/util/Spline;)V

    .line 280
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget-object p0, p0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setLastUserBrightnessTime(J)V

    :cond_3
    return-void
.end method

.method public setMaxWeight()V
    .locals 6

    const-string v0, "AdaptiveBrightnessWeightStats"

    const-string/jumbo v1, "setMaxWeight"

    .line 522
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 524
    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v4

    const/high16 v5, 0x46e10000    # 28800.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->set(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public summarizeStats()V
    .locals 12

    .line 392
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->summarize()V

    .line 393
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->summarize()V

    .line 396
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    const-string/jumbo v3, "summarizeStats(): newTimeStats[]:"

    .line 399
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v3, v0, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    const-string/jumbo v3, "summarizeStats(): newContinuityStats[]:"

    .line 400
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v3, v1, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    const-string/jumbo v3, "summarizeStats(): lastStats[]:"

    .line 401
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v3, v2, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    const/4 v3, 0x0

    .line 403
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 409
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    .line 411
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_0

    move v6, v5

    goto :goto_1

    .line 415
    :cond_0
    aget-object v6, v1, v3

    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v7

    mul-float/2addr v6, v7

    aget-object v7, v0, v3

    .line 416
    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v7

    aget-object v8, v0, v3

    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float/2addr v6, v4

    .line 430
    :goto_1
    aget-object v7, v2, v3

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v7

    .line 431
    aget-object v8, v2, v3

    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v8

    const/high16 v9, 0x41f00000    # 30.0f

    sub-float v10, v8, v9

    add-float/2addr v9, v8

    .line 434
    invoke-static {v6, v10, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    const/high16 v9, 0x46e10000    # 28800.0f

    cmpl-float v10, v4, v9

    if-lez v10, :cond_1

    goto :goto_3

    :cond_1
    add-float v10, v7, v4

    cmpl-float v11, v10, v9

    if-lez v11, :cond_2

    sub-float v7, v9, v4

    goto :goto_2

    :cond_2
    move v9, v10

    .line 449
    :goto_2
    invoke-static {v9, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    mul-float/2addr v8, v7

    mul-float/2addr v6, v4

    add-float/2addr v8, v6

    div-float v6, v8, v9

    .line 463
    :goto_3
    invoke-static {v9, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_4

    .line 464
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    aget v5, v5, v3

    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->set(FFF)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->initTransientStats()V

    .line 470
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    const-string/jumbo v1, "summarizeStats(): mStats:"

    invoke-static {v1, v0, p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 233
    iget-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 235
    iget-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 237
    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
