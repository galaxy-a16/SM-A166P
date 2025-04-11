.class public Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;
.super Ljava/lang/Object;
.source "McfDeviceSyncManager.java"

# interfaces
.implements Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmPreconditionObserver(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/PreconditionObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->meetConditions()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v1, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fputmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Z)V

    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {p1, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$mremoveMessage(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const-wide/16 v0, 0x0

    invoke-static {p0, v2, p2, v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$msendMessageDelayed(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;IIJ)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {p2, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$mremoveMessage(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    and-int/lit16 p1, p1, 0xf00

    if-lez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const-wide/16 p1, 0xbb8

    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$munbindMcf(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    :goto_0
    return-void
.end method

.method public onPackageReplaced(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmPreconditionObserver(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/PreconditionObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->meetConditions()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageReplaced - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v1, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fputmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Z)V

    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$mremoveMessage(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    :goto_0
    return-void
.end method

.method public onPackageRestarted()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmPreconditionObserver(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/PreconditionObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->meetConditions()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageRestarted - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v1, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fputmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Z)V

    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$mremoveMessage(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const/4 v0, 0x6

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x2

    invoke-static {p0, v3, v0, v1, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$msendMessageDelayed(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;IIJ)V

    return-void
.end method
