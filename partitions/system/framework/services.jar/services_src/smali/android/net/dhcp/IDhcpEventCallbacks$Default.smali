.class public Landroid/net/dhcp/IDhcpEventCallbacks$Default;
.super Ljava/lang/Object;
.source "IDhcpEventCallbacks.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpEventCallbacks;


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

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onLeasesChanged(Ljava/util/List;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onNewPrefixRequest(Landroid/net/IpPrefix;)V
    .locals 0

    .line 0
    return-void
.end method
