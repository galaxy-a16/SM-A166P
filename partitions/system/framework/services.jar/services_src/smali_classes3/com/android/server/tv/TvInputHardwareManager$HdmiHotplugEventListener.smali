.class public final Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;
.super Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;
.source "TvInputHardwareManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .line 1344
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method


# virtual methods
.method public onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 4

    .line 1347
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHdmiStateMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1349
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 1350
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$mfindHardwareInfoForHdmiPortLocked(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1352
    monitor-exit v0

    return-void

    .line 1354
    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHardwareInputIdMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1356
    monitor-exit v0

    return-void

    .line 1361
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v3

    .line 1364
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHandler(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1365
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1366
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
