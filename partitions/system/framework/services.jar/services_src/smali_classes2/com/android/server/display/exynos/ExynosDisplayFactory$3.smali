.class public Lcom/android/server/display/exynos/ExynosDisplayFactory$3;
.super Landroid/os/CountDownTimer;
.source "ExynosDisplayFactory.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetDEBUG(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountDownTimer finished = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExynosDisplayFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fputmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)V

    return-void
.end method

.method public onTick(J)V
    .locals 6

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-gtz p1, :cond_2

    :goto_0
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationAPS(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    if-gt p1, v1, :cond_5

    :goto_2
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationDEGAMMA(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    if-gt p1, v0, :cond_8

    :goto_4
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationGAMMA(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x3

    if-gt p1, v2, :cond_b

    :goto_6
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationGAMMA_MATRIX(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x4

    if-gt p1, v2, :cond_e

    :goto_8
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v3

    aget p1, p1, v3

    if-nez p1, :cond_c

    goto :goto_9

    :cond_c
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {p1, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_9

    :cond_d
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p2

    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v5}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {p1, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationHSC48_LCG(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_e
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x5

    if-gt p1, v2, :cond_11

    :goto_a
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_f

    goto :goto_b

    :cond_f
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_b

    :cond_10
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationHSC(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_11
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x6

    if-gt p1, v2, :cond_14

    :goto_c
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_12

    goto :goto_d

    :cond_12
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_d

    :cond_13
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationSCL(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_14
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0x9

    if-gt p1, v2, :cond_17

    :goto_e
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_15

    goto :goto_f

    :cond_15
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_f

    :cond_16
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-static {p1, v2, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationCGC17_ENC(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_17
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xa

    if-gt p1, v2, :cond_1a

    :goto_10
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_18

    goto :goto_11

    :cond_18
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_11

    :cond_19
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationCGC17_DEC(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    :goto_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_1a
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xb

    if-gt p1, v2, :cond_1d

    :goto_12
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_1b

    goto :goto_13

    :cond_1b
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_13

    :cond_1c
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationCGC17_CON(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_1d
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xc

    if-gt p1, v2, :cond_20

    :goto_14
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_1e

    goto :goto_15

    :cond_1e
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_15

    :cond_1f
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationCGC_DITHER(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_20
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xd

    if-gt p1, v2, :cond_23

    :goto_16
    if-ge p2, v0, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_21

    goto :goto_17

    :cond_21
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_17

    :cond_22
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationDE(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    :cond_23
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 p2, 0xe

    if-gt p1, p2, :cond_24

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdxDefault(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    :cond_24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fputmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)V

    return-void
.end method
