.class public Lcom/android/server/wm/TspGripCommand;
.super Ljava/lang/Object;
.source "TspGripCommand.java"


# instance fields
.field public mCommand:Ljava/lang/String;

.field public mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

.field public mLandBottomGripWidth:I

.field public mLandBottomRejectWidth:I

.field public mLandEdgeZone:I

.field public mLandTopGripWidth:I

.field public mLandTopRejectWidth:I

.field public mLandX1:I

.field public mPortEdgeZone:I

.field public mPortX1:I

.field public mPortX2:I

.field public mPortX3:I

.field public mPortY1:I

.field public mPortY2:I

.field public final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 157
    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mType:I

    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset()V

    const-string v0, "0.35%,0.35%,0,0,1.41%,0,0.22%,0.22%,0.88%,0.88%"

    const-string v1, "0.35%,0.35%,0,0,2.11%,0,0.22%,0.22%,1.32%,1.32%"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "0.69%,1.39%,30%,1.39%,4.17%,2.55%,0.66%,0.66%,1.97%,1.97%"

    .line 192
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    goto :goto_0

    :pswitch_1
    const-string p1, "0.69%,0.69%,30%,1.39%,2.78%,4.17%,0.66%,0.66%,1.97%,1.97%"

    .line 187
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    goto :goto_0

    .line 177
    :pswitch_2
    iput-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    goto :goto_0

    .line 171
    :pswitch_3
    iput-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    goto :goto_0

    :pswitch_4
    const-string p1, "0.69%,1.39%,30%,1.39%,4.17%,4.17%,0.66%,0.66%,1.97%,1.97%"

    .line 182
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    goto :goto_0

    .line 167
    :pswitch_5
    iput-object v1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    goto :goto_0

    .line 164
    :pswitch_6
    iput-object v1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-string p1, "0.69%,2.22%,30%,1.39%,4.17%,4.17%,1.05%,1.05%,1.97%,1.97%"

    .line 161
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getTspHeightPixel(III)I
    .locals 2

    mul-int/2addr p2, p1

    .line 504
    div-int/2addr p2, p0

    .line 505
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "getTspHeightPixel: init="

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " h="

    .line 508
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, " ret="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, "TspGripCommand"

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p2
.end method


# virtual methods
.method public final convertRatio(III)I
    .locals 0

    if-ge p2, p3, :cond_0

    mul-int/2addr p1, p2

    .line 549
    div-int/2addr p1, p3

    :cond_0
    return p1
.end method

.method public final convertToInt(IILjava/lang/String;I)I
    .locals 3

    .line 531
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 535
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    .line 537
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    int-to-float p0, p2

    .line 539
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    mul-float/2addr p0, p1

    .line 538
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    const-string/jumbo v2, "px"

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 541
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    int-to-float p2, p2

    mul-float/2addr p0, p2

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 544
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/TspGripCommand;->convertRatio(III)I

    move-result p0

    return p0
.end method

.method public final convertToIntHeight(Ljava/lang/String;)I
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget v1, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iget v0, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    const/16 v2, 0xa00

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final convertToIntLandscapeHeight(Ljava/lang/String;)I
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget v1, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iget v0, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    const/16 v2, 0x5a0

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final convertToIntWidth(Ljava/lang/String;)I
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget v1, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    iget v0, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    const/16 v2, 0x5a0

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I
    .locals 1

    const/4 v0, -0x1

    .line 492
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 494
    invoke-virtual {p0, v0, p5, p6}, Lcom/android/server/wm/TspGripCommand;->convertRatio(III)I

    move-result p0

    return p0

    .line 496
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 497
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return p3

    .line 500
    :cond_1
    invoke-virtual {p0, p4, p5, p1, p6}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getValueOf([Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 515
    aget-object p0, p1, p2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public parse(Lcom/android/server/wm/TspStateController$DeviceSize;Landroid/os/Bundle;)Z
    .locals 13

    if-eqz p2, :cond_6

    .line 230
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "deadzone_v3"

    .line 231
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TspGripCommand;->parseForV3(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "deadzone_v2"

    .line 237
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 242
    :cond_1
    iget v0, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    .line 243
    iget v1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    .line 244
    iget v10, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 245
    iget p1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    const-string v5, "dead_zone_port_x1"

    const/4 v6, -0x1

    const/16 v9, 0x5a0

    move-object v3, p0

    move-object v4, p2

    move v7, v0

    move v8, v10

    .line 247
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v11

    const-string v5, "dead_zone_port_x2"

    .line 249
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v3

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    if-ne v3, v12, :cond_2

    .line 252
    iput v11, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    goto :goto_0

    :cond_2
    if-eq v11, v12, :cond_3

    .line 254
    iput v11, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    :cond_3
    :goto_0
    if-eq v3, v12, :cond_4

    .line 257
    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    :cond_4
    const-string v5, "dead_zone_port_y1"

    .line 260
    iget v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    const/16 v9, 0xa00

    move-object v3, p0

    move-object v4, p2

    move v7, v1

    move v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    const-string v3, "dead_zone_port_real_y1"

    .line 263
    invoke-virtual {p2, v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v12, :cond_5

    .line 265
    invoke-static {v1, p1, v3}, Lcom/android/server/wm/TspGripCommand;->getTspHeightPixel(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    :cond_5
    const-string v5, "dead_zone_land_x1"

    .line 268
    iget v6, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    const/16 v9, 0x5a0

    move-object v3, p0

    move-object v4, p2

    move v7, v0

    move v8, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    const-string v5, "edge_zone_width"

    .line 270
    iget v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 272
    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const-string v5, "edge_zone_land"

    .line 273
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const-string v5, "edge_zone_port"

    .line 275
    iget v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    const/16 p2, 0x5a0

    const/16 v0, 0xa

    .line 278
    invoke-virtual {p0, v0, v10, p2}, Lcom/android/server/wm/TspGripCommand;->convertRatio(III)I

    move-result p2

    const/16 v1, 0xa00

    .line 279
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/TspGripCommand;->convertRatio(III)I

    move-result p1

    .line 278
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TspGripCommand;->setMinimumValue(II)V

    return v2

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 378
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z
    .locals 10

    .line 387
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    if-nez p2, :cond_0

    .line 388
    iget-object p2, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 390
    :cond_0
    iget v0, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    .line 391
    iget v1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 392
    iget p1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 394
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v3, "TspGripCommand"

    if-eqz v2, :cond_1

    .line 395
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "parse: command="

    .line 396
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " applyMin="

    .line 397
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_e

    const-string v2, ","

    .line 401
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 403
    array-length v2, p2

    const/16 v5, 0xa00

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-gt v2, v7, :cond_2

    .line 406
    :try_start_0
    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 407
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    goto/16 :goto_0

    .line 409
    :cond_2
    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    const/4 v4, 0x3

    if-lt v2, v4, :cond_3

    .line 413
    invoke-virtual {p0, p2, v7}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    .line 414
    invoke-virtual {p0, p2, v9}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 415
    invoke-virtual {p0, v8}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 416
    invoke-virtual {p0, v9}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    :cond_3
    const/4 v8, 0x4

    if-lt v2, v8, :cond_4

    .line 419
    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 420
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    :cond_4
    const/4 v4, 0x5

    if-lt v2, v4, :cond_5

    .line 423
    invoke-virtual {p0, p2, v8}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 424
    invoke-virtual {p0, v8}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 426
    :cond_5
    iget v8, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v8, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const/4 v8, 0x6

    if-lt v2, v8, :cond_6

    .line 428
    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    :cond_6
    const/4 v4, 0x7

    if-lt v2, v4, :cond_7

    .line 433
    invoke-virtual {p0, p2, v8}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 434
    invoke-virtual {p0, v8}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    :cond_7
    const/16 v8, 0x8

    if-lt v2, v8, :cond_8

    .line 438
    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    :cond_8
    const/16 v4, 0x9

    if-lt v2, v4, :cond_9

    .line 443
    invoke-virtual {p0, p2, v8}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 444
    invoke-virtual {p0, v8}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    :cond_9
    if-lt v2, v6, :cond_a

    .line 448
    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 449
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    .line 453
    :cond_a
    :goto_0
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    if-eqz p2, :cond_b

    .line 454
    iget p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    const-string p2, "100%"

    .line 455
    invoke-virtual {p0, v0, p1, p2, v5}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 458
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_b
    :goto_1
    if-eqz p3, :cond_c

    const/16 p2, 0x5a0

    .line 461
    invoke-virtual {p0, v6, v1, p2}, Lcom/android/server/wm/TspGripCommand;->convertRatio(III)I

    move-result p2

    .line 462
    invoke-virtual {p0, v6, p1, v5}, Lcom/android/server/wm/TspGripCommand;->convertRatio(III)I

    move-result p1

    .line 461
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TspGripCommand;->setMinimumValue(II)V

    .line 464
    :cond_c
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p1, :cond_d

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parse:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v7

    :cond_e
    return v4
.end method

.method public parseForV3(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;)Z
    .locals 7

    .line 286
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 288
    iget v0, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 289
    iget p1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 291
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v2, "TspGripCommand"

    if-eqz v1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "parseForV3: command="

    .line 293
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " applyMin=true"

    .line 294
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_c

    const-string v1, ","

    .line 298
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 300
    array-length v1, p2

    const/4 v4, 0x1

    .line 302
    :try_start_0
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "100%"

    const/4 v5, 0x3

    if-lt v1, v5, :cond_1

    .line 306
    :try_start_1
    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 307
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    const/4 v6, 0x2

    .line 308
    invoke-virtual {p0, p2, v6}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    :goto_0
    const/4 v6, 0x5

    if-lt v1, v6, :cond_2

    .line 315
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    const/4 v3, 0x4

    .line 317
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v3

    .line 319
    iget v5, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    if-lt v3, v5, :cond_3

    .line 320
    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    :cond_3
    :goto_1
    const/4 v3, 0x6

    if-lt v1, v3, :cond_4

    .line 327
    invoke-virtual {p0, p2, v6}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    :cond_4
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    .line 332
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 335
    :cond_5
    iget v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const/16 v3, 0x8

    if-lt v1, v3, :cond_6

    .line 338
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    :cond_6
    const/16 v5, 0x9

    if-lt v1, v5, :cond_7

    .line 343
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    :cond_7
    const/16 v3, 0xa

    if-lt v1, v3, :cond_8

    .line 348
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 349
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    :cond_8
    const/16 v5, 0xb

    if-lt v1, v5, :cond_9

    .line 353
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 354
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    :cond_9
    const/16 v6, 0xc

    if-lt v1, v6, :cond_a

    .line 358
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/TspGripCommand;->getValueOf([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 359
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    :cond_a
    const/16 p2, 0x5a0

    .line 362
    invoke-virtual {p0, v3, v0, p2}, Lcom/android/server/wm/TspGripCommand;->convertRatio(III)I

    move-result p2

    const/16 v0, 0xa00

    .line 363
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/wm/TspGripCommand;->convertRatio(III)I

    move-result p1

    .line 362
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TspGripCommand;->setMinimumValue(II)V

    .line 365
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p1, :cond_b

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parse:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 369
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_b
    :goto_2
    return v4

    :cond_c
    return v3
.end method

.method public reset()V
    .locals 2

    const/16 v0, 0xa

    .line 202
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    const/16 v1, 0x20

    .line 203
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 204
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    const/16 v1, 0x300

    .line 205
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    const/16 v1, 0xa00

    .line 206
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    .line 207
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    const/16 v0, 0x3c

    .line 208
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 209
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    .line 212
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    .line 213
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    .line 214
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    return-void
.end method

.method public reset3rdParty()V
    .locals 2

    const/16 v0, 0xa

    .line 218
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 219
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 220
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    const/4 v1, 0x0

    .line 221
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    .line 222
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    .line 223
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    const/16 v0, 0x28

    .line 224
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 225
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    return-void
.end method

.method public set(Lcom/android/server/wm/TspGripCommand;)V
    .locals 1

    .line 474
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 475
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 476
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    .line 477
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    .line 478
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    if-eqz v0, :cond_0

    .line 479
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    .line 480
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    .line 482
    :cond_0
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 483
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    .line 484
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    .line 485
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    .line 486
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    .line 487
    iget p1, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    return-void
.end method

.method public final setMinimumValue(II)V
    .locals 0

    .line 555
    iget p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    if-ge p2, p1, :cond_0

    .line 556
    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 558
    :cond_0
    iget p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    if-ge p2, p1, :cond_1

    .line 559
    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 561
    :cond_1
    iget p2, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    if-ge p2, p1, :cond_2

    .line 562
    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "portX1="

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portX2="

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portX3="

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portY1="

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portY2="

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", landX1="

    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portEdge="

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", landEdge="

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLandTopRejectWidth="

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLandBottomRejectWidth="

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLandTopGripWidth="

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLandBottomGripWidth="

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
