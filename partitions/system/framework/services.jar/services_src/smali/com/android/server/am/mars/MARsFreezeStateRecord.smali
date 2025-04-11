.class public Lcom/android/server/am/mars/MARsFreezeStateRecord;
.super Ljava/lang/Object;
.source "MARsFreezeStateRecord.java"


# instance fields
.field public freezedReason:Ljava/lang/String;

.field public freezedTime:J

.field public initialStateTime:J

.field public isFreezed:Z

.field public isLcdOffFreezed:Z

.field public isLcdOnFreezed:Z

.field public isOLAFFreezed:Z

.field public mAvailableTokens:J

.field public mDetectionVer:I

.field public mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

.field public mFreezeCounts:[I

.field public mFreezeEventRecorder:Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

.field public mTokensUpdateTime:J

.field public mUnfreezeAbuseDetections:Landroid/util/ArraySet;

.field public mUnfreezeCounts:[I

.field public unfreezedReason:Ljava/lang/String;

.field public unfreezedTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessPkgStatus;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeCounts:[I

    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

    invoke-direct {v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeEventRecorder:Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

    iput-object p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFreezed:Z

    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    iput-boolean p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    iput-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedReason:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->initRealtimeDetection()V

    return-void
.end method

.method public static getDumpUnfreezeTitle()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "T%-3d|"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final abnormalRealtimeDetectionVer0(J)Z
    .locals 11

    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    sub-long v0, p1, v0

    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    const-string v3, "MARsFreezeStateRecord"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abnormalRealtimeDetection "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " elapsed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const/4 v6, 0x0

    if-gez v2, :cond_1

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    return v6

    :cond_1
    const/16 v2, 0xc

    shr-long/2addr v0, v2

    iget-wide v7, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    add-long/2addr v7, v0

    const-wide/16 v9, 0x200

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "newTokens:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " adjusted available tokens: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_3

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    return v6

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public cancelRestrictState()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    const-string v0, "MARsFreezeStateRecord"

    const-string/jumbo v1, "updateRestrictState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    iget-object v2, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelRestrict(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {v0, p0}, Lcom/android/server/am/FreecessController;->removeRestrictedPackages(Lcom/android/server/am/FreecessPkgStatus;)V

    return-void
.end method

.method public compute(JJZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeEventRecorder:Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->-$$Nest$mcompute(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;JJZ)V

    return-void
.end method

.method public dumpCmd(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    aget-object v0, p2, v0

    const-string/jumbo v1, "mfsr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ver"

    const/4 v1, 0x2

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set real time detection as ver:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "history"

    aget-object p2, p2, v1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " detection version:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->dumpUfzContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dumpUfzContent()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    invoke-virtual {v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result v4

    aget v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%-4d|"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatDateTime(J)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrozenTime()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeEventRecorder:Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

    invoke-static {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->-$$Nest$mgetUidFrozenTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getInitialStateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->initialStateTime:J

    return-wide v0
.end method

.method public getLastUnfreezeAbuseTime()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxUnfreezeType()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x2

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget v3, v3, v2

    if-ge v0, v3, :cond_1

    move v1, v2

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public getUidRunningTime()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeEventRecorder:Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

    invoke-static {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->-$$Nest$mgetUidRunningTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getUnfreezeAbuseDetections()Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getUnfreezeCounts()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeEventRecorder:Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

    invoke-static {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->-$$Nest$mgetUnfreezeCounts(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final handleAbnormalApp(J)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    const-string v0, "MARsFreezeStateRecord"

    const-string v1, "handleAbnormalApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->getMaxUnfreezeType()I

    move-result p1

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p2, v1, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->restrictAbusiveApp(Ljava/lang/String;II)V

    sget-object p2, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result p2

    if-eq p2, p1, :cond_1

    sget-object p2, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result p2

    if-ne p2, p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {p1, p2}, Lcom/android/server/am/FreecessController;->addRestrictedPackages(Lcom/android/server/am/FreecessPkgStatus;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->resetToken()V

    return-void
.end method

.method public hasUnfreezeAbuseHistory()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final initRealtimeDetection()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initRealtimeDetection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsFreezeStateRecord"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x200

    iput-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->initialStateTime:J

    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    :goto_0
    return-void
.end method

.method public final isAssignedUnfreezeDetection(Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->reasonTypeOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result p0

    aget p1, p2, p0

    add-int/lit8 p1, p1, 0x1

    aput p1, p2, p0

    return-void
.end method

.method public final resetToken()V
    .locals 2

    const-wide/16 v0, 0x200

    iput-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    return-void
.end method

.method public updateFreezeState(JLjava/lang/String;)V
    .locals 3

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    iput-object p3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeCounts:[I

    sget-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    invoke-virtual {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->getTypeNum()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeEventRecorder:Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->FREEZE:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->-$$Nest$maddEvent(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V

    return-void
.end method

.method public updateUnfreezeState(JLjava/lang/String;)V
    .locals 3

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedTime:J

    iput-object p3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    sget-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeEventRecorder:Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;

    sget-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->UNFREEZE:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->-$$Nest$maddEvent(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    invoke-virtual {p0, p3, v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isAssignedUnfreezeDetection(Ljava/lang/String;[I)V

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {p3, v0}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->abnormalRealtimeDetectionVer0(J)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "MARsFreezeStateRecord"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ver:0 catch abnormal unfreeze detection at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->formatDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->handleAbnormalApp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
