.class public Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerShellCommand.java"


# instance fields
.field public finished:Z

.field public result:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2431
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0

    .line 2437
    monitor-enter p0

    const/4 p1, 0x1

    .line 2438
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z

    .line 2439
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    .line 2440
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2441
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
