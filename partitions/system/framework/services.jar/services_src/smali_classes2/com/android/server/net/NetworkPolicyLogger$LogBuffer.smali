.class public final Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
.super Ljava/lang/Object;
.source "NetworkPolicyLogger.java"


# static fields
.field public static final sDate:Ljava/util/Date;

.field public static final sFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field public mCursor:J

.field public mDataList:Ljava/util/ArrayList;

.field public mMaxSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 419
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 421
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    .line 428
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mMaxSize:I

    const-wide/16 v0, 0x0

    .line 429
    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    return-void
.end method


# virtual methods
.method public appIdleStateChanged(IZ)V
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x8

    .line 542
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 543
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 544
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public appIdleWlChanged(IZ)V
    .locals 1

    .line 549
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xe

    .line 553
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 554
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 555
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public deviceIdleModeEnabled(Z)V
    .locals 2

    .line 528
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x7

    .line 532
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 533
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public event(Ljava/lang/String;)V
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x0

    .line 464
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 465
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public firewallChainEnabled(IZ)V
    .locals 1

    .line 596
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xc

    .line 600
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 601
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 602
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public final formatDate(J)Ljava/lang/String;
    .locals 0

    .line 712
    sget-object p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 713
    sget-object p1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;
    .locals 2

    .line 665
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    packed-switch p0, :pswitch_data_0

    .line 707
    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 705
    :pswitch_1
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetInterfacesChangedLog(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 703
    :pswitch_2
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetRoamingChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 701
    :pswitch_3
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetMeteredDenylistChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 699
    :pswitch_4
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetMeteredAllowlistChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 688
    :pswitch_5
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetAppIdleWlChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 697
    :pswitch_6
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetFirewallChainEnabledLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 695
    :pswitch_7
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 692
    :pswitch_8
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetTempPowerSaveWlChangedLog(IZILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 690
    :pswitch_9
    iget-boolean p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetParoleStateChanged(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 686
    :pswitch_a
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetAppIdleChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 684
    :pswitch_b
    iget-boolean p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetDeviceIdleModeEnabled(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 682
    :pswitch_c
    iget-boolean p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 680
    :pswitch_d
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetUserRemovedLog(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 678
    :pswitch_e
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetMeterednessChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 676
    :pswitch_f
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetPolicyChangedLog(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 672
    :pswitch_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 673
    invoke-static {v1}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 669
    :pswitch_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 667
    :pswitch_12
    iget-object p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;
    .locals 4

    .line 433
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->indexOf(J)I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mMaxSize:I

    if-gt v1, v2, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/net/NetworkPolicyLogger$Data;

    invoke-direct {v2}, Lcom/android/server/net/NetworkPolicyLogger$Data;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    return-object p0
.end method

.method public final indexOf(J)I
    .locals 2

    .line 441
    iget p0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mMaxSize:I

    int-to-long v0, p0

    rem-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public interfacesChanged(ILjava/lang/String;)V
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x12

    .line 644
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 645
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 646
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public meteredAllowlistChanged(IZ)V
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xf

    .line 611
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 612
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 613
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public meteredDenylistChanged(IZ)V
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x10

    .line 622
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 623
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 624
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public meterednessChanged(IZ)V
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x4

    .line 500
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 501
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 502
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public networkBlocked(IIII)V
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x1

    .line 475
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 476
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 477
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 478
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 479
    iput p4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public paroleStateChanged(Z)V
    .locals 2

    .line 560
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x9

    .line 564
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 565
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public restrictBackgroundChanged(ZZ)V
    .locals 1

    .line 517
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x6

    .line 521
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 522
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 523
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 653
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "NULL"

    .line 654
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyLogger$Data;

    iget-wide v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " - "

    .line 658
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyLogger$Data;

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public roamingChanged(IZ)V
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x11

    .line 633
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 634
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 635
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public tempPowerSaveWlChanged(IZILjava/lang/String;)V
    .locals 1

    .line 571
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xa

    .line 575
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 576
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 577
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 578
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 579
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidFirewallRuleChanged(III)V
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xb

    .line 588
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 589
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 590
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 591
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidPolicyChanged(III)V
    .locals 1

    .line 484
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x3

    .line 488
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 489
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 490
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 491
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidStateChanged(IIJI)V
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x2

    .line 451
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 452
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 453
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 454
    iput p5, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 455
    iput-wide p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public userRemoved(I)V
    .locals 2

    .line 507
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x5

    .line 511
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 512
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method
