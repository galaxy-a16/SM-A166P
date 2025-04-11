.class public final Lcom/android/server/tare/Agent$AgentHandler;
.super Landroid/os/Handler;
.source "Agent.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/Agent;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/Agent;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v5}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmLock(Lcom/android/server/tare/Agent;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v6}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmActionAffordabilityNotes(Lcom/android/server/tare/Agent;)Landroid/util/SparseArrayMap;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, v0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-virtual {v7, v2, v1}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v15

    iget-object v7, v0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v7}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmIrs(Lcom/android/server/tare/Agent;)Lcom/android/server/tare/InternalResourceService;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;)Z

    move-result v7

    move v13, v3

    :goto_0
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v13, v8, :cond_4

    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    if-nez v7, :cond_2

    iget-object v8, v0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v14}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v11

    invoke-static {v14}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetStockLimitHonoringCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v17

    move-wide v9, v15

    move/from16 v19, v13

    move-object/from16 p1, v14

    move-wide/from16 v13, v17

    invoke-static/range {v8 .. v14}, Lcom/android/server/tare/Agent;->-$$Nest$misAffordableLocked(Lcom/android/server/tare/Agent;JJJ)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v3

    goto :goto_2

    :cond_2
    move/from16 v19, v13

    move-object/from16 p1, v14

    :goto_1
    move v8, v4

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v9

    if-eq v9, v8, :cond_3

    move-object/from16 v9, p1

    invoke-static {v9, v8}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    iget-object v8, v0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v8}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmIrs(Lcom/android/server/tare/Agent;)Lcom/android/server/tare/InternalResourceService;

    move-result-object v8

    invoke-virtual {v8, v2, v1, v9}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_3
    add-int/lit8 v13, v19, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v0, v2, v1}, Lcom/android/server/tare/Agent;->-$$Nest$mscheduleBalanceCheckLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;)V

    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    iget-object v1, v0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v1}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmLock(Lcom/android/server/tare/Agent;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/server/tare/Agent$AgentHandler;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v0, v3}, Lcom/android/server/tare/Agent;->-$$Nest$monAnythingChangedLocked(Lcom/android/server/tare/Agent;Z)V

    monitor-exit v1

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
