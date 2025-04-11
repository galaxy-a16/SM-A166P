.class public Lcom/android/server/chimera/ChimeraAppReclaim;
.super Ljava/lang/Object;
.source "ChimeraAppReclaim.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mActionGcCnt:I

.field public mActionReclaimCnt:I

.field public mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public mPkgCacheReclaimable:Ljava/util/List;

.field public mPkgGcList:Ljava/util/List;

.field public mSkipReclaimCnt:I

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ChimeraAppReclaim"

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    iput v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    iput v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionGcCnt:I

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iput-object p2, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    return-void
.end method


# virtual methods
.method public final performCompaction(Ljava/lang/String;I)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/reclaim"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception performCompaction, e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public performGc(Ljava/util/List;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "performGc"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v4, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v5, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v4, v5}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v4

    const-wide/16 v6, 0x2800

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v6, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "performGc skiped pss "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v7, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performGc before "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-interface {v4, v3}, Lcom/android/server/chimera/SystemRepository;->forceGc(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionGcCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionGcCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception performGc, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public performReclaimCache(Ljava/util/List;)V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    const-string v3, "Start performReclaimCache"

    invoke-interface {v0, v2, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getTotalMemFree()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo;

    iget-object v8, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    iget-object v9, v7, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v7, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v12, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v13, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v12, v13}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v12

    const-wide/16 v14, 0x2800

    cmp-long v14, v12, v14

    if-gez v14, :cond_1

    iget-object v9, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v10, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "performReclaimCache skiped pss "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v14, "file"

    iget v15, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v1, v14, v15}, Lcom/android/server/chimera/ChimeraAppReclaim;->performCompaction(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    iget v14, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    iget-object v14, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v15, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v14, v15}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v14

    iget-object v10, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v11, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    move-object/from16 p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    const-string/jumbo v4, "performReclaimCache "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pss before "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " pss after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v12, v14

    if-ltz v0, :cond_3

    sub-long/2addr v12, v14

    add-long/2addr v5, v12

    :cond_3
    const-wide/16 v9, 0x7800

    cmp-long v0, v5, v9

    if-ltz v0, :cond_4

    move/from16 v4, v16

    goto :goto_2

    :cond_4
    move-object/from16 v0, p1

    move/from16 v4, v16

    goto/16 :goto_1

    :cond_5
    move-object/from16 p1, v0

    :goto_2
    iget-object v0, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    iget-object v7, v7, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-wide/16 v7, 0x7800

    cmp-long v0, v5, v7

    if-ltz v0, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_7
    :goto_3
    if-nez v4, :cond_8

    iget v0, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getTotalMemFree()J

    move-result-wide v4

    iget-object v0, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v6, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "memFreeBefore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " memFreeAfter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " memFree delta: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception performReclaimCache, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public updateGcPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updatePackageCacheReclaimable(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
