.class public Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;
.super Ljava/lang/Object;
.source "DualDARDaemonProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string v2, "coudn\'t connect with daemon!"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method
