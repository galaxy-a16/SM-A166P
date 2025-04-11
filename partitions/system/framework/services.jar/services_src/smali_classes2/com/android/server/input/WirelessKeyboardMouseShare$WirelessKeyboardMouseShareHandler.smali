.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;
.super Landroid/os/Handler;
.source "WirelessKeyboardMouseShare.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "WirelessKeyboardMouseShare"

    const-string/jumbo v3, "unregister by MESSAGE_NEED_HOST_ROLE message"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmUnregisterWhenConnectionFail(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()Z

    :cond_0
    monitor-exit v1

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "WirelessKeyboardMouseShare"

    const-string/jumbo v3, "startHIDDeviceByKey need to turn on bt."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmNeedToTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    monitor-exit v1

    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmNeedNoti(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    monitor-exit v1

    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v2

    if-ge v2, v3, :cond_3

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmNeedNotiTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    :cond_3
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()Z

    monitor-exit v1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_2
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmNextConnectedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v2

    if-ge v2, v3, :cond_5

    const-string v2, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "will connect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmNextConnectedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmNextConnectedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0, v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v2

    if-le v2, v4, :cond_8

    const-string v2, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retry count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()Z

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0, v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v2, v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    const-string v2, "WirelessKeyboardMouseShare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retry connect "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v2

    if-ge v2, v3, :cond_7

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmNextConnectedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :cond_7
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0, v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    :cond_8
    :goto_1
    monitor-exit v1

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_3
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendReadyToConnectIntent()V

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendWirelessKeyboardShareStatus()V

    goto/16 :goto_5

    :pswitch_5
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_9

    move v5, v6

    :cond_9
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmInputManager(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/InputManagerService;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->switchWirelessKeyboardShare(Z)V

    goto/16 :goto_5

    :pswitch_6
    const-string v0, "WirelessKeyboardMouseShare"

    const-string v1, "MESSAGE_NEED_TO_INITIALIZING"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_7
    iget v1, v1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    const-string v2, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_SET_REPORT_RECEIVED for id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WirelessKeyboardMouseShare"

    const-string/jumbo v2, "onSetReport(), sending successful handshake for set report"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto/16 :goto_5

    :pswitch_8
    iget v1, v1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmInputReportCache(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v3, v3, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v2, :cond_a

    :try_start_3
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    invoke-virtual {v4, v0, v6, v1, v2}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto/16 :goto_4

    :cond_a
    new-instance v2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData-IA;)V

    if-ne v1, v6, :cond_c

    const/16 v2, 0x8

    new-array v4, v2, [B

    const-string v7, "WirelessKeyboardMouseShare"

    const-string v8, "get_report id for keyboard"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :goto_2
    if-ge v7, v2, :cond_b

    aput-byte v5, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v1, v4, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v1, v4}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_4

    :cond_c
    if-ne v1, v4, :cond_e

    const/4 v2, 0x4

    new-array v4, v2, [B

    const-string v7, "WirelessKeyboardMouseShare"

    const-string v8, "get_report id for mouse"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :goto_3
    if-ge v7, v2, :cond_d

    aput-byte v5, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_d
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v1, v4, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v1, v4}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_4

    :cond_e
    const-string v2, "WirelessKeyboardMouseShare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get Report for Invalid report id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    :goto_4
    monitor-exit v3

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :pswitch_9
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmInputReportCache(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmOutputReportCache(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_5

    :pswitch_a
    new-instance v7, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    const-string v2, "Samsung HID Device"

    const-string v3, "Samsung HID Keyboard/Mouse"

    const-string v4, "Samsung"

    const/16 v5, -0x40

    sget-object v6, Lcom/android/server/input/HidConsts;->DESCRIPTOR:[B

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V

    new-instance v3, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    const/4 v9, 0x2

    const/16 v10, 0xc8

    const/4 v11, 0x2

    const/16 v12, 0xc8

    const/16 v13, 0x2710

    const/16 v14, 0x2710

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    new-instance v4, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    const/16 v16, 0x2

    const/16 v17, 0x384

    const/16 v18, 0x9

    const/16 v19, 0x384

    const/16 v20, 0x2710

    const/16 v21, 0x2710

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    :try_start_4
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmExecutor(Lcom/android/server/input/WirelessKeyboardMouseShare;)Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmCallback(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice$Callback;

    move-result-object v6

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)Z

    move-result v0

    const-string v1, "WirelessKeyboardMouseShare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerApp()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    const-string v0, "WirelessKeyboardMouseShare"

    const-string v1, "Can\'t registerApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
