.class public Lcom/android/server/biometrics/SemBioLoggingManager;
.super Ljava/lang/Object;
.source "SemBioLoggingManager.java"


# static fields
.field public static final DEBUG:Z

.field public static final LOG_ARRAY_SIZE:I

.field public static sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mBpAuthLogList:Ljava/util/ArrayList;

.field public final mBpLoggingInfo:Landroid/util/SparseArray;

.field public final mFaceAuthLogList:Ljava/util/ArrayList;

.field public final mFaceLoggingInfo:Landroid/util/SparseArray;

.field public final mFpAuthLogList:Ljava/util/ArrayList;

.field public final mFpLoggingInfo:Landroid/util/SparseArray;

.field public mIsFpBioStarEnabled:Z

.field public mLastFaceEnrollLog:Ljava/lang/String;

.field public mLastFaceRemoveLog:Ljava/lang/String;

.field public mLastFpAuthenticatorId:Ljava/lang/String;

.field public mLastFpEnrollLog:Ljava/lang/String;

.field public mLastFpRemoveLog:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3UYsVlhrZ1OjU4F-i-JvFGw5A_A(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpRemoved$6(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AZRbiEkYzFrb5jEC8fLyMUUFGj8(Lcom/android/server/biometrics/SemBioLoggingManager;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpSetOpticalInfo$7(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$CgdXRWfDtQO22eADJR9LSfBRYmM(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpNoMatch$2(IJIILandroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$IaraW0XBPNGOYfYegmZytLRSU38(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpCaptureFailed$4(IJILandroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RZJR6HasOwmCFYY4v_VlH-0wxjo(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpStart$0(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hP0BFaHyf6e-93Qe9B45TmTd-Xo(Lcom/android/server/biometrics/SemBioLoggingManager;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpSetAuthenticatorId$8(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-i1M0ZMdhwMY7qo0Yc2tx6aDj4(Lcom/android/server/biometrics/SemBioLoggingManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpUpdateUdfpsTouchMap$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tWd5vk3uR4wk5xqjWWaEiR0I9_s(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;IZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpMatch$1(IJIILandroid/content/Context;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$yROKQliH-iM5NK75fQ0RQHK3I_I(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpStop$5(IJLjava/lang/String;II)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 23
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/SemBioLoggingManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 25
    :goto_0
    sput v0, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown"

    .line 46
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpAuthenticatorId:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    return-void
.end method

.method public static get()Lcom/android/server/biometrics/SemBioLoggingManager;
    .locals 2

    .line 174
    sget-object v0, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

    if-nez v1, :cond_0

    .line 176
    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager;

    invoke-direct {v1}, Lcom/android/server/biometrics/SemBioLoggingManager;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 178
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    sget-object v0, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$fpCaptureFailed$4(IJILandroid/content/Context;Z)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz p0, :cond_0

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 275
    iput-wide p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 276
    iput p4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 277
    invoke-virtual {p0, p5, p6}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendCaptureFailedInfo(Landroid/content/Context;Z)V

    .line 279
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$fpMatch$1(IJIILandroid/content/Context;IZ)V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v1, :cond_0

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 214
    iput-wide p2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    const-string p2, "M"

    .line 215
    iput-object p2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 216
    iput p4, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 217
    iput p5, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 218
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 219
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 220
    iget-boolean p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {v1, p6, p7, p8}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendMatchInfo(Landroid/content/Context;IZ)V

    .line 224
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$fpNoMatch$2(IJIILandroid/content/Context;Z)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz p1, :cond_0

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 235
    iput-wide p2, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    const-string p2, "N"

    .line 236
    iput-object p2, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 237
    iput p4, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 238
    iput p5, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 240
    iget-boolean p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-eqz p0, :cond_0

    .line 241
    invoke-virtual {p1, p6, p4, p7}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendNoMatchInfo(Landroid/content/Context;IZ)V

    .line 244
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$fpRemoved$6(Ljava/lang/String;I)V
    .locals 3

    .line 302
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V

    const-string v1, "R"

    .line 303
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 305
    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 306
    iput-object p1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 307
    iput p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    return-void
.end method

.method private synthetic lambda$fpSetAuthenticatorId$8(J)V
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 328
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    const-string p1, "0L"

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpAuthenticatorId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "BiometricStats"

    .line 333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fpSetAuthenticatorId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$fpSetOpticalInfo$7(III)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz p0, :cond_0

    .line 317
    iput p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpScreenStatus:I

    .line 318
    iput p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpAlphaMaskLvl:I

    .line 320
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$fpStart$0(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 195
    :try_start_0
    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 197
    iput-object p1, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 198
    iput-object p2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 199
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sget p2, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-lt p1, p2, :cond_0

    .line 201
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 203
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$fpStop$5(IJLjava/lang/String;II)V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v1, :cond_0

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 289
    iput-wide p2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 290
    iput-object p4, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 291
    iput p5, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 292
    iput p6, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 293
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 294
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 296
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$fpUpdateUdfpsTouchMap$3(I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->updateTouchMapData()V

    .line 261
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final bpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V
    .locals 1

    .line 514
    monitor-enter p0

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v0, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-le p1, v0, :cond_0

    .line 517
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 519
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bpDump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 497
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 498
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v1, " [ in progress client ]"

    .line 502
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 504
    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v2, :cond_1

    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 510
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public bpStart(ILjava/lang/String;)V
    .locals 3

    .line 470
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    const-string v1, "AP"

    .line 472
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 473
    iput-object p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 474
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 475
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sget p2, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-lt p1, p2, :cond_0

    .line 476
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public bpStop(III)V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v0, :cond_1

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    if-nez p2, :cond_0

    const-string p2, "E"

    .line 485
    iput-object p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 486
    iput p3, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    goto :goto_0

    :cond_0
    const-string p3, "D"

    .line 488
    iput-object p3, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 489
    iput p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 491
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->bpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 492
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    return-void
.end method

.method public final faceAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V
    .locals 2

    .line 457
    monitor-enter p0

    :try_start_0
    const-string v0, "E"

    .line 458
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceEnrollLog:Ljava/lang/String;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v0, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-le p1, v0, :cond_1

    .line 463
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 465
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public faceDump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 433
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceEnrollLog:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceEnrollLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceRemoveLog:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceRemoveLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v1, " [ in progress client ]"

    .line 444
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 446
    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v2, :cond_3

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 453
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public faceRemoved(Ljava/lang/String;I)V
    .locals 3

    .line 422
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V

    const-string v1, "R"

    .line 423
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 425
    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 426
    iput-object p1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 427
    iput p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 428
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceRemoveLog:Ljava/lang/String;

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    return-void
.end method

.method public faceStart(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 388
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 390
    iput-object p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 391
    iput-object p3, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 392
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 393
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sget p2, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-lt p1, p2, :cond_0

    .line 394
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public faceStop(ILjava/lang/String;JI)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v0, :cond_0

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 413
    iput-wide p3, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 414
    iput-object p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 415
    iput p5, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 417
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method public final fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 369
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "E"

    .line 370
    iget-object v3, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    iput-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpEnrollLog:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "R"

    .line 372
    iget-object v3, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iput-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpRemoveLog:Ljava/lang/String;

    goto :goto_0

    .line 375
    :cond_1
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v2, :cond_2

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->getFpOpticalInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v1, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-le p1, v1, :cond_3

    .line 381
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 383
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public fpCaptureFailed(Landroid/content/Context;IJIZ)V
    .locals 10

    move-object v1, p0

    .line 267
    iget-boolean v0, v1, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v8

    new-instance v9, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;

    move-object v0, v9

    move-object v1, p0

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p1

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;Z)V

    invoke-virtual {v8, v9}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpDump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 340
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 341
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpAuthenticatorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpEnrollLog:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpEnrollLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpRemoveLog:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpRemoveLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 349
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v1

    .line 353
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v2, " [ in progress client ]"

    .line 355
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 357
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v3, :cond_3

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 363
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_0
    move-exception p0

    .line 363
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 351
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public fpMatch(Landroid/content/Context;IJIIIZ)V
    .locals 12

    .line 209
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v11, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;

    move-object v1, v11

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v8, p1

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;IZ)V

    invoke-virtual {v0, v11}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpNoMatch(Landroid/content/Context;IJIIZ)V
    .locals 11

    .line 230
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v10, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;

    move-object v1, v10

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v8, p1

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;Z)V

    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpRemoved(Ljava/lang/String;I)V
    .locals 2

    .line 301
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpSetAuthenticatorId(J)V
    .locals 2

    .line 325
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;J)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpSetOpticalInfo(III)V
    .locals 2

    .line 313
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;III)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpStart(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 193
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpStop(ILjava/lang/String;JII)V
    .locals 10

    .line 284
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v9, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-wide v4, p3

    move-object v6, p2

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V

    invoke-virtual {v0, v9}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpUpdateUdfpsTouchMap(I)V
    .locals 2

    .line 249
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v0, :cond_1

    return-void

    .line 255
    :cond_1
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFpBioStar(Z)V
    .locals 2

    .line 186
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FP BIO STAR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    return-void
.end method
