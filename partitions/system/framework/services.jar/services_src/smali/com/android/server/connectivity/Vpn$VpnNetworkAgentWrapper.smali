.class public Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;
.super Landroid/net/NetworkAgent;
.source "Vpn.java"


# instance fields
.field public final mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)V
    .locals 0

    .line 6567
    invoke-direct/range {p0 .. p8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 6568
    iput-object p9, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;

    return-void
.end method


# virtual methods
.method public doSendLinkProperties(Landroid/net/LinkProperties;)V
    .locals 0

    .line 6573
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public doSendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 6578
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public doSetUnderlyingNetworks(Ljava/util/List;)V
    .locals 0

    .line 6583
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    return-void
.end method

.method public onNetworkUnwanted()V
    .locals 0

    .line 0
    return-void
.end method

.method public onValidationStatus(ILandroid/net/Uri;)V
    .locals 0

    .line 6593
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;

    if-eqz p0, :cond_0

    .line 6594
    invoke-interface {p0, p1}, Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;->onValidationStatus(I)V

    :cond_0
    return-void
.end method
