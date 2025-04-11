.class public Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;
.super Ljava/lang/Object;
.source "AppOpsUidStateTrackerImpl.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;


# instance fields
.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$lockingExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$_XaXxDGv60zwlgSKtI-3mpHUP_0(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->lambda$executeDelayed$1(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sYtON0b6Ta2c2mKtxQGJJ7-b1js(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->lambda$execute$0(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$lockingExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$execute$0(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 95
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$executeDelayed$1(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 100
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$lockingExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public executeDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->val$lockingExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
