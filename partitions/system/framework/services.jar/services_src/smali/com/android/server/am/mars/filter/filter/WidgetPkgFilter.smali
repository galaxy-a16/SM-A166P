.class public Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;
.super Ljava/lang/Object;
.source "WidgetPkgFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mBoundedWidgetPkgs:Landroid/util/ArrayMap;

.field public mContext:Landroid/content/Context;

.field public mContextUserId:I

.field public mRunningWidgets:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;
    .locals 1

    .line 38
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 3

    .line 61
    iget p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->isSubUser(I)Z

    move-result p3

    if-nez p3, :cond_0

    return v0

    .line 65
    :cond_0
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result p3

    const/4 v1, 0x4

    if-eqz p3, :cond_2

    const/4 p3, 0x3

    if-ne p4, p3, :cond_2

    .line 67
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 68
    :try_start_0
    iget-object p4, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p4

    if-lez p4, :cond_1

    .line 69
    iget-object p4, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    if-eqz p4, :cond_1

    .line 70
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 71
    monitor-exit p3

    return v1

    .line 74
    :cond_1
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 77
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 78
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    if-eqz p0, :cond_3

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 80
    monitor-exit p3

    return v1

    .line 82
    :cond_3
    monitor-exit p3

    return v0

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public getBoundAppWidgetPackages()V
    .locals 9

    .line 96
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 98
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 99
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 100
    iget v4, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->isSubUser(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    .line 104
    invoke-virtual {v0, v4, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 105
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 106
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 107
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v0, v5, v3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 110
    iget-object v6, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 111
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_2

    .line 113
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :cond_2
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 116
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public final isSubUser(I)Z
    .locals 2

    .line 87
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x96

    const/4 v1, 0x1

    if-lt p1, p0, :cond_1

    const/16 p0, 0xa0

    if-gt p1, p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-nez p0, :cond_2

    .line 92
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public onAppWidgetDisabled(Ljava/lang/String;I)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v1, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->remove(Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAppWidgetEnabled(Ljava/lang/String;I)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;-><init>(Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages-IA;)V

    .line 131
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->add(Ljava/lang/String;)V

    .line 132
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    return-void
.end method
