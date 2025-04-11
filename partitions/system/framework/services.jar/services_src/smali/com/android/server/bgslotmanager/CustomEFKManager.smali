.class public Lcom/android/server/bgslotmanager/CustomEFKManager;
.super Ljava/lang/Object;
.source "CustomEFKManager.java"


# static fields
.field public static final APP_EFK_DECREASE_BOOST_ENABLE:Z

.field public static final BOOTING_EFK_BOOST_ENABLE:Z

.field public static final DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field public static final mTotalMemMb:J


# instance fields
.field public addBonusEFK:I

.field public isBlockDecEFK:Z

.field public isStillDecEFK:Z

.field public last_Watermark_EFK:I

.field public origin_EFK:I

.field public vDecreaseEFK:I

.field public vDecreaseEFKTime:I

.field public vWatermarkScaleGetPerTickTime:I

.field public vWatermarkScaleGetTime:I

.field public v_BonusEFK:I

.field public v_bonusEFKWhileBoot:I

.field public v_watermark_scale:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetisStillDecEFK(Lcom/android/server/bgslotmanager/CustomEFKManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlast_Watermark_EFK(Lcom/android/server/bgslotmanager/CustomEFKManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->last_Watermark_EFK:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetv_watermark_scale(Lcom/android/server/bgslotmanager/CustomEFKManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputisBlockDecEFK(Lcom/android/server/bgslotmanager/CustomEFKManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisStillDecEFK(Lcom/android/server/bgslotmanager/CustomEFKManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlast_Watermark_EFK(Lcom/android/server/bgslotmanager/CustomEFKManager;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->last_Watermark_EFK:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputv_watermark_scale(Lcom/android/server/bgslotmanager/CustomEFKManager;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->restoreEFKAfterBoot()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreWatermarkScaleFactor(Lcom/android/server/bgslotmanager/CustomEFKManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->restoreWatermarkScaleFactor()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getTotalMemoryMB()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->mTotalMemMb:J

    const-string v0, "dec_EFK_enable"

    const-string v1, "false"

    .line 30
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    const-string v0, "bEFKb_enable"

    .line 31
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->BOOTING_EFK_BOOST_ENABLE:Z

    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    .line 34
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    .line 35
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "add_bonusEFK"

    const-string v1, "-1"

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->addBonusEFK:I

    const-string/jumbo v0, "v_bonusEFK"

    const-string v1, "0"

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_BonusEFK:I

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const-string/jumbo v2, "v_BootEFK"

    const-string v3, "204800"

    .line 21
    invoke-static {v2, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_bonusEFKWhileBoot:I

    const-string/jumbo v2, "v_decrease_EFK"

    .line 22
    invoke-static {v2, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    const-string/jumbo v1, "tm_decrease_EFK"

    const-string v2, "1000"

    .line 23
    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    const/4 v2, 0x0

    .line 24
    iput v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    .line 25
    iput v1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetPerTickTime:I

    mul-int/lit8 v1, v1, 0x5

    .line 26
    iput v1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetTime:I

    .line 27
    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->last_Watermark_EFK:I

    .line 28
    iput-boolean v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    .line 29
    iput-boolean v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    return-void
.end method

.method public static getWatermarkScaleInfo()I
    .locals 5

    const/16 v0, 0x2020

    .line 222
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v2, 0x0

    const-string v3, "/proc/sys/vm/watermark_scale_factor"

    .line 228
    invoke-static {v3, v0, v2, v1, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v1, v4

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getBonusEFK()I
    .locals 10

    .line 140
    sget-wide v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->mTotalMemMb:J

    const-wide/16 v2, 0xc00

    cmp-long v2, v0, v2

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v5, 0x400

    const/4 v7, 0x0

    if-ltz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-nez v2, :cond_0

    mul-long v8, v0, v5

    long-to-double v8, v8

    mul-double/2addr v8, v3

    double-to-int v2, v8

    goto :goto_0

    :cond_0
    move v2, v7

    .line 144
    :goto_0
    iget v8, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->addBonusEFK:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    mul-long/2addr v0, v5

    long-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    .line 147
    iget v7, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_BonusEFK:I

    goto :goto_1

    :cond_2
    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_1
    return v7
.end method

.method public getCurWatermarkFactorScale(I)V
    .locals 8

    .line 211
    sget-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    .line 216
    new-instance v0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;

    iget v1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetTime:I

    int-to-long v3, v1

    iget v1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetPerTickTime:I

    int-to-long v5, v1

    move-object v1, v0

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V

    .line 217
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final restoreEFKAfterBoot()V
    .locals 1

    .line 44
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "sys.sysctl.extra_free_kbytes"

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final restoreWatermarkScaleFactor()V
    .locals 1

    .line 58
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    const-string/jumbo v0, "sys.sysctl.watermark_scale_factor"

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public runBootEFKBoost()V
    .locals 7

    .line 73
    sget-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->BOOTING_EFK_BOOST_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->setEFKBoost()V

    .line 78
    new-instance v0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;

    const-wide/32 v3, 0x2bf20

    const-wide/16 v5, 0x3a98

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/bgslotmanager/CustomEFKManager$1;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V

    .line 93
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public runDecEFKBoost(Ljava/lang/String;)V
    .locals 12

    .line 97
    sget-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    sget-object v1, Lcom/android/server/bgslotmanager/CustomEFKManager;->DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 102
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    iget p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    .line 108
    iget-boolean p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->setWatermarkScaleFactorDecreaseBoost()V

    .line 111
    new-instance p1, Lcom/android/server/bgslotmanager/CustomEFKManager$2;

    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    int-to-long v2, v0

    int-to-long v4, v0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/bgslotmanager/CustomEFKManager$2;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V

    .line 121
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->setEFKDecreaseBoost()V

    .line 125
    new-instance p1, Lcom/android/server/bgslotmanager/CustomEFKManager$3;

    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    int-to-long v8, v0

    int-to-long v10, v0

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/bgslotmanager/CustomEFKManager$3;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V

    .line 134
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_4
    :goto_1
    return-void
.end method

.method public final setEFKBoost()V
    .locals 2

    .line 39
    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 40
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_bonusEFKWhileBoot:I

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.sysctl.extra_free_kbytes"

    invoke-static {v0, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setEFKDecreaseBoost()V
    .locals 2

    .line 49
    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 50
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    const-string/jumbo v1, "sys.sysctl.extra_free_kbytes"

    if-lez p0, :cond_0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    div-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOriginEFKWithSetProperty(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const-string/jumbo p0, "sys.sysctl.origin_extra_free_kbytes"

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWatermarkBoostFactor(I)V
    .locals 0

    const-string/jumbo p0, "sys.sysctl.watermark_boost_factor"

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setWatermarkScaleFactorDecreaseBoost()V
    .locals 3

    .line 63
    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    div-int/lit8 v1, v0, 0x3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    div-int/lit8 v1, v0, 0x3

    :goto_0
    if-le v0, v2, :cond_2

    .line 65
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    const-string/jumbo v0, "sys.sysctl.watermark_scale_factor"

    if-lez p0, :cond_1

    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->setSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
