.class public Lcom/android/server/am/PhantomProcessRecord$1;
.super Ljava/lang/Object;
.source "PhantomProcessRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/PhantomProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PhantomProcessRecord;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/PhantomProcessRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ActivityManager"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is still alive after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mZombie:Z

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    .line 146
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
