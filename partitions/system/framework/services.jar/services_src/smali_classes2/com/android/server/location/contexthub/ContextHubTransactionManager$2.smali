.class public Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$nanoAppId:J

.field public final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    .line 195
    iput-object v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    move v1, p7

    iput v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    move-wide v1, p8

    iput-wide v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact()I
    .locals 5

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmContextHubProxy(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 200
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v4

    .line 199
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/location/contexthub/IContextHubWrapper;->unloadNanoapp(IJI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while trying to unload nanoapp with ID 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ContextHubTransactionManager"

    .line 202
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onTransactionComplete(I)V
    .locals 6

    const/16 v0, 0x191

    .line 210
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 215
    invoke-static {v5, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$mtoStatsTransactionResult(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)I

    move-result v5

    .line 210
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IJIII)V

    .line 217
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    if-nez p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->logNanoappUnload(IJZ)V

    if-nez p1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->removeNanoAppInstance(IJ)V

    .line 226
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    if-nez p1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->-$$Nest$fgetmClientManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/ContextHubClientManager;

    move-result-object p1

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onNanoAppUnloaded(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ContextHubTransactionManager"

    const-string v0, "RemoteException while calling client onTransactionComplete"

    .line 231
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
