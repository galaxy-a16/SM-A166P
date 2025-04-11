.class public Lcom/android/server/input/WirelessKeyboardMouseShare$2;
.super Landroid/content/BroadcastReceiver;
.source "WirelessKeyboardMouseShare.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 1223
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1225
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmInitialized(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1226
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1227
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothAdapter;)V

    :cond_0
    const-string p2, "WirelessKeyboardMouseShare"

    const-string v1, "BluetoothAdapter.ACTION_STATE_CHANGED enabled, initailizing"

    .line 1229
    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$minitializing(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    .line 1231
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 1232
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmInitialized(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    :cond_1
    const/16 p2, 0xc

    if-ne p1, p2, :cond_2

    .line 1234
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmNeedToTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1235
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmNeedToTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1236
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmNotiTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1237
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()Z

    .line 1238
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    goto :goto_0

    :cond_2
    const/16 p2, 0xa

    if-ne p1, p2, :cond_4

    .line 1240
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()Z

    goto :goto_0

    :cond_3
    const-string p2, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 1242
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1243
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmToastDialog(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/ToastDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/input/ToastDialog;->dismissAlertDialogWKS()V

    :cond_4
    :goto_0
    return-void
.end method
