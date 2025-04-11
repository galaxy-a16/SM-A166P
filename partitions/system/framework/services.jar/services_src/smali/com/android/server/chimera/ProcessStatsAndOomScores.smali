.class public Lcom/android/server/chimera/ProcessStatsAndOomScores;
.super Ljava/lang/Object;
.source "ProcessStatsAndOomScores.java"


# instance fields
.field public mPids:[I

.field public mScores:[I

.field public mStates:[I


# direct methods
.method public static synthetic $r8$lambda$k0tO76VJ7wVYbq4_J0M8GtavSDU(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->lambda$hasCachedProcess$0(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    iput-object v0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    iput-object v0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    return-void
.end method

.method public static create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;
    .locals 6

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;

    invoke-direct {v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;-><init>()V

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v4, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    add-int/lit8 v5, v2, 0x1

    iget v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    aput v3, v4, v2

    move v2, v5

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    invoke-interface {p1, p0}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [I

    iput-object p1, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [I

    iput-object p0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    goto :goto_1

    :cond_2
    new-array p0, v1, [I

    iput-object p0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    new-array p0, v1, [I

    iput-object p0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    :goto_1
    return-object v0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$hasCachedProcess$0(I)Z
    .locals 1

    const/16 v0, 0x352

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public hasCachedProcess()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/ProcessStatsAndOomScores$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method public isAllCachedEmptyProcess()Z
    .locals 5

    iget-object p0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v4, v3

    const-string v5, " "

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "/ stats: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "/ adjs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v2, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
