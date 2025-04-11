.class public Lcom/samsung/android/server/vibrator/VibratorHqmData;
.super Ljava/lang/Object;
.source "VibratorHqmData.java"


# instance fields
.field public mAlarmCount:I

.field public mExtraCount:I

.field public mLoggingData:Ljava/util/HashMap;

.field public mNotificationCount:I

.field public mRingCount:I

.field public mTouchCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    .line 39
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    .line 40
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    .line 41
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    .line 42
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    return-void
.end method

.method public get(Ljava/lang/String;)I
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public increaseCount(I)V
    .locals 2

    const/16 v0, 0x11

    const v1, 0x7fffffff

    if-eq p1, v0, :cond_7

    const/16 v0, 0x12

    if-eq p1, v0, :cond_5

    const/16 v0, 0x21

    if-eq p1, v0, :cond_3

    const/16 v0, 0x31

    if-eq p1, v0, :cond_1

    .line 64
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    :goto_0
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    .line 65
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    const-string p1, "FW_EVPC"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 56
    :cond_1
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    if-lt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p1, 0x1

    :goto_1
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    const-string p1, "FW_NVPC"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 48
    :cond_3
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    if-lt p1, v1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, p1, 0x1

    :goto_2
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    const-string p1, "FW_RVPC"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 60
    :cond_5
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    if-lt p1, v1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v1, p1, 0x1

    :goto_3
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    const-string p1, "FW_TVPC"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 52
    :cond_7
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    if-lt p1, v1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v1, p1, 0x1

    :goto_4
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    const-string p1, "FW_AVPC"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method
