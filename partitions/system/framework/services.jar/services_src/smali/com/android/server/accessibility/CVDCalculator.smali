.class public Lcom/android/server/accessibility/CVDCalculator;
.super Ljava/lang/Object;
.source "CVDCalculator.java"


# instance fields
.field public CVDMethod:I

.field public CVDSeverity:D

.field public CVDStrength:D

.field public CVDType:I

.field public SpotsU:[D

.field public SpotsV:[D

.field public c_index:D

.field public mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

.field public mInputNums:[I

.field public majorAngle:D

.field public majorRadius:D

.field public minorRadius:D

.field public s_index:D

.field public tes:D

.field public u:[D

.field public v:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    new-instance v0, Lcom/android/server/accessibility/ColorTransferTable;

    invoke-direct {v0}, Lcom/android/server/accessibility/ColorTransferTable;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    return-void

    :array_0
    .array-data 8
        -0x3fca75c28f5c28f6L    # -21.54
        -0x3fc8bd70a3d70a3dL    # -23.26
        -0x3fc9970a3d70a3d7L    # -22.41
        -0x3fc8e3d70a3d70a4L    # -23.11
        -0x3fc98ccccccccccdL    # -22.45
        -0x3fca3d70a3d70a3dL    # -21.76
        -0x3fd3d70a3d70a3d7L    # -14.08
        -0x3ffa3d70a3d70a3dL    # -2.72
        0x402dae147ae147aeL    # 14.84
        0x4037deb851eb851fL    # 23.87
        0x403fd1eb851eb852L    # 31.82
        0x403f6b851eb851ecL    # 31.42
        0x403dca3d70a3d70aL    # 29.79
        0x403aa3d70a3d70a4L    # 26.64
        0x4036eb851eb851ecL    # 22.92
        0x4026666666666666L    # 11.2
    .end array-data

    :array_1
    .array-data 8
        -0x3fbcce147ae147aeL    # -38.39
        -0x3fc670a3d70a3d71L    # -25.56
        -0x3fd0f0a3d70a3d71L    # -15.53
        -0x3fe2333333333333L    # -7.45
        0x3ff199999999999aL    # 1.1
        0x401d666666666666L    # 7.35
        0x4032bd70a3d70a3dL    # 18.74
        0x403c2147ae147ae1L    # 28.13
        0x403f2147ae147ae1L    # 31.13
        0x403a59999999999aL    # 26.35
        0x402d851eb851eb85L    # 14.76
        0x401bf5c28f5c28f6L    # 6.99
        0x3fb999999999999aL    # 0.1
        -0x3fdd3d70a3d70a3dL    # -9.38
        -0x3fcd59999999999aL    # -18.65
        -0x3fc763d70a3d70a4L    # -24.61
    .end array-data
.end method


# virtual methods
.method public final Calc()V
    .locals 24

    move-object/from16 v0, p0

    const/16 v1, 0xf

    new-array v2, v1, [D

    new-array v3, v1, [D

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    iget-object v6, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    add-int/lit8 v7, v5, 0x1

    aget-wide v8, v6, v7

    aget-wide v10, v6, v5

    sub-double/2addr v8, v10

    aput-wide v8, v2, v5

    iget-object v6, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    aget-wide v8, v6, v7

    aget-wide v10, v6, v5

    sub-double/2addr v8, v10

    aput-wide v8, v3, v5

    move v5, v7

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    move v7, v4

    move-wide v8, v5

    move-wide v10, v8

    :goto_1
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-ge v7, v1, :cond_1

    aget-wide v14, v2, v7

    mul-double v16, v14, v12

    aget-wide v18, v3, v7

    mul-double v16, v16, v18

    add-double v8, v8, v16

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    move-object/from16 v17, v2

    aget-wide v1, v3, v7

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-double/2addr v14, v1

    add-double/2addr v10, v14

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v17

    const/16 v1, 0xf

    goto :goto_1

    :cond_1
    move-object/from16 v17, v2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    div-double/2addr v1, v12

    const/4 v7, 0x2

    new-array v8, v7, [D

    fill-array-data v8, :array_0

    cmpg-double v5, v1, v5

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-gez v5, :cond_2

    add-double/2addr v9, v1

    goto :goto_2

    :cond_2
    sub-double v9, v1, v9

    :goto_2
    move v5, v4

    :goto_3
    const/16 v11, 0xf

    if-ge v5, v11, :cond_3

    aget-wide v14, v8, v4

    aget-wide v18, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    aget-wide v20, v17, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v6, v18, v20

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v14, v6

    aput-wide v14, v8, v4

    const/4 v6, 0x1

    aget-wide v14, v8, v6

    aget-wide v18, v3, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    aget-wide v20, v17, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move/from16 v22, v5

    sub-double v4, v18, v20

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v14, v4

    aput-wide v14, v8, v6

    add-int/lit8 v5, v22, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x2

    goto :goto_3

    :cond_3
    const/4 v6, 0x1

    aget-wide v14, v8, v4

    const-wide/high16 v17, 0x402e000000000000L    # 15.0

    div-double v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    aput-wide v14, v8, v4

    aget-wide v14, v8, v6

    div-double v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    aput-wide v14, v8, v6

    aget-wide v5, v8, v4

    cmpl-double v3, v5, v14

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    const-wide v19, 0x4066800000000000L    # 180.0

    if-lez v3, :cond_4

    iput-wide v5, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    iput-wide v14, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    mul-double v9, v9, v19

    div-double v9, v9, v17

    iput-wide v9, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    goto :goto_4

    :cond_4
    iput-wide v14, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    iput-wide v5, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    mul-double v1, v1, v19

    div-double v1, v1, v17

    iput-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    :goto_4
    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    const-wide v3, 0x4022795e9e1b089aL    # 9.23705

    div-double v3, v1, v3

    iput-wide v3, v0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    iget-wide v3, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    div-double v3, v1, v3

    iput-wide v3, v0, Lcom/android/server/accessibility/CVDCalculator;->s_index:D

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->tes:D

    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    const-wide v3, 0x3ff999999999999aL    # 1.6

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_5

    const/4 v5, 0x3

    iput v5, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto :goto_5

    :cond_5
    iget-wide v5, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    const-wide v8, 0x3fe6666666666666L    # 0.7

    cmpl-double v8, v5, v8

    if-ltz v8, :cond_6

    const/4 v7, 0x0

    iput v7, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto :goto_5

    :cond_6
    const-wide v7, -0x3fafc00000000000L    # -65.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_7

    const/4 v5, 0x2

    iput v5, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto :goto_5

    :cond_7
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    :goto_5
    cmpg-double v5, v1, v3

    if-gez v5, :cond_8

    move-wide v1, v3

    :cond_8
    const-wide v5, 0x4010cccccccccccdL    # 4.2

    cmpl-double v7, v1, v5

    if-lez v7, :cond_9

    move-wide v1, v5

    :cond_9
    sub-double/2addr v1, v3

    const-wide v3, 0x4004cccccccccccdL    # 2.6

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDStrength:D

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v1, v3

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    if-gez v5, :cond_a

    mul-double/2addr v1, v6

    goto :goto_6

    :cond_a
    sub-double/2addr v1, v3

    mul-double/2addr v1, v6

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    :goto_6
    iput-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public final InitMakeUV()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    iget-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    iget-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    iget-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    move v0, v2

    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    aget v1, v1, v0

    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    aget-wide v4, v4, v1

    aput-wide v4, v3, v0

    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    iget-object v4, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    aget-wide v4, v4, v1

    aput-wide v4, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :catch_0
    return v2
.end method

.method public calculate()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/accessibility/CVDCalculator;->Calc()V

    return-void
.end method

.method public getCVDSeverity()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/CVDCalculator;->roundHalfUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCVDType()I
    .locals 0

    iget p0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    return p0
.end method

.method public getPredefinedServerityAndUserParameter(II)[D
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/ColorTransferTable;->getPredefinedValueForEachType(II)[D

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRGBCMY(IIDD)[I
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    const/16 v2, 0xc

    new-array v12, v2, [I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRGBCMY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", CVDType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Severity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p5

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CVDCalculator"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0xb

    const/16 v22, 0xa

    const/16 v23, 0x9

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v5, 0x1

    const v2, 0xff00

    const/16 v24, 0xff

    if-nez v1, :cond_2

    if-eqz v9, :cond_1

    if-eq v9, v5, :cond_1

    if-ne v9, v8, :cond_0

    goto :goto_0

    :cond_0
    aput v2, v12, v20

    aput v24, v12, v5

    aput v24, v12, v8

    aput v24, v12, v19

    aput v2, v12, v18

    aput v24, v12, v17

    aput v24, v12, v7

    aput v24, v12, v16

    aput v2, v12, v15

    aput v24, v12, v23

    aput v24, v12, v22

    aput v24, v12, v21

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move/from16 v4, p2

    move v15, v5

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v7

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x4

    move v15, v7

    move-wide/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v7, v15, 0x100

    add-int/2addr v7, v1

    aput v7, v12, v20

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-wide/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    const/4 v1, 0x1

    aput v15, v12, v1

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    const/4 v7, 0x2

    aput v15, v12, v7

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x3

    const/4 v3, 0x1

    move-wide/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    aput v15, v12, v19

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    aput v15, v12, v18

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    aput v15, v12, v17

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    const/4 v8, 0x6

    aput v15, v12, v8

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x5

    const/4 v3, 0x3

    move-wide/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    aput v15, v12, v16

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v8

    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x2

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v0

    mul-int/lit16 v8, v8, 0x100

    add-int/2addr v8, v0

    const/16 v0, 0x8

    aput v8, v12, v0

    aput v24, v12, v23

    aput v24, v12, v22

    aput v24, v12, v21

    goto/16 :goto_2

    :cond_2
    move v3, v5

    move/from16 v26, v8

    move v8, v7

    move/from16 v7, v26

    if-ne v1, v3, :cond_6

    if-eqz v9, :cond_4

    if-eq v9, v3, :cond_4

    if-ne v9, v7, :cond_3

    goto :goto_1

    :cond_3
    aput v2, v12, v20

    aput v24, v12, v3

    aput v24, v12, v7

    aput v24, v12, v19

    aput v2, v12, v18

    aput v24, v12, v17

    aput v24, v12, v8

    aput v24, v12, v16

    const/16 v0, 0x8

    aput v2, v12, v0

    aput v24, v12, v23

    aput v24, v12, v22

    aput v24, v12, v21

    goto/16 :goto_2

    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v25, v7

    move v15, v8

    move-wide/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v7

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x4

    move v15, v7

    move-wide/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v7, v15, 0x100

    add-int/2addr v7, v1

    aput v7, v12, v20

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-wide/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    const/4 v1, 0x1

    aput v15, v12, v1

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    aput v15, v12, v25

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    aput v15, v12, v19

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    aput v15, v12, v18

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    aput v15, v12, v17

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    const/4 v1, 0x6

    aput v15, v12, v1

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x5

    const/4 v3, 0x3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v15, v15, 0x100

    add-int/2addr v15, v1

    aput v15, v12, v16

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v8

    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x2

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v0

    mul-int/lit16 v8, v8, 0x100

    add-int/2addr v8, v0

    const/16 v0, 0x8

    aput v8, v12, v0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_5

    const/16 v0, 0xcc

    aput v0, v12, v23

    aput v0, v12, v22

    aput v0, v12, v21

    goto :goto_2

    :cond_5
    aput v24, v12, v23

    aput v24, v12, v22

    aput v24, v12, v21

    goto :goto_2

    :cond_6
    move/from16 v25, v7

    aput v2, v12, v20

    const/4 v0, 0x1

    aput v24, v12, v0

    aput v24, v12, v25

    aput v24, v12, v19

    aput v2, v12, v18

    aput v24, v12, v17

    const/4 v0, 0x6

    aput v24, v12, v0

    aput v24, v12, v16

    const/16 v0, 0x8

    aput v2, v12, v0

    aput v24, v12, v23

    aput v24, v12, v22

    aput v24, v12, v21

    :goto_2
    return-object v12
.end method

.method public final roundHalfUp(D)D
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public setNum([I)Z
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    invoke-virtual {p0}, Lcom/android/server/accessibility/CVDCalculator;->InitMakeUV()Z

    move-result p0

    return p0
.end method
