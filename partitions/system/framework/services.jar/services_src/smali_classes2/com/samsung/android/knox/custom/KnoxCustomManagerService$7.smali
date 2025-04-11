.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    .line 10690
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed(I)V
    .locals 4

    .line 10702
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherLock(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "KnoxCustomManagerService"

    .line 10703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTetheringFailed + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10704
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v1, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fputmTetheringResultCode(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V

    .line 10705
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherLock(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10706
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTetheringStarted()V
    .locals 3

    .line 10693
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherLock(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "KnoxCustomManagerService"

    const-string/jumbo v2, "onTetheringStarted"

    .line 10694
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10695
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fputmTetheringResultCode(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V

    .line 10696
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherLock(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10697
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
