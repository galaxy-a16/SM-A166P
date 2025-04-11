.class public final Lcom/android/server/power/HqmDataDispatcher$DisplayStat;
.super Ljava/lang/Object;
.source "HqmDataDispatcher.java"


# static fields
.field public static final BRIGHTNESS_DIM:I

.field public static final BRIGHTNESS_HIGHEST:I


# instance fields
.field public mBrightnessDuration:[J

.field public mCurrentBrightnessRange:I

.field public final mDisplayType:I

.field public final mDisplayTypeStr:Ljava/lang/String;

.field public mScreenBrightnessHighestDuration:J

.field public mScreenBrightnessHighestStarted:Z

.field public mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenCurtainCount:J

.field public mScreenCurtainDuration:J

.field public mScreenCurtainEnabled:Z

.field public mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenOnCount:J

.field public mScreenOnDuration:J

.field public mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBrightnessDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)[J
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayType(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenBrightnessHighestDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenCurtainCount(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenCurtainDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOnCount(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOnDuration(Lcom/android/server/power/HqmDataDispatcher$DisplayStat;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 323
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    .line 322
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_DIM:I

    .line 348
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_HIGHEST:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 334
    iput v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    const/4 v1, -0x1

    .line 335
    iput v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 337
    new-instance v1, Lcom/android/server/power/HqmDataDispatcher$Timer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Timer-IA;)V

    iput-object v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    const/4 v1, 0x3

    new-array v3, v1, [Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 338
    iput-object v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    new-array v3, v1, [J

    .line 341
    iput-object v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    .line 346
    new-instance v3, Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-direct {v3, v2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Timer-IA;)V

    iput-object v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 350
    new-instance v3, Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-direct {v3, v2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Timer-IA;)V

    iput-object v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 355
    iput p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayTypeStr:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 358
    iput-wide v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 359
    iput-wide v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 361
    iget-object v5, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    new-instance v6, Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-direct {v6, v2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Timer-IA;)V

    aput-object v6, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    iput-wide v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    .line 365
    iput-wide v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    .line 367
    iput-wide v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 368
    iput-boolean v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 503
    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 504
    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    const/4 v2, -0x1

    .line 505
    iput v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 507
    iget-object v4, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    aput-wide v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 510
    :cond_0
    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    .line 511
    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    .line 513
    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 514
    iput-boolean v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    return-void
.end method

.method public setScreenBrightness(F)V
    .locals 4

    .line 405
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    .line 406
    iget v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 407
    sget v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_DIM:I

    const/4 v2, -0x1

    if-gt p1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xe6

    const/16 v3, 0xff

    if-lt p1, v0, :cond_1

    if-gt p1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-le p1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 417
    :goto_0
    iget v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    if-eq v1, v0, :cond_3

    .line 418
    invoke-virtual {p0, v0}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->updateBrightnessDuration(I)V

    .line 419
    iput v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    if-eq v1, v2, :cond_3

    .line 421
    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    .line 429
    :cond_3
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    if-eqz v0, :cond_4

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->setScreenBrightnessHighest(I)V

    :cond_4
    return-void
.end method

.method public setScreenBrightnessHighest(I)V
    .locals 2

    .line 476
    iget-boolean v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    if-nez v0, :cond_0

    sget v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_HIGHEST:I

    if-ne p1, v1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-virtual {p1}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    const/4 p1, 0x1

    .line 478
    iput-boolean p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 485
    sget v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_HIGHEST:I

    if-eq p1, v0, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->updateBrightnessHighestDuration()V

    :cond_1
    return-void
.end method

.method public setScreenCurtainEnabled(Z)V
    .locals 4

    .line 452
    iget-boolean v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainEnabled:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 456
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    .line 457
    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-virtual {v0}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 462
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-virtual {v1}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    move-result v1

    add-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    .line 468
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainEnabled:Z

    return-void
.end method

.method public setScreenState(I)V
    .locals 4

    .line 376
    iget v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 380
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 381
    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-virtual {v0}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 386
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-virtual {v1}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    move-result v1

    add-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    .line 390
    iget v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->updateBrightnessDuration(I)V

    .line 392
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    if-eqz v0, :cond_3

    .line 393
    invoke-virtual {p0}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->updateBrightnessHighestDuration()V

    .line 396
    :cond_3
    :goto_2
    iput p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    return-void
.end method

.method public final updateBrightnessDuration(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    aget-wide v2, v1, p1

    long-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    move-result v3

    add-float/2addr v2, v3

    float-to-long v2, v2

    aput-wide v2, v1, p1

    .line 443
    iput v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    :cond_0
    return-void
.end method

.method public updateBrightnessHighestDuration()V
    .locals 2

    .line 491
    iget-boolean v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    if-eqz v0, :cond_0

    .line 492
    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-virtual {v1}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    move-result v1

    add-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    :cond_0
    return-void
.end method
