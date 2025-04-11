.class public abstract Lcom/samsung/android/server/audio/AudioHqmHelper;
.super Ljava/lang/Object;
.source "AudioHqmHelper.java"


# static fields
.field public static final BIG_DATA:[[Ljava/lang/String;

.field public static mAudioServerResetCount:I = 0x0

.field public static mAudioServerResetCountMaxLimit:Z = false

.field public static mPreAudioServerResetCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const-string v0, "HW_CSPT"

    const-string v1, "HW_CSPC"

    const-string v2, "HW_CRET"

    const-string v3, "HW_CREC"

    const-string v4, "HW_CEAT"

    const-string v5, "HW_CEAC"

    const-string v6, "HW_CBTT"

    const-string v7, "HW_CBTC"

    const-string v8, "HW_CUST"

    const-string v9, "HW_CUSC"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "HW_MSPT"

    const-string v2, "HW_MSPC"

    const-string v3, "HW_MEAT"

    const-string v4, "HW_MEAC"

    const-string v5, "HW_MBTT"

    const-string v6, "HW_MBTC"

    const-string v7, "HW_MUST"

    const-string v8, "HW_MUSC"

    const-string v9, "HW_MUHT"

    const-string v10, "HW_MUHC"

    const-string v11, "HW_DLBY"

    const-string v12, "HW_3EJC"

    const-string v13, "HW_4EJC"

    const-string v14, "MU_MSVL"

    const-string v15, "MU_MEVL"

    const-string v16, "MU_MUHV"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FW_VSMC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "RCV_TEMP_MAX"

    const-string v4, "SPK_TEMP_MAX"

    const-string v5, "RCV_TEMP_OVERCNT"

    const-string v6, "SPK_TEMP_OVERCNT"

    const-string v7, "RCV_EXCU_MAX"

    const-string v8, "SPK_EXCU_MAX"

    const-string v9, "RCV_EXCU_OVERCNT"

    const-string v10, "SPK_EXCU_OVERCNT"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    return-void
.end method

.method public static createJSONObj(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAudioServerResetCount()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAudioServerResetCountMaxLimit:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    sget v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAudioServerResetCount:I

    return v0
.end method

.method public static increaseAudioServerResetCount()V
    .locals 3

    sget v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAudioServerResetCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAudioServerResetCount:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    sget v2, Lcom/samsung/android/server/audio/AudioHqmHelper;->mPreAudioServerResetCount:I

    sub-int/2addr v0, v2

    sput v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAudioServerResetCount:I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mPreAudioServerResetCount:I

    sput-boolean v1, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAudioServerResetCountMaxLimit:Z

    :cond_0
    return-void
.end method

.method public static loggingAudioServerResetCount(Landroid/content/Context;Z)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v2, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAudioServerResetCount:I

    sget v3, Lcom/samsung/android/server/audio/AudioHqmHelper;->mPreAudioServerResetCount:I

    sub-int v3, v2, v3

    if-nez p1, :cond_0

    sput v2, Lcom/samsung/android/server/audio/AudioHqmHelper;->mPreAudioServerResetCount:I

    :cond_0
    const-string p1, "FW_ASRC"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "FWAC"

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendLoggingDataToHQM(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static sendHqmData(Landroid/content/Context;Z)V
    .locals 10

    if-eqz p1, :cond_0

    const-string v0, "l_bigdata_logging;l_bigdata_app"

    goto :goto_0

    :cond_0
    const-string v0, "l_bigdata_logging"

    :goto_0
    new-instance v1, Lcom/samsung/android/media/AudioParameter;

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    aget-object v5, v5, v2

    array-length v6, v5

    move v7, v0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-virtual {v1, v8}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    const-string v5, "AUDI"

    goto :goto_3

    :cond_4
    const-string v5, "FWAC"

    :goto_3
    invoke-static {p0, v3, v4, v5}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendLoggingDataToHQM(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/AudioHqmHelper;->loggingAudioServerResetCount(Landroid/content/Context;Z)V

    return-void
.end method

.method public static sendLoggingDataToHQM(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11

    invoke-static {p1, p2}, Lcom/samsung/android/server/audio/AudioHqmHelper;->createJSONObj(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "\\{"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\}"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string p1, "HqmManagerService"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/os/SemHqmManager;

    const-string p0, "AS.AudioHqmHelper"

    const-string/jumbo p1, "sendLoggingDataToHQM() Server update !!!"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const-string v3, "Audio"

    const-string/jumbo v5, "sm"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v4, p3

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static startLogging(Landroid/content/Context;)V
    .locals 8

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.media.action.AUDIOCORE_LOGGING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
