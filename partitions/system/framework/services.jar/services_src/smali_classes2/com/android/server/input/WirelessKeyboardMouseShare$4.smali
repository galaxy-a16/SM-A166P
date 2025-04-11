.class public Lcom/android/server/input/WirelessKeyboardMouseShare$4;
.super Landroid/bluetooth/BluetoothHidDevice$Callback;
.source "WirelessKeyboardMouseShare.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    const-string v0, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppStatusChanged: pluggedDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " registered="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setToLocalTablet(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const/4 v0, 0x6

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 10

    const-string v0, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionStateChanged: device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_1

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne p2, v1, :cond_4

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAddIndex(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getFirstEmptySlot()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmAddIndex(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    :cond_2
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAddIndex(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v5

    invoke-static {v4, p1, v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$maddPairedDevicesListLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v4

    if-nez v4, :cond_5

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mdisconnectBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmFocusedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mexistBluetoothDeviceLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmFocusedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    move v4, v3

    :cond_5
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v5, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    const/4 v5, 0x6

    const/16 v6, 0xb

    const/4 v7, 0x1

    if-ne p2, v1, :cond_9

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmLastestConnectedName(Lcom/android/server/input/WirelessKeyboardMouseShare;Ljava/lang/String;)V

    const-string v2, "WirelessKeyboardMouseShare"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mPluggedDevice is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmFocusedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v8}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v7

    goto :goto_1

    :cond_7
    move v8, v3

    :goto_1
    invoke-virtual {v2, v5, v8, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    if-ne v4, v1, :cond_8

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v7}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmFinishNewDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    :cond_8
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmUnregisterWhenConnectionFail(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4

    :cond_9
    if-nez p2, :cond_f

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result v4

    if-eq v4, v7, :cond_a

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmKeyboard(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->clear(Z)V

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmMouse(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    :cond_a
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmDisconnectWithoutUnregister(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()Z

    goto :goto_2

    :cond_b
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4, v7}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmUnregisterWhenConnectionFail(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object v6

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d
    :goto_2
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmDisconnectWithoutUnregister(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4, v7}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v7

    goto :goto_3

    :cond_e
    move v4, v3

    :goto_3
    invoke-virtual {v2, v5, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    :cond_f
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v7}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmProtocol(Lcom/android/server/input/WirelessKeyboardMouseShare;B)V

    :cond_10
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IFW_WIRELESS_KEYBOARD_SA_LOGGING:Z

    if-eqz v0, :cond_13

    if-ne p2, v1, :cond_13

    move p2, v7

    :goto_5
    const/4 v0, 0x3

    if-gt p2, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPairedDevices(Lcom/android/server/input/WirelessKeyboardMouseShare;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_12

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmLogInfos(Lcom/android/server/input/WirelessKeyboardMouseShare;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmLogInfos(Lcom/android/server/input/WirelessKeyboardMouseShare;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmLogInfos(Lcom/android/server/input/WirelessKeyboardMouseShare;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_11
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmLogInfos(Lcom/android/server/input/WirelessKeyboardMouseShare;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_13
    :goto_6
    return-void

    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_0
    const-string p4, "WirelessKeyboardMouseShare"

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    if-eq p3, v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onGetReport(), output report for invalid id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmOutputReportCache(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    if-nez p2, :cond_3

    const/16 p2, 0x8

    new-array v0, p2, [B

    const-string v1, "get_report id for keyboard"

    invoke-static {p4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    move v1, p4

    :goto_0
    if-ge v1, p2, :cond_2

    aput-byte p4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    invoke-virtual {p0, p1, v2, p3, v0}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    iget-object p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    invoke-virtual {p0, p1, v2, p3, p2}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_1

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGetReport(), unsupported report type = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    :goto_1
    return-void
.end method

.method public onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "intr data: reportId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WirelessKeyboardMouseShare"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "protocol set to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WirelessKeyboardMouseShare"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmProtocol(Lcom/android/server/input/WirelessKeyboardMouseShare;B)V

    return-void
.end method

.method public onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .locals 3

    const-string v0, "WirelessKeyboardMouseShare"

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onSetReport(), unsupported report type = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eq p3, p2, :cond_2

    if-ne p3, v1, :cond_1

    const-string/jumbo p2, "onSetReport(), mouse report id, sending successful handshake for set report"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo v0, "onVirtualCableUnplug mPluggedDevice is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
