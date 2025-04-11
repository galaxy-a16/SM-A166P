.class public Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Default;
.super Ljava/lang/Object;
.source "IHdmiConnection.java"

# interfaces
.implements Landroid/hardware/tv/hdmi/connection/IHdmiConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHpdSignal(I)B
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getPortInfo()[Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isConnected(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Landroid/hardware/tv/hdmi/connection/IHdmiConnectionCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setHpdSignal(BI)V
    .locals 0

    .line 0
    return-void
.end method
