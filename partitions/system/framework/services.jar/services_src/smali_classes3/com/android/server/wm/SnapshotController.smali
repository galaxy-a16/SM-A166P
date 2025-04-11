.class public Lcom/android/server/wm/SnapshotController;
.super Ljava/lang/Object;
.source "SnapshotController.java"


# instance fields
.field public mActivatedType:I

.field public final mActivityOrderCheck:Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;

.field public final mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

.field public final mResultHandler:Lcom/android/server/wm/SnapshotController$ActivityOrderCheck$AnalysisResult;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field public final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

.field public final mTmpAnalysisRecord:Landroid/util/ArraySet;

.field public final mTmpCloseTasks:Landroid/util/ArraySet;

.field public final mTmpOpenCloseRecord:Landroid/util/SparseArray;

.field public final mTmpOpenTasks:Landroid/util/ArraySet;

.field public final mTransitionStateConsumer:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$JdRODO9m314H5aaGaQ-gyrXWuI8(Lcom/android/server/wm/SnapshotController;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SnapshotController;->lambda$new$0(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpCloseTasks:Landroid/util/ArraySet;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenTasks:Landroid/util/ArraySet;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenCloseRecord:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpAnalysisRecord:Landroid/util/ArraySet;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTransitionStateConsumer:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;-><init>(Lcom/android/server/wm/SnapshotController$ActivityOrderCheck-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mActivityOrderCheck:Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;

    .line 73
    new-instance v0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SnapshotController;)V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mResultHandler:Lcom/android/server/wm/SnapshotController$ActivityOrderCheck$AnalysisResult;

    .line 161
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {v0}, Lcom/android/server/wm/SnapshotPersistQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 162
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v1, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 163
    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/ActivitySnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    return-void
.end method

.method private synthetic lambda$new$0(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/SnapshotController;->addTransitionRecord(IZLcom/android/server/wm/WindowContainer;)V

    const/4 p3, 0x0

    .line 75
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/wm/SnapshotController;->addTransitionRecord(IZLcom/android/server/wm/WindowContainer;)V

    return-void
.end method


# virtual methods
.method public final addTransitionRecord(IZLcom/android/server/wm/WindowContainer;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenCloseRecord:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SnapshotController$TransitionState;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/server/wm/SnapshotController$TransitionState;

    invoke-direct {v0}, Lcom/android/server/wm/SnapshotController$TransitionState;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenCloseRecord:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 136
    :cond_0
    invoke-virtual {v0, p3, p2}, Lcom/android/server/wm/SnapshotController$TransitionState;->addParticipant(Lcom/android/server/wm/WindowContainer;Z)V

    .line 137
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mTmpAnalysisRecord:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final analysisTransition(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpCloseTasks:Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/SnapshotController;->getParticipantTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)V

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenTasks:Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/wm/SnapshotController;->getParticipantTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)V

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpCloseTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 299
    iget-object v3, p0, Lcom/android/server/wm/SnapshotController;->mTmpCloseTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 300
    iget-object v4, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/server/wm/SnapshotController;->hasTransitionStateConsumer(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x2

    .line 302
    invoke-virtual {p0, v4}, Lcom/android/server/wm/SnapshotController;->hasTransitionStateConsumer(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/SnapshotController;->mActivityOrderCheck:Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;

    iget-object v5, p0, Lcom/android/server/wm/SnapshotController;->mResultHandler:Lcom/android/server/wm/SnapshotController$ActivityOrderCheck$AnalysisResult;

    invoke-virtual {v4, p1, p2, v3, v5}, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->analysisOrder(Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/Task;Lcom/android/server/wm/SnapshotController$ActivityOrderCheck$AnalysisResult;)V

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 306
    invoke-virtual {p0, v4}, Lcom/android/server/wm/SnapshotController;->hasTransitionStateConsumer(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 308
    invoke-virtual {p0, v4, v1, v3}, Lcom/android/server/wm/SnapshotController;->addTransitionRecord(IZLcom/android/server/wm/WindowContainer;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotController;->hasTransitionStateConsumer(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 312
    iget-object p2, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenTasks:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_2
    if-ltz p2, :cond_5

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 314
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mTmpCloseTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 316
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/SnapshotController;->addTransitionRecord(IZLcom/android/server/wm/WindowContainer;)V

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 320
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mTmpCloseTasks:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 321
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenTasks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public final clearRecord()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenCloseRecord:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 142
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mTmpAnalysisRecord:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 339
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final getParticipantTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)V
    .locals 2

    .line 326
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 327
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 328
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-ne p3, v0, :cond_1

    .line 332
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public handleAppTransition(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 1

    .line 268
    iget v0, p0, Lcom/android/server/wm/SnapshotController;->mActivatedType:I

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SnapshotController;->analysisTransition(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 272
    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivitySnapshotController;->preTransitionStart()V

    .line 273
    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mTmpAnalysisRecord:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 274
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/SnapshotController;->notifyTransition(I)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivitySnapshotController;->postTransitionStart()V

    .line 277
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotController;->clearRecord()V

    return-void
.end method

.method public final hasTransitionStateConsumer(I)Z
    .locals 0

    .line 191
    iget p0, p0, Lcom/android/server/wm/SnapshotController;->mActivatedType:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 1

    if-nez p2, :cond_1

    const/16 p2, 0x8

    .line 215
    invoke-virtual {p0, p2}, Lcom/android/server/wm/SnapshotController;->hasTransitionStateConsumer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/wm/SnapshotController;->addTransitionRecord(IZLcom/android/server/wm/WindowContainer;)V

    .line 222
    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivitySnapshotController;->preTransitionStart()V

    .line 223
    invoke-virtual {p0, p2}, Lcom/android/server/wm/SnapshotController;->notifyTransition(I)V

    .line 224
    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivitySnapshotController;->postTransitionStart()V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotController;->clearRecord()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyTransition(I)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTmpOpenCloseRecord:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SnapshotController$TransitionState;

    .line 282
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mTransitionStateConsumer:Landroid/util/SparseArray;

    .line 283
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 284
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    .line 285
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 211
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 206
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 231
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/SnapshotController;->handleAppTransition(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-void
.end method

.method public registerTransitionStateConsumer(ILjava/util/function/Consumer;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTransitionStateConsumer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mTransitionStateConsumer:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 173
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_1
    iget p2, p0, Lcom/android/server/wm/SnapshotController;->mActivatedType:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/SnapshotController;->mActivatedType:I

    return-void
.end method

.method public setPause(Z)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotPersistQueue;->setPaused(Z)V

    return-void
.end method

.method public systemReady()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->systemReady()V

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->systemReady()V

    .line 197
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->systemReady()V

    return-void
.end method
