.class public Lcom/android/server/display/exynos/ExynosDisplayFactory$3;
.super Landroid/os/CountDownTimer;
.source "ExynosDisplayFactory.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;JJ)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetDEBUG(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
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

    .line 788
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fputmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)V

    return-void
.end method

.method public onTick(J)V
    .locals 6

    .line 646
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-gtz p1, :cond_2

    :goto_0
    if-ge p2, v0, :cond_24

    .line 649
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

    .line 651
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 653
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

    .line 657
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    if-gt p1, v1, :cond_5

    :goto_2
    if-ge p2, v0, :cond_24

    .line 660
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

    .line 662
    :cond_3
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 664
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

    .line 668
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    if-gt p1, v0, :cond_8

    :goto_4
    if-ge p2, v0, :cond_24

    .line 671
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

    .line 673
    :cond_6
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    .line 675
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

    .line 679
    :cond_8
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x3

    if-gt p1, v2, :cond_b

    :goto_6
    if-ge p2, v0, :cond_24

    .line 682
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

    .line 684
    :cond_9
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_7

    .line 686
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

    .line 690
    :cond_b
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x4

    if-gt p1, v2, :cond_e

    :goto_8
    if-ge p2, v0, :cond_24

    .line 693
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

    .line 695
    :cond_c
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {p1, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_9

    .line 697
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

    .line 701
    :cond_e
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x5

    if-gt p1, v2, :cond_11

    :goto_a
    if-ge p2, v0, :cond_24

    .line 704
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

    .line 706
    :cond_f
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_b

    .line 708
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

    .line 712
    :cond_11
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x6

    if-gt p1, v2, :cond_14

    :goto_c
    if-ge p2, v0, :cond_24

    .line 715
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

    .line 717
    :cond_12
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_d

    .line 719
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

    .line 723
    :cond_14
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0x9

    if-gt p1, v2, :cond_17

    :goto_e
    if-ge p2, v0, :cond_24

    .line 726
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

    .line 728
    :cond_15
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_f

    .line 730
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

    .line 734
    :cond_17
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xa

    if-gt p1, v2, :cond_1a

    :goto_10
    if-ge p2, v0, :cond_24

    .line 737
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

    .line 739
    :cond_18
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_11

    .line 741
    :cond_19
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationCGC17_DEC(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    :goto_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    .line 745
    :cond_1a
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xb

    if-gt p1, v2, :cond_1d

    :goto_12
    if-ge p2, v0, :cond_24

    .line 748
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

    .line 750
    :cond_1b
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_13

    .line 752
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

    .line 756
    :cond_1d
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xc

    if-gt p1, v2, :cond_20

    :goto_14
    if-ge p2, v0, :cond_24

    .line 759
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

    .line 761
    :cond_1e
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_15

    .line 763
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

    .line 767
    :cond_20
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xd

    if-gt p1, v2, :cond_23

    :goto_16
    if-ge p2, v0, :cond_24

    .line 770
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

    .line 772
    :cond_21
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_17

    .line 774
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

    .line 778
    :cond_23
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 p2, 0xe

    if-gt p1, p2, :cond_24

    .line 779
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdxDefault(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 782
    :cond_24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fputmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)V

    return-void
.end method
