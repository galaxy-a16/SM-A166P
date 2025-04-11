.class public Lcom/android/server/vcn/Vcn;
.super Landroid/os/Handler;
.source "Vcn.java"


# static fields
.field public static final CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mConfig:Landroid/net/vcn/VcnConfig;

.field public final mContentResolver:Lcom/android/server/vcn/Vcn$VcnContentResolver;

.field public volatile mCurrentStatus:I

.field public final mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

.field public mIsMobileDataEnabled:Z

.field public mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public final mMobileDataSettingsObserver:Landroid/database/ContentObserver;

.field public final mMobileDataStateListeners:Ljava/util/Map;

.field public final mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

.field public final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field public final mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

.field public final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field public final mVcnGatewayConnections:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmVcnCallback(Lcom/android/server/vcn/Vcn;)Lcom/android/server/VcnManagementService$VcnCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 79
    const-class v0, Lcom/android/server/vcn/Vcn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    const/16 v0, 0xc

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)V
    .locals 7

    .line 202
    new-instance v6, Lcom/android/server/vcn/Vcn$Dependencies;

    invoke-direct {v6}, Lcom/android/server/vcn/Vcn$Dependencies;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vcn/Vcn;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;Lcom/android/server/vcn/Vcn$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;Lcom/android/server/vcn/Vcn$Dependencies;)V
    .locals 2

    const-string v0, "Missing vcnContext"

    .line 213
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    const/4 v0, 0x2

    .line 192
    iput v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 214
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    const-string v0, "Missing subscriptionGroup"

    .line 215
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object p2, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    const-string p2, "Missing vcnCallback"

    .line 216
    invoke-static {p5, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lcom/android/server/VcnManagementService$VcnCallback;

    iput-object p5, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    const-string p2, "Missing deps"

    .line 217
    invoke-static {p6, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/vcn/Vcn;->mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

    .line 218
    new-instance p2, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    const/4 p5, 0x0

    invoke-direct {p2, p0, p5}, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;-><init>(Lcom/android/server/vcn/Vcn;Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener-IA;)V

    iput-object p2, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 219
    invoke-virtual {p6, p1}, Lcom/android/server/vcn/Vcn$Dependencies;->newVcnContentResolver(Lcom/android/server/vcn/VcnContext;)Lcom/android/server/vcn/Vcn$VcnContentResolver;

    move-result-object p6

    iput-object p6, p0, Lcom/android/server/vcn/Vcn;->mContentResolver:Lcom/android/server/vcn/Vcn$VcnContentResolver;

    .line 220
    new-instance v0, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;

    invoke-direct {v0, p0, p0, p5}, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;-><init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver-IA;)V

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataSettingsObserver:Landroid/database/ContentObserver;

    const-string/jumbo p5, "mobile_data"

    .line 222
    invoke-static {p5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p6, p5, v1, v0}, Lcom/android/server/vcn/Vcn$VcnContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p5, "Missing config"

    .line 226
    invoke-static {p3, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p5, p3

    check-cast p5, Landroid/net/vcn/VcnConfig;

    iput-object p3, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    const-string p3, "Missing snapshot"

    .line 227
    invoke-static {p4, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 230
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getMobileDataStatus()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 233
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->updateMobileDataStateListeners()V

    .line 236
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/vcn/VcnNetworkProvider;->registerListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    return-void
.end method

.method public static getNetworkScore()Landroid/net/NetworkScore;
    .locals 2

    .line 664
    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/16 v1, 0x34

    .line 665
    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 666
    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vcn ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsMobileDataEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mVcnGatewayConnections:"

    .line 638
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 640
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 641
    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 644
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 646
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;
    .locals 0

    .line 448
    iget-boolean p0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    if-eqz p0, :cond_0

    .line 449
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 452
    :cond_0
    new-instance p0, Landroid/util/ArraySet;

    .line 453
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 454
    sget-object p1, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getLogPrefix()Ljava/lang/String;
    .locals 2

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 575
    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMobileDataStatus()Z
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 545
    invoke-virtual {p0, v1}, Lcom/android/server/vcn/Vcn;->getTelephonyManagerForSubid(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getStatus()I
    .locals 0

    .line 260
    iget p0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    return p0
.end method

.method public final getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 566
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public final getTelephonyManagerForSubid(I)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 570
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method public getVcnGatewayConnectionConfigMap()Ljava/util/Map;
    .locals 1

    .line 279
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getVcnGatewayConnections()Ljava/util/Set;
    .locals 1

    .line 272
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final handleConfigUpdated(Landroid/net/vcn/VcnConfig;)V
    .locals 3

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config updated: old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnConfig;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/vcn/VcnConfig;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 329
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    .line 334
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 336
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 340
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v2}, Landroid/net/vcn/VcnConfig;->getGatewayConnectionConfigs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    const-string v0, "Found gatewayConnectionConfig without GatewayConnection"

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config updated, restarting gateway "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    goto :goto_0

    .line 354
    :cond_2
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {p1, p0}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    return-void
.end method

.method public final handleGatewayConnectionQuit(Landroid/net/vcn/VcnGatewayConnectionConfig;)V
    .locals 2

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnGatewayConnection quit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {p1, p0}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 293
    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    if-eq v0, v1, :cond_0

    return-void

    .line 298
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->handleTeardown()V

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->handleMobileDataToggled()V

    goto :goto_0

    .line 312
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->handleSafeModeStatusChanged()V

    goto :goto_0

    .line 309
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->handleGatewayConnectionQuit(Landroid/net/vcn/VcnGatewayConnectionConfig;)V

    goto :goto_0

    .line 306
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->handleSubscriptionsChanged(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    goto :goto_0

    .line 303
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->handleNetworkRequested(Landroid/net/NetworkRequest;)V

    goto :goto_0

    .line 300
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/vcn/VcnConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->handleConfigUpdated(Landroid/net/vcn/VcnConfig;)V

    :goto_0
    return-void
.end method

.method public final handleMobileDataToggled()V
    .locals 4

    .line 511
    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 512
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getMobileDataStatus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    if-eq v0, v1, :cond_5

    .line 519
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 520
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 521
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 524
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v2

    const/16 v3, 0xc

    .line 525
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    .line 526
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "Found gatewayConnectionConfig without GatewayConnection"

    .line 528
    invoke-virtual {p0, v1}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    goto :goto_0

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    if-eqz v1, :cond_4

    const-string v1, "enabled"

    goto :goto_1

    :cond_4
    const-string v1, "disabled"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final handleNetworkRequested(Landroid/net/NetworkRequest;)V
    .locals 9

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 402
    invoke-virtual {p0, p1, v1}, Lcom/android/server/vcn/Vcn;->isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request already satisfied by existing VcnGatewayConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v0}, Landroid/net/vcn/VcnConfig;->getGatewayConnectionConfigs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 412
    invoke-virtual {p0, p1, v1}, Lcom/android/server/vcn/Vcn;->isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    invoke-virtual {p0, v1}, Lcom/android/server/vcn/Vcn;->getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "Attempted to bring up VcnGatewayConnection for config with existing VcnGatewayConnection"

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    return-void

    .line 428
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bringing up new VcnGatewayConnection for request "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

    iget-object v3, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    new-instance v7, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;

    invoke-direct {v7, p0, v1}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;-><init>(Lcom/android/server/vcn/Vcn;Landroid/net/vcn/VcnGatewayConnectionConfig;)V

    iget-boolean v8, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    move-object v6, v1

    .line 430
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vcn/Vcn$Dependencies;->newVcnGatewayConnection(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;Z)Lcom/android/server/vcn/VcnGatewayConnection;

    move-result-object p1

    .line 437
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 443
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request could not be fulfilled by VCN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    return-void
.end method

.method public final handleSafeModeStatusChanged()V
    .locals 4

    const-string v0, "VcnGatewayConnection safe mode status changed"

    .line 375
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 380
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->isInSafeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 386
    :goto_0
    iget v1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    .line 388
    :goto_1
    iput v3, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 389
    iget v3, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    if-eq v1, v3, :cond_4

    .line 390
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    invoke-interface {v1, v0}, Lcom/android/server/VcnManagementService$VcnCallback;->onSafeModeStatusChanged(Z)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Safe mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget v1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    if-ne v1, v2, :cond_3

    const-string v1, "entered"

    goto :goto_2

    :cond_3
    const-string v1, "exited"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final handleSubscriptionsChanged(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 2

    .line 470
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 472
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 473
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->updateMobileDataStateListeners()V

    .line 480
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->handleMobileDataToggled()V

    return-void
.end method

.method public final handleTeardown()V
    .locals 3

    const-string v0, "Tearing down"

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->unregisterListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 362
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;

    .line 367
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_1

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    .line 371
    iput v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    return-void
.end method

.method public isMobileDataEnabled()Z
    .locals 0

    .line 651
    iget-boolean p0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    return p0
.end method

.method public final isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z
    .locals 2

    .line 555
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v1, 0x0

    .line 556
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v1, 0x1c

    .line 557
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 558
    invoke-virtual {p0, p2}, Lcom/android/server/vcn/Vcn;->getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 559
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public final logDbg(Ljava/lang/String;)V
    .locals 2

    .line 588
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

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

    .line 596
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "INFO: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public final logWtf(Ljava/lang/String;)V
    .locals 3

    .line 616
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "WTF: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    .line 656
    iput-boolean p1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    return-void
.end method

.method public teardownAsynchronously()V
    .locals 1

    const/16 v0, 0x64

    .line 255
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public updateConfig(Landroid/net/vcn/VcnConfig;)V
    .locals 1

    const-string v0, "Missing config"

    .line 241
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final updateMobileDataStateListeners()V
    .locals 6

    .line 484
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    .line 485
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 488
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 489
    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 490
    new-instance v4, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;

    invoke-direct {v4, p0}, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;-><init>(Lcom/android/server/vcn/Vcn;)V

    .line 493
    invoke-virtual {p0, v3}, Lcom/android/server/vcn/Vcn;->getTelephonyManagerForSubid(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 494
    iget-object v5, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    .line 500
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 501
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 503
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 504
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyCallback;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 1

    const-string v0, "Missing snapshot"

    .line 248
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 250
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
