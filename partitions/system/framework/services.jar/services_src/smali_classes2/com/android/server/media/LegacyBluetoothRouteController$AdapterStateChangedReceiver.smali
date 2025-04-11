.class public Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LegacyBluetoothRouteController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/LegacyBluetoothRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/LegacyBluetoothRouteController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xc

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mbuildBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-static {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/LegacyBluetoothRouteController;)V

    :cond_2
    :goto_1
    return-void
.end method
