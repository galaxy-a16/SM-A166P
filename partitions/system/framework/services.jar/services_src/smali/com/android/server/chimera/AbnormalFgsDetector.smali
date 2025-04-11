.class public Lcom/android/server/chimera/AbnormalFgsDetector;
.super Ljava/lang/Object;
.source "AbnormalFgsDetector.java"

# interfaces
.implements Lcom/android/server/chimera/SystemEventListener$OneHourTimerListener;


# static fields
.field public static mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# instance fields
.field public mAbnormalHeavyApps:Ljava/util/List;

.field public mHeavyApps:Ljava/util/List;

.field public mKillableHeavyApps:Ljava/util/List;

.field public mReportedAbnormalHeavyApps:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$5ClyKhMhsZTkz3WFlzBdIJ9icbQ(Ljava/lang/String;Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/chimera/AbnormalFgsDetector;->lambda$addAbnormalHeavyApp$2(Ljava/lang/String;Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GVkh7helwGPTrPW-aDMfe3Sglbs(Ljava/lang/String;Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/chimera/AbnormalFgsDetector;->lambda$putKillableHeavyApp$0(Ljava/lang/String;Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cDOIdn07SkEIrHCjbGckE9y_xiU(Ljava/lang/String;Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/chimera/AbnormalFgsDetector;->lambda$addAbnormalHeavyApp$1(Ljava/lang/String;Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    .line 36
    sget-object p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    if-nez p0, :cond_0

    .line 37
    sput-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    :cond_0
    return-void
.end method

.method public static isForegroundService(II)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-ne p1, v3, :cond_0

    .line 42
    sget-object v4, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    if-eqz v4, :cond_0

    .line 44
    filled-new-array {p0}, [I

    move-result-object p0

    .line 46
    invoke-interface {v4, p0}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 47
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p0, :cond_0

    move-object v4, p0

    check-cast v4, [I

    aget v4, v4, v2

    if-lt v4, v3, :cond_0

    check-cast p0, [I

    aget p0, p0, v2

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    if-eq p1, v1, :cond_2

    const/16 p0, 0x7d

    if-eq p1, p0, :cond_2

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_2

    const/16 p0, 0xe6

    if-eq p1, p0, :cond_2

    const/16 p0, 0x82

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic lambda$addAbnormalHeavyApp$1(Ljava/lang/String;Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;)Z
    .locals 0

    .line 131
    iget-object p1, p1, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$addAbnormalHeavyApp$2(Ljava/lang/String;Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;)Z
    .locals 0

    .line 134
    iget-object p1, p1, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$putKillableHeavyApp$0(Ljava/lang/String;Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;)Z
    .locals 0

    .line 110
    iget-object p1, p1, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addAbnormalHeavyApp(Ljava/lang/String;IJ)V
    .locals 9

    .line 129
    sget-object v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "AbnormalFgsDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAbnormalHeavyApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    .line 133
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    new-instance v8, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(Lcom/android/server/chimera/AbnormalFgsDetector;Ljava/lang/String;IIJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 137
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/chimera/AbnormalFgsDetector;->sendDetectionHqmBigData(Ljava/lang/String;JI)V

    .line 139
    sget-object p2, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p3, "AbnormalFgsDetector"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "added to AbnormalHeavyApp : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
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

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 224
    array-length p2, p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "AbnormalFgsDetector"

    .line 228
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "HeavyApps : ["

    .line 230
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    const-string p2, "]"

    .line 232
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "KillableHeavyApps : ["

    .line 234
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 236
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "AbnormalHeavyApps : [Current "

    .line 238
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    const-string v0, " Reported "

    .line 240
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isHeavyForegroundService(IJI)Z
    .locals 2

    const-wide/32 v0, 0x12c000

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    .line 105
    invoke-static {p1, p4}, Lcom/android/server/chimera/AbnormalFgsDetector;->isForegroundService(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onOneHourTimer()V
    .locals 14

    .line 63
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 66
    sget-object v1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v2, "onOneHourTimer"

    const-string v3, "AbnormalFgsDetector"

    invoke-interface {v1, v3, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 71
    iget-wide v4, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/32 v6, 0x12c000

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 72
    sget-object v4, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v5, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    filled-new-array {v5}, [I

    move-result-object v5

    .line 73
    invoke-interface {v4, v5}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 77
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 78
    move-object v7, v4

    check-cast v7, [I

    aget v7, v7, v6

    const/16 v8, 0x64

    if-lt v7, v8, :cond_1

    move-object v7, v4

    check-cast v7, [I

    aget v7, v7, v6

    const/16 v8, 0x12c

    if-ge v7, v8, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    .line 82
    :goto_1
    check-cast v4, [I

    aget v4, v4, v6

    move v6, v7

    goto :goto_2

    :cond_2
    const/4 v4, -0x1

    .line 86
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 87
    iget-object v9, v8, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v6, :cond_3

    .line 88
    iget v6, v8, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    add-int/2addr v5, v6

    .line 93
    :cond_4
    sget-object v6, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fgs Heavy App: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") in ADJ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ProcState "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    new-instance v13, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    iget-object v8, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v9, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    iget-wide v11, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    move-object v6, v13

    move-object v7, p0

    move v10, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(Lcom/android/server/chimera/AbnormalFgsDetector;Ljava/lang/String;IIJ)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    if-lt v5, v4, :cond_0

    .line 98
    iget-object v4, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    iget-wide v6, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/chimera/AbnormalFgsDetector;->addAbnormalHeavyApp(Ljava/lang/String;IJ)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 3

    .line 247
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putKillableHeavyApp(Ljava/lang/String;IJ)V
    .locals 10

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    new-instance v1, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 113
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 114
    iget-object v3, v1, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    iget v0, v1, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    add-int/2addr v2, v0

    :cond_1
    move v7, v2

    .line 120
    iget-object v8, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    new-instance v9, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v7

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(Lcom/android/server/chimera/AbnormalFgsDetector;Ljava/lang/String;IIJ)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    if-lt v7, v0, :cond_2

    .line 123
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/chimera/AbnormalFgsDetector;->addAbnormalHeavyApp(Ljava/lang/String;IJ)V

    .line 125
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reportAbnormalHeavyAppIfExist()V
    .locals 8

    .line 191
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v3, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 198
    iget-object v5, v4, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget v5, v4, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x1388

    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v5, v4, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    iget-wide v6, v4, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->detectPss:J

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/chimera/AbnormalFgsDetector;->sendReportHqmBigData(Ljava/lang/String;J)V

    goto :goto_0

    .line 205
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.sdhms.MEMORY_ABNORMAL_APP_DETECTION"

    .line 206
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "package_name"

    .line 207
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v0, "uid"

    .line 208
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "anomaly_type"

    .line 209
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "com.sec.android.sdhms"

    .line 210
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    sget-object v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0, v3}, Lcom/android/server/chimera/SystemRepository;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    sget-object v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reported AbnormalHeavyApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 215
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 214
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbnormalFgsDetector"

    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-object p0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public sendDetectionHqmBigData(Ljava/lang/String;JI)V
    .locals 2

    .line 151
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "TYPE"

    const/16 v1, 0x66

    .line 152
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "PNAME"

    .line 153
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "PSS"

    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "ADJ"

    .line 155
    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 164
    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p2, "KPUT"

    invoke-interface {p1, p2, p0}, Lcom/android/server/chimera/SystemRepository;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 159
    :catch_0
    sget-object p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "AbnormalFgsDetector"

    const-string p2, "failed to create the KPUT"

    invoke-interface {p0, p1, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendReportHqmBigData(Ljava/lang/String;J)V
    .locals 2

    .line 175
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "TYPE"

    const/16 v1, 0x67

    .line 176
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "PNAME"

    .line 177
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "PSS"

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 187
    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p2, "KPUT"

    invoke-interface {p1, p2, p0}, Lcom/android/server/chimera/SystemRepository;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 182
    :catch_0
    sget-object p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "AbnormalFgsDetector"

    const-string p2, "failed to create the KPUT"

    invoke-interface {p0, p1, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
