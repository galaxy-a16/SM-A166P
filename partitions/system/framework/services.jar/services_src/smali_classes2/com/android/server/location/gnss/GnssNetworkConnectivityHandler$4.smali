.class public Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssNetworkConnectivityHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$4;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string p1, "GnssNetworkConnectivityHandler"

    const-string v0, "EmergencyNetwork : onAvailable"

    .line 540
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$4;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fputmIsConnectEmergencyNetwork(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    const-string p1, "GnssNetworkConnectivityHandler"

    const-string v0, "EmergencyNetwork : onLost"

    .line 546
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$4;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fputmIsConnectEmergencyNetwork(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Z)V

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    const-string v0, "GnssNetworkConnectivityHandler"

    const-string/jumbo v1, "mEmergencyNetwork : onUnavailable"

    .line 552
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$4;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fputmIsConnectEmergencyNetwork(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Z)V

    return-void
.end method
