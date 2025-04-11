.class public final Lcom/android/server/display/DlnaController;
.super Ljava/lang/Object;
.source "DlnaController.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDevice:Landroid/hardware/display/SemDlnaDevice;

.field public mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DlnaController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/server/display/DlnaController;)Landroid/hardware/display/SemDlnaDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDlnaMonitor(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDlnaMonitor(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdlnaPlayerTypeToString(Lcom/android/server/display/DlnaController;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DlnaController;->dlnaPlayerTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendStatusChangedBroadcast(Lcom/android/server/display/DlnaController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/display/DlnaController;->sendStatusChangedBroadcast()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/hardware/display/SemDlnaDevice;

    invoke-direct {p1}, Landroid/hardware/display/SemDlnaDevice;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    return-void
.end method


# virtual methods
.method public final dlnaConnectionStateToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "None"

    return-object p0

    :cond_0
    const-string p0, "Connecting"

    return-object p0

    :cond_1
    const-string p0, "Error"

    return-object p0

    :cond_2
    const-string p0, "Connected"

    return-object p0

    :cond_3
    const-string p0, "Not_connected"

    return-object p0
.end method

.method public final dlnaPlayerTypeToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "None"

    return-object p0

    :cond_0
    const-string p0, "Music_chn"

    return-object p0

    :cond_1
    const-string p0, "Music"

    return-object p0

    :cond_2
    const-string p0, "Image"

    return-object p0

    :cond_3
    const-string p0, "Video"

    return-object p0
.end method

.method public getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {p0}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    move-result p0

    return p0
.end method

.method public sendDisconnectionRequestBroadcast()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DlnaController$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DlnaController$1;-><init>(Lcom/android/server/display/DlnaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final sendStatusChangedBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DlnaController$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/DlnaController$2;-><init>(Lcom/android/server/display/DlnaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDlnaDevice ::type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/DlnaController;->dlnaPlayerTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/DlnaController;->dlnaConnectionStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DlnaController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v1

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;-><init>(Lcom/android/server/display/DlnaController;Landroid/os/IBinder;I)V

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    :cond_2
    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {p0}, Lcom/android/server/display/DlnaController;->sendStatusChangedBroadcast()V

    :cond_3
    :goto_0
    return v2
.end method
