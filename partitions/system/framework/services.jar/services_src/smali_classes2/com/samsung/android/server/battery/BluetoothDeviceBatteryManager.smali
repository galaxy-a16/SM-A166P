.class public Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;
.super Ljava/lang/Object;
.source "BluetoothDeviceBatteryManager.java"


# instance fields
.field public mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetChangeType(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;[B)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getChangeType([B)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleBatteryLevelChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->handleBatteryLevelChanged(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDeviceNameChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->handleDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMetaDataChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->handleMetaDataChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->printDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const-string v5, "0123456789abcdef"

    .line 90
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    const-string v0, "BluetoothDeviceBatteryManager"

    const/4 v1, 0x1

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object p0

    .line 108
    new-instance v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;-><init>([B)V

    .line 109
    invoke-virtual {v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->getManufacturerType()I

    move-result p0

    .line 110
    invoke-virtual {v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->getDeviceId()[B

    move-result-object v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ManufacturerType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceId : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->byteToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    .line 116
    aget-byte p0, v2, p0

    if-ne p0, v1, :cond_0

    aget-byte v2, v2, v1

    if-ne v2, v1, :cond_0

    const-string p0, "Type R170"

    .line 118
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb

    return p0

    :cond_0
    const/4 v2, 0x3

    if-eq p0, v1, :cond_1

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    if-ne p0, v2, :cond_2

    :cond_1
    const-string p0, "Type Buds"

    .line 123
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceType exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public static intToBytes(I)[B
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    .line 99
    aput-byte v3, v1, v2

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static printDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# Alias("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") / Address("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceBatteryManager"

    .line 135
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# BatteryLevel : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I
    .locals 0

    .line 152
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 154
    :cond_0
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public final createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 1

    .line 141
    new-instance p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-direct {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setAddress(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    .line 145
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    return-object p0
.end method

.method public final decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .locals 1

    and-int/lit16 p0, p1, 0xf0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 283
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    .line 287
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0

    :cond_1
    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    const-string p0, "BluetoothDeviceBatteryManager"

    const-string p1, "CHARGE_STATE_WIRELESS_CHARGE"

    .line 289
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0

    .line 292
    :cond_2
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0
.end method

.method public final getChangeType([B)I
    .locals 9

    const-string p0, "BluetoothDeviceBatteryManager"

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 341
    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    .line 347
    :cond_0
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const v3, 0xffff

    and-int/2addr v1, v3

    const/16 v4, 0x100

    const/4 v5, 0x3

    if-eq v1, v4, :cond_1

    move v1, v0

    move v4, v1

    move v6, v4

    .line 355
    :goto_0
    :try_start_0
    array-length v7, p1

    if-ge v1, v7, :cond_2

    .line 356
    aget-byte v7, p1, v1

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    and-int/2addr v7, v3

    add-int/lit8 v8, v1, 0x2

    .line 357
    aget-byte v8, p1, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v8, v5

    add-int/2addr v1, v8

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    move v6, v2

    goto :goto_0

    :pswitch_1
    move v4, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChangeType exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v4, v0

    move v6, v4

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    return v5

    :cond_3
    if-eqz v4, :cond_4

    return v2

    :cond_4
    if-eqz v6, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    return v0

    :cond_6
    :goto_2
    const-string/jumbo p1, "parseSupportedFeatures :: DataPacket is too short."

    .line 342
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x208
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x228
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final handleBatteryLevelChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    .line 310
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v0

    if-ltz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "type : "

    const-string v2, "BluetoothDeviceBatteryManager"

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 315
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 322
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 323
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    .line 329
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p1

    .line 333
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    goto :goto_0

    .line 336
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final handleDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 300
    iget-object v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 301
    invoke-interface {v1, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v1

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / alias : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BluetoothDeviceBatteryManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    .line 305
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    :cond_0
    return-void
.end method

.method public final handleMetaDataChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6

    .line 392
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "type : "

    const-string v2, "level : "

    const/4 v3, 0x3

    const-string v4, "BluetoothDeviceBatteryManager"

    if-eqz v0, :cond_5

    .line 393
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 394
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 396
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ne p2, v3, :cond_1

    .line 401
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 403
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 405
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 407
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcast : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    if-gez v1, :cond_4

    .line 410
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_8

    .line 412
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    goto :goto_1

    .line 415
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-eq p2, v3, :cond_6

    .line 417
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 420
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p2

    .line 421
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v0

    if-gez v0, :cond_7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v0

    if-ltz v0, :cond_7

    .line 424
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 426
    :cond_7
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result p1

    if-ltz p1, :cond_8

    .line 427
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 1

    .line 267
    invoke-static {p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->intToBytes(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    const-string p1, "BluetoothDeviceBatteryManager"

    if-eqz p0, :cond_0

    .line 268
    array-length p2, p0

    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    .line 269
    aget-byte p0, p0, v0

    .line 270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "parsedData : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "parsedData error"

    .line 272
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final setBudsBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/16 v0, 0x208

    .line 169
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Left Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDeviceBatteryManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x209

    .line 171
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Right Level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x20a

    .line 173
    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Cradle Level: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_0

    move p2, v0

    move v0, v1

    goto :goto_2

    :cond_0
    if-gez v1, :cond_1

    move p2, v0

    goto :goto_2

    :cond_1
    sub-int p2, v0, v1

    if-lez p2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 187
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v3, 0xf

    if-gt p2, v3, :cond_3

    const/4 v0, -0x1

    move p2, v0

    move v1, p2

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    move v0, v2

    .line 193
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 194
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelLeft()I

    move-result v2

    if-ne v2, p2, :cond_5

    .line 195
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelRight()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 196
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelCradle()I

    move-result v2

    if-eq v2, p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    goto :goto_4

    .line 198
    :cond_5
    :goto_3
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 199
    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelLeft(I)V

    .line 200
    invoke-virtual {p1, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelRight(I)V

    .line 201
    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelCradle(I)V

    const/4 p0, 0x1

    :goto_4
    return p0
.end method

.method public final setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    const/16 v0, 0x11a

    .line 215
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Charge Feature :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDeviceBatteryManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/16 v0, 0x228

    .line 220
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Left Charging: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/16 v1, 0x229

    .line 226
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 228
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object v1

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Right Charging : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const/16 v4, 0x22a

    .line 232
    invoke-virtual {p0, p2, v4}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p2

    if-ltz p2, :cond_2

    .line 234
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object p2

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Cradle Charging : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v3

    goto :goto_2

    :cond_3
    move p0, v3

    move v0, p0

    move v1, v0

    .line 240
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    move-result p2

    if-ne p2, v3, :cond_5

    .line 241
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusLeft()I

    move-result p2

    if-ne p2, v0, :cond_5

    .line 242
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusRight()I

    move-result p2

    if-ne p2, v1, :cond_5

    .line 243
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusCradle()I

    move-result p2

    if-eq p2, p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 245
    :cond_5
    :goto_3
    invoke-virtual {p1, v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    .line 246
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusLeft(I)V

    .line 247
    invoke-virtual {p1, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusRight(I)V

    .line 248
    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusCradle(I)V

    :goto_4
    return v3
.end method

.method public systemServicesReady()V
    .locals 4

    .line 434
    const-class v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 435
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    iput-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 437
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 438
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 439
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 443
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
