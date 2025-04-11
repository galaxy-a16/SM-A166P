.class public Lcom/android/server/input/WirelessKeyboardMouseShare$3;
.super Ljava/lang/Object;
.source "WirelessKeyboardMouseShare.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    .line 1248
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$3;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "WirelessKeyboardMouseShare"

    const-string v0, "Profile proxy connected"

    .line 1256
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$3;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    check-cast p2, Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothHidDevice;)V

    .line 1259
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$3;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    const/16 p0, 0x13

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "WirelessKeyboardMouseShare"

    const-string p1, "Profile proxy disconnected"

    .line 1268
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
