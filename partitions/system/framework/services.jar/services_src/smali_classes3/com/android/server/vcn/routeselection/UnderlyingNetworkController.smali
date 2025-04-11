.class public Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;
.super Ljava/lang/Object;
.source "UnderlyingNetworkController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UnderlyingNetworkController"


# instance fields
.field public final mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

.field public mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

.field public final mCb:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

.field public final mCellBringupCallbacks:Ljava/util/List;

.field public final mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

.field public final mDeps:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public mIsQuitting:Z

.field public mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

.field public final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field public final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field public mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCarrierConfig(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Landroid/net/vcn/VcnGatewayConnectionConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentRecord(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastSnapshot(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSubscriptionGroup(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Landroid/os/ParcelUuid;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVcnContext(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/VcnContext;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreevaluateNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->reevaluateNetworks()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;)V
    .locals 7

    .line 105
    new-instance v6, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies-IA;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener-IA;)V

    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    const-string v1, "Missing vcnContext"

    .line 115
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    const-string v1, "Missing connectionConfig"

    .line 116
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iput-object p2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    const-string p2, "Missing subscriptionGroup"

    .line 117
    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p2, p3

    check-cast p2, Landroid/os/ParcelUuid;

    iput-object p3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    const-string p2, "Missing snapshot"

    .line 118
    invoke-static {p4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    const-string p2, "Missing cb"

    .line 119
    invoke-static {p5, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

    iput-object p5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCb:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

    const-string p2, "Missing deps"

    .line 120
    invoke-static {p6, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mDeps:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

    .line 122
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object p4

    const-class p5, Landroid/net/ConnectivityManager;

    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/ConnectivityManager;

    iput-object p4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 126
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p4, Landroid/telephony/TelephonyManager;

    .line 127
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    new-instance p4, Landroid/os/HandlerExecutor;

    invoke-direct {p4, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 128
    invoke-virtual {p1, p4, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 130
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {p1, p3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 132
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->registerOrUpdateNetworkRequests()V

    return-void
.end method

.method public static dedupAndGetCapRequirementsForCell(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;
    .locals 6

    .line 162
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 165
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 166
    instance-of v2, v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    if-eqz v2, :cond_0

    .line 167
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 170
    check-cast v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    .line 171
    invoke-virtual {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getCapabilitiesMatchCriteria()Ljava/util/Map;

    move-result-object v1

    .line 172
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 170
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 175
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    new-instance v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;

    invoke-direct {v5, v4, v3}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;-><init>(II)V

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_3
    new-instance p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;-><init>(II)V

    .line 186
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 185
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 10

    const-string v0, "UnderlyingNetworkController:"

    .line 594
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier WiFi Entry Threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiEntryRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier WiFi Exit Threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiExitRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "VcnUnderlyingNetworkTemplate list:"

    .line 602
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 606
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Priority index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v2, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 611
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 612
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Underlying networks:"

    .line 614
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 616
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    if-eqz v0, :cond_2

    .line 618
    invoke-static {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->-$$Nest$mgetSortedUnderlyingNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 619
    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 622
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    iget-object v9, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    move-object v4, p1

    .line 619
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->dump(Lcom/android/server/vcn/VcnContext;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    goto :goto_2

    .line 629
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 630
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 632
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;
    .locals 1

    .line 367
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0xe

    .line 368
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    const/16 v0, 0xd

    .line 369
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    const/16 v0, 0x1c

    .line 370
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final getBaseWifiNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 285
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 286
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 287
    invoke-virtual {v1, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final getCellNetworkRequestForSubId(ILjava/util/Set;)Landroid/net/NetworkRequest;
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    new-instance v0, Landroid/net/TelephonyNetworkSpecifier;

    invoke-direct {v0, p1}, Landroid/net/TelephonyNetworkSpecifier;-><init>(I)V

    .line 347
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 349
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;

    .line 350
    iget v0, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->capability:I

    .line 351
    iget p2, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->matchCriteria:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 354
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 356
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getLogPrefix()Ljava/lang/String;
    .locals 3

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 560
    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 562
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRouteSelectionRequest()Landroid/net/NetworkRequest;
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getTestNetworkRequest(Ljava/util/Set;)Landroid/net/NetworkRequest;

    move-result-object p0

    return-object p0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 277
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x15

    .line 278
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 279
    invoke-virtual {v1, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 280
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getTagLogPrefix()Ljava/lang/String;
    .locals 2

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTestNetworkRequest(Ljava/util/Set;)Landroid/net/NetworkRequest;
    .locals 1

    .line 375
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 376
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    const/4 v0, 0x7

    .line 377
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 378
    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 379
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getWifiEntryRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseWifiNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 313
    invoke-static {p0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiEntryRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getWifiExitRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseWifiNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 327
    invoke-static {p0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiExitRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getWifiNetworkRequest()Landroid/net/NetworkRequest;
    .locals 0

    .line 300
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseWifiNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    return-object p0
.end method

.method public final logInfo(Ljava/lang/String;)V
    .locals 3

    .line 573
    sget-object v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logWtf(Ljava/lang/String;)V
    .locals 3

    .line 583
    sget-object v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[WTF ] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final reevaluateNetworks()V
    .locals 6

    .line 422
    iget-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 427
    :cond_0
    invoke-static {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->-$$Nest$mgetSortedUnderlyingNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;)Ljava/util/TreeSet;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 429
    :goto_0
    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 434
    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, ""

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 435
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->priorityClass:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 440
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected network changed to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    goto :goto_2

    .line 442
    :cond_5
    iget-object v2, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", selected from list: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->logInfo(Ljava/lang/String;)V

    .line 445
    iput-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 446
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCb:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

    invoke-interface {p0, v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;->onSelectedUnderlyingNetworkChanged(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final registerOrUpdateNetworkRequests()V
    .locals 12

    .line 193
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 194
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 195
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 196
    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 197
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 202
    iget-boolean v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    if-nez v5, :cond_1

    .line 203
    new-instance v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 204
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 205
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getRouteSelectionRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 204
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 207
    new-instance v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 208
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 209
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getWifiEntryRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 208
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 213
    new-instance v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 214
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 215
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getWifiExitRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 214
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 219
    new-instance v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 220
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 221
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getWifiNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 220
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 223
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v6, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 225
    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-static {v7}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->dedupAndGetCapRequirementsForCell(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 226
    new-instance v9, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    invoke-direct {v9, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    .line 227
    iget-object v10, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v10, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 230
    invoke-virtual {p0, v6, v8}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getCellNetworkRequestForSubId(ILjava/util/Set;)Landroid/net/NetworkRequest;

    move-result-object v8

    iget-object v11, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 229
    invoke-virtual {v10, v8, v9, v11}, Landroid/net/ConnectivityManager;->requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 234
    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 235
    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 236
    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 237
    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_2
    if-eqz v0, :cond_3

    .line 243
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 246
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 249
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 252
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 254
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 255
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public teardown()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    .line 413
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->registerOrUpdateNetworkRequests()V

    .line 415
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 416
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 417
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

    .line 418
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 2

    const-string v0, "Missing newSnapshot"

    .line 390
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 393
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 396
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 399
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 400
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 401
    invoke-virtual {p1, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->registerOrUpdateNetworkRequests()V

    return-void
.end method
