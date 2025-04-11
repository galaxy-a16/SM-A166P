.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# static fields
.field public static ORIG_ENUMS:[I

.field public static PROTO_ENUMS:[I


# instance fields
.field public curProcStateSeq:J

.field public volatile hasInternetPermission:Z

.field public lastNetworkUpdatedProcStateSeq:J

.field public mCurAllowList:Z

.field public mCurCapability:I

.field public mCurProcState:I

.field public mEphemeral:Z

.field public mFGSFilter:Z

.field public mForegroundServices:Z

.field public mIdle:Z

.field public mLastBackgroundTime:J

.field public mLastReportedChange:I

.field public mNumProcs:I

.field public mProcAdjChanged:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcRecords:Landroid/util/ArraySet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSetAllowList:Z

.field public mSetCapability:I

.field public mSetIdle:Z

.field public mSetProcState:I

.field public final mUid:I

.field public mUidIsFrozen:Z

.field public final networkStateLock:Ljava/lang/Object;

.field public final pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public volatile procStateSeqWaitingForNetwork:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 140
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    .line 149
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        -0x80000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 47
    iput v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 89
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mFGSFilter:Z

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v0}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 174
    iput p1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 175
    iput-object p2, p0, Lcom/android/server/am/UidRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p2, :cond_0

    .line 176
    iget-object p1, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/UidRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 178
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    return-void
.end method


# virtual methods
.method public addProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public areAllProcessesFrozen()Z
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 373
    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 374
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eq p1, v2, :cond_0

    .line 376
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public clearProcAdjChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10

    .line 429
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 430
    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 431
    iget v0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v0

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000003L

    .line 432
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000004L

    .line 433
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000005L

    .line 434
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10b00000006L

    .line 435
    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v3, p1

    .line 435
    invoke-static/range {v3 .. v9}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v0, 0x10800000007L

    .line 437
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 438
    iget v0, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v0, :cond_0

    const-wide v2, 0x20e00000008L

    int-to-long v4, v0

    .line 439
    sget-object v6, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    sget-object v7, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    :cond_0
    const-wide v0, 0x10500000009L

    .line 442
    iget v2, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10b0000000aL

    .line 444
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    .line 445
    iget-wide v4, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000002L

    .line 446
    iget-wide v4, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 448
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 450
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public forEachProcess(Ljava/util/function/Consumer;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurCapability()I
    .locals 0

    .line 234
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return p0
.end method

.method public getCurProcState()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return p0
.end method

.method public getLastBackgroundTime()J
    .locals 2

    .line 254
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    return-wide v0
.end method

.method public getMinProcAdj()I
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x3e9

    :goto_0
    if-ltz v0, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v2

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getNumOfProcs()I
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public getProcAdjChanged()Z
    .locals 0

    .line 217
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return p0
.end method

.method public getProcessInPackage(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 357
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public getSetCapability()I
    .locals 0

    .line 244
    iget p0, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    return p0
.end method

.method public getSetProcState()I
    .locals 0

    .line 197
    iget p0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/android/server/am/UidRecord;->mUid:I

    return p0
.end method

.method public hasForegroundServices()Z
    .locals 0

    .line 275
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    return p0
.end method

.method public isCurAllowListed()Z
    .locals 0

    .line 286
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    return p0
.end method

.method public isEphemeral()Z
    .locals 0

    .line 264
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    return p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 398
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    return p0
.end method

.method public isIdle()Z
    .locals 0

    .line 306
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    return p0
.end method

.method public isSetAllowListed()Z
    .locals 0

    .line 296
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    return p0
.end method

.method public isSetIdle()Z
    .locals 0

    .line 316
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    return p0
.end method

.method public noteProcAdjChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return-void
.end method

.method public removeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/16 v0, 0x13

    .line 418
    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 420
    iput v0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return-void
.end method

.method public setCurAllowListed(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    return-void
.end method

.method public setCurCapability(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return-void
.end method

.method public setCurProcState(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return-void
.end method

.method public setEphemeral(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    return-void
.end method

.method public setFGSFilterStatus(Z)V
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mFGSFilter:Z

    return-void
.end method

.method public setForegroundServices(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    return-void
.end method

.method public setFrozen(Z)V
    .locals 0

    .line 393
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    return-void
.end method

.method public setIdle(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    return-void
.end method

.method public setLastBackgroundTime(J)V
    .locals 0

    .line 259
    iput-wide p1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    return-void
.end method

.method public setLastReportedChange(I)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    return-void
.end method

.method public setSetAllowListed(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    return-void
.end method

.method public setSetCapability(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    return-void
.end method

.method public setSetIdle(Z)V
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    return-void
.end method

.method public setSetProcState(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UidRecord{"

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    if-eqz v1, :cond_0

    const-string v1, " ephemeral"

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    if-eqz v1, :cond_1

    const-string v1, " fgServices"

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v1, :cond_2

    const-string v1, " allowlist"

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_2
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    const-string v1, " bg:"

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 474
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v1, :cond_4

    const-string v1, " idle"

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_4
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v1, :cond_11

    const-string v1, " change:"

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const-string v1, "gone"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 484
    :goto_0
    iget v3, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v3, v3, 0x2

    const-string/jumbo v4, "|"

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    .line 486
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, "idle"

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 491
    :cond_7
    iget v3, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    .line 493
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "active"

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 498
    :cond_9
    iget v3, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    .line 500
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "cached"

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_b
    move v2, v1

    .line 505
    :goto_1
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_d

    if-eqz v2, :cond_c

    .line 507
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string/jumbo v1, "uncached"

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_d
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/high16 v3, -0x80000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_f

    if-eqz v2, :cond_e

    .line 513
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string/jumbo v1, "procstate"

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_f
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_11

    if-eqz v2, :cond_10

    .line 519
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string/jumbo v1, "procadj"

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, " procs:"

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget v1, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seq("

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")}"

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " caps="

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    invoke-static {v0, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateHasInternetPermission()V
    .locals 2

    const-string v0, "android.permission.INTERNET"

    .line 424
    iget v1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    return-void
.end method
