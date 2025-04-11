.class public Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;
.super Ljava/lang/Object;
.source "WirelessKeyboardMouseShare.java"


# instance fields
.field public mBuffer:[B

.field public mId:B

.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    return-void
.end method


# virtual methods
.method public clear(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    move p1, v2

    :goto_0
    if-ge p1, v1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    aget-byte v4, v4, p1

    if-eqz v4, :cond_0

    const-string p1, "WirelessKeyboardMouseShare"

    const-string v4, "Keyboard need clear()."

    invoke-static {p1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_1
    if-eq p1, v3, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    move p1, v2

    :goto_2
    if-ge p1, v1, :cond_3

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    aput-byte v2, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-virtual {p1, v1, v2, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    :try_start_2
    const-string p0, "WirelessKeyboardMouseShare"

    const-string p1, "ignore nullpointer exception "

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public keyDownLocked(B)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x10

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    const/16 v2, -0x9

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    const/4 v3, 0x0

    aget-byte v4, v2, v3

    sub-int/2addr p1, v0

    shl-int p1, v1, p1

    or-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, v2, v3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    aget-byte v3, v2, v0

    if-nez v3, :cond_2

    aput-byte p1, v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-virtual {p1, v0, v1, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "WirelessKeyboardMouseShare"

    const-string p1, "ignore nullpointer exception "

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public keyUpLocked(B)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, -0x10

    const/4 v2, 0x1

    if-lt p1, v1, :cond_1

    const/16 v3, -0x9

    if-ge p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    aget-byte v4, v3, v0

    sub-int/2addr p1, v1

    shl-int p1, v2, p1

    not-int p1, p1

    and-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    aget-byte v4, v3, v1

    if-ne v4, p1, :cond_2

    aput-byte v0, v3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-virtual {p1, v0, v1, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "WirelessKeyboardMouseShare"

    const-string p1, "ignore nullpointer exception "

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
