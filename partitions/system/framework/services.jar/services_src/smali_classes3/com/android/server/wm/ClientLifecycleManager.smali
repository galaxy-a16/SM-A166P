.class public Lcom/android/server/wm/ClientLifecycleManager;
.super Ljava/lang/Object;
.source "ClientLifecycleManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;
    .locals 0

    .line 124
    invoke-static {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p0

    .line 125
    invoke-virtual {p0, p2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    return-object p0
.end method

.method public static transactionWithState(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)Landroid/app/servertransaction/ClientTransaction;
    .locals 0

    .line 111
    invoke-static {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p2}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    return-object p0
.end method


# virtual methods
.method public scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-static {p1, v0, p2}, Lcom/android/server/wm/ClientLifecycleManager;->transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method public scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .locals 0

    .line 67
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ClientLifecycleManager;->transactionWithState(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method public scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 0

    .line 83
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ClientLifecycleManager;->transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method public scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object p0

    .line 47
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->schedule()V

    .line 48
    instance-of p0, p0, Landroid/os/Binder;

    if-nez p0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    :cond_0
    return-void
.end method
