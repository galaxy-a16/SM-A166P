.class public Lcom/android/server/chimera/ChimeraAppInfo;
.super Ljava/lang/Object;
.source "ChimeraAppInfo.java"


# instance fields
.field public appType:I

.field public cacStandbyBucket:I

.field public curStandbyBucket:I

.field public finalScore:F

.field public group:I

.field public idleKillAdj:I

.field public lruIdx:I

.field public packageName:Ljava/lang/String;

.field public procList:Ljava/util/List;

.field public pss:J

.field public reclaimGain:J

.field public restartService:I

.field public score:F

.field public statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

.field public swapPss:J

.field public uid:I


# direct methods
.method public static synthetic $r8$lambda$SfmIWxEJbNgmC_KmNpyz7bMIkSc(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/chimera/ChimeraAppInfo;->lambda$hasRestartService$0(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iput-wide v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->restartService:I

    iput-object p2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    return-void
.end method

.method public static appType2group(I)I
    .locals 5

    const v0, 0x2800c

    const/4 v1, 0x3

    const v2, 0xb55030

    const/16 v3, 0xec0

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    and-int/2addr v4, p0

    if-lez v4, :cond_0

    sub-int/2addr v3, v2

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private synthetic lambda$hasRestartService$0(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .locals 0

    iget-object p2, p2, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {p1, p2, p0}, Lcom/android/server/chimera/SystemRepository;->hasRestartService(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addProcess(ILjava/lang/String;JJJJI)Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    move-object v1, v11

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;-><init>(ILjava/lang/String;JJJI)V

    iget-object v1, v0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v1, v0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    add-long/2addr v1, p3

    iput-wide v1, v0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iget-wide v1, v0, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    add-long v1, v1, p9

    iput-wide v1, v0, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    return-object v11
.end method

.method public getPidList()Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget v1, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasRestartService(Lcom/android/server/chimera/SystemRepository;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->restartService:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/ChimeraAppInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/chimera/ChimeraAppInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->restartService:I

    :cond_0
    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->restartService:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInDeviceIdleKillProtectedGroup()Z
    .locals 2

    iget v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isInPMMCriticalProtectedGroup()Z
    .locals 2

    iget v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-gtz v1, :cond_1

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isInProtectedGroup()Z
    .locals 1

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInfoNotFeteched()Z
    .locals 4

    iget v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toBriefString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v2, v3, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s %xH %d %d %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraAppInfo;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-wide p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d%s:G%d(0x%x) score=%3.1f(%d %d/%d %d)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
