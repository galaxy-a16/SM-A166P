.class public Lcom/android/server/content/SyncManager$6;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 465
    iget-object v0, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-$$Nest$mgetAllPendingSyncs(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    .line 466
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 467
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 468
    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 471
    :cond_1
    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    if-ne v3, v5, :cond_3

    goto :goto_1

    .line 476
    :cond_3
    iget-object v6, v3, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 477
    iget-object v6, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v6

    const-string v7, "Removing duplicate sync: "

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 478
    iget-object v6, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleanupJobs() x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/android/server/content/SyncManager;->-$$Nest$mcancelJob(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method
