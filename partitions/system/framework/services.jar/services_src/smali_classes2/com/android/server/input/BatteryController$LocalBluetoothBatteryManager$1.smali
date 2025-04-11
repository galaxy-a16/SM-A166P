.class public Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "android.bluetooth.device.extra.BATTERY_LEVEL"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    invoke-static {v0}, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->-$$Nest$fgetmBroadcastReceiver(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    invoke-static {v1}, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->-$$Nest$fgetmRegisteredListener(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    invoke-static {p0}, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->-$$Nest$fgetmRegisteredListener(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, v2, p1, p2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;->onBluetoothBatteryChanged(JLjava/lang/String;I)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
