.class public Lcom/android/server/chimera/ChimeraDataInfo;
.super Ljava/lang/Object;
.source "ChimeraDataInfo.java"


# instance fields
.field public mActionCntSrc:[I

.field public mAdjKillCnt:[I

.field public mAvgAvaMem:J

.field public mAvgReleasedMem:J

.field public mDynamicStrategyUse:Z

.field public mGroupKillCnt:[I

.field public mKillCnt:I

.field public mLruWeight:F

.field public mMemWeight:F

.field public mStdBktWeight:F

.field public mTargetAvaMem:J

.field public mTriggerCntSrc:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    .line 8
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    .line 17
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 18
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    return-void
.end method

.method public static getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;
    .locals 6

    .line 117
    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 119
    :goto_0
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    aget v4, v4, v2

    iget-object v5, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    aget v5, v5, v2

    sub-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 123
    :goto_1
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 124
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    aget v4, v4, v2

    iget-object v5, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    aget v5, v5, v2

    sub-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 127
    :goto_2
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 128
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    aget v4, v4, v2

    iget-object v5, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    aget v5, v5, v2

    sub-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 131
    :cond_2
    :goto_3
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 132
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    aget v3, v3, v1

    iget-object v4, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 135
    :cond_3
    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    iget-wide v3, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    .line 136
    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    iget-wide v3, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    .line 137
    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    iget p1, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    .line 139
    iget-boolean p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    iput-boolean p1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    .line 140
    iget p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    iput p1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    .line 141
    iget p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    iput p1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    .line 142
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    iput p0, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    return-object v0
.end method


# virtual methods
.method public getActionCntSrc()[I
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    return-object p0
.end method

.method public getAdjKillCnt()[I
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    return-object p0
.end method

.method public getGroupKillCnt()[I
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    return-object p0
.end method

.method public getKillCnt()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    return p0
.end method

.method public getLruWight()F
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    return p0
.end method

.method public getMemWeight()F
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    return p0
.end method

.method public getStdBktWeight()F
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    return p0
.end method

.method public getTriggerCntSrc()[I
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    return-object p0
.end method

.method public setActionCntSrc([I)V
    .locals 2

    .line 33
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setAdjKillCnt([I)V
    .locals 2

    .line 105
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setAvgAvaMem(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    return-void
.end method

.method public setAvgReleasedMem(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    return-void
.end method

.method public setDynamicStrategyUse(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    return-void
.end method

.method public setGroupKillCnt([I)V
    .locals 2

    .line 113
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setKillCnt(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    return-void
.end method

.method public setLruWight(F)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    return-void
.end method

.method public setMemWeight(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    return-void
.end method

.method public setStdBktWeight(F)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    return-void
.end method

.method public setTargetAvaMem(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTargetAvaMem:J

    return-void
.end method

.method public setTriggerCntSrc([I)V
    .locals 2

    .line 25
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
