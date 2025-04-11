.class public final Lcom/android/server/inputmethod/ImeTrackerService;
.super Lcom/android/internal/inputmethod/IImeTracker$Stub;
.source "ImeTrackerService.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;


# direct methods
.method public static synthetic $r8$lambda$-QjM4kOeOCC7EhBDR7btOlr5ZLo(Lcom/android/server/inputmethod/ImeTrackerService;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/ImeTrackerService;->lambda$onRequestHide$1(Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gr30uiNH5TZEIxq-NxI17G07HoU(Lcom/android/server/inputmethod/ImeTrackerService;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/ImeTrackerService;->lambda$onRequestShow$0(Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;-><init>()V

    .line 66
    new-instance v0, Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/ImeTrackerService$History;-><init>(Lcom/android/server/inputmethod/ImeTrackerService$History-IA;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 70
    new-instance v0, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onRequestHide$1(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic lambda$onRequestShow$0(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {v0, p1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$mdump(Lcom/android/server/inputmethod/ImeTrackerService$History;Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasPendingImeVisibilityRequests()Z
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->hasPendingImeVisibilityRequests_enforcePermission()V

    .line 167
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$fgetmLiveEntries(Lcom/android/server/inputmethod/ImeTrackerService$History;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 2

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onImmsUpdate(Landroid/view/inputmethod/ImeTracker$Token;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$mgetEntry(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 152
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fputmRequestWindowName(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onProgress(Landroid/os/IBinder;I)V
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$mgetEntry(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 116
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fputmPhase(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRequestHide(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 11

    monitor-enter p0

    .line 97
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 98
    new-instance v1, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/ImeTracker$Token;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 99
    new-instance v10, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p1

    move v4, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;-><init>(Ljava/lang/String;IIIIILcom/android/server/inputmethod/ImeTrackerService$History$Entry-IA;)V

    .line 101
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {p1, v0, v10}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$maddEntry(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 104
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1}, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/ImeTrackerService;Landroid/view/inputmethod/ImeTracker$Token;)V

    const-wide/16 p3, 0x2710

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRequestShow(Ljava/lang/String;III)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 11

    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 78
    new-instance v1, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/ImeTracker$Token;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 79
    new-instance v10, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p1

    move v4, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;-><init>(Ljava/lang/String;IIIIILcom/android/server/inputmethod/ImeTrackerService$History$Entry-IA;)V

    .line 81
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {p1, v0, v10}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$maddEntry(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 84
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ImeTrackerService;Landroid/view/inputmethod/ImeTracker$Token;)V

    const-wide/16 p3, 0x2710

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
