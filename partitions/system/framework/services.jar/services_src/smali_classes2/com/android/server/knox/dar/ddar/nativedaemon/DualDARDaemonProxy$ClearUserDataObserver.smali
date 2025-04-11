.class public Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DualDARDaemonProxy.java"


# instance fields
.field public finished:Z

.field public packageName:Ljava/lang/String;

.field public success:Z

.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    const/4 p1, 0x0

    .line 618
    iput-boolean p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->finished:Z

    .line 620
    iput-boolean p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->success:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;-><init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 623
    monitor-enter p0

    const/4 v0, 0x1

    .line 624
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->finished:Z

    .line 625
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->packageName:Ljava/lang/String;

    .line 626
    iput-boolean p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->success:Z

    .line 627
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 628
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
