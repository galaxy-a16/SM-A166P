.class public Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
.super Ljava/lang/Object;
.source "UnderlyingNetworkRecord.java"


# instance fields
.field public mIsBlocked:Z

.field public mLinkProperties:Landroid/net/LinkProperties;

.field public final mNetwork:Landroid/net/Network;

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public mWasIsBlockedSet:Z


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public build(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .locals 13

    move-object v0, p0

    .line 228
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    iget-object v3, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v5, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    iget-boolean v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mIsBlocked:Z

    move-object v2, v1

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;-><init>(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ZLcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    return-object v1

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called build before UnderlyingNetworkRecord was valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValid()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mWasIsBlockedSet:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIsBlocked(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mIsBlocked:Z

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mWasIsBlockedSet:Z

    return-void
.end method

.method public setLinkProperties(Landroid/net/LinkProperties;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method public setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method
