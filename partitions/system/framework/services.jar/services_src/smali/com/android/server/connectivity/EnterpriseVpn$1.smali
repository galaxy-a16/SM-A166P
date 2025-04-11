.class public Lcom/android/server/connectivity/EnterpriseVpn$1;
.super Landroid/net/NetworkAgent;
.source "EnterpriseVpn.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    .line 393
    iput-object v1, v0, Lcom/android/server/connectivity/EnterpriseVpn$1;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    return-void
.end method


# virtual methods
.method public onNetworkCreated()V
    .locals 2

    const-string/jumbo v0, "knoxEnterpriseVpn"

    const-string/jumbo v1, "knox vpn network is created"

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn$1;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$monKnoxVpnConnected(Lcom/android/server/connectivity/EnterpriseVpn;)V

    return-void
.end method

.method public onNetworkDestroyed()V
    .locals 1

    const-string/jumbo p0, "knoxEnterpriseVpn"

    const-string/jumbo v0, "knox vpn network is destroyed"

    .line 405
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNetworkUnwanted()V
    .locals 0

    .line 0
    return-void
.end method
