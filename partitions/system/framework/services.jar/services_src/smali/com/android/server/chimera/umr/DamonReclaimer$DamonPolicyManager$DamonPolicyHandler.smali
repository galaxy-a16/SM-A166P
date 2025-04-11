.class public final Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;
.super Landroid/os/Handler;
.source "DamonReclaimer.java"


# instance fields
.field public mPreviousEnableTimeout:I

.field public final synthetic this$1:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;Landroid/os/Looper;)V
    .locals 1

    .line 887
    iput-object p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->this$1:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 888
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    const/4 p1, -0x1

    .line 889
    iput p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->mPreviousEnableTimeout:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 895
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "DamonPolicyHandler: unhandled case"

    .line 925
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 898
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->this$1:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->this$0:Lcom/android/server/chimera/umr/DamonReclaimer;

    invoke-static {p0}, Lcom/android/server/chimera/umr/DamonReclaimer;->-$$Nest$mdisableReclaim(Lcom/android/server/chimera/umr/DamonReclaimer;)Z

    const-string p0, "DamonPolicyHandler:handleMessage: disabling damon"

    .line 899
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "DamonPolicyHandler: reclaim timeout"

    .line 921
    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 922
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->this$1:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->this$0:Lcom/android/server/chimera/umr/DamonReclaimer;

    invoke-static {p0}, Lcom/android/server/chimera/umr/DamonReclaimer;->-$$Nest$mdisableReclaim(Lcom/android/server/chimera/umr/DamonReclaimer;)Z

    goto/16 :goto_0

    .line 902
    :cond_2
    iget-object v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->this$1:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->getDamonEnableTimeout()I

    move-result v0

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DamonPolicyHandler:handleMessage: timeout "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    if-lez v0, :cond_3

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DamonPolicyHandler:handleMessage: previous enabled timeout "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->mPreviousEnableTimeout:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentTimeout "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v3

    .line 905
    invoke-static {v1, v3}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 908
    iget v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->mPreviousEnableTimeout:I

    if-eq v0, v1, :cond_4

    .line 909
    iget-object v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->this$1:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    iget-object v1, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->this$0:Lcom/android/server/chimera/umr/DamonReclaimer;

    invoke-static {v1}, Lcom/android/server/chimera/umr/DamonReclaimer;->-$$Nest$menableReclaim(Lcom/android/server/chimera/umr/DamonReclaimer;)Z

    .line 910
    iget-object v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->this$1:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    invoke-static {v1}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->-$$Nest$fgetmPolicyHandler(Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;)Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->_sendMessage(Landroid/os/Handler;II)V

    .line 911
    iput v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->mPreviousEnableTimeout:I

    goto :goto_0

    .line 914
    :cond_3
    iput v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->mPreviousEnableTimeout:I

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DamonPolicyHandler:handleMessage: disabling damon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 916
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v1

    .line 915
    invoke-static {v0, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 917
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager$DamonPolicyHandler;->this$1:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->this$0:Lcom/android/server/chimera/umr/DamonReclaimer;

    invoke-static {p0}, Lcom/android/server/chimera/umr/DamonReclaimer;->-$$Nest$mdisableReclaim(Lcom/android/server/chimera/umr/DamonReclaimer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DamonPolicyHandler: failed to handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
