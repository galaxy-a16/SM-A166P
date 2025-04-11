.class public Lcom/android/server/wm/AnimatingActivityRegistry;
.super Ljava/lang/Object;
.source "AnimatingActivityRegistry.java"


# instance fields
.field public mAnimatingActivities:Landroid/util/ArraySet;

.field public mEndingDeferredFinish:Z

.field public mFinishedTokens:Landroid/util/ArrayMap;

.field public mTmpRunnableList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mAnimatingActivities="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mFinishedTokens="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final endDeferringFinished()V
    .locals 5

    .line 91
    iget-boolean v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 95
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    .line 99
    iget-object v2, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 100
    iget-object v3, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 103
    iget-object v2, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iput-boolean v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    .line 109
    throw v1
.end method

.method public notifyAboutToFinish(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/server/wm/AnimatingActivityRegistry;->endDeferringFinished()V

    return v1

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public notifyFinished(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/server/wm/AnimatingActivityRegistry;->endDeferringFinished()V

    :cond_0
    return-void
.end method

.method public notifyStarting(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
