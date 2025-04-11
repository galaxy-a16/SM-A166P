.class public Lcom/android/server/display/exynos/ExynosDisplayColor;
.super Ljava/lang/Object;
.source "ExynosDisplayColor.java"


# instance fields
.field public BYPASS_XML_FILE_PATH:Ljava/lang/String;

.field public CGC17_CON_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

.field public CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

.field public CGC_SYSFS_PATH:Ljava/lang/String;

.field public COLORMODE_XML_FILE_PATH:Ljava/lang/String;

.field public COLORTEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

.field public COLORTEMP_XML_FILE_PATH:Ljava/lang/String;

.field public final DEBUG:Z

.field public DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public DEGAMMA_SYSFS_PATH:Ljava/lang/String;

.field public DE_SYSFS_PATH:Ljava/lang/String;

.field public EXTENSION_OFF:Ljava/lang/String;

.field public EXTENSION_ON:Ljava/lang/String;

.field public EYETEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

.field public EYETEMP_XML_FILE_PATH:Ljava/lang/String;

.field public GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

.field public HSC_SYSFS_PATH:Ljava/lang/String;

.field public HW_VER_8_0:Ljava/lang/String;

.field public HW_VER_SYSFS_PATH:Ljava/lang/String;

.field public RGBGAIN_EXT_XML_FILE_PATH:Ljava/lang/String;

.field public RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

.field public SHARPNESS_XML_FILE_PATH:Ljava/lang/String;

.field public SKINCOLOR_XML_FILE_PATH:Ljava/lang/String;

.field public WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

.field public bgain_array:[Ljava/lang/String;

.field public bgain_ext_array:[Ljava/lang/String;

.field public cgc_dither_array:[Ljava/lang/String;

.field public colortemp_array:[Ljava/lang/String;

.field public colortemp_ext_array:[Ljava/lang/String;

.field public eyetemp_array:[Ljava/lang/String;

.field public eyetemp_ext_array:[Ljava/lang/String;

.field public gamma_bypass_array:[Ljava/lang/String;

.field public gamma_ext_bypass_array:[Ljava/lang/String;

.field public ggain_array:[Ljava/lang/String;

.field public ggain_ext_array:[Ljava/lang/String;

.field public hsc_bypass_array:[Ljava/lang/String;

.field public hw_ver:Ljava/lang/String;

.field public mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

.field public rgain_array:[Ljava/lang/String;

.field public rgain_ext_array:[Ljava/lang/String;

.field public rgb_gain:[F

.field public sharpness_array:[Ljava/lang/String;

.field public skincolor_array:[Ljava/lang/String;

.field public whitepoint_array:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    .line 29
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DEBUG:Z

    const-string v0, "/sys/class/dqe/dqe/dqe_ver"

    .line 31
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/gamma_ext"

    .line 33
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/gamma"

    .line 34
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/degamma_ext"

    .line 35
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/degamma"

    .line 36
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc"

    .line 37
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc"

    .line 39
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_idx"

    .line 40
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_enc"

    .line 41
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_dec"

    .line 42
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_con"

    .line 43
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/gamma_matrix"

    .line 45
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc_dither"

    .line 46
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc48_idx"

    .line 48
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc48_lcg"

    .line 49
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/de"

    .line 51
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DE_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_colortemp.xml"

    .line 53
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORTEMP_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_colortemp_ext.xml"

    .line 54
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORTEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_eyetemp.xml"

    .line 55
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EYETEMP_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_eyetemp_ext.xml"

    .line 56
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EYETEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_bypass.xml"

    .line 57
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_rgbgain.xml"

    .line 58
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_rgbgain_ext.xml"

    .line 59
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_EXT_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_skincolor.xml"

    .line 60
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SKINCOLOR_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_whitepoint.xml"

    .line 61
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_sharpness.xml"

    .line 62
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SHARPNESS_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_colormode0.xml"

    .line 64
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "0"

    .line 66
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    const-string v0, "1"

    .line 67
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_array:[Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_ext_array:[Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_ext_array:[Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_ext_array:[Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_ext_array:[Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_ext_array:[Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 88
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgb_gain:[F

    .line 90
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    const-string v1, "08000000"

    .line 91
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_8_0:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->checkHWVersion()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final checkHWVersion()V
    .locals 2

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->existFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    .line 126
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hw_ver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExynosDisplayColor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final existFile(Ljava/lang/String;)Z
    .locals 1

    .line 105
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getColorEnhancementMode()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "Off,NATIVE,DISPLAY_P3,SRGB"

    return-object p0
.end method

.method public final getColorModeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "bypass"

    .line 540
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 543
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "subxml"

    const/4 v1, 0x0

    .line 544
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 545
    array-length p0, p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "tune"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    :goto_0
    return-object p1

    :catch_0
    move-exception p0

    .line 551
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public final getColorModePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ".xml"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "bypass"

    .line 516
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    return-object p0

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v3, "subxml"

    .line 520
    invoke-static {v2, p1, v1, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 521
    array-length v1, p1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    goto :goto_0

    .line 524
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 525
    aget-object p1, p1, v3

    const-string v1, "\\s*,\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_2
    :goto_0
    return-object v2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p0

    .line 529
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v1

    :goto_2
    return-object p0
.end method

.method public getRgbGain()[F
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgb_gain:[F

    return-object p0
.end method

.method public setColorEnhancement(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    :try_start_0
    const-string p1, "bypass"

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p1, "SRGB"

    goto :goto_0

    :cond_1
    const-string p1, "DISPLAY_P3"

    goto :goto_0

    :cond_2
    const-string p1, "NATIVE"

    .line 577
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setXMLColorModesImpl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 580
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setColorTempOn(I)V
    .locals 3

    const-string v0, "gamma"

    const-string v1, "colortemp"

    if-eqz p1, :cond_0

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORTEMP_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_array:[Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORTEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_ext_array:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_ext_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_array:[Ljava/lang/String;

    .line 153
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaOn(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setColorTempValue(I)V
    .locals 2

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_array:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_ext_array:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaValue([Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDisplayColorFeature(IILjava/lang/String;)V
    .locals 2

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayColorFeature(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExynosDisplayColor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 849
    invoke-virtual {p0, p3}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setProductXMLColorModes(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEdgeSharpnessOn(I)V
    .locals 2

    const-string v0, "de"

    if-eqz p1, :cond_0

    .line 485
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SHARPNESS_XML_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "sharpness"

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    goto :goto_0

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v1, "bypass"

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    .line 489
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 492
    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 496
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setEdgeSharpnessOn()"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DE_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public setEdgeSharpnessValue(I)V
    .locals 2

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    array-length v1, v0

    if-lt p1, v1, :cond_1

    return-void

    .line 467
    :cond_1
    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 471
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setEdgeSharpnessValue()"

    .line 475
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DE_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public setExynosDisplayTune(Lcom/android/server/display/exynos/ExynosDisplayTune;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    return-void
.end method

.method public setEyeTempOn(I)V
    .locals 3

    const-string v0, "gamma"

    const-string v1, "eyetemp"

    if-eqz p1, :cond_0

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EYETEMP_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 271
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EYETEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_ext_array:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_ext_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 276
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaOn(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setEyeTempValue(I)V
    .locals 2

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_ext_array:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaValue([Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 261
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final setGammaOn(I)V
    .locals 6

    const-string p1, "gamma"

    const/4 v0, 0x0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "bypass"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 220
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-static {v1, v2, p1, v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-static {v1, v2, p1, v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    if-eqz p1, :cond_5

    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-nez p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v1, "cgc_dither"

    invoke-static {p1, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    aget-object p1, p1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 234
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 235
    aget-object v1, v1, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 237
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-eqz v2, :cond_6

    array-length v4, v2

    if-nez v4, :cond_4

    goto :goto_3

    .line 240
    :cond_4
    aget-object v0, v2, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v5, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 244
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v1

    move-object v1, v2

    :cond_6
    :goto_3
    if-eqz p1, :cond_8

    const-string v2, "ExynosDisplayColor"

    const-string/jumbo v3, "setGammaOn()"

    .line 248
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    .line 250
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final setGammaValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setGammaValue()"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setGammaValue([Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 171
    :try_start_0
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    .line 173
    :cond_0
    array-length v1, p1

    if-lt p3, v1, :cond_1

    return-void

    .line 176
    :cond_1
    aget-object p1, p1, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_2

    .line 178
    :try_start_1
    aget-object p2, p2, p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 182
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    const-string p2, "ExynosDisplayColor"

    const-string/jumbo p3, "setGammaValue()"

    .line 186
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setHsvGainOn(I)V
    .locals 2

    .line 439
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    if-nez p1, :cond_0

    .line 440
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "bypass"

    const-string v1, "hsc"

    invoke-static {p1, v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 445
    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 449
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setHsvGainOn()"

    .line 453
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public setHsvGainValue(III)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, ","

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 367
    :try_start_0
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    if-eqz v4, :cond_7

    array-length v5, v4

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v5, 0x0

    .line 370
    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 372
    iget-object v6, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0xff

    const/4 v13, 0x1

    if-nez v6, :cond_1

    .line 373
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    .line 374
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    .line 375
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    add-int/lit8 v6, p2, -0x7f

    .line 376
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    add-int/lit8 v6, p1, -0x7f

    .line 377
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    add-int/lit8 v6, p3, -0x7f

    .line 378
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    aput-object v6, v4, v7

    .line 380
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x92

    aput-object v6, v4, v7

    .line 381
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x93

    aput-object v6, v4, v7

    .line 382
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x94

    aput-object v6, v4, v7

    .line 383
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x95

    aput-object v6, v4, v7

    .line 384
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x96

    aput-object v6, v4, v7

    .line 385
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x97

    aput-object v6, v4, v7

    .line 386
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x98

    aput-object v6, v4, v7

    .line 387
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x99

    aput-object v6, v4, v7

    goto/16 :goto_2

    .line 388
    :cond_1
    iget-object v14, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_8_0:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    const/16 v14, 0x42

    const/16 v15, 0x8

    if-ltz v6, :cond_3

    .line 389
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v4, v7

    add-int/lit8 v6, p1, -0x7f

    .line 390
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v4, v7

    .line 391
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v4, v7

    add-int/lit8 v6, p2, -0x7f

    .line 392
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v4, v7

    .line 393
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v15

    add-int/lit8 v6, p3, -0x7f

    .line 394
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const/16 v6, 0x31

    move v7, v6

    :goto_0
    if-gt v7, v14, :cond_2

    .line 397
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 399
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 400
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3a

    aput-object v6, v4, v7

    goto :goto_2

    .line 402
    :cond_3
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v15

    add-int/lit8 v6, p1, -0x7f

    .line 403
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    .line 404
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    add-int/lit8 v6, p2, -0x7f

    .line 405
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    .line 406
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    add-int/lit8 v6, p3, -0x7f

    .line 407
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/16 v6, 0x39

    move v7, v6

    :goto_1
    const/16 v8, 0x4a

    if-gt v7, v8, :cond_4

    .line 410
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 412
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 413
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v14

    .line 416
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_6

    .line 417
    array-length v6, v4

    sub-int/2addr v6, v13

    if-ge v5, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    aget-object v6, v4, v5

    .line 418
    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 421
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 422
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_7
    :goto_4
    return-void

    :catch_0
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v2, "setHsvGainValue()"

    .line 430
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_9
    return-void
.end method

.method public final setProductXMLColorModes(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 842
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setXMLColorModesImpl(Ljava/lang/String;)V

    return-void
.end method

.method public setRgbGainOn(I)V
    .locals 5

    const-string v0, "blue"

    const-string v1, "green"

    const-string/jumbo v2, "red"

    const-string/jumbo v3, "rgbgain"

    if-eqz p1, :cond_0

    .line 319
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 320
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v4, v3, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    .line 321
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v4, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    .line 322
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_EXT_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_ext_array:[Ljava/lang/String;

    .line 323
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_EXT_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_ext_array:[Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_EXT_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_ext_array:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 326
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 327
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_ext_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_ext_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_ext_array:[Ljava/lang/String;

    .line 330
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaOn(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setRgbGainValue(III)V
    .locals 5

    const-string v0, ","

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    if-eqz v1, :cond_7

    array-length v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 289
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    if-eqz v2, :cond_7

    array-length v3, v2

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 291
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    if-eqz v3, :cond_7

    array-length v4, v3

    if-nez v4, :cond_2

    goto :goto_1

    .line 294
    :cond_2
    array-length v1, v1

    if-lt p1, v1, :cond_3

    return-void

    .line 296
    :cond_3
    array-length v1, v2

    if-lt p2, v1, :cond_4

    return-void

    .line 298
    :cond_4
    array-length v1, v3

    if-lt p3, v1, :cond_5

    return-void

    .line 301
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_ext_array:[Ljava/lang/String;

    if-eqz v2, :cond_6

    array-length v2, v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_ext_array:[Ljava/lang/String;

    if-eqz v2, :cond_6

    array-length v2, v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_ext_array:[Ljava/lang/String;

    if-eqz v2, :cond_6

    array-length v2, v2

    if-eqz v2, :cond_6

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_ext_array:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_ext_array:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_ext_array:[Ljava/lang/String;

    aget-object p1, p1, p3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 307
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setSkinColorOn(I)V
    .locals 2

    const-string v0, "hsc"

    if-eqz p1, :cond_0

    .line 342
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SKINCOLOR_XML_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "skincolor"

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    goto :goto_0

    .line 344
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v1, "bypass"

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    .line 346
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 349
    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 353
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setSkinColorOn()"

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public setWhitePointColorOn(I)V
    .locals 4

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 687
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 688
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setWhitePointColorOnCGC(I)V

    goto :goto_0

    .line 690
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setWhitePointColorOnCGC17(I)V

    .line 692
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "elaspedTime: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExynosDisplayColor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setWhitePointColorOnCGC(I)V
    .locals 6

    const-string v0, "cgc"

    const-string v1, "bypass"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 654
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v3, "whitepoint"

    invoke-static {p1, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    goto :goto_0

    .line 656
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    .line 658
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 661
    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 663
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 664
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v4, "cgc_dither"

    invoke-static {v3, v1, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 666
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-eqz v1, :cond_5

    array-length v3, v1

    if-nez v3, :cond_3

    goto :goto_3

    .line 669
    :cond_3
    aget-object v0, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :catch_1
    move-exception p1

    move-object v0, v2

    .line 673
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :cond_5
    :goto_3
    if-eqz p1, :cond_7

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setWhitePointColorOn()"

    .line 677
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    .line 679
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 680
    :cond_6
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    return-void
.end method

.method public final setWhitePointColorOnCGC17(I)V
    .locals 9

    const-string v0, "bypass"

    if-eqz p1, :cond_0

    .line 591
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "whitepoint"

    goto :goto_0

    .line 595
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    move-object v1, v0

    .line 600
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 601
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v3, "cgc_dither"

    invoke-static {v2, v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-nez v3, :cond_2

    goto :goto_1

    .line 606
    :cond_2
    aget-object v0, v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 609
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v0, v2

    :goto_3
    const/4 v3, 0x3

    const-string v4, "ExynosDisplayColor"

    const/4 v5, 0x1

    if-ge v0, v3, :cond_8

    move v3, v2

    :goto_4
    const/16 v6, 0x11

    if-ge v3, v6, :cond_7

    :try_start_1
    const-string v6, "cgc17_enc"

    .line 614
    invoke-static {p1, v1, v6, v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 616
    array-length v7, v6

    if-ge v7, v5, :cond_5

    goto :goto_5

    .line 621
    :cond_5
    aget-object v6, v6, v2

    .line 624
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 626
    iget-object v8, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 627
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    const-string/jumbo p0, "xml cgc17_enc not found"

    .line 617
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 631
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    const-string v3, "7"

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "cgc17_con"

    .line 633
    invoke-static {p1, v1, v0, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 635
    array-length v0, p1

    if-ge v0, v5, :cond_9

    goto :goto_6

    .line 640
    :cond_9
    aget-object p1, p1, v2

    .line 642
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_a
    :goto_6
    const-string/jumbo p0, "xml cgc17_con not found"

    .line 636
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 645
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void
.end method

.method public final setXMLColorModesImpl(Ljava/lang/String;)V
    .locals 4

    .line 826
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->getColorModePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->getColorModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExynosDisplayColor"

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setXMLColorModesImpl: xml_path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    if-eqz p0, :cond_0

    .line 831
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 834
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
