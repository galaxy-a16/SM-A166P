.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1469
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 0

    .line 1564
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 1

    or-int/lit8 p1, p1, 0x26

    .line 1575
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    or-int/lit16 p0, p1, 0x818

    goto :goto_0

    :cond_0
    and-int/lit16 p0, p1, -0x819

    :goto_0
    return p0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-ne v3, v5, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    const/4 v8, -0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    goto :goto_3

    .line 1547
    :cond_2
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_3

    move v7, v2

    :goto_2
    move v10, v4

    goto :goto_5

    :cond_3
    :goto_3
    move v7, v2

    :goto_4
    move v10, v8

    goto :goto_5

    :cond_4
    if-eqz v6, :cond_6

    .line 1536
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v4, :cond_5

    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v8

    goto :goto_2

    :cond_6
    move v7, v3

    goto :goto_4

    :goto_5
    if-eq v10, v8, :cond_7

    .line 1553
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v11, 0x0

    const-string/jumbo v12, "ringerModeExternal"

    const/4 v14, 0x0

    const/16 v15, 0x3e8

    const/16 v16, 0x1

    move-object/from16 v13, p3

    invoke-static/range {v9 .. v16}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    :cond_7
    move-object/from16 v0, p3

    .line 1557
    invoke-static {v1, v2, v0, v3, v7}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    return v7
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 1482
    :goto_0
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v8, :cond_1

    if-ne v8, v5, :cond_2

    iget-object v7, v7, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1484
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1487
    :cond_1
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    :cond_2
    const/4 v7, -0x1

    if-eqz v2, :cond_5

    const/4 v8, 0x2

    if-eq v2, v5, :cond_3

    if-eq v2, v8, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    if-nez v1, :cond_4

    .line 1501
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v10, v9, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v10, v8, :cond_7

    const/4 v8, 0x3

    if-eq v10, v8, :cond_7

    if-ne v10, v5, :cond_4

    iget-object v5, v9, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1505
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 1508
    :cond_4
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_8

    move v5, v4

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_8

    move-object/from16 v4, p5

    .line 1492
    iget-boolean v4, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v4, :cond_8

    .line 1493
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    move v5, v7

    .line 1496
    :goto_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    move v4, v5

    :cond_7
    :goto_2
    move v5, v2

    goto :goto_5

    :cond_8
    :goto_3
    move v5, v2

    :goto_4
    move v4, v7

    :goto_5
    if-eq v4, v7, :cond_9

    .line 1515
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v11, 0x0

    const-string/jumbo v12, "ringerModeInternal"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e8

    const/16 v16, 0x1

    move v10, v4

    invoke-static/range {v9 .. v16}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    :cond_9
    if-nez v6, :cond_a

    if-ne v4, v7, :cond_a

    if-eq v3, v5, :cond_b

    :cond_a
    move-object/from16 v0, p3

    .line 1519
    invoke-static {v1, v2, v0, v3, v5}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    :cond_b
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "ZenModeHelper"

    return-object p0
.end method
