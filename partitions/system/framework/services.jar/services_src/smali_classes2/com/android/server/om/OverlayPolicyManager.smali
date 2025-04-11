.class public abstract Lcom/android/server/om/OverlayPolicyManager;
.super Ljava/lang/Object;
.source "OverlayPolicyManager.java"


# static fields
.field public static final mLock:Ljava/lang/Object;

.field public static policies:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/om/OverlayPolicyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static filterByPolicy(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;
    .locals 6

    if-nez p0, :cond_0

    .line 32
    new-instance p0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {p0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 36
    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    sget-object v4, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;

    .line 39
    invoke-interface {v5, v2, p1, p2, p3}, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;->retainOverlay(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Z

    move-result v5

    and-int/2addr v3, v5

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    sget-object v2, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;

    .line 48
    invoke-interface {v5, v1, p1, p2, p3}, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;->retainOverlay(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Z

    move-result v5

    and-int/2addr v4, v5

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_4

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_2

    .line 54
    :cond_6
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public static filterByPolicy(Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;
    .locals 0

    .line 27
    invoke-static {p0, p0, p1, p2}, Lcom/android/server/om/OverlayPolicyManager;->filterByPolicy(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public static registerPolicy(Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/android/server/om/OverlayPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
