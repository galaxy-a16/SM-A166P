.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxMUMContainerPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 445
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 448
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    .line 449
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmRestart(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 450
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "***** Restarting Bluetooth *****"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fputmRestart(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Z)V

    .line 453
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 454
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    return-void
.end method
