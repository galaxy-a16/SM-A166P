.class public Lcom/android/server/vcn/TelephonySubscriptionTracker;
.super Landroid/content/BroadcastReceiver;
.source "TelephonySubscriptionTracker.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

.field public final mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

.field public final mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field public final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final mCarrierPrivilegesCallbacks:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public final mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public final mReadySubIdsBySlotId:Ljava/util/Map;

.field public final mSubIdToCarrierConfigMap:Ljava/util/Map;

.field public final mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$6-1hsU8NGPl-Hnj1hqNBl7_M4gc(Lcom/android/server/vcn/TelephonySubscriptionTracker;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->lambda$handleSubscriptionsChanged$1(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_H1fVn3-3mcEgxtekARJ7vjzvI(Lcom/android/server/vcn/TelephonySubscriptionTracker;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->lambda$new$0(IIII)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    invoke-direct {v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    const-string v0, "Missing context"

    .line 127
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    const-string v0, "Missing handler"

    .line 128
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    const-string p2, "Missing callback"

    .line 129
    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    iput-object p3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    const-string p2, "Missing deps"

    .line 130
    invoke-static {p4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 132
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 133
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 134
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 135
    new-instance p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener-IA;)V

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    .line 137
    new-instance p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;

    invoke-direct {p1, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method private synthetic lambda$handleSubscriptionsChanged$1(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    invoke-interface {p0, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;->onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    return-void
.end method

.method private synthetic lambda$new$0(IIII)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleActionCarrierConfigChanged(II)V

    return-void
.end method


# virtual methods
.method public getReadySubIdsBySlotId()Ljava/util/Map;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSubIdToCarrierConfigMap()Ljava/util/Map;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final handleActionCarrierConfigChanged(II)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    sget-object v1, Landroid/net/vcn/VcnManager;->VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    invoke-virtual {v1, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 324
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 327
    iget-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    invoke-direct {v1, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;-><init>(Landroid/os/PersistableBundle;)V

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    goto :goto_0

    .line 333
    :cond_2
    iget-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 335
    iget-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final handleActionMultiSimConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->unregisterCarrierPrivilegesCallbacks()V

    .line 300
    iget-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    .line 301
    iget-object p2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 302
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 306
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->registerCarrierPrivilegesCallbacks()V

    .line 311
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    return-void
.end method

.method public handleSubscriptionsChanged()V
    .locals 6

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 234
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 249
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 251
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 253
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    .line 254
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 255
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 256
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    :cond_3
    new-instance v2, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 264
    invoke-virtual {v3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;->getActiveDataSubscriptionId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;-><init>(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v2, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 271
    iput-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 272
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 287
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    sget-object p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown intent received with action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleActionMultiSimConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public register()V
    .locals 5

    .line 152
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 160
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    invoke-virtual {v1, v0, v2}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->registerCarrierPrivilegesCallbacks()V

    return-void
.end method

.method public final registerCarrierPrivilegesCallbacks()V
    .locals 5

    .line 168
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 172
    :try_start_0
    new-instance v3, Lcom/android/server/vcn/TelephonySubscriptionTracker$2;

    invoke-direct {v3, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$2;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    .line 185
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2, v0, v3}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 187
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 190
    sget-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->TAG:Ljava/lang/String;

    const-string v1, "Encounted exception registering carrier privileges listeners"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setReadySubIdsBySlotId(Ljava/util/Map;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 344
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setSubIdToCarrierConfigMap(Ljava/util/Map;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 351
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final unregisterCarrierPrivilegesCallbacks()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 211
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
