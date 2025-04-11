.class public Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;
.super Ljava/lang/Object;
.source "DualDarDaemonConnector.java"


# instance fields
.field public availableResponseCount:I

.field public final cmd:Ljava/lang/String;

.field public final cmdNum:I

.field public responses:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    .line 369
    iput p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    .line 370
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmd:Ljava/lang/String;

    return-void
.end method
