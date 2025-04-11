.class public final Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;
.super Landroid/content/BroadcastReceiver;
.source "UidRestrictController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/UidRestrictController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/UidRestrictController;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->this$0:Lcom/android/server/job/controllers/UidRestrictController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 135
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->onReceiveInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->this$0:Lcom/android/server/job/controllers/UidRestrictController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "android.intent.ACTION_JOB_RESTRICT_UID"

    .line 141
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "uid"

    const/4 v2, -0x1

    .line 142
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "restrict"

    const/4 v3, 0x0

    .line 143
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-lez v1, :cond_1

    .line 145
    invoke-static {}, Lcom/android/server/job/controllers/UidRestrictController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "JobScheduler.UidRestrict"

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending jobs: u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", restrict="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->this$0:Lcom/android/server/job/controllers/UidRestrictController;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/controllers/UidRestrictController;->setUidRestrictedLocked(IZ)Z

    .line 152
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startTracking()V
    .locals 2

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.ACTION_JOB_RESTRICT_UID"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->this$0:Lcom/android/server/job/controllers/UidRestrictController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
