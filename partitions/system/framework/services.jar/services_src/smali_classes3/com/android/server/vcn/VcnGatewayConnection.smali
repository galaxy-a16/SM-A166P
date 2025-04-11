.class public Lcom/android/server/vcn/VcnGatewayConnection;
.super Lcom/android/internal/util/StateMachine;
.source "VcnGatewayConnection.java"


# static fields
.field static final DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

.field static final DUMMY_ADDR:Ljava/net/InetAddress;

.field public static final MERGED_CAPABILITIES:[I

.field static final NETWORK_INFO_EXTRA_INFO:Ljava/lang/String; = "VCN"

.field static final NETWORK_INFO_NETWORK_TYPE_STRING:Ljava/lang/String; = "MOBILE"

.field static final NETWORK_LOSS_DISCONNECT_TIMEOUT_SECONDS:I = 0x1e

.field static final RETRY_TIMEOUT_ALARM:Ljava/lang/String;

.field static final SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

.field static final SAFEMODE_TIMEOUT_SECONDS:I = 0x1e

.field public static final TAG:Ljava/lang/String;

.field static final TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

.field static final TEARDOWN_TIMEOUT_SECONDS:I = 0x5


# instance fields
.field public mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

.field final mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

.field final mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

.field public final mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field public final mConnectivityDiagnosticsCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;

.field public final mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mCurrentToken:I

.field public final mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

.field public mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

.field final mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

.field final mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

.field public mFailedAttempts:I

.field public final mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

.field public mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

.field public mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

.field public final mIpSecManager:Landroid/net/IpSecManager;

.field public mIsInSafeMode:Z

.field public final mIsMobileDataEnabled:Z

.field public mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

.field public mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

.field public mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field final mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

.field public mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field public final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field public mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field public mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

.field public mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

.field public final mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

.field public final mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

.field public final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field public final mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;


# direct methods
.method public static synthetic $r8$lambda$NkzjhpbIl21GGUYCysJkoB3YhYQ(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->lambda$createScheduledAlarm$0(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeps(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFailedAttempts(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGatewayStatusCallback(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIpSecManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMobileDataEnabled(Lcom/android/server/vcn/VcnGatewayConnection;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsQuitting(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/util/OneWayBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastSnapshot(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSubscriptionGroup(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/os/ParcelUuid;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVcnContext(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFailedAttempts(Lcom/android/server/vcn/VcnGatewayConnection;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsInSafeMode(Lcom/android/server/vcn/VcnGatewayConnection;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSafeModeTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/internal/util/WakeupMessage;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbuildOpportunisticChildParams(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ipsec/ike/ChildSessionParams;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->buildOpportunisticChildParams()Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelDisconnectRequestAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelDisconnectRequestAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelRetryTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelRetryTimeoutAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelSafeModeAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelTeardownTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelTeardownTimeoutAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchildOpened(Lcom/android/server/vcn/VcnGatewayConnection;ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->childOpened(ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchildTransformCreated(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->childTransformCreated(ILandroid/net/IpSecTransform;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mikeConnectionInfoChanged(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->ikeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogVdbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeReleaseWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->maybeReleaseWakeLock()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->migrationCompleted(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMessageAndAcquireWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMessageAndAcquireWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msessionClosed(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionClosed(ILjava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisconnectRequestAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setDisconnectRequestAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRetryTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->setRetryTimeoutAlarm(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTeardownTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setTeardownTimeoutAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 175
    const-class v0, Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v1, "192.0.2.0"

    .line 189
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_TEARDOWN_TIMEOUT_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_DISCONNECT_REQUEST_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_RETRY_TIMEOUT_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_SAFEMODE_TIMEOUT_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    const/16 v0, 0xb

    const/16 v1, 0x12

    .line 203
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;Z)V
    .locals 8

    .line 755
    new-instance v7, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-direct {v7}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vcn/VcnGatewayConnection;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v4, p2

    move-object/from16 v1, p3

    move-object/from16 v8, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    .line 774
    sget-object v5, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v6, "Missing vcnContext"

    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 594
    new-instance v9, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState-IA;)V

    iput-object v9, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    .line 598
    new-instance v11, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-direct {v11, v0, v10}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState-IA;)V

    iput-object v11, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 602
    new-instance v12, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    invoke-direct {v12, v0, v10}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState-IA;)V

    iput-object v12, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    .line 606
    new-instance v13, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    invoke-direct {v13, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    iput-object v13, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    .line 610
    new-instance v14, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    invoke-direct {v14, v0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    iput-object v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    .line 634
    iput-object v10, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 663
    new-instance v6, Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-direct {v6}, Lcom/android/server/vcn/util/OneWayBoolean;-><init>()V

    iput-object v6, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    const/4 v15, 0x0

    .line 672
    iput-boolean v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    const/4 v6, -0x1

    .line 694
    iput v6, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 702
    iput v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    .line 775
    iput-object v7, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    const-string v6, "Missing subscriptionGroup"

    .line 776
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Landroid/os/ParcelUuid;

    iput-object v4, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    const-string v6, "Missing connectionConfig"

    .line 777
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v8

    check-cast v6, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iput-object v8, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    const-string v6, "Missing gatewayStatusCallback"

    .line 779
    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iput-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    move/from16 v2, p6

    .line 780
    iput-boolean v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    const-string v2, "Missing deps"

    .line 781
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    const-string v2, "Missing snapshot"

    .line 783
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 785
    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    invoke-direct {v6, v0, v10}, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback-IA;)V

    iput-object v6, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    .line 788
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newWakeLock(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 790
    iget-object v5, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    .line 791
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newUnderlyingNetworkController(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 797
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/IpSecManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecManager;

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    .line 798
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 800
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/ConnectivityDiagnosticsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityDiagnosticsManager;

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 802
    new-instance v2, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;

    invoke-direct {v2, v0, v10}, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback-IA;)V

    iput-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityDiagnosticsCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;

    .line 804
    invoke-virtual {v8, v15}, Landroid/net/vcn/VcnGatewayConnectionConfig;->hasGatewayOption(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 807
    invoke-virtual {v3, v15}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 808
    new-instance v4, Landroid/os/HandlerExecutor;

    new-instance v5, Landroid/os/Handler;

    .line 810
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 808
    invoke-virtual {v1, v3, v4, v2}, Landroid/net/ConnectivityDiagnosticsManager;->registerConnectivityDiagnosticsCallback(Landroid/net/NetworkRequest;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V

    .line 814
    :cond_0
    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 815
    invoke-virtual {v0, v11}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 816
    invoke-virtual {v0, v12}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 817
    invoke-virtual {v0, v13}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 818
    invoke-virtual {v0, v14}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 820
    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 821
    invoke-virtual {v0, v15}, Lcom/android/internal/util/StateMachine;->setDbg(Z)V

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/StateMachine;->start()V

    return-void
.end method

.method public static buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;
    .locals 7

    .line 2202
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v1, 0x0

    .line 2204
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v2, 0x1c

    .line 2205
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v2, 0x14

    .line 2206
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v2, 0x15

    .line 2207
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2210
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez p2, :cond_1

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 2217
    :cond_1
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_8

    .line 2221
    iget-object p2, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2224
    sget-object v2, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_4

    aget v5, v2, v4

    .line 2225
    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2226
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2231
    :cond_4
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object v2

    .line 2232
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 2235
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_5

    .line 2237
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v3

    .line 2236
    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_5

    .line 2238
    array-length v3, v2

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 2239
    array-length v3, v2

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v5

    aput v5, v2, v3

    .line 2240
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 2246
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2247
    array-length v3, v2

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 2248
    array-length v3, v2

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    aput v5, v2, v3

    .line 2249
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 2251
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2252
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2255
    invoke-virtual {p2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2256
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v2

    instance-of v2, v2, Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_6

    .line 2257
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiInfo;

    .line 2258
    new-instance v1, Landroid/net/vcn/VcnTransportInfo;

    .line 2261
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getMinUdpPort4500NatTimeoutSeconds()I

    move-result p0

    invoke-direct {v1, p2, p0}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;I)V

    .line 2258
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_2

    .line 2262
    :cond_6
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2263
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    instance-of v1, v1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v1, :cond_7

    .line 2265
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p2

    check-cast p2, Landroid/net/TelephonyNetworkSpecifier;

    .line 2266
    new-instance v1, Landroid/net/vcn/VcnTransportInfo;

    .line 2268
    invoke-virtual {p2}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result p2

    .line 2269
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getMinUdpPort4500NatTimeoutSeconds()I

    move-result p0

    invoke-direct {v1, p2, p0}, Landroid/net/vcn/VcnTransportInfo;-><init>(II)V

    .line 2266
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_2

    .line 2271
    :cond_7
    sget-object p0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string p2, "Unknown transport type or missing TransportInfo/NetworkSpecifier for non-null underlying network"

    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :goto_2
    iget-object p0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities$Builder;->setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_3

    .line 2278
    :cond_8
    sget-object p0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p2, "No underlying network while building network capabilities"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2284
    :goto_3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static isIkeAuthFailure(Ljava/lang/Exception;)Z
    .locals 2

    .line 1277
    instance-of v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1281
    :cond_0
    check-cast p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    invoke-virtual {p0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result p0

    const/16 v0, 0x18

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic lambda$createScheduledAlarm$0(Landroid/os/Message;)V
    .locals 0

    .line 1118
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public final acquireWakeLock()V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 955
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->acquire()V

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakelock acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final buildChildParams()Landroid/net/ipsec/ike/ChildSessionParams;
    .locals 0

    .line 2651
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Landroid/net/LinkProperties;
    .locals 6

    .line 2295
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    .line 2296
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    .line 2298
    invoke-virtual {p2}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2300
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    .line 2302
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/net/InetAddress;

    .line 2303
    invoke-virtual {v1, p3}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_1

    .line 2306
    :cond_1
    new-instance p2, Landroid/net/RouteInfo;

    new-instance p3, Landroid/net/IpPrefix;

    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v3, 0x0

    invoke-direct {p3, v2, v3}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p2, p3, v2, v2, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 2308
    new-instance p2, Landroid/net/RouteInfo;

    new-instance p3, Landroid/net/IpPrefix;

    sget-object v5, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p3, v5, v3}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p2, p3, v2, v2, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    if-eqz p4, :cond_3

    .line 2313
    iget-object p2, p4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 2315
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result p3

    if-nez p3, :cond_2

    .line 2321
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 2322
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->getUnderlyingIfaceMtu(Ljava/lang/String;)I

    move-result p0

    move v3, p0

    goto :goto_2

    :cond_2
    move v3, p3

    goto :goto_2

    .line 2325
    :cond_3
    sget-object p0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p3, "No underlying network while building link properties"

    invoke-static {p0, p3, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2332
    :goto_2
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object p0

    .line 2333
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getMaxMtu()I

    move-result p1

    .line 2335
    invoke-virtual {p5}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet4Address;

    .line 2331
    invoke-static {p0, p1, v3, p2}, Lcom/android/server/vcn/util/MtuUtils;->getMtu(Ljava/util/List;IIZ)I

    move-result p0

    .line 2330
    invoke-virtual {v1, p0}, Landroid/net/LinkProperties;->setMtu(I)V

    return-object v1
.end method

.method public final buildIkeParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;
    .locals 1

    .line 2642
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 2643
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object p0

    .line 2644
    new-instance v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 2645
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/IkeSessionParams;)V

    .line 2646
    invoke-virtual {v0, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 2647
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public buildIkeSession(Landroid/net/Network;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 7

    .line 2680
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 2682
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 2684
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->buildIkeParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v3

    .line 2685
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->buildChildParams()Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object v4

    new-instance v5, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;

    invoke-direct {v5, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;

    invoke-direct {v6, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    .line 2682
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newIkeSession(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object p0

    return-object p0
.end method

.method public final buildOpportunisticChildParams()Landroid/net/ipsec/ike/ChildSessionParams;
    .locals 3

    .line 2655
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 2656
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object p0

    .line 2658
    new-instance v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;-><init>()V

    .line 2660
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSessionParams;->getChildSaProposals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 2661
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addChildSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    goto :goto_0

    .line 2664
    :cond_0
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSessionParams;->getInboundTrafficSelectors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 2665
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    goto :goto_1

    .line 2668
    :cond_1
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSessionParams;->getOutboundTrafficSelectors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 2669
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addOutboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    goto :goto_2

    .line 2673
    :cond_2
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSessionParams;->getHardLifetimeSeconds()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSessionParams;->getSoftLifetimeSeconds()I

    move-result p0

    .line 2672
    invoke-virtual {v0, v1, p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->setLifetimeSeconds(II)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 2675
    invoke-virtual {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public final cancelDisconnectRequestAlarm()V
    .locals 3

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling alarm to disconnect due to underlying network loss; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    .line 1187
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1191
    :cond_0
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const-string v1, "Underlying Network lost"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final cancelRetryTimeoutAlarm()V
    .locals 2

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel retry alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1215
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    .line 1217
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_0
    const/4 v0, 0x2

    .line 1220
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    return-void
.end method

.method public final cancelSafeModeAlarm()V
    .locals 2

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel safe mode alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1246
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    .line 1247
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_0
    const/16 v0, 0xa

    .line 1250
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    return-void
.end method

.method public final cancelTeardownTimeoutAlarm()V
    .locals 2

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling teardown timeout alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    .line 1147
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_0
    const/16 v0, 0x8

    .line 1151
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    return-void
.end method

.method public final childOpened(ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 1

    .line 1360
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public final childTransformCreated(ILandroid/net/IpSecTransform;I)V
    .locals 1

    .line 1353
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    invoke-direct {v0, p3, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;-><init>(ILandroid/net/IpSecTransform;)V

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public final createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;
    .locals 4

    .line 1100
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1102
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p2, "Attempted to schedule alarm after StateMachine has quit"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    new-instance v3, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/os/Message;)V

    .line 1114
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newWakeupMessage(Lcom/android/server/vcn/VcnContext;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/internal/util/WakeupMessage;

    move-result-object p1

    .line 1119
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->getElapsedRealTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    return-object p1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 2550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnGatewayConnection ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 2557
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2553
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsQuitting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v1}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsInSafeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFailedAttempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkAgent.getNetwork(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2562
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2565
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2567
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2568
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2570
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public getConnectivityDiagnosticsCallback()Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;
    .locals 0

    .line 2585
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityDiagnosticsCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;

    return-object p0
.end method

.method public getIkeConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .locals 0

    .line 2600
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-object p0
.end method

.method public getIkeSession()Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 0

    .line 2615
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object p0
.end method

.method public getLogPrefix()Ljava/lang/String;
    .locals 3

    .line 2477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 2478
    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 2480
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2482
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkAgent()Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 0

    .line 2625
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object p0
.end method

.method public final getTagLogPrefix()Ljava/lang/String;
    .locals 2

    .line 2487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingNetwork()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .locals 0

    .line 2590
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-object p0
.end method

.method public getUnderlyingNetworkControllerCallback()Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;
    .locals 0

    .line 2580
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    return-object p0
.end method

.method public final ikeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .locals 1

    .line 1326
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;-><init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    const/16 p2, 0xc

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public isInSafeMode()Z
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 830
    iget-boolean p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return p0
.end method

.method public isQuitting()Z
    .locals 0

    .line 2605
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {p0}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result p0

    return p0
.end method

.method public final logDbg(Ljava/lang/String;)V
    .locals 2

    .line 2497
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logInfo(Ljava/lang/String;)V
    .locals 3

    .line 2505
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 2510
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2511
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logVdbg(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 2520
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2521
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARN] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logWtf(Ljava/lang/String;)V
    .locals 2

    .line 2535
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    sget-object p0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WTF ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2540
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2541
    sget-object p0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WTF ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final maybeReleaseWakeLock()V
    .locals 1

    .line 977
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v0

    if-nez v0, :cond_1

    .line 979
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->releaseWakeLock()V

    :cond_1
    return-void
.end method

.method public final migrationCompleted(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 1

    .line 1345
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;-><init>(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public final notifyStatusCallbackForSessionClosed(Ljava/lang/Exception;)V
    .locals 4

    .line 1290
    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->isIkeAuthFailure(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1293
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_0

    .line 1294
    :cond_0
    instance-of v0, p1, Landroid/net/ipsec/ike/exceptions/IkeInternalException;

    if-eqz v0, :cond_1

    .line 1295
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 1297
    const-class v0, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1298
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    goto :goto_0

    .line 1301
    :cond_1
    const-class v0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1309
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered error; code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", exceptionClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", exceptionMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 1317
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 1318
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object p0

    .line 1317
    invoke-interface {v2, p0, v1, v0, p1}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onQuitting()V
    .locals 2

    const-string v0, "Quitting VcnGatewayConnection"

    .line 846
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "NetworkAgent was non-null in onQuitting"

    .line 849
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->unregister()V

    .line 851
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    if-eqz v0, :cond_1

    const-string v0, "IkeSession was non-null in onQuitting"

    .line 855
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    .line 857
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    if-eqz v0, :cond_2

    .line 862
    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    .line 865
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->releaseWakeLock()V

    .line 867
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelTeardownTimeoutAlarm()V

    .line 868
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelDisconnectRequestAlarm()V

    .line 869
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelRetryTimeoutAlarm()V

    .line 870
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    .line 872
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->teardown()V

    .line 874
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    invoke-interface {v0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onQuit()V

    .line 876
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityDiagnosticsCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityDiagnosticsManager;->unregisterConnectivityDiagnosticsCallback(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V

    return-void
.end method

.method public final releaseWakeLock()V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 965
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->release()V

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakelock released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    return-void
.end method

.method public final removeEqualMessages(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1078
    invoke-virtual {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final removeEqualMessages(ILjava/lang/Object;)V
    .locals 1

    .line 1090
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->maybeReleaseWakeLock()V

    return-void
.end method

.method public sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V
    .locals 1

    .line 2635
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    const/4 p1, 0x7

    const/high16 p2, -0x80000000

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public sendMessage(I)V
    .locals 1

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 985
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 988
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public sendMessage(II)V
    .locals 1

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 1001
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 1004
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public sendMessage(III)V
    .locals 1

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 1009
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 1012
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 1017
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 1020
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 993
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 996
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 1025
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 1028
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendMessageAndAcquireWakeLock(II)V
    .locals 0

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 1041
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public final sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .locals 1

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    const/high16 v0, -0x80000000

    .line 1050
    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public final sendMessageAndAcquireWakeLock(Landroid/os/Message;)V
    .locals 0

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 1068
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sessionClosed(ILjava/lang/Exception;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1334
    invoke-virtual {p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->notifyStatusCallbackForSessionClosed(Ljava/lang/Exception;)V

    .line 1339
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLostWithoutCallback(ILjava/lang/Exception;)V

    const/4 p2, 0x4

    .line 1340
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method

.method public final sessionLost(ILjava/lang/Exception;)V
    .locals 5

    if-eqz p2, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 1264
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    .line 1266
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1263
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1273
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLostWithoutCallback(ILjava/lang/Exception;)V

    return-void
.end method

.method public final sessionLostWithoutCallback(ILjava/lang/Exception;)V
    .locals 1

    .line 1254
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;-><init>(Ljava/lang/Exception;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public final setDisconnectRequestAlarm()V
    .locals 5

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting alarm to disconnect due to underlying network loss; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    return-void

    .line 1165
    :cond_0
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const-string v1, "Underlying Network lost"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    const/high16 v3, -0x80000000

    .line 1166
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1172
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    .line 1176
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1173
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public setIkeSession(Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V
    .locals 0

    .line 2620
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-void
.end method

.method public setNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .locals 0

    .line 2630
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-void
.end method

.method public setQuitting()V
    .locals 0

    .line 2610
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {p0}, Lcom/android/server/vcn/util/OneWayBoolean;->setTrue()V

    return-void
.end method

.method public final setRetryTimeoutAlarm(J)V
    .locals 2

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting retry alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRetryTimeoutAlarm should be null before being set; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 1208
    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1209
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public setSafeModeAlarm()V
    .locals 5

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting safe mode alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    const/high16 v1, -0x80000000

    .line 1232
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1233
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    .line 1237
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v2}, Lcom/android/server/vcn/VcnContext;->isInTestMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1238
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_0

    .line 1239
    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1234
    :goto_0
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public final setTeardownTimeoutAlarm()V
    .locals 5

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting teardown timeout alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTeardownTimeoutAlarm should be null before being set; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x8

    .line 1134
    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1135
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    .line 1139
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1136
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public setTunnelInterface(Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    .locals 0

    .line 2575
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-void
.end method

.method public setUnderlyingNetwork(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V
    .locals 0

    .line 2595
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-void
.end method

.method public teardownAsynchronously()V
    .locals 2

    const-string v0, "Triggering async teardown"

    .line 839
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    const-string/jumbo v0, "teardown() called on VcnTunnel"

    const/4 v1, 0x1

    .line 840
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 1

    const-string v0, "Missing snapshot"

    .line 887
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 888
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 890
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 891
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    const/16 p1, 0x9

    const/high16 v0, -0x80000000

    .line 893
    invoke-virtual {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method
