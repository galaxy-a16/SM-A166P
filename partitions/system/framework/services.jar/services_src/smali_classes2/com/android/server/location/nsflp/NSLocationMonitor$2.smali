.class public Lcom/android/server/location/nsflp/NSLocationMonitor$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NSLocationMonitor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 10

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "onSubscriptionsChanged"

    .line 477
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNetworkLock(Lcom/android/server/location/nsflp/NSLocationMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 481
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v4}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmSimCount(Lcom/android/server/location/nsflp/NSLocationMonitor;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_6

    .line 482
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_4

    .line 484
    array-length v6, v4

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 490
    :cond_0
    aget v4, v4, v1

    .line 491
    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v6}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmSimSubId(Lcom/android/server/location/nsflp/NSLocationMonitor;)[I

    move-result-object v6

    if-eqz v6, :cond_2

    .line 492
    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v6}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmSimSubId(Lcom/android/server/location/nsflp/NSLocationMonitor;)[I

    move-result-object v6

    array-length v6, v6

    iget-object v7, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v7}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmSimCount(Lcom/android/server/location/nsflp/NSLocationMonitor;)I

    move-result v7

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v6}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmSimSubId(Lcom/android/server/location/nsflp/NSLocationMonitor;)[I

    move-result-object v6

    aget v6, v6, v2

    if-ne v4, v6, :cond_1

    const-string v5, "NSLocationMonitor"

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SubId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] for sim["

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] was not changed"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    const-string v6, "NSLocationMonitor"

    .line 497
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SubId was changed for sim["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v6}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmSimSubId(Lcom/android/server/location/nsflp/NSLocationMonitor;)[I

    move-result-object v6

    aput v4, v6, v2

    .line 502
    :cond_2
    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v6}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmContext(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_5

    .line 505
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v3}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmPhoneStateListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)[Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    const-string v3, "NSLocationMonitor"

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregister previous PhoneStateListener SimSlot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v3}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmPhoneStateListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)[Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v6, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 511
    :cond_3
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v3}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmPhoneStateListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)[Landroid/telephony/PhoneStateListener;

    move-result-object v3

    new-instance v7, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;

    iget-object v8, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v4, v9}, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;ILcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener-IA;)V

    aput-object v7, v3, v2

    .line 512
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v3}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmPhoneStateListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)[Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v6, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    move v3, v5

    goto :goto_2

    :cond_4
    :goto_1
    const-string v4, "NSLocationMonitor"

    .line 485
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load subId for sim["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 519
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isInitialized"

    .line 520
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 522
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p0

    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->SIM_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 524
    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
