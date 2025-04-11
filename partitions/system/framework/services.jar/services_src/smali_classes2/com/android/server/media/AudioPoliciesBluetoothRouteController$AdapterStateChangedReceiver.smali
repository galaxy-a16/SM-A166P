.class public Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioPoliciesBluetoothRouteController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, -0x1

    .line 451
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    const/16 p2, 0xd

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0xc

    if-ne p1, p2, :cond_3

    .line 459
    iget-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    invoke-static {p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->-$$Nest$mupdateBluetoothRoutes(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V

    .line 462
    iget-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    monitor-enter p1

    .line 463
    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    invoke-static {p2}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->-$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 464
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    .line 467
    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 464
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 454
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    monitor-enter p1

    .line 455
    :try_start_2
    iget-object p2, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    invoke-static {p2}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->-$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 456
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 457
    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception p0

    .line 456
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
