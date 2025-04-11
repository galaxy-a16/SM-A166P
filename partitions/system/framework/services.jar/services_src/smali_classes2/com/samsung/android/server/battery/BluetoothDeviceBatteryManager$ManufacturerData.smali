.class public Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;
.super Ljava/lang/Object;
.source "BluetoothDeviceBatteryManager.java"


# instance fields
.field public MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

.field public MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

.field public MANUFACTURER_LENGTH_SS_LE_DEVICE:I

.field public MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

.field public MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

.field public MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

.field public MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

.field public MANUFACTURER_OFFSET_OLD_SAMSUNG_GALAXY_WATCH_DEVICE_TYPE:I

.field public MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

.field public MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

.field public MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

.field public MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field public MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field public MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

.field public MANUFACTURER_OFFSET_SS_LE_FEATURES:I

.field public MANUFACTURER_OFFSET_SS_SERVICE_ID:I

.field public mDeviceId:[B

.field public mManufacturerRawData:[B

.field public mManufacturerType:I


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 544
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    const/4 v1, 0x7

    .line 545
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    const/16 v2, 0xa

    .line 546
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    const/16 v2, 0xd

    .line 547
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_SAMSUNG_GALAXY_WATCH_DEVICE_TYPE:I

    .line 548
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    .line 549
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    const/16 v1, 0x1f

    .line 550
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    const/4 v1, 0x1

    .line 551
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    const/16 v2, 0x8

    .line 552
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    .line 553
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 554
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    .line 556
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    const/4 v1, 0x2

    .line 557
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    const/4 v2, 0x6

    .line 558
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    const/16 v2, 0x12

    .line 559
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    .line 560
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    const/4 v0, 0x0

    .line 562
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    const/4 v0, 0x0

    .line 563
    iput-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    new-array v0, v1, [B

    .line 564
    iput-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    .line 567
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setManufacturerRawData([B)V

    .line 568
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setManufacturerType([B)V

    .line 569
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setDeviceId([B)V

    return-void
.end method


# virtual methods
.method public getDeviceId()[B
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    return-object p0
.end method

.method public getManufacturerType()I
    .locals 0

    .line 622
    iget p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    return p0
.end method

.method public final isSupportFeature(B)Z
    .locals 2

    .line 679
    :try_start_0
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    if-eqz v0, :cond_1

    .line 682
    iget p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportFeature exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothDeviceBatteryManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setDeviceId([B)V
    .locals 4

    .line 578
    :try_start_0
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 580
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 581
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setDeviceId([BI)V

    goto :goto_0

    .line 595
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v1, p1, v0

    and-int/2addr v1, v2

    if-lez v1, :cond_4

    .line 597
    array-length v2, p1

    add-int/2addr v1, v0

    if-le v2, v1, :cond_4

    .line 600
    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setDeviceId([BI)V

    goto :goto_0

    .line 586
    :cond_2
    array-length v0, p1

    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_SAMSUNG_GALAXY_WATCH_DEVICE_TYPE:I

    add-int/lit8 v3, v1, 0x2

    if-lt v0, v3, :cond_3

    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 589
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setDeviceId([BI)V

    goto :goto_0

    .line 591
    :cond_3
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setDeviceId([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDeviceId exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothDeviceBatteryManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public final setDeviceId([BI)V
    .locals 2

    .line 700
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final setManufacturerRawData([B)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    return-void
.end method

.method public final setManufacturerType([B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 626
    array-length v1, p1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    .line 631
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    aget-byte v3, p1, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    add-int/2addr v1, v5

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_1

    .line 634
    iput v5, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    goto :goto_3

    .line 635
    :cond_1
    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_2

    iget v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v3, p1, v3

    if-nez v3, :cond_2

    .line 638
    iput v4, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    goto :goto_3

    :cond_2
    if-ne v1, v2, :cond_8

    .line 639
    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_8

    const/4 v1, 0x3

    .line 642
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    .line 645
    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte v2, p1, v1

    add-int/2addr v1, v5

    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_9

    shl-int v3, v5, v0

    int-to-byte v3, v3

    and-int/2addr v3, v2

    int-to-byte v3, v3

    if-eq v3, v5, :cond_7

    if-eq v3, v4, :cond_6

    const/4 v6, 0x4

    if-eq v3, v6, :cond_5

    const/16 v6, 0x8

    if-eq v3, v6, :cond_4

    const/16 v6, 0x10

    if-eq v3, v6, :cond_3

    goto :goto_2

    .line 665
    :cond_3
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 666
    aget-byte v3, p1, v1

    add-int/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    goto :goto_1

    .line 662
    :cond_4
    iget v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    goto :goto_1

    .line 659
    :cond_5
    iget v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    goto :goto_1

    .line 656
    :cond_6
    iget v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    goto :goto_1

    .line 653
    :cond_7
    iget v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    :goto_1
    add-int/2addr v1, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_8
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    :cond_9
    :goto_3
    return-void

    .line 627
    :cond_a
    :goto_4
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    return-void
.end method
