.class public abstract Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;
.super Ljava/lang/Object;
.source "ChimeraStrategy.java"


# static fields
.field public static IDX_DYNAMIC_PROTECT:I = 0x0

.field public static IDX_DYNAMIC_REENTRY:I = 0x0

.field public static UNKNOWN_GB_PROTECTED_COUNT_ON_HOME:I = 0x20

.field public static UNKNOWN_GB_PROTECTED_COUNT_ON_LMKD:I = 0x20

.field public static UNKNOWN_GB_TARGET_FREE:I = 0x8000

.field public static sDynamicParameters:[[F

.field public static sParameters:[[I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetsParameters()[[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 48
    fill-array-data v1, :array_0

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    new-array v3, v0, [I

    fill-array-data v3, :array_2

    new-array v4, v0, [I

    fill-array-data v4, :array_3

    new-array v5, v0, [I

    fill-array-data v5, :array_4

    new-array v6, v0, [I

    fill-array-data v6, :array_5

    new-array v7, v0, [I

    fill-array-data v7, :array_6

    const/4 v0, 0x6

    new-array v8, v0, [I

    fill-array-data v8, :array_7

    filled-new-array/range {v1 .. v8}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    const/4 v0, 0x2

    .line 59
    sput v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_REENTRY:I

    const/4 v0, 0x1

    .line 60
    sput v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_PROTECT:I

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 61
    fill-array-data v1, :array_8

    new-array v2, v0, [F

    fill-array-data v2, :array_9

    new-array v3, v0, [F

    fill-array-data v3, :array_a

    new-array v4, v0, [F

    fill-array-data v4, :array_b

    new-array v5, v0, [F

    fill-array-data v5, :array_c

    new-array v6, v0, [F

    fill-array-data v6, :array_d

    new-array v7, v0, [F

    fill-array-data v7, :array_e

    new-array v8, v0, [F

    fill-array-data v8, :array_f

    filled-new-array/range {v1 .. v8}, [[F

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1e5
        0x5
        0x3
        0x375
        0x64
        0x190
        0x1f4
        0x258
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x266
        0x7
        0x6
        0x44a
        0x96
        0x190
        0x1f4
        0x3e8
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x276
        0xb
        0x8
        0x57e
        0x12c
        0x190
        0x1f4
        0x5dc
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x44c
        0x13
        0x9
        0x7f2
        0x15e
        0x258
        0x1f4
        0x800
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x866
        0x18
        0xa
        0x9f6
        0x190
        0x258
        0x400
        0x9b0
    .end array-data

    :array_5
    .array-data 4
        0xc
        0x999
        0x1c
        0xe
        0xb29
        0x1f4
        0x400
        0x600
        0x1000
    .end array-data

    :array_6
    .array-data 4
        0x10
        0x999
        0x1c
        0xe
        0xb29
        0x258
        0x400
        0x600
        0x1800
    .end array-data

    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_9
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40e00000    # 7.0f
    .end array-data

    :array_a
    .array-data 4
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x41200000    # 10.0f
    .end array-data

    :array_b
    .array-data 4
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41500000    # 13.0f
    .end array-data

    :array_c
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41800000    # 16.0f
    .end array-data

    :array_d
    .array-data 4
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41800000    # 16.0f
    .end array-data

    :array_e
    .array-data 4
        0x41800000    # 16.0f
        0x41600000    # 14.0f
        0x41880000    # 17.0f
    .end array-data

    :array_f
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static getAlwaysRunningProcQuota(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 146
    :goto_0
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v2, v1

    aget v3, v2, v0

    if-lez v3, :cond_1

    if-lt v3, p0, :cond_0

    const/16 p0, 0x8

    .line 148
    aget p0, v2, p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getDeviceIdleAppThreshold(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 128
    :goto_0
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v2, v1

    aget v3, v2, v0

    if-lez v3, :cond_1

    if-lt v3, p0, :cond_0

    const/4 p0, 0x6

    .line 130
    aget p0, v2, p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getDeviceIdleNativeThreshold(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 137
    :goto_0
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v2, v1

    aget v3, v2, v0

    if-lez v3, :cond_1

    if-lt v3, p0, :cond_0

    const/4 p0, 0x7

    .line 139
    aget p0, v2, p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getDynamicProtectedCount(I)F
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 101
    :goto_0
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    aget-object v2, v2, v1

    aget v3, v2, v0

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    int-to-float v4, p0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 103
    sget p0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_PROTECT:I

    aget p0, v2, p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static getProtectedCountOnHomeTrigger(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 92
    :goto_0
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v2, v1

    aget v3, v2, v0

    if-lez v3, :cond_1

    if-lt v3, p0, :cond_0

    const/4 p0, 0x3

    .line 94
    aget p0, v2, p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getProtectedCountOnLmkdTrigger(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 83
    :goto_0
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v2, v1

    aget v3, v2, v0

    if-lez v3, :cond_1

    if-lt v3, p0, :cond_0

    const/4 p0, 0x2

    .line 85
    aget p0, v2, p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getQuickReclaimDefaultThreshold(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 119
    :goto_0
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v2, v1

    aget v3, v2, v0

    if-lez v3, :cond_1

    if-lt v3, p0, :cond_0

    const/4 p0, 0x5

    .line 121
    aget p0, v2, p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getReentry(I)F
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 110
    :goto_0
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-lez v2, :cond_1

    .line 111
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    aget-object v2, v2, v1

    aget v3, v2, v0

    int-to-float v4, p0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 112
    sget p0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_REENTRY:I

    aget p0, v2, p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static getTargetFree(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 73
    :goto_0
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v2, v1

    aget v3, v2, v0

    if-lez v3, :cond_1

    if-lt v3, p0, :cond_0

    const/4 p0, 0x1

    .line 76
    aget p0, v2, p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
