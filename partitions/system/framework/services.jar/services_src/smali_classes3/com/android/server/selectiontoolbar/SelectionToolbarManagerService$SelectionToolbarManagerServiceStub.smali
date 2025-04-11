.class public final Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;
.super Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;
.source "SelectionToolbarManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-direct {p0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissToolbar(JI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {v0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->access$400(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {p0, p3}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->access$500(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->dismissToolbar(J)V

    goto :goto_0

    :cond_0
    const-string p0, "SelectionToolbarManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dismissToolbar(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "SelectionToolbarManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->access$600(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    const-string p3, ""

    invoke-static {p0, p3, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->access$700(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hideToolbar(JI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {v0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->access$200(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {p0, p3}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->access$300(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->hideToolbar(J)V

    goto :goto_0

    :cond_0
    const-string p0, "SelectionToolbarManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hideToolbar(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {v0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->access$000(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService$SelectionToolbarManagerServiceStub;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-static {p0, p3}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;->access$100(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "SelectionToolbarManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "showToolbar(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
