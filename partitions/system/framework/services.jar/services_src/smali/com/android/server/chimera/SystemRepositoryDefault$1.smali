.class public Lcom/android/server/chimera/SystemRepositoryDefault$1;
.super Landroid/app/IUidObserver$Stub;
.source "SystemRepositoryDefault.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemRepositoryDefault;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepositoryDefault;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$1;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$1;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {v0}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmChimeraUidObservers(Lcom/android/server/chimera/SystemRepositoryDefault;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$1;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {p0}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmChimeraUidObservers(Lcom/android/server/chimera/SystemRepositoryDefault;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/SystemRepository$ChimeraUidObserver;

    .line 473
    invoke-interface {v1, p1, p2}, Lcom/android/server/chimera/SystemRepository$ChimeraUidObserver;->onUidGone(IZ)V

    goto :goto_0

    .line 475
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

.method public onUidIdle(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidProcAdjChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    .line 0
    return-void
.end method
