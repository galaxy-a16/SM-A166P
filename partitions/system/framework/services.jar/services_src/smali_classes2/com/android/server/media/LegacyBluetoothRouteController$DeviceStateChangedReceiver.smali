.class public Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LegacyBluetoothRouteController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/LegacyBluetoothRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/LegacyBluetoothRouteController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    return-void
.end method


# virtual methods
.method public final handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {v0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p1, p3}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mcreateBluetoothRoute(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p2}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-static {v0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    invoke-static {p1, p2}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mremoveActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V

    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    const-string v0, "LBtRouteProvider"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    const/16 v1, 0x17

    invoke-static {p2, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting active hearing aid devices. device="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p2, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$maddActiveDevices(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)V

    :cond_7
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    goto :goto_1

    :pswitch_2
    iget-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p2}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    invoke-static {p2, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$maddActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V

    :cond_8
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :pswitch_4
    iget-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    const/16 v1, 0x1a

    invoke-static {p2, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting active le audio devices. device="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p2, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$maddActiveDevices(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)V

    :cond_a
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x693eab85 -> :sswitch_5
        -0x2caca392 -> :sswitch_4
        -0x2486726f -> :sswitch_3
        0x1d0d7e43 -> :sswitch_2
        0x461dab18 -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
