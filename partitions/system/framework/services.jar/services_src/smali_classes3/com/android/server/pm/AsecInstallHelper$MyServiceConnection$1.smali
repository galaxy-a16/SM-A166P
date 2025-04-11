.class public Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;
.super Ljava/lang/Object;
.source "AsecInstallHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;Landroid/content/Context;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;->this$0:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    iput-object p2, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1035
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->-$$Nest$sfgetsInstance()Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1036
    monitor-enter p0

    .line 1037
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->-$$Nest$sfgetsInstance()Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1038
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;->this$0:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    const/4 v2, 0x0

    .line 1039
    iput-boolean v2, v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    .line 1040
    invoke-static {v0, v1}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->-$$Nest$fputmUnbindingRunnable(Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;Ljava/lang/Runnable;)V

    .line 1041
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
