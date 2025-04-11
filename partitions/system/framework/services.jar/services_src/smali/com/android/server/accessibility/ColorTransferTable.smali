.class public Lcom/android/server/accessibility/ColorTransferTable;
.super Ljava/lang/Object;
.source "ColorTransferTable.java"


# static fields
.field public static final Deutan_severity:[D

.field public static final Deutan_userParameter:[D

.field public static final Protan_severity:[D

.field public static final Protan_userParameter:[D

.field public static final Tritan_severity:[D

.field public static final Tritan_userParameter:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x19

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    new-array v0, v0, [D

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_4
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3ff0000000000000L    # 1.0
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorTransferValue_DMC(IIIDD)I
    .locals 12

    move v0, p1

    move v1, p2

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    if-ne v1, v5, :cond_0

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    if-ne v1, v5, :cond_3

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    if-ne v1, v4, :cond_4

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    if-ne v0, v4, :cond_8

    if-ne v1, v5, :cond_6

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    if-ne v1, v4, :cond_7

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x4

    if-ne v0, v6, :cond_b

    if-ne v1, v5, :cond_9

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    if-ne v1, v4, :cond_a

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    if-ne v0, v3, :cond_e

    if-ne v1, v5, :cond_c

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_DMC(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_c
    if-ne v1, v4, :cond_d

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_DMC(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_d
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_DMC(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_e
    const/4 v6, 0x6

    if-ne v0, v6, :cond_12

    if-ne v1, v5, :cond_f

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_DMC(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_f
    if-ne v1, v4, :cond_10

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_DMC(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_10
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_DMC(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_11
    const/4 v0, 0x0

    goto :goto_0

    :cond_12
    filled-new-array {v2, v2}, [I

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_14

    const/4 v1, 0x0

    aget v1, v0, v1

    if-ne v1, v2, :cond_13

    aget v3, v0, v5

    if-ne v3, v2, :cond_13

    goto :goto_1

    :cond_13
    aget v2, v0, v5

    sub-int/2addr v1, v2

    move-object v2, p0

    move-wide/from16 v3, p6

    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    int-to-double v3, v1

    int-to-double v1, v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v6

    mul-double/2addr v3, v1

    aget v0, v0, v5

    int-to-double v0, v0

    add-double/2addr v3, v0

    double-to-int v0, v3

    return v0

    :cond_14
    :goto_1
    return v2
.end method

.method public getColorTransferValue_Hybrid(IIIDD)I
    .locals 12

    move v0, p1

    move v1, p2

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    if-ne v1, v5, :cond_0

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    if-ne v1, v5, :cond_3

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    if-ne v1, v4, :cond_4

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    if-ne v0, v4, :cond_8

    if-ne v1, v5, :cond_6

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    if-ne v1, v4, :cond_7

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x4

    if-ne v0, v6, :cond_b

    if-ne v1, v5, :cond_9

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    if-ne v1, v4, :cond_a

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    if-ne v0, v3, :cond_e

    if-ne v1, v5, :cond_c

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_c
    if-ne v1, v4, :cond_d

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_d
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_e
    const/4 v6, 0x6

    if-ne v0, v6, :cond_12

    if-ne v1, v5, :cond_f

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_f
    if-ne v1, v4, :cond_10

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_10
    if-ne v1, v3, :cond_11

    move-object v6, p0

    move v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_0

    :cond_11
    const/4 v0, 0x0

    goto :goto_0

    :cond_12
    filled-new-array {v2, v2}, [I

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_14

    const/4 v1, 0x0

    aget v1, v0, v1

    if-ne v1, v2, :cond_13

    aget v3, v0, v5

    if-ne v3, v2, :cond_13

    goto :goto_1

    :cond_13
    aget v2, v0, v5

    sub-int/2addr v1, v2

    move-object v2, p0

    move-wide/from16 v3, p6

    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    int-to-double v3, v1

    int-to-double v1, v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v6

    mul-double/2addr v3, v1

    aget v0, v0, v5

    int-to-double v0, v0

    add-double/2addr v3, v0

    double-to-int v0, v3

    return v0

    :cond_14
    :goto_1
    return v2
.end method

.method public final getMaxMinColorTrnasferValue_BB_DMC(IDD)[I
    .locals 2

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xff

    const/16 v0, 0xfe

    const/4 v1, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p3, v1

    goto :goto_2

    :pswitch_0
    move p3, v0

    goto :goto_3

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    move p0, v1

    move p3, p0

    goto :goto_1

    :pswitch_1
    move p0, p3

    :goto_1
    move v0, p0

    goto :goto_3

    :cond_2
    const/4 p3, -0x1

    :goto_2
    :pswitch_2
    move v0, p3

    :goto_3
    aput v0, p5, v1

    aput p3, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I
    .locals 3

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xcc

    const/16 v0, 0xff

    const/16 v1, 0xfe

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0xc9

    const/16 p4, 0xca

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p3, v2

    goto :goto_3

    :pswitch_0
    move p3, v1

    goto :goto_3

    :pswitch_1
    move v0, p1

    goto :goto_4

    :pswitch_2
    move v0, p4

    goto :goto_4

    :pswitch_3
    const/16 v0, 0xcb

    goto :goto_4

    :pswitch_4
    move p3, v0

    goto :goto_4

    :cond_0
    if-ne p1, p2, :cond_1

    const/16 p1, 0xce

    const/16 p4, 0xcd

    packed-switch p0, :pswitch_data_1

    move p3, v2

    :goto_1
    :pswitch_5
    move v1, p3

    goto :goto_2

    :pswitch_6
    move p3, v1

    goto :goto_2

    :pswitch_7
    move v1, p1

    goto :goto_2

    :pswitch_8
    move v1, p4

    goto :goto_2

    :pswitch_9
    move p3, v0

    goto :goto_1

    :goto_2
    move v0, v1

    goto :goto_4

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xf4

    goto :goto_4

    :pswitch_b
    const/16 v0, 0xed

    goto :goto_4

    :pswitch_c
    const/16 v0, 0xe7

    goto :goto_4

    :pswitch_d
    const/16 v0, 0xe1

    goto :goto_4

    :pswitch_e
    const/16 v0, 0xda

    goto :goto_4

    :cond_2
    const/4 p3, -0x1

    :goto_3
    move v0, p3

    :goto_4
    aput v0, p5, v2

    aput p3, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_BG_DMC(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    :goto_0
    :pswitch_0
    move p0, p3

    :goto_1
    move p1, p0

    goto :goto_4

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move p0, p2

    goto :goto_1

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    move p1, p3

    goto :goto_3

    :pswitch_3
    const/16 p0, 0x47

    goto :goto_2

    :pswitch_4
    const/16 p0, 0x3d

    goto :goto_2

    :pswitch_5
    const/16 p0, 0x33

    goto :goto_2

    :pswitch_6
    const/16 p0, 0x29

    goto :goto_2

    :pswitch_7
    const/16 p0, 0x20

    goto :goto_2

    :pswitch_8
    const/16 p0, 0x1a

    goto :goto_2

    :pswitch_9
    const/16 p0, 0x15

    goto :goto_2

    :pswitch_a
    const/16 p0, 0x10

    goto :goto_2

    :pswitch_b
    const/16 p0, 0xc

    goto :goto_2

    :pswitch_c
    const/4 p0, 0x6

    :goto_2
    move p1, p0

    :goto_3
    move p0, p3

    goto :goto_4

    :cond_2
    const/4 p0, -0x1

    goto :goto_1

    :goto_4
    aput p1, p5, p3

    aput p0, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    :goto_0
    :pswitch_0
    move p0, p3

    :goto_1
    move p1, p0

    goto :goto_4

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move p0, p2

    goto :goto_1

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    move p1, p3

    goto :goto_3

    :pswitch_3
    const/16 p0, 0x47

    goto :goto_2

    :pswitch_4
    const/16 p0, 0x3d

    goto :goto_2

    :pswitch_5
    const/16 p0, 0x33

    goto :goto_2

    :pswitch_6
    const/16 p0, 0x29

    goto :goto_2

    :pswitch_7
    const/16 p0, 0x20

    :goto_2
    move p1, p0

    :goto_3
    move p0, p3

    goto :goto_4

    :cond_2
    const/4 p0, -0x1

    goto :goto_1

    :goto_4
    aput p1, p5, p3

    aput p0, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_BR_DMC(IDD)[I
    .locals 1

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move p0, p2

    goto :goto_2

    :cond_0
    if-ne p1, p2, :cond_1

    :goto_0
    :pswitch_1
    move p0, p3

    goto :goto_2

    :cond_1
    if-ne p1, p4, :cond_2

    const/16 p1, 0x29

    const/16 p4, 0x20

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x2f

    const/16 p1, 0x76

    goto :goto_3

    :pswitch_3
    const/16 p0, 0x66

    move v0, p1

    move p1, p0

    move p0, v0

    goto :goto_3

    :pswitch_4
    const/16 p0, 0x53

    move p1, p0

    move p0, p4

    goto :goto_3

    :pswitch_5
    move p0, p3

    move p1, p4

    goto :goto_3

    :pswitch_6
    const/16 p0, 0x1a

    goto :goto_1

    :pswitch_7
    const/16 p0, 0x15

    goto :goto_1

    :pswitch_8
    const/16 p0, 0x10

    goto :goto_1

    :pswitch_9
    const/16 p0, 0xc

    goto :goto_1

    :pswitch_a
    const/4 p0, 0x6

    :goto_1
    move p1, p0

    :pswitch_b
    move p0, p3

    goto :goto_3

    :cond_2
    const/4 p0, -0x1

    :goto_2
    move p1, p0

    :goto_3
    aput p1, p5, p3

    aput p0, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I
    .locals 3

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/16 p2, 0x9

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    move p0, v0

    :goto_1
    move p2, p0

    goto/16 :goto_4

    :pswitch_1
    move p0, p3

    goto :goto_1

    :pswitch_2
    const/16 p2, 0x27

    goto :goto_3

    :pswitch_3
    const/16 p2, 0x1e

    goto :goto_3

    :pswitch_4
    const/16 p2, 0x16

    goto :goto_3

    :pswitch_5
    const/16 p2, 0xf

    goto :goto_3

    :cond_0
    const/16 v1, 0x29

    const/16 v2, 0x20

    if-ne p1, p3, :cond_1

    packed-switch p0, :pswitch_data_1

    :pswitch_6
    move p2, v0

    goto :goto_3

    :pswitch_7
    move p2, v1

    goto :goto_3

    :pswitch_8
    move p2, v2

    goto :goto_3

    :pswitch_9
    const/16 p0, 0x18

    goto :goto_2

    :pswitch_a
    const/16 p0, 0x11

    goto :goto_2

    :pswitch_b
    const/16 p0, 0xb

    :goto_2
    move p2, p0

    :goto_3
    :pswitch_c
    move p0, v0

    goto :goto_4

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :pswitch_d
    const/16 p0, 0x2f

    const/16 p2, 0x76

    goto :goto_4

    :pswitch_e
    const/16 p2, 0x66

    move p0, v1

    goto :goto_4

    :pswitch_f
    const/16 p2, 0x53

    move p0, v2

    goto :goto_4

    :pswitch_10
    move p0, v0

    move p2, v1

    goto :goto_4

    :pswitch_11
    move p0, v0

    move p2, v2

    goto :goto_4

    :pswitch_12
    const/16 p2, 0xa

    goto :goto_3

    :pswitch_13
    const/16 p2, 0x8

    goto :goto_3

    :pswitch_14
    const/4 p2, 0x6

    goto :goto_3

    :pswitch_15
    const/4 p2, 0x4

    goto :goto_3

    :cond_2
    const/4 p2, -0x1

    move p0, p2

    :goto_4
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_c
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CB_DMC(IDD)[I
    .locals 1

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xff

    const/4 v0, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p0, v0

    move p3, p0

    goto :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    :pswitch_0
    move p0, p3

    :goto_1
    aput p0, p5, v0

    aput p3, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I
    .locals 4

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/16 p2, 0xcb

    const/4 p3, 0x1

    const/16 v0, 0xca

    const/16 v1, 0xcc

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p2, v3

    goto :goto_2

    :pswitch_0
    move p2, v0

    goto :goto_3

    :pswitch_1
    move p2, v2

    goto :goto_2

    :cond_0
    if-ne p1, p3, :cond_1

    const/16 p1, 0xc9

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/16 p2, 0xc8

    goto :goto_3

    :pswitch_3
    move p2, p1

    goto :goto_3

    :cond_1
    if-ne p1, p4, :cond_2

    const/16 p1, 0xce

    packed-switch p0, :pswitch_data_2

    move v1, v3

    move v2, v1

    goto :goto_1

    :pswitch_4
    move v2, p1

    goto :goto_1

    :pswitch_5
    const/16 v2, 0xcd

    goto :goto_1

    :pswitch_6
    move v1, v2

    :goto_1
    move p2, v2

    goto :goto_3

    :cond_2
    const/4 p2, -0x1

    :goto_2
    move v1, p2

    :goto_3
    :pswitch_7
    aput p2, p5, v3

    aput v1, p5, p3

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CG_DMC(IDD)[I
    .locals 1

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xff

    const/4 v0, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p0, v0

    move p3, p0

    goto :goto_2

    :cond_0
    if-ne p1, p2, :cond_1

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_1

    move p1, v0

    :pswitch_0
    move p3, p1

    goto :goto_1

    :pswitch_1
    move p1, p3

    :goto_1
    move p0, p1

    goto :goto_2

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    :pswitch_2
    move p0, p3

    :goto_2
    aput p0, p5, v0

    aput p3, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I
    .locals 3

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xd3

    const/16 v0, 0xcc

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0xe6

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p3, v2

    goto :goto_3

    :pswitch_0
    const/16 v0, 0xcf

    :pswitch_1
    move p3, p1

    goto :goto_4

    :pswitch_2
    const/16 p3, 0xe1

    goto :goto_4

    :pswitch_3
    const/16 p3, 0xd7

    goto :goto_4

    :pswitch_4
    move p3, v1

    goto :goto_3

    :cond_0
    if-ne p1, p2, :cond_1

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_1

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_2

    :pswitch_5
    move v0, p1

    goto :goto_1

    :pswitch_6
    const/16 v1, 0xfd

    goto :goto_2

    :pswitch_7
    const/16 v1, 0xf2

    goto :goto_2

    :pswitch_8
    const/16 v1, 0xe8

    goto :goto_2

    :pswitch_9
    const/16 v1, 0xe0

    goto :goto_2

    :pswitch_a
    const/16 v1, 0xd8

    goto :goto_2

    :pswitch_b
    move v0, v1

    :goto_2
    move p3, v1

    goto :goto_4

    :cond_1
    if-ne p1, p4, :cond_2

    const/16 p1, 0xd2

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :pswitch_c
    const/16 p3, 0xd0

    goto :goto_4

    :cond_2
    const/4 p3, -0x1

    :goto_3
    move v0, p3

    :goto_4
    :pswitch_d
    aput p3, p5, v2

    aput v0, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_c
        :pswitch_1
        :pswitch_d
        :pswitch_d
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CR_DMC(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move p0, p2

    goto :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    :goto_0
    :pswitch_1
    move p0, p3

    goto :goto_1

    :cond_1
    if-ne p1, p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_1
    move p1, p0

    aput p1, p5, p3

    aput p0, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move p0, p2

    goto :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    :goto_0
    :pswitch_1
    move p0, p3

    goto :goto_1

    :cond_1
    if-ne p1, p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_1
    move p1, p0

    aput p1, p5, p3

    aput p0, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GB_DMC(IDD)[I
    .locals 2

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0x55

    const/16 v0, 0x13

    const/4 v1, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p3, 0x73

    goto :goto_1

    :pswitch_1
    const/16 p3, 0x6d

    goto :goto_1

    :pswitch_2
    const/16 p3, 0x67

    goto :goto_1

    :pswitch_3
    const/16 p3, 0x5d

    goto :goto_1

    :pswitch_4
    const/16 p3, 0x4b

    goto :goto_1

    :pswitch_5
    const/16 p3, 0x3f

    goto :goto_1

    :pswitch_6
    const/16 p3, 0x33

    goto :goto_1

    :pswitch_7
    const/16 p3, 0x25

    goto :goto_1

    :pswitch_8
    move p3, v0

    goto :goto_2

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_9
    const/16 p3, 0x5e

    goto :goto_1

    :pswitch_a
    const/16 p3, 0x59

    goto :goto_1

    :pswitch_b
    const/16 p3, 0x4f

    goto :goto_1

    :pswitch_c
    const/16 p3, 0x49

    goto :goto_1

    :pswitch_d
    const/16 p3, 0x41

    goto :goto_1

    :pswitch_e
    const/16 p3, 0x39

    goto :goto_1

    :pswitch_f
    const/16 p3, 0x2f

    goto :goto_1

    :pswitch_10
    const/16 p3, 0x23

    goto :goto_1

    :cond_1
    if-ne p1, p4, :cond_2

    :goto_0
    :pswitch_11
    move p3, v1

    goto :goto_1

    :cond_2
    const/4 p3, -0x1

    :goto_1
    :pswitch_12
    move v0, p3

    :goto_2
    aput v0, p5, v1

    aput p3, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_12
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_8
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_12
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I
    .locals 1

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0x55

    const/4 v0, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p3, 0x73

    goto :goto_1

    :pswitch_1
    const/16 p3, 0x6d

    goto :goto_1

    :pswitch_2
    const/16 p3, 0x67

    goto :goto_1

    :pswitch_3
    const/16 p3, 0x5d

    goto :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    const/16 p3, 0x5e

    goto :goto_1

    :pswitch_5
    const/16 p3, 0x59

    goto :goto_1

    :pswitch_6
    const/16 p3, 0x4f

    goto :goto_1

    :pswitch_7
    const/16 p3, 0x49

    goto :goto_1

    :cond_1
    if-ne p1, p4, :cond_2

    :goto_0
    :pswitch_8
    move p0, v0

    move p3, p0

    goto :goto_2

    :cond_2
    const/4 p3, -0x1

    :goto_1
    :pswitch_9
    move p0, p3

    :goto_2
    aput p0, p5, v0

    aput p3, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GG_DMC(IDD)[I
    .locals 2

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xfe

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p3, v1

    goto :goto_2

    :pswitch_0
    move p3, v0

    goto :goto_3

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    move p0, v1

    move v0, p0

    goto :goto_1

    :pswitch_1
    move p0, v0

    :goto_1
    move p3, v0

    move v0, p0

    goto :goto_3

    :cond_2
    const/4 p3, -0x1

    :goto_2
    :pswitch_2
    move v0, p3

    :goto_3
    aput v0, p5, v1

    aput p3, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I
    .locals 3

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xfe

    const/16 v0, 0xcc

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p3, v2

    goto :goto_3

    :pswitch_0
    const/16 p3, 0xf3

    goto :goto_1

    :pswitch_1
    const/16 p3, 0xeb

    goto :goto_1

    :pswitch_2
    const/16 p3, 0xe3

    goto :goto_1

    :pswitch_3
    const/16 p3, 0xdd

    goto :goto_1

    :pswitch_4
    const/16 p3, 0xd6

    :goto_1
    move v1, p3

    goto :goto_2

    :pswitch_5
    move p3, v1

    goto :goto_4

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_6
    const/16 p3, 0xfb

    goto :goto_1

    :pswitch_7
    const/16 p3, 0xef

    goto :goto_1

    :pswitch_8
    const/16 p3, 0xe5

    goto :goto_1

    :pswitch_9
    const/16 p3, 0xdc

    goto :goto_1

    :cond_1
    if-ne p1, p4, :cond_2

    const/16 p1, 0xda

    packed-switch p0, :pswitch_data_2

    move v0, v2

    move v1, v0

    goto :goto_2

    :pswitch_a
    move v1, p1

    goto :goto_2

    :pswitch_b
    const/16 v1, 0xd9

    goto :goto_2

    :pswitch_c
    const/16 v1, 0xd7

    goto :goto_2

    :pswitch_d
    const/16 v1, 0xd4

    goto :goto_2

    :pswitch_e
    move v0, v1

    :goto_2
    :pswitch_f
    move p3, v0

    goto :goto_4

    :cond_2
    const/4 p3, -0x1

    :goto_3
    :pswitch_10
    move v1, p3

    :goto_4
    aput v1, p5, v2

    aput p3, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_10
        :pswitch_10
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GR_DMC(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    move p0, p3

    goto :goto_1

    :pswitch_1
    move p0, p2

    goto :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x51

    goto :goto_1

    :pswitch_3
    const/16 p0, 0x49

    goto :goto_1

    :pswitch_4
    const/16 p0, 0x3f

    goto :goto_1

    :pswitch_5
    const/16 p0, 0x33

    goto :goto_1

    :pswitch_6
    const/16 p0, 0x26

    goto :goto_1

    :pswitch_7
    const/16 p0, 0x15

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    move p1, p0

    aput p1, p5, p3

    aput p0, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    move p0, p3

    goto :goto_1

    :pswitch_1
    move p0, p2

    goto :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x51

    goto :goto_1

    :pswitch_3
    const/16 p0, 0x49

    goto :goto_1

    :pswitch_4
    const/16 p0, 0x3f

    goto :goto_1

    :pswitch_5
    const/16 p0, 0x33

    goto :goto_1

    :pswitch_6
    const/16 p0, 0x26

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    move p1, p0

    aput p1, p5, p3

    aput p0, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MB_DMC(IDD)[I
    .locals 23

    move/from16 v0, p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    invoke-virtual {v3, v4, v5}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v3

    const/16 v5, 0x8a

    const/16 v6, 0xfa

    const/16 v7, 0x90

    const/16 v8, 0xf6

    const/16 v9, 0x98

    const/16 v10, 0xf0

    const/16 v11, 0xa1

    const/16 v12, 0xa9

    const/16 v13, 0xb3

    const/16 v14, 0xbe

    const/16 v15, 0xe2

    const/16 v16, 0xcc

    const/16 v17, 0xda

    const/16 v18, 0xee

    const/4 v4, 0x1

    const/16 v19, 0xea

    const/16 v20, 0xe4

    const/16 v21, 0xff

    const/16 v22, 0x0

    if-nez v0, :cond_0

    packed-switch v3, :pswitch_data_0

    :goto_0
    move/from16 v5, v22

    :goto_1
    move/from16 v20, v5

    goto :goto_3

    :pswitch_0
    const/16 v20, 0xfc

    goto :goto_3

    :pswitch_1
    move/from16 v20, v6

    move v5, v7

    goto :goto_3

    :pswitch_2
    move/from16 v20, v8

    move v5, v9

    goto :goto_3

    :pswitch_3
    move/from16 v20, v10

    move v5, v11

    goto :goto_3

    :pswitch_4
    move v5, v12

    move/from16 v20, v19

    goto :goto_3

    :pswitch_5
    move v5, v13

    goto :goto_3

    :pswitch_6
    move v5, v14

    goto :goto_3

    :pswitch_7
    move/from16 v20, v15

    move/from16 v5, v16

    goto :goto_3

    :pswitch_8
    move/from16 v5, v17

    goto :goto_3

    :pswitch_9
    move/from16 v20, v18

    move/from16 v5, v19

    goto :goto_3

    :pswitch_a
    move/from16 v5, v21

    goto :goto_1

    :cond_0
    if-ne v0, v4, :cond_1

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    packed-switch v3, :pswitch_data_2

    move/from16 v0, v22

    move/from16 v21, v0

    goto :goto_2

    :pswitch_b
    move/from16 v0, v21

    :goto_2
    move/from16 v20, v0

    move/from16 v5, v21

    goto :goto_3

    :cond_2
    const/16 v20, -0x1

    move/from16 v5, v20

    :goto_3
    aput v20, v2, v22

    aput v5, v2, v4

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I
    .locals 18

    move/from16 v0, p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    invoke-virtual {v3, v4, v5}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v3

    const/16 v4, 0xfc

    const/16 v5, 0x8a

    const/16 v6, 0xfa

    const/16 v7, 0x90

    const/16 v8, 0xf6

    const/16 v9, 0x98

    const/16 v10, 0xf0

    const/16 v11, 0xa1

    const/16 v12, 0xea

    const/16 v13, 0xa9

    const/4 v14, 0x1

    const/16 v15, 0xcc

    const/16 v16, 0xff

    const/16 v17, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0xcb

    packed-switch v3, :pswitch_data_0

    :goto_0
    move/from16 v4, v17

    goto/16 :goto_3

    :pswitch_0
    move v4, v6

    move v5, v7

    goto/16 :goto_4

    :pswitch_1
    move v4, v8

    move v5, v9

    goto :goto_4

    :pswitch_2
    move v4, v10

    move v5, v11

    goto :goto_4

    :pswitch_3
    move v4, v12

    move v5, v13

    goto :goto_4

    :pswitch_4
    move v4, v0

    :goto_1
    move v5, v15

    goto :goto_4

    :pswitch_5
    move/from16 v4, v16

    goto :goto_3

    :cond_0
    if-ne v0, v14, :cond_1

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_6
    const/16 v4, 0xd2

    goto :goto_1

    :pswitch_7
    const/16 v4, 0xd1

    goto :goto_1

    :pswitch_8
    const/16 v4, 0xcf

    goto :goto_1

    :pswitch_9
    const/16 v4, 0xce

    goto :goto_1

    :pswitch_a
    const/16 v4, 0xcd

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    packed-switch v3, :pswitch_data_2

    move/from16 v15, v17

    move/from16 v16, v15

    goto :goto_2

    :pswitch_b
    const/16 v16, 0xf1

    goto :goto_2

    :pswitch_c
    const/16 v16, 0xeb

    goto :goto_2

    :pswitch_d
    const/16 v16, 0xe4

    goto :goto_2

    :pswitch_e
    const/16 v16, 0xde

    goto :goto_2

    :pswitch_f
    const/16 v16, 0xd8

    goto :goto_2

    :pswitch_10
    move/from16 v15, v16

    :goto_2
    move v5, v15

    move/from16 v4, v16

    goto :goto_4

    :cond_2
    const/4 v4, -0x1

    :goto_3
    move v5, v4

    :goto_4
    :pswitch_11
    aput v4, v2, v17

    aput v5, v2, v14

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MG_DMC(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move p0, p3

    goto :goto_0

    :pswitch_1
    move p0, p2

    :goto_0
    move p1, p3

    goto :goto_4

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    move p0, p3

    goto :goto_3

    :pswitch_3
    move p0, p2

    goto :goto_3

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    :pswitch_4
    move p1, p3

    goto :goto_2

    :pswitch_5
    const/4 p0, 0x4

    goto :goto_1

    :pswitch_6
    const/16 p0, 0xa

    goto :goto_1

    :pswitch_7
    const/16 p0, 0xd

    goto :goto_1

    :pswitch_8
    const/16 p0, 0xb

    goto :goto_1

    :pswitch_9
    const/4 p0, 0x5

    :goto_1
    move p1, p0

    :goto_2
    move p0, p3

    goto :goto_4

    :cond_2
    const/4 p0, -0x1

    :goto_3
    move p1, p0

    :goto_4
    aput p1, p5, p3

    aput p0, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move p0, p3

    goto :goto_0

    :pswitch_1
    move p0, p2

    :goto_0
    move p1, p3

    goto :goto_3

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    move p0, p2

    goto :goto_2

    :cond_1
    if-ne p1, p4, :cond_2

    :goto_1
    :pswitch_3
    move p0, p3

    goto :goto_2

    :cond_2
    const/4 p0, -0x1

    :goto_2
    move p1, p0

    :goto_3
    aput p1, p5, p3

    aput p0, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MR_DMC(IDD)[I
    .locals 3

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xfe

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    move p3, v1

    goto :goto_3

    :pswitch_0
    move p3, v0

    goto :goto_4

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    move p3, v1

    move v0, p3

    goto :goto_0

    :pswitch_1
    move p3, v0

    :goto_0
    :pswitch_2
    move v2, v0

    move v0, p3

    move p3, v2

    goto :goto_4

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    move p0, v1

    move v0, p0

    goto :goto_2

    :pswitch_3
    const/16 v0, 0xb6

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xcc

    goto :goto_1

    :pswitch_5
    const/16 v0, 0xdf

    goto :goto_1

    :pswitch_6
    const/16 v0, 0xf0

    :goto_1
    :pswitch_7
    move p0, v0

    :goto_2
    move p3, v0

    move v0, p0

    goto :goto_4

    :cond_2
    const/4 p3, -0x1

    :goto_3
    :pswitch_8
    move v0, p3

    :goto_4
    aput v0, p5, v1

    aput p3, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I
    .locals 2

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xcc

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p3, v1

    goto :goto_4

    :pswitch_0
    move p3, p1

    goto :goto_4

    :pswitch_1
    const/16 v0, 0xf9

    goto :goto_5

    :pswitch_2
    move p3, v0

    goto :goto_5

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xfa

    goto :goto_5

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    move p0, v1

    :goto_1
    move p3, p0

    goto :goto_3

    :pswitch_4
    const/16 p3, 0xb6

    goto :goto_2

    :pswitch_5
    const/16 p3, 0xdf

    goto :goto_2

    :pswitch_6
    const/16 p3, 0xf0

    :goto_2
    :pswitch_7
    move p0, p3

    goto :goto_3

    :pswitch_8
    const/16 p0, 0xec

    goto :goto_3

    :pswitch_9
    const/16 p0, 0xee

    goto :goto_3

    :pswitch_a
    const/16 p0, 0xed

    goto :goto_3

    :pswitch_b
    const/16 p0, 0xe8

    goto :goto_3

    :pswitch_c
    const/16 p0, 0xe1

    goto :goto_3

    :pswitch_d
    move p0, v0

    goto :goto_1

    :goto_3
    move v0, p0

    goto :goto_5

    :cond_2
    const/4 p3, -0x1

    :goto_4
    move v0, p3

    :goto_5
    :pswitch_e
    aput v0, p5, v1

    aput p3, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RB_DMC(IDD)[I
    .locals 10

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/16 p2, 0xd8

    const/16 p3, 0xca

    const/16 v0, 0xbc

    const/16 v1, 0xac

    const/16 v2, 0x9c

    const/16 v3, 0x88

    const/16 v4, 0x75

    const/16 v5, 0x5c

    const/16 v6, 0x42

    const/16 v7, 0x24

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    move p2, v9

    goto :goto_1

    :pswitch_1
    move p2, p3

    goto :goto_1

    :pswitch_2
    move p2, v0

    goto :goto_1

    :pswitch_3
    move p2, v1

    goto :goto_1

    :pswitch_4
    move p2, v2

    goto :goto_1

    :pswitch_5
    move p2, v3

    goto :goto_1

    :pswitch_6
    move p2, v4

    goto :goto_1

    :pswitch_7
    move p2, v5

    goto :goto_1

    :pswitch_8
    move p2, v6

    goto :goto_1

    :pswitch_9
    move p2, v7

    :goto_1
    :pswitch_a
    move p0, v9

    goto :goto_2

    :cond_0
    if-ne p1, v8, :cond_1

    packed-switch p0, :pswitch_data_1

    :pswitch_b
    goto :goto_0

    :cond_1
    if-ne p1, p4, :cond_2

    move p0, v9

    move p2, p0

    goto :goto_2

    :cond_2
    const/4 p2, -0x1

    move p0, p2

    :goto_2
    aput p2, p5, v9

    aput p0, p5, v8

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I
    .locals 5

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/16 p2, 0xd8

    const/16 p3, 0xca

    const/16 v0, 0xbc

    const/16 v1, 0xac

    const/16 v2, 0x9c

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move p2, v4

    goto :goto_0

    :pswitch_1
    move p2, p3

    goto :goto_0

    :pswitch_2
    move p2, v0

    goto :goto_0

    :pswitch_3
    move p2, v1

    goto :goto_0

    :pswitch_4
    move p2, v2

    goto :goto_0

    :pswitch_5
    move p2, v3

    :goto_0
    :pswitch_6
    move p0, v4

    goto :goto_2

    :cond_0
    if-ne p1, v3, :cond_1

    packed-switch p0, :pswitch_data_1

    :pswitch_7
    move p4, v4

    goto :goto_1

    :pswitch_8
    move p4, p2

    goto :goto_1

    :pswitch_9
    move p4, p3

    goto :goto_1

    :pswitch_a
    move p4, v0

    goto :goto_1

    :pswitch_b
    move p4, v1

    goto :goto_1

    :pswitch_c
    move p4, v2

    goto :goto_1

    :pswitch_d
    const/4 p4, 0x3

    goto :goto_1

    :pswitch_e
    move p4, v3

    :goto_1
    :pswitch_f
    move p2, p4

    goto :goto_0

    :cond_1
    if-ne p1, p4, :cond_2

    move p0, v4

    move p2, p0

    goto :goto_2

    :cond_2
    const/4 p2, -0x1

    move p0, p2

    :goto_2
    aput p2, p5, v4

    aput p0, p5, v3

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RG_DMC(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move p0, p3

    goto :goto_0

    :pswitch_1
    move p0, p2

    :goto_0
    move p1, p3

    goto :goto_3

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    move p0, p2

    goto :goto_2

    :cond_1
    if-ne p1, p4, :cond_2

    :goto_1
    :pswitch_3
    move p0, p3

    goto :goto_2

    :cond_2
    const/4 p0, -0x1

    :goto_2
    move p1, p0

    :goto_3
    aput p0, p5, p3

    aput p1, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move p0, p3

    goto :goto_0

    :pswitch_1
    move p0, p2

    :goto_0
    move p1, p3

    goto :goto_3

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    move p0, p2

    goto :goto_2

    :cond_1
    if-ne p1, p4, :cond_2

    :goto_1
    :pswitch_3
    move p0, p3

    goto :goto_2

    :cond_2
    const/4 p0, -0x1

    :goto_2
    move p1, p0

    :goto_3
    aput p0, p5, p3

    aput p1, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RR_DMC(IDD)[I
    .locals 2

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xfe

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p3, v1

    goto :goto_2

    :pswitch_0
    move p3, v0

    goto :goto_3

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    move p0, v1

    move v0, p0

    goto :goto_1

    :pswitch_1
    move p0, v0

    :goto_1
    move p3, v0

    move v0, p0

    goto :goto_3

    :cond_2
    const/4 p3, -0x1

    :goto_2
    :pswitch_2
    move v0, p3

    :goto_3
    :pswitch_3
    aput v0, p5, v1

    aput p3, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I
    .locals 3

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xcc

    const/16 v0, 0xfe

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p3, v2

    goto :goto_2

    :pswitch_0
    move p3, v0

    goto :goto_3

    :pswitch_1
    const/16 v0, 0xef

    goto :goto_3

    :pswitch_2
    move p3, v1

    goto :goto_2

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    move p3, v0

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xee

    goto :goto_3

    :cond_1
    if-ne p1, p4, :cond_2

    const/16 p1, 0xe4

    const/16 p4, 0xe2

    packed-switch p0, :pswitch_data_2

    move p3, v2

    move v1, p3

    goto :goto_1

    :pswitch_5
    move v1, p1

    goto :goto_1

    :pswitch_6
    move v1, p4

    goto :goto_1

    :pswitch_7
    const/16 v1, 0xdc

    goto :goto_1

    :pswitch_8
    move p3, v1

    :goto_1
    :pswitch_9
    move v0, v1

    goto :goto_3

    :cond_2
    const/4 p3, -0x1

    :goto_2
    move v0, p3

    :goto_3
    aput v0, p5, v2

    aput p3, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_YB_DMC(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    const/4 p0, 0x1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    :goto_0
    move p1, p2

    :goto_1
    move p3, p1

    goto :goto_2

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    goto :goto_1

    :goto_2
    aput p1, p5, p2

    aput p3, p5, p0

    return-object p5
.end method

.method public final getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I
    .locals 0

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move p4, p3

    goto :goto_0

    :pswitch_1
    move p4, p2

    :goto_0
    :pswitch_2
    move p0, p3

    goto :goto_2

    :cond_0
    if-ne p1, p2, :cond_1

    :goto_1
    move p0, p3

    move p4, p0

    goto :goto_2

    :cond_1
    if-ne p1, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 p4, -0x1

    move p0, p4

    :goto_2
    aput p4, p5, p3

    aput p0, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_YG_DMC(IDD)[I
    .locals 1

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xff

    const/4 v0, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p0, v0

    move p3, p0

    goto :goto_2

    :pswitch_0
    const/16 p3, 0xcc

    const/16 p0, 0xcf

    goto :goto_2

    :cond_0
    if-ne p1, p2, :cond_1

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_1

    move p1, v0

    :pswitch_1
    move p3, p1

    goto :goto_1

    :pswitch_2
    move p1, p3

    :goto_1
    move p0, p1

    goto :goto_2

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    :pswitch_3
    move p0, p3

    :goto_2
    aput p0, p5, v0

    aput p3, p5, p2

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I
    .locals 7

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/16 p2, 0xd8

    const/16 p3, 0xd5

    const/4 v0, 0x1

    const/16 v1, 0xd3

    const/16 v2, 0xcf

    const/16 v3, 0xcc

    const/16 v4, 0xff

    const/4 v5, 0x0

    if-nez p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p2, v5

    goto :goto_3

    :pswitch_0
    move p2, p3

    goto :goto_4

    :pswitch_1
    const/16 p2, 0xd1

    goto :goto_4

    :pswitch_2
    move p2, v2

    goto :goto_4

    :pswitch_3
    move p2, v4

    goto :goto_3

    :cond_0
    const/16 v6, 0xd0

    if-ne p1, v0, :cond_1

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    move p2, p1

    goto :goto_3

    :pswitch_5
    move p2, v6

    goto :goto_4

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    move v1, v5

    :goto_1
    move v3, v1

    goto :goto_2

    :pswitch_6
    const/16 v1, 0xd4

    goto :goto_2

    :pswitch_7
    const/16 v1, 0xd2

    goto :goto_2

    :pswitch_8
    move v1, v6

    goto :goto_2

    :pswitch_9
    move v1, v2

    goto :goto_2

    :pswitch_a
    move v1, v4

    goto :goto_1

    :goto_2
    :pswitch_b
    move p2, v1

    goto :goto_4

    :cond_2
    const/4 p2, -0x1

    :goto_3
    move v3, p2

    :goto_4
    :pswitch_c
    aput p2, p5, v5

    aput v3, p5, v0

    return-object p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_6
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_YR_DMC(IDD)[I
    .locals 1

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, 0x1

    const/16 p3, 0xff

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_0

    move p1, v0

    :pswitch_0
    move p3, p1

    goto :goto_2

    :cond_0
    if-ne p1, p2, :cond_1

    packed-switch p0, :pswitch_data_1

    :goto_0
    move p0, v0

    move p3, p0

    goto :goto_1

    :pswitch_1
    move p0, p3

    :goto_1
    move p1, p0

    goto :goto_2

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    :pswitch_2
    move p1, p3

    :goto_2
    aput p1, p5, v0

    aput p3, p5, p2

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I
    .locals 3

    const/4 p4, 0x2

    new-array p5, p4, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/16 p2, 0xc2

    const/4 p3, 0x1

    const/16 v0, 0xcc

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_0

    :goto_0
    move p2, v2

    goto :goto_2

    :pswitch_0
    move p2, p1

    goto :goto_2

    :pswitch_1
    const/16 p2, 0xa4

    goto :goto_3

    :pswitch_2
    const/16 p2, 0xad

    goto :goto_3

    :pswitch_3
    const/16 p2, 0xb5

    goto :goto_3

    :pswitch_4
    const/16 p2, 0xbc

    goto :goto_3

    :pswitch_5
    move p2, v1

    goto :goto_2

    :cond_0
    if-ne p1, p3, :cond_1

    packed-switch p0, :pswitch_data_1

    move v0, v2

    move v1, v0

    goto :goto_1

    :pswitch_6
    const/16 v1, 0xa2

    goto :goto_1

    :pswitch_7
    const/16 v1, 0xab

    goto :goto_1

    :pswitch_8
    const/16 v1, 0xb3

    goto :goto_1

    :pswitch_9
    const/16 v1, 0xba

    goto :goto_1

    :pswitch_a
    const/16 v1, 0xc0

    goto :goto_1

    :pswitch_b
    move v0, v1

    :goto_1
    move p2, v1

    goto :goto_3

    :cond_1
    if-ne p1, p4, :cond_2

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    :pswitch_c
    const/16 p2, 0xc1

    goto :goto_3

    :pswitch_d
    const/16 p2, 0xc3

    goto :goto_3

    :pswitch_e
    const/16 p2, 0xc5

    goto :goto_3

    :pswitch_f
    const/16 p2, 0xc7

    goto :goto_3

    :cond_2
    const/4 p2, -0x1

    :goto_2
    move v0, p2

    :goto_3
    :pswitch_10
    aput p2, p5, v2

    aput v0, p5, p3

    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getPredefinedValueForEachType(II)[D
    .locals 3

    const/4 p0, 0x2

    new-array v0, p0, [D

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v2

    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v2

    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v2

    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v1

    :goto_0
    return-object v0
.end method

.method public final roundHalfUp(D)I
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
