.class public Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPolicy.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

.field public final synthetic val$condition:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->this$1:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    iput-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 376
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    .line 378
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method
