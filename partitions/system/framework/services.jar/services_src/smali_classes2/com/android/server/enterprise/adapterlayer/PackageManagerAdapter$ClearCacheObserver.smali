.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerAdapter.java"


# instance fields
.field public finished:Z

.field public packageName:Ljava/lang/String;

.field public success:Z


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 159
    monitor-enter p0

    const/4 v0, 0x1

    .line 160
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->finished:Z

    .line 161
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->packageName:Ljava/lang/String;

    .line 162
    iput-boolean p2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->success:Z

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 164
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
