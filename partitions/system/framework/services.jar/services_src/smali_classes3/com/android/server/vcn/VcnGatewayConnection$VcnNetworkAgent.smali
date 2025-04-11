.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"


# instance fields
.field public final mImpl:Landroid/net/NetworkAgent;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 13

    .line 2919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2920
    new-instance v12, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;

    .line 2922
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2923
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v0, v12

    move-object v1, p0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    move-object v0, p0

    iput-object v12, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Landroid/net/NetworkAgent;

    return-void
.end method


# virtual methods
.method public getNetwork()Landroid/net/Network;
    .locals 0

    .line 2975
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Landroid/net/NetworkAgent;

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method public markConnected()V
    .locals 0

    .line 2949
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Landroid/net/NetworkAgent;

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->markConnected()V

    return-void
.end method

.method public register()V
    .locals 0

    .line 2944
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Landroid/net/NetworkAgent;

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;

    return-void
.end method

.method public sendLinkProperties(Landroid/net/LinkProperties;)V
    .locals 0

    .line 2964
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Landroid/net/NetworkAgent;

    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 2959
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Landroid/net/NetworkAgent;

    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public setUnderlyingNetworks(Ljava/util/List;)V
    .locals 0

    .line 2969
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Landroid/net/NetworkAgent;

    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    return-void
.end method

.method public unregister()V
    .locals 0

    .line 2954
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Landroid/net/NetworkAgent;

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->unregister()V

    return-void
.end method
