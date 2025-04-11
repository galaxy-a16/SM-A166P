.class public Lcom/android/server/display/exynos/ExynosDisplayTune;
.super Ljava/lang/Object;
.source "ExynosDisplayTune.java"


# instance fields
.field public CALIB_DATA_XML_PATH:Ljava/lang/String;

.field public CGC17_CON_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

.field public CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

.field public final DEBUG:Z

.field public DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public DEGAMMA_SYSFS_PATH:Ljava/lang/String;

.field public DE_SYSFS_PATH:Ljava/lang/String;

.field public EXTENSION_OFF:Ljava/lang/String;

.field public EXTENSION_ON:Ljava/lang/String;

.field public GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

.field public HSC_SYSFS_PATH:Ljava/lang/String;

.field public SCL_SYSFS_PATH:Ljava/lang/String;

.field public mDelayMs:J

.field public mPeriodMs:J

.field public mTuneTimer:Ljava/util/Timer;


# direct methods
.method public static bridge synthetic -$$Nest$mgetCalibXMLPath(Lcom/android/server/display/exynos/ExynosDisplayTune;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getCalibXMLPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    .line 30
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEBUG:Z

    const-string v0, "/sys/class/dqe/dqe/gamma_ext"

    .line 32
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/gamma"

    .line 33
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/degamma_ext"

    .line 34
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/degamma"

    .line 35
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc"

    .line 36
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_idx"

    .line 38
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_enc"

    .line 39
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_dec"

    .line 40
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_con"

    .line 41
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/gamma_matrix"

    .line 43
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc_dither"

    .line 44
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc48_idx"

    .line 46
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc48_lcg"

    .line 47
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/scl"

    .line 48
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->SCL_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/de"

    .line 49
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DE_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "0"

    .line 51
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    const-string v0, "1"

    .line 52
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_ON:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    .line 55
    iput-wide v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mDelayMs:J

    .line 56
    iput-wide v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mPeriodMs:J

    const-string v0, "/data/dqe/calib_data.xml"

    .line 58
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enableTuneDQE(Z)V
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTuneDQE: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExynosDisplayTune"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getCalibXMLPath()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "tune"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enableTuneTimer(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->startTuneTimer()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->stopTuneTimer()V

    .line 90
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableTuneTimer: enable="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExynosDisplayTune"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getCalibXMLPath()Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 p0, 0x0

    .line 125
    :try_start_0
    invoke-static {p1, p2, p3, p0, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 126
    array-length v2, v0

    if-ge v2, v1, :cond_1

    :cond_0
    const/16 v0, 0xa

    .line 127
    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    array-length p1, v0

    if-ge p1, v1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    aget-object p1, v0, p0

    const-string p2, "\\s*,\\s*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 133
    aget-object p1, p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return p0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return p0
.end method

.method public final getXMLVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-string/jumbo v0, "version"

    .line 102
    invoke-static {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLNodeText(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "ExynosDisplayTune"

    if-eqz p1, :cond_1

    .line 104
    :try_start_1
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    aget-object p0, p1, v1

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xml version: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo p1, "xml version not found"

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method public setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "de"

    const-string v4, "cgc17_con"

    const-string/jumbo v5, "scl"

    const-string v6, "hsc"

    const-string v7, "gamma_matrix"

    const-string v8, "cgc_dither"

    const-string v9, "gamma"

    const-string v10, "degamma"

    .line 187
    invoke-static/range {p1 .. p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getXMLVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    return-void

    .line 193
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setCalibrationDQE+ ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "ExynosDisplayTune"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v11

    new-array v11, v11, [I

    const/4 v12, 0x0

    move v14, v12

    .line 199
    :goto_0
    sget-object v15, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v15}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 200
    aput v12, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 207
    :cond_2
    :try_start_0
    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 208
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cgc_dither: enable = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    if-lez v14, :cond_3

    .line 210
    sget-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v14

    aput v12, v11, v14

    .line 212
    :cond_3
    invoke-virtual {v0, v1, v2, v10}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 213
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "degamma: enable = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v14, :cond_4

    .line 215
    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v12

    const/4 v14, 0x1

    aput v14, v11, v12

    .line 217
    :cond_4
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 218
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gamma: enable = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_5

    .line 220
    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v12

    const/4 v14, 0x1

    aput v14, v11, v12

    .line 222
    :cond_5
    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 223
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gamma_matrix: enable = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_6

    .line 225
    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v12

    const/4 v14, 0x1

    aput v14, v11, v12

    .line 227
    :cond_6
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 228
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hsc: enable = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_8

    .line 230
    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v12

    :goto_1
    sget-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v14

    if-gt v12, v14, :cond_7

    const/4 v14, 0x1

    .line 231
    aput v14, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_7
    const/4 v14, 0x1

    .line 232
    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v12

    aput v14, v11, v12

    .line 235
    :cond_8
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 236
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "scl: enable = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_9

    .line 238
    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v12

    const/4 v14, 0x1

    aput v14, v11, v12

    .line 240
    :cond_9
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 241
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cgc17_con: enable = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_b

    .line 243
    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v12

    :goto_2
    sget-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v14

    if-gt v12, v14, :cond_a

    const/4 v14, 0x1

    .line 244
    aput v14, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_a
    const/4 v14, 0x1

    .line 245
    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v12

    aput v14, v11, v12

    .line 246
    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v12

    aput v14, v11, v12

    .line 249
    :cond_b
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 250
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "de: enable = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_c

    .line 252
    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v12

    const/4 v14, 0x1

    aput v14, v11, v12

    :cond_c
    const/4 v12, 0x0

    .line 254
    :goto_3
    sget-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v14

    if-ge v12, v14, :cond_25

    .line 255
    aget v14, v11, v12

    .line 257
    sget-object v15, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->none:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v15}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v15

    if-gt v12, v15, :cond_f

    move-object/from16 v17, v5

    move-object/from16 v16, v8

    :goto_4
    move-object/from16 v18, v11

    :cond_d
    :goto_5
    const/4 v5, 0x0

    :cond_e
    :goto_6
    const/4 v14, 0x1

    goto/16 :goto_9

    .line 260
    :cond_f
    sget-object v15, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v15}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v15

    if-gt v12, v15, :cond_12

    const/4 v14, 0x0

    .line 261
    invoke-static {v1, v2, v8, v14, v14}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11

    .line 263
    array-length v14, v15

    move-object/from16 v16, v8

    const/4 v8, 0x1

    if-lt v14, v8, :cond_10

    const/4 v8, 0x0

    .line 264
    aget-object v14, v15, v8

    .line 265
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v14}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v17, v5

    goto :goto_4

    :cond_10
    move-object/from16 v17, v5

    move v14, v8

    move-object/from16 v18, v11

    :goto_7
    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_11
    move-object/from16 v16, v8

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move v5, v14

    goto :goto_6

    :cond_12
    move-object/from16 v16, v8

    .line 269
    sget-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v8

    if-gt v12, v8, :cond_16

    const/4 v8, 0x0

    .line 272
    invoke-static {v1, v2, v10, v8, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 274
    array-length v15, v14

    move-object/from16 v18, v11

    const/4 v11, 0x1

    if-lt v15, v11, :cond_14

    .line 275
    aget-object v11, v14, v8

    .line 276
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {v0, v11, v8}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    move-object/from16 v18, v11

    :cond_14
    const/16 v8, 0xa

    const/4 v11, 0x0

    .line 280
    invoke-static {v1, v2, v10, v8, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 282
    array-length v14, v8

    const/4 v15, 0x1

    if-lt v14, v15, :cond_15

    .line 283
    aget-object v8, v8, v11

    .line 284
    iget-object v14, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {v0, v8, v14}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    .line 286
    invoke-static {v1, v2, v10, v8, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 288
    array-length v14, v8

    const/4 v15, 0x1

    if-lt v14, v15, :cond_15

    .line 289
    aget-object v8, v8, v11

    .line 290
    iget-object v11, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {v0, v8, v11}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_8
    move-object/from16 v17, v5

    goto :goto_5

    :cond_16
    move-object/from16 v18, v11

    .line 295
    sget-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v8

    if-gt v12, v8, :cond_18

    const/4 v8, 0x0

    .line 298
    invoke-static {v1, v2, v9, v8, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_17

    .line 300
    array-length v14, v11

    const/4 v15, 0x1

    if-lt v14, v15, :cond_17

    .line 301
    aget-object v11, v11, v8

    .line 302
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {v0, v11, v8}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_17
    const/16 v8, 0xa

    const/4 v11, 0x0

    .line 306
    invoke-static {v1, v2, v9, v8, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 308
    array-length v14, v8

    const/4 v15, 0x1

    if-lt v14, v15, :cond_15

    .line 309
    aget-object v8, v8, v11

    .line 310
    iget-object v14, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {v0, v8, v14}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    .line 312
    invoke-static {v1, v2, v9, v8, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 314
    array-length v14, v8

    const/4 v15, 0x1

    if-lt v14, v15, :cond_15

    .line 315
    aget-object v8, v8, v11

    .line 316
    iget-object v11, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {v0, v8, v11}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 321
    :cond_18
    sget-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v8

    if-gt v12, v8, :cond_1b

    const/4 v8, 0x0

    .line 322
    invoke-static {v1, v2, v7, v8, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1a

    .line 324
    array-length v14, v11

    const/4 v15, 0x1

    if-lt v14, v15, :cond_19

    .line 325
    aget-object v11, v11, v8

    .line 326
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :cond_19
    move-object/from16 v17, v5

    move v5, v8

    move v14, v15

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v17, v5

    move v5, v8

    goto/16 :goto_6

    .line 329
    :cond_1b
    sget-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v8

    if-gt v12, v8, :cond_1d

    const/4 v8, 0x1

    if-ne v14, v8, :cond_1c

    .line 331
    sget-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v8

    sub-int v8, v12, v8

    const-string v11, "hsc48_lcg"

    const/4 v14, 0x0

    .line 332
    invoke-static {v1, v2, v11, v8, v14}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15

    .line 334
    array-length v15, v11

    const/4 v14, 0x1

    if-lt v15, v14, :cond_15

    .line 335
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    .line 336
    aget-object v11, v11, v14

    .line 337
    iget-object v14, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v14, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v17, v5

    move v14, v8

    goto/16 :goto_7

    .line 342
    :cond_1d
    sget-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v8

    if-gt v12, v8, :cond_1e

    const/4 v8, 0x0

    .line 343
    invoke-static {v1, v2, v6, v8, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1a

    .line 345
    array-length v14, v11

    const/4 v15, 0x1

    if-lt v14, v15, :cond_19

    .line 346
    aget-object v11, v11, v8

    .line 347
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_8

    .line 350
    :cond_1e
    sget-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v8

    if-gt v12, v8, :cond_1f

    const/4 v8, 0x0

    .line 351
    invoke-static {v1, v2, v5, v8, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1a

    .line 353
    array-length v14, v11

    const/4 v15, 0x1

    if-lt v14, v15, :cond_19

    .line 354
    aget-object v11, v11, v8

    .line 355
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->SCL_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_8

    .line 359
    :cond_1f
    sget-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v8

    if-gt v12, v8, :cond_20

    const/4 v8, 0x1

    if-ne v14, v8, :cond_1c

    .line 361
    sget-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v11

    sub-int v11, v12, v11

    div-int/lit8 v11, v11, 0x11

    .line 362
    invoke-virtual {v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v8

    sub-int v8, v12, v8

    rem-int/lit8 v8, v8, 0x11

    const-string v14, "cgc17_enc"

    .line 364
    invoke-static {v1, v2, v14, v11, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_15

    .line 366
    array-length v15, v14

    move-object/from16 v17, v5

    const/4 v5, 0x1

    if-lt v15, v5, :cond_d

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 368
    aget-object v11, v14, v8

    .line 370
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    :cond_20
    move-object/from16 v17, v5

    .line 375
    sget-object v5, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v5}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v5

    if-gt v12, v5, :cond_22

    const/4 v5, 0x1

    if-ne v14, v5, :cond_21

    .line 377
    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    const-string v8, "7"

    invoke-static {v5, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    :cond_21
    move v14, v5

    goto/16 :goto_7

    .line 380
    :cond_22
    sget-object v5, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v5}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v5

    if-gt v12, v5, :cond_23

    const/4 v5, 0x0

    .line 381
    invoke-static {v1, v2, v4, v5, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 383
    array-length v11, v8

    const/4 v14, 0x1

    if-lt v11, v14, :cond_24

    .line 384
    aget-object v8, v8, v5

    .line 385
    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 388
    :cond_23
    sget-object v5, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v5}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result v5

    if-gt v12, v5, :cond_25

    const/4 v5, 0x0

    .line 389
    invoke-static {v1, v2, v3, v5, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 391
    array-length v11, v8

    const/4 v14, 0x1

    if-lt v11, v14, :cond_24

    .line 392
    aget-object v8, v8, v5

    .line 393
    iget-object v11, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DE_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v11, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_24
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v16

    move-object/from16 v5, v17

    move-object/from16 v11, v18

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    :cond_25
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    .line 405
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    const-string/jumbo v0, "setCalibrationDQE-"

    .line 407
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startTuneTimer()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 66
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    .line 67
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayTune$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/exynos/ExynosDisplayTune$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayTune;)V

    iget-wide v3, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mDelayMs:J

    iget-wide v5, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mPeriodMs:J

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public final stopTuneTimer()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public final sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
