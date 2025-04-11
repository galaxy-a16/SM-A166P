.class public Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$VpnConnectivityDiagnosticsCallback;
.super Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;
.source "Vpn.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V
    .locals 0

    .line 4504
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$VpnConnectivityDiagnosticsCallback;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    invoke-direct {p0}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .locals 4

    .line 4510
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$VpnConnectivityDiagnosticsCallback;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 4512
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$VpnConnectivityDiagnosticsCallback;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq v3, v1, :cond_0

    monitor-exit v0

    return-void

    .line 4517
    :cond_0
    iget-object v1, v2, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_1

    .line 4518
    invoke-virtual {v1}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->getNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$VpnConnectivityDiagnosticsCallback;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean p1, p1, Lcom/android/server/connectivity/Vpn;->mDataStallSuspected:Z

    if-nez p1, :cond_1

    const-string p1, "IkeV2VpnRunner"

    const-string v1, "Data stall suspected"

    .line 4520
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$VpnConnectivityDiagnosticsCallback;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmActiveNetwork(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->maybeMigrateIkeSessionAndUpdateVpnTransportInfo(Landroid/net/Network;)Z

    .line 4524
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$VpnConnectivityDiagnosticsCallback;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mDataStallSuspected:Z

    .line 4526
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
