.class public final Lcom/android/server/am/ProcessCachedOptimizerRecord;
.super Ljava/lang/Object;
.source "ProcessCachedOptimizerRecord.java"


# static fields
.field static final IS_FROZEN:Ljava/lang/String; = "isFrozen"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mDoingTrim:Z

.field public mEarliestFreezableTimeMillis:J

.field public mForceCompact:Z

.field public mFreezeExempt:Z

.field public mFreezeSticky:Z

.field public mFreezeUnfreezeTime:J

.field public mFreezerOverride:Z

.field public mFrozen:Z

.field public mHasCollectedFrozenPSS:Z

.field public mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public mLastCompactTime:J

.field public mLastOomAdjChangeReason:I

.field public mLastUsedTimeout:J

.field public mPendingCompact:Z

.field public mPendingFreeze:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field public mShouldNotFreeze:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 338
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2

    .line 347
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastCompactTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " lastCompactProfile="

    .line 348
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasPendingCompaction="

    .line 351
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isFreezeExempt="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isPendingFreeze="

    .line 354
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isFrozen="

    .line 355
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "earliestFreezableTimeMs="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 358
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getEarliestFreezableTime()J
    .locals 2

    .line 288
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    return-wide v0
.end method

.method public getFreezeUnfreezeTime()J
    .locals 2

    .line 268
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-wide v0
.end method

.method public getLastCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-nez v0, :cond_0

    .line 187
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object p0
.end method

.method public getLastCompactTime()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-wide v0
.end method

.method public getLastOomAdjChangeReason()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    return p0
.end method

.method public getLastUsedTimeout()J
    .locals 2

    .line 298
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    return-wide v0
.end method

.method public getReqCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object p0
.end method

.method public getReqCompactSource()Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    return-object p0
.end method

.method public hasFreezerOverride()Z
    .locals 0

    .line 258
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return p0
.end method

.method public hasPendingCompact()Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return p0
.end method

.method public init(J)V
    .locals 0

    .line 342
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-void
.end method

.method public isDoingTrim()Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mDoingTrim:Z

    return p0
.end method

.method public isForceCompact()Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    return p0
.end method

.method public isFreezeExempt()Z
    .locals 0

    .line 308
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return p0
.end method

.method public isFreezeSticky()Z
    .locals 0

    .line 234
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    return p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 220
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return p0
.end method

.method public isPendingFreeze()Z
    .locals 0

    .line 318
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return p0
.end method

.method public setDoingTrim(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mDoingTrim:Z

    return-void
.end method

.method public setEarliestFreezableTime(J)V
    .locals 0

    .line 293
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    return-void
.end method

.method public setForceCompact(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    return-void
.end method

.method public setFreezeExempt(Z)V
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return-void
.end method

.method public setFreezeSticky(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    return-void
.end method

.method public setFreezeUnfreezeTime(J)V
    .locals 0

    .line 273
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-void
.end method

.method public setFreezerOverride(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return-void
.end method

.method public setFrozen(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return-void
.end method

.method public setHasCollectedFrozenPSS(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    return-void
.end method

.method public setHasPendingCompact(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return-void
.end method

.method public setLastCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-void
.end method

.method public setLastCompactTime(J)V
    .locals 0

    .line 149
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-void
.end method

.method public setLastOomAdjChangeReason(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    return-void
.end method

.method public setLastUsedTimeout(J)V
    .locals 0

    .line 303
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    return-void
.end method

.method public setPendingFreeze(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return-void
.end method

.method public setReqCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-void
.end method

.method public setReqCompactSource(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    return-void
.end method

.method public setShouldNotFreeze(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return-void
.end method

.method public shouldNotFreeze()Z
    .locals 0

    .line 278
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return p0
.end method

.method public skipPSSCollectionBecauseFrozen()Z
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 242
    iget-boolean v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    .line 248
    iput-boolean v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    return v0
.end method
