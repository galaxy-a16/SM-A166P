.class public Lcom/android/server/power/stats/EnergyConsumerSnapshot;
.super Ljava/lang/Object;
.source "EnergyConsumerSnapshot.java"


# instance fields
.field public final mAttributionSnapshots:Landroid/util/SparseArray;

.field public mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

.field public final mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

.field public final mEnergyConsumers:Landroid/util/SparseArray;

.field public final mNumCpuClusterOrdinals:I

.field public final mNumDisplayOrdinals:I

.field public final mNumOtherOrdinals:I

.field public final mVoltageSnapshots:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    .line 97
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    const/4 v0, 0x2

    .line 99
    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumCpuClusterOrdinals:I

    const/4 v0, 0x3

    .line 101
    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumDisplayOrdinals:I

    const/4 v0, 0x0

    .line 102
    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    return-void
.end method

.method public static calculateNumOrdinals(ILandroid/util/SparseArray;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 412
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 414
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/EnergyConsumer;

    .line 415
    iget-byte v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v3, p0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public final calculateChargeConsumedUC(JI)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 424
    div-int/lit8 p0, p3, 0x2

    int-to-long v0, p0

    add-long/2addr p1, v0

    int-to-long v0, p3

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final createEnergyConsumerDetails()Landroid/os/BatteryStats$EnergyConsumerDetails;
    .locals 11

    .line 487
    new-instance v0, Landroid/os/BatteryStats$EnergyConsumerDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$EnergyConsumerDetails;-><init>()V

    .line 488
    iget-object v1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    .line 489
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    iput-object v1, v0, Landroid/os/BatteryStats$EnergyConsumerDetails;->consumers:[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    const/4 v1, 0x0

    move v2, v1

    .line 490
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 491
    iget-object v3, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/EnergyConsumer;

    .line 492
    new-instance v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    invoke-direct {v4}, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;-><init>()V

    .line 494
    iget-byte v5, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    iput v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->type:I

    .line 495
    iget v6, v3, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    iput v6, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->ordinal:I

    packed-switch v5, :pswitch_data_0

    const-string v5, "UNKNOWN"

    .line 519
    iput-object v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const-string v5, "WIFI"

    .line 513
    iput-object v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const-string v5, "MOBILE_RADIO"

    .line 510
    iput-object v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string v5, "GNSS"

    .line 507
    iput-object v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    const-string v5, "DISPLAY"

    .line 504
    iput-object v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    const-string v5, "CPU"

    .line 501
    iput-object v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    const-string v5, "BLUETOOTH"

    .line 498
    iput-object v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    goto :goto_1

    .line 516
    :pswitch_6
    iget-object v5, v3, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->sanitizeCustomBucketName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    .line 522
    :goto_1
    iget v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->type:I

    if-eqz v5, :cond_3

    .line 523
    iget v5, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->ordinal:I

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_2

    :cond_0
    move v5, v1

    :goto_2
    if-nez v5, :cond_2

    move v7, v1

    .line 526
    :goto_3
    iget-object v8, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 527
    iget-object v8, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/power/stats/EnergyConsumer;

    .line 528
    iget-byte v9, v8, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    iget v10, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->type:I

    if-ne v9, v10, :cond_1

    iget v8, v8, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v8, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    move v6, v5

    :goto_4
    if-eqz v6, :cond_3

    .line 535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->name:Ljava/lang/String;

    .line 538
    :cond_3
    iget-object v3, v0, Landroid/os/BatteryStats$EnergyConsumerDetails;->consumers:[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 541
    :cond_4
    iget-object p0, v0, Landroid/os/BatteryStats$EnergyConsumerDetails;->consumers:[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    array-length p0, p0

    new-array p0, p0, [J

    iput-object p0, v0, Landroid/os/BatteryStats$EnergyConsumerDetails;->chargeUC:[J

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEnergyConsumerDetails(Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;)Landroid/os/BatteryStats$EnergyConsumerDetails;
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->createEnergyConsumerDetails()Landroid/os/BatteryStats$EnergyConsumerDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iget-object v0, v0, Landroid/os/BatteryStats$EnergyConsumerDetails;->chargeUC:[J

    const/4 v1, 0x0

    .line 438
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iget-object v3, v2, Landroid/os/BatteryStats$EnergyConsumerDetails;->consumers:[Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 439
    aget-object v2, v3, v1

    .line 441
    iget v3, v2, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->type:I

    const-wide/16 v4, -0x1

    packed-switch v3, :pswitch_data_0

    .line 479
    aput-wide v4, v0, v1

    goto :goto_1

    .line 469
    :pswitch_0
    iget-wide v2, p1, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    aput-wide v2, v0, v1

    goto :goto_1

    .line 466
    :pswitch_1
    iget-wide v2, p1, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    aput-wide v2, v0, v1

    goto :goto_1

    .line 463
    :pswitch_2
    iget-wide v2, p1, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    aput-wide v2, v0, v1

    goto :goto_1

    .line 460
    :pswitch_3
    iget-wide v2, p1, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    aput-wide v2, v0, v1

    goto :goto_1

    .line 453
    :pswitch_4
    iget-object v3, p1, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    if-eqz v3, :cond_1

    .line 454
    iget v2, v2, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->ordinal:I

    aget-wide v2, v3, v2

    aput-wide v2, v0, v1

    goto :goto_1

    .line 456
    :cond_1
    aput-wide v4, v0, v1

    goto :goto_1

    .line 446
    :pswitch_5
    iget-object v3, p1, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    if-eqz v3, :cond_2

    .line 447
    iget v2, v2, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->ordinal:I

    aget-wide v2, v3, v2

    aput-wide v2, v0, v1

    goto :goto_1

    .line 449
    :cond_2
    aput-wide v4, v0, v1

    goto :goto_1

    .line 443
    :pswitch_6
    iget-wide v2, p1, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    aput-wide v2, v0, v1

    goto :goto_1

    .line 472
    :pswitch_7
    iget-object v3, p1, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    if-eqz v3, :cond_3

    .line 473
    iget v2, v2, Landroid/os/BatteryStats$EnergyConsumerDetails$EnergyConsumer;->ordinal:I

    aget-wide v2, v3, v2

    aput-wide v2, v0, v1

    goto :goto_1

    .line 475
    :cond_3
    aput-wide v4, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOtherOrdinalNames()[Ljava/lang/String;
    .locals 6

    .line 378
    iget v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    new-array v0, v0, [Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 382
    iget-object v4, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/power/stats/EnergyConsumer;

    .line 383
    iget-byte v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-nez v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 384
    iget-object v4, v4, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->sanitizeCustomBucketName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final sanitizeCustomBucketName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 394
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 395
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-char v2, p1, v1

    .line 396
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x20

    .line 397
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 398
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x5f

    .line 399
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 401
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 176
    array-length v4, v1

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v4, "EnergyConsumerSnapshot"

    if-gtz v2, :cond_1

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected battery voltage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mV) when taking energy consumer snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 186
    :cond_1
    new-instance v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;

    invoke-direct {v5}, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;-><init>()V

    .line 188
    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_a

    aget-object v8, v1, v7

    .line 190
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 191
    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 192
    iget-object v8, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 195
    iget-object v12, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/power/stats/EnergyConsumer;

    if-nez v12, :cond_2

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateAndGetDelta given invalid consumerId "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v6

    move/from16 v19, v7

    move-object v6, v4

    goto/16 :goto_4

    .line 200
    :cond_2
    iget-byte v13, v12, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 201
    iget v14, v12, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 204
    iget-object v15, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    move-object/from16 v16, v4

    const-wide/16 v3, -0x1

    invoke-virtual {v15, v9, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    .line 205
    iget-object v15, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    .line 206
    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 207
    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int v1, v15, v2

    add-int/lit8 v1, v1, 0x1

    .line 209
    div-int/lit8 v1, v1, 0x2

    .line 211
    invoke-virtual {v0, v12, v8, v1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDeltaForTypeOther(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumerAttribution;I)Landroid/util/SparseLongArray;

    move-result-object v8

    const-wide/16 v17, 0x0

    cmp-long v9, v3, v17

    if-gez v9, :cond_3

    :goto_1
    move v9, v6

    move/from16 v19, v7

    :goto_2
    move-object/from16 v6, v16

    goto/16 :goto_4

    :cond_3
    cmp-long v9, v10, v3

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    move v9, v6

    move/from16 v19, v7

    sub-long v6, v10, v3

    cmp-long v17, v6, v17

    if-ltz v17, :cond_9

    if-gtz v15, :cond_5

    goto/16 :goto_3

    .line 230
    :cond_5
    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateChargeConsumedUC(JI)J

    move-result-wide v3

    packed-switch v13, :pswitch_data_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring consumer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of unknown type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v16

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 263
    :pswitch_0
    iput-wide v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    goto :goto_2

    .line 259
    :pswitch_1
    iput-wide v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    goto :goto_2

    .line 255
    :pswitch_2
    iput-wide v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    goto :goto_2

    .line 251
    :pswitch_3
    iput-wide v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    goto :goto_2

    .line 244
    :pswitch_4
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    if-nez v1, :cond_6

    .line 245
    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumDisplayOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    .line 247
    :cond_6
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    aput-wide v3, v1, v14

    goto :goto_2

    .line 237
    :pswitch_5
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    if-nez v1, :cond_7

    .line 238
    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumCpuClusterOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 240
    :cond_7
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    aput-wide v3, v1, v14

    goto :goto_2

    .line 233
    :pswitch_6
    iput-wide v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    goto :goto_2

    .line 267
    :pswitch_7
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    if-nez v1, :cond_8

    .line 268
    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    new-array v6, v1, [J

    iput-object v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 269
    new-array v1, v1, [Landroid/util/SparseLongArray;

    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    .line 271
    :cond_8
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    aput-wide v3, v1, v14

    .line 272
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aput-object v8, v1, v14

    goto/16 :goto_2

    :cond_9
    :goto_3
    move-object/from16 v6, v16

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad data! EnergyConsumer "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": new energy ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ") < old energy ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), new voltage ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), old voltage ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "). Skipping. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v1, p1

    move-object v4, v6

    move v6, v9

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_a
    return-object v5

    :cond_b
    :goto_5
    move-object v0, v3

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateAndGetDeltaForTypeOther(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumerAttribution;I)Landroid/util/SparseLongArray;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 302
    iget-byte v3, v1, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    const/4 v3, 0x0

    if-nez p2, :cond_1

    new-array v5, v3, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    goto :goto_0

    :cond_1
    move-object/from16 v5, p2

    .line 311
    :goto_0
    iget-object v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    iget v7, v1, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseLongArray;

    if-nez v6, :cond_3

    .line 315
    new-instance v2, Landroid/util/SparseLongArray;

    array-length v6, v5

    invoke-direct {v2, v6}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 316
    iget-object v0, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    iget v1, v1, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    array-length v0, v5

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v1, v5, v3

    .line 318
    iget v6, v1, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    iget-wide v7, v1, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v2, v6, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v4

    .line 324
    :cond_3
    new-instance v4, Landroid/util/SparseLongArray;

    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    .line 326
    array-length v7, v5

    :goto_2
    if-ge v3, v7, :cond_8

    aget-object v8, v5, v3

    .line 327
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    .line 328
    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    const-wide/16 v12, 0x0

    .line 330
    invoke-virtual {v6, v9, v12, v13}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v14

    .line 331
    invoke-virtual {v6, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    cmp-long v8, v14, v12

    if-gez v8, :cond_4

    :goto_3
    move-object v8, v5

    move-object/from16 p2, v6

    goto :goto_5

    :cond_4
    cmp-long v8, v10, v14

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    move-object v8, v5

    move-object/from16 p2, v6

    sub-long v5, v10, v14

    cmp-long v12, v5, v12

    if-ltz v12, :cond_7

    if-gtz v2, :cond_6

    goto :goto_4

    .line 344
    :cond_6
    invoke-virtual {v0, v5, v6, v2}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateChargeConsumedUC(JI)J

    move-result-wide v5

    .line 345
    invoke-virtual {v4, v9, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_5

    .line 338
    :cond_7
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnergyConsumer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": new energy ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") but old energy ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "). Average voltage ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")Skipping. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EnergyConsumerSnapshot"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, p2

    move-object v5, v8

    goto :goto_2

    :cond_8
    return-object v4
.end method
