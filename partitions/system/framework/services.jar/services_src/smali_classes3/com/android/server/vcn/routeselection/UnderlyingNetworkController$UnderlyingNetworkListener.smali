.class Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UnderlyingNetworkController.java"


# instance fields
.field public final mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;


# direct methods
.method public static bridge synthetic -$$Nest$mgetSortedUnderlyingNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;)Ljava/util/TreeSet;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->getSortedUnderlyingNetworks()Ljava/util/TreeSet;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    const/4 p1, 0x1

    .line 470
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    .line 466
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getSortedUnderlyingNetworks()Ljava/util/TreeSet;
    .locals 10

    .line 474
    new-instance v0, Ljava/util/TreeSet;

    .line 475
    invoke-static {}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 478
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 479
    invoke-virtual {v3}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmVcnContext(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/VcnContext;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v2

    .line 483
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmSubscriptionGroup(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Landroid/os/ParcelUuid;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmLastSnapshot(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v7

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmCurrentRecord(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v8

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmCarrierConfig(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    move-result-object v9

    .line 481
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->build(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v2

    .line 488
    iget v3, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->priorityClass:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 489
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 499
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    new-instance v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;-><init>(Landroid/net/Network;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    .line 545
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    if-nez v0, :cond_0

    .line 547
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got blocked status change for unknown key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mlogWtf(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;Ljava/lang/String;)V

    return-void

    .line 551
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->setIsBlocked(Z)V

    .line 552
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 553
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mreevaluateNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    :cond_1
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    .line 514
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    if-nez v0, :cond_0

    .line 516
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got capabilities change for unknown key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mlogWtf(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;Ljava/lang/String;)V

    return-void

    .line 520
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 521
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 522
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mreevaluateNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    :cond_1
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    .line 530
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    if-nez v0, :cond_0

    .line 532
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got link properties change for unknown key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mlogWtf(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;Ljava/lang/String;)V

    return-void

    .line 536
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->setLinkProperties(Landroid/net/LinkProperties;)V

    .line 537
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 538
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mreevaluateNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mreevaluateNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    return-void
.end method
