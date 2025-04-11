.class final enum Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
.super Ljava/lang/Enum;
.source "BluetoothDeviceBatteryManager.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;


# instance fields
.field private final index:I


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .locals 3

    .line 65
    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    sget-object v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    sget-object v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const-string v1, "CHARGE_STATE_DISCHARGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 67
    new-instance v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const-string v1, "CHARGE_STATE_WIRED_CHARGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 68
    new-instance v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const-string v1, "CHARGE_STATE_WIRELESS_CHARGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 65
    invoke-static {}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->$values()[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->$VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .locals 1

    .line 65
    const-class v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .locals 1

    .line 65
    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->$VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object v0
.end method
