.class public Lcom/android/server/location/fudger/LocationFudger;
.super Ljava/lang/Object;
.source "LocationFudger.java"


# static fields
.field static final OFFSET_UPDATE_INTERVAL_MS:J = 0x36ee80L

.field public static final OLD_WEIGHT:D


# instance fields
.field public final mAccuracyM:F

.field public mCachedCoarseLocation:Landroid/location/Location;

.field public mCachedCoarseLocationResult:Landroid/location/LocationResult;

.field public mCachedFineLocation:Landroid/location/Location;

.field public mCachedFineLocationResult:Landroid/location/LocationResult;

.field public final mClock:Ljava/time/Clock;

.field public mLatitudeOffsetM:D

.field public mLongitudeOffsetM:D

.field public mNextUpdateRealtimeMs:J

.field public final mRandom:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/location/fudger/LocationFudger;-><init>(FLjava/time/Clock;Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(FLjava/time/Clock;Ljava/util/Random;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    .line 93
    iput-object p3, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    const/high16 p2, 0x43480000    # 200.0f

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    .line 96
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->resetOffsets()V

    return-void
.end method

.method public static metersToDegreesLatitude(D)D
    .locals 2

    .line 0
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static metersToDegreesLongitude(DD)D
    .locals 2

    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double/2addr p0, v0

    .line 242
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static wrapLatitude(D)D
    .locals 3

    .line 0
    const-wide v0, 0x40567fffda36a676L    # 89.999990990991

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    move-wide p0, v0

    :cond_0
    const-wide v0, -0x3fa9800025c9598aL    # -89.999990990991

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    move-wide p0, v0

    :cond_1
    return-wide p0
.end method

.method public static wrapLongitude(D)D
    .locals 4

    .line 0
    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_0

    sub-double/2addr p0, v0

    :cond_0
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_1

    add-double/2addr p0, v0

    :cond_1
    return-wide p0
.end method


# virtual methods
.method public createCoarse(Landroid/location/Location;)Landroid/location/Location;
    .locals 7

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 145
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->updateOffsets()V

    .line 150
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 153
    invoke-virtual {v0}, Landroid/location/Location;->removeBearing()V

    .line 154
    invoke-virtual {v0}, Landroid/location/Location;->removeSpeed()V

    .line 155
    invoke-virtual {v0}, Landroid/location/Location;->removeAltitude()V

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v1

    .line 159
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v3

    .line 162
    iget-wide v5, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 163
    iget-wide v5, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 171
    iget v5, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    .line 172
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    mul-double/2addr v1, v5

    invoke-static {v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v1

    .line 173
    iget v5, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v5, v5

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    .line 174
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v3

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 177
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 178
    iget v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 180
    monitor-enter p0

    .line 181
    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    .line 182
    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    .line 183
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 143
    :cond_1
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    .line 145
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public createCoarse(Landroid/location/LocationResult;)Landroid/location/LocationResult;
    .locals 1

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    new-instance v0, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/fudger/LocationFudger;)V

    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->map(Ljava/util/function/Function;)Landroid/location/LocationResult;

    move-result-object v0

    .line 122
    monitor-enter p0

    .line 123
    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    .line 124
    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    .line 125
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 116
    :cond_1
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    .line 118
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final nextRandomOffset()D
    .locals 6

    .line 212
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    iget p0, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v2, p0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public resetOffsets()V
    .locals 4

    .line 103
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 104
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    .line 105
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J

    return-void
.end method

.method public final declared-synchronized updateOffsets()V
    .locals 10

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 202
    iget-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 203
    monitor-exit p0

    return-void

    .line 206
    :cond_0
    :try_start_1
    sget-wide v2, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    mul-double/2addr v4, v2

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v6

    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 207
    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 208
    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
