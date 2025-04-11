.class public Lcom/android/server/tare/InternalResourceService$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "InternalResourceService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAppOpsService(Lcom/android/server/tare/InternalResourceService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    const/16 v1, 0x46

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :catch_0
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmRestrictedApps(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseSetArray;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/tare/Agent;->onAppRestrictedLocked(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmRestrictedApps(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseSetArray;

    move-result-object p1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$1;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/tare/Agent;->onAppUnrestrictedLocked(ILjava/lang/String;)V

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
