.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# instance fields
.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mBucketBoundaries:[F

.field public final mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

.field public final mCurrentUserBrightnessStats:Ljava/util/ArrayList;

.field public final mPrevUserBrightnessStats:Ljava/util/ArrayList;

.field public final mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

.field public final mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBucketBoundaries(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalStats(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    return-object p0
.end method

.method public constructor <init>([FLcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    array-length p1, p1

    new-array p1, p1, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    iput-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    return-void
.end method

.method public static removeRedundantUserBrightnessStats(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    invoke-virtual {p0, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->isInSameBoundary(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final addCurrentUserBrightnessStatsToPrevious()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getBrightness()F

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getAdjustment()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getSpline()Landroid/util/Spline;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCurrentUserBrightnessStatsToPrevious: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaptiveBrightnessWeightStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addUserBrightnessStat(FFFLandroid/util/Spline;)V
    .locals 7

    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V
    .locals 6

    if-eqz p6, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getTimeDurationForBucketLux(F)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    :goto_0
    move v5, p0

    new-instance p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;-><init>(FFFLandroid/util/Spline;F)V

    invoke-static {p0, p5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->removeRedundantUserBrightnessStats(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addUserBrightnessStat: ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_1

    const-string/jumbo p2, "userInitiated "

    goto :goto_2

    :cond_1
    const-string p2, ""

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdaptiveBrightnessWeightStats"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final calculateContinuity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getPrevUserBrightnessStatForContinuity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;-><init>(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator-IA;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getElapsedTimeSinceFirstShortTermReset(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getSimilarity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;)V

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->calculate()V

    iget p0, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mContinuity:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    iget p0, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mBrightness:F

    iget p1, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mContinuity:F

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    :cond_0
    return-object v0
.end method

.method public final distributeToBucketBoundaries(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;)V
    .locals 11

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    invoke-static {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBucketIndex(F[F)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetLowerBoundary(F)F

    move-result v2

    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetUpperBoundary(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    invoke-static {v2, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBucketIndex(F[F)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    invoke-static {v3, v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBucketIndex(F[F)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    aget v7, v6, v4

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-gt v4, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    aget v6, v6, v5

    cmpl-float v6, v6, v3

    if-lez v6, :cond_1

    if-lez v5, :cond_1

    add-int/lit8 v5, v5, -0x1

    :cond_1
    :goto_0
    if-gt v4, v5, :cond_5

    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    aget v6, v6, v4

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getSpline()Landroid/util/Spline;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-static {v6, v7, v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F

    move-result v7

    if-ne v0, v4, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "distributeToBucketBoundaries: continuityStat: b: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getSpline()Landroid/util/Spline;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-static {v6, v9, v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " ambientLux:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " currentBucketLux:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " mBrightnessMapper: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AdaptiveBrightnessWeightStats"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v6, v2, v1, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetDistributionRatio(FFFF)F

    move-result v6

    aget-object v8, p3, v4

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v8

    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v9

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aget-object v9, p3, v4

    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v9

    aget-object v10, p3, v4

    invoke-virtual {v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v10

    mul-float/2addr v7, v10

    mul-float/2addr v7, v6

    add-float/2addr v9, v7

    aget-object v6, p3, v4

    div-float/2addr v9, v8

    invoke-virtual {v6, v9, v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    goto :goto_1

    :cond_3
    new-instance v8, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v9

    mul-float/2addr v9, v6

    invoke-direct {v8, v7, v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    aput-object v8, p3, v4

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    const-string p1, "distributeToBucketBoundaries() rawContinuityStats: "

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    invoke-static {p1, p3, p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smprintCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    return-void
.end method

.method public final getElapsedTimeSinceFirstShortTermReset(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getPostTimeDuration()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getPreTimeDuration()F

    move-result p1

    add-float v1, v0, p1

    iput v1, p3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mTimeDuration:F

    iget-object p3, p3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSb:Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p2, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, " cl:%.1f pl:%.1f t(%d + %d)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getPrevUserBrightnessStatForContinuity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result p0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    invoke-virtual {p1, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->isInSameBoundary(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, p0, v3

    if-gez v3, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v3

    div-float v3, p0, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final getSimilarity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;)V
    .locals 12

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getBrightness()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getBrightness()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getAdjustment()F

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getAdjustment()F

    move-result p2

    sub-float v2, p0, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, p0, v3

    const/high16 v5, 0x7fc00000    # Float.NaN

    if-lez v4, :cond_1

    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    cmpl-float v4, p0, v0

    if-lez v4, :cond_0

    div-float v4, v0, p0

    goto :goto_0

    :cond_0
    div-float v4, p0, v0

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    cmpl-float v6, v1, v3

    if-lez v6, :cond_3

    cmpl-float v6, p2, v3

    if-lez v6, :cond_3

    cmpl-float v5, v1, p2

    if-lez v5, :cond_2

    div-float v5, p2, v1

    goto :goto_1

    :cond_2
    div-float v5, v1, p2

    :cond_3
    :goto_1
    mul-float/2addr v1, p2

    cmpl-float p2, v1, v3

    if-lez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_6

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v1, v2, v1

    if-ltz v1, :cond_5

    const v1, 0x3f19999a    # 0.6f

    cmpl-float v6, v4, v1

    if-gtz v6, :cond_5

    cmpl-float v1, v5, v1

    if-lez v1, :cond_6

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :cond_6
    iput v3, p3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result p1

    iput p1, p3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mLux:F

    iput p0, p3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mBrightness:F

    iget-object p1, p3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSb:Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    float-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, " cb:%.1f pb:%.1f (%s,%d,%.2f,%.2f)"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    return-object p0
.end method

.method public final getTimeDurationForBucketLux(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    invoke-static {p1, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBucketIndex(F[F)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->summarize()V

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result p0

    return p0
.end method

.method public summarize()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->updateContinuityStats()V

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->updateTimeDurationPrevUserBrightnessStats()V

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addCurrentUserBrightnessStatsToPrevious()V

    return-void
.end method

.method public final updateContinuityStats()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    array-length v1, v1

    new-array v1, v1, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->calculateContinuity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->valid()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->distributeToBucketBoundaries(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;)V

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v1, v0

    if-eqz v3, :cond_3

    aget-object v2, v2, v0

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final updateTimeDurationPrevUserBrightnessStats()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getTimeDurationForBucketLux(F)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->updatePostTimeDuration(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTimeDurationPrevUserBrightnessStats: lux: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " timeDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaptiveBrightnessWeightStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
