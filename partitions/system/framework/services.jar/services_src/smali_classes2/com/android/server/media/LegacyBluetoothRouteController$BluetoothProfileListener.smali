.class public final Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;
.super Ljava/lang/Object;
.source "LegacyBluetoothRouteController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/LegacyBluetoothRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/LegacyBluetoothRouteController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;-><init>(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {p1, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fputmLeAudioProfile(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothLeAudio;)V

    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/LegacyBluetoothRouteController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {p1, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fputmHearingAidProfile(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothHearingAid;)V

    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/LegacyBluetoothRouteController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p1, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fputmA2dpProfile(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothA2dp;)V

    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/LegacyBluetoothRouteController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {v1, v0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mcreateBluetoothRoute(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {v2}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {v0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$maddActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fputmLeAudioProfile(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothLeAudio;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fputmHearingAidProfile(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothHearingAid;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fputmA2dpProfile(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothA2dp;)V

    :goto_0
    return-void
.end method
