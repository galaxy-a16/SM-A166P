.class public Lcom/android/server/am/mars/filter/filter/AllowListFilter;
.super Ljava/lang/Object;
.source "AllowListFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mCarrierAllowList:Ljava/util/List;

.field public mContext:Landroid/content/Context;

.field public mDefaultAllowList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mContext:Landroid/content/Context;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/AllowListFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/AllowListFilter;
    .locals 1

    .line 25
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    monitor-enter v1

    .line 48
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 49
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 46
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->setContext(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->setCarrierAllowList()V

    return-void
.end method

.method public isInDefaultAllowList(Ljava/lang/String;)Z
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 60
    monitor-exit v0

    return v2

    .line 62
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 65
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 66
    monitor-exit v1

    return v2

    .line 68
    :cond_1
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 62
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setCarrierAllowList()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 87
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setDefaultAllowList(Ljava/util/ArrayList;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 75
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
