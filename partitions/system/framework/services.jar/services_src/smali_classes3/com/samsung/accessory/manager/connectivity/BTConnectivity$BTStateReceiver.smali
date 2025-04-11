.class public Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BTConnectivity.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    invoke-static {p0}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->-$$Nest$fgetmAdapterStateChangedHandler(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
