.class public Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;
.super Ljava/lang/Object;
.source "WirelessKeyboardMouseShare.java"


# instance fields
.field public mBuffer:[B

.field public mId:B

.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    .line 1690
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 1691
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    const/4 p1, 0x2

    .line 1692
    iput-byte p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    return-void
.end method


# virtual methods
.method public clear(Z)V
    .locals 4

    .line 1695
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    .line 1697
    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    aget-byte p1, p1, v2

    if-nez p1, :cond_0

    .line 1698
    monitor-exit v0

    return-void

    :cond_0
    const-string p1, "WirelessKeyboardMouseShare"

    const-string v3, "Mouse need clear()."

    .line 1700
    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_1
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    aput-byte v2, p1, v2

    .line 1703
    aput-byte v2, p1, v1

    const/4 v3, 0x2

    .line 1704
    aput-byte v2, p1, v3

    const/4 v3, 0x3

    .line 1705
    aput-byte v2, p1, v3

    .line 1707
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    invoke-static {v2, v3, p1, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    :try_start_1
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    invoke-virtual {p1, v1, v2, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "WirelessKeyboardMouseShare"

    const-string p1, "ignore nullpointer exception "

    .line 1711
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public mouseButtonDownLocked(BBI)V
    .locals 2

    .line 1731
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 1734
    :cond_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    or-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    const/4 p3, 0x1

    .line 1735
    aput-byte v0, p1, p3

    .line 1736
    aput-byte v0, p1, p2

    .line 1738
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    invoke-static {p2, v0, p1, p3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1740
    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-byte p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    invoke-virtual {p1, p2, p3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WirelessKeyboardMouseShare"

    const-string p1, "ignore nullpointer exception "

    .line 1742
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public mouseButtonUpLocked(BBI)V
    .locals 2

    .line 1746
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 1749
    :cond_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    not-int p3, p3

    and-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    const/4 p3, 0x1

    .line 1750
    aput-byte v0, p1, p3

    .line 1751
    aput-byte v0, p1, p2

    .line 1753
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    invoke-static {p2, v0, p1, p3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1755
    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-byte p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    invoke-virtual {p1, p2, p3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WirelessKeyboardMouseShare"

    const-string p1, "ignore nullpointer exception "

    .line 1757
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public mouseMoveLocked(BB)V
    .locals 3

    .line 1717
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 1721
    aput-byte p2, v0, v1

    .line 1723
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    invoke-static {p1, p2, v0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1725
    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-byte v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    invoke-virtual {p1, p2, v0, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WirelessKeyboardMouseShare"

    const-string p1, "ignore nullpointer exception "

    .line 1727
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public mouseScrollLocked(B)V
    .locals 5

    .line 1761
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    .line 1765
    aput-byte v3, v0, v1

    const/4 v1, 0x3

    .line 1766
    aput-byte p1, v0, v1

    .line 1768
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    invoke-static {p1, v4, v0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1770
    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-byte v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    invoke-virtual {p1, v0, v2, v4}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "WirelessKeyboardMouseShare"

    const-string v0, "ignore nullpointer exception "

    .line 1772
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    aput-byte v3, p0, v1

    return-void
.end method
