.class public Lcom/android/server/wm/Transition$ReadyTracker;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field public mDeferReadyDepth:I

.field public final mReadyGroups:Landroid/util/ArrayMap;

.field public mReadyOverride:Z

.field public mUsed:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTracker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mDeferReadyDepth:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsed(Lcom/android/server/wm/Transition$ReadyTracker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTracker;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mDeferReadyDepth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4178
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 4185
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    .line 4191
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyOverride:Z

    .line 4199
    iput v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mDeferReadyDepth:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/Transition$ReadyTracker-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/Transition$ReadyTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public addGroup(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 4206
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to add a ready-group twice: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Transition"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4210
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public allReady()Z
    .locals 6

    .line 4241
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_0

    .line 4242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " allReady query: used="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", override="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mDeferReadyDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4243
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTracker;->groupsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transition"

    .line 4242
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyOverride:Z

    iget v2, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mDeferReadyDepth:I

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTracker;->groupsToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const v1, -0x527c6760

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-static {v5, v1, v2, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4251
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    .line 4253
    :cond_2
    iget v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mDeferReadyDepth:I

    if-lez v0, :cond_3

    return v1

    .line 4256
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyOverride:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    return v2

    .line 4257
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_7

    .line 4258
    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 4259
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 4260
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return v2
.end method

.method public final groupsToString()Ljava/lang/String;
    .locals 3

    .line 4266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 4267
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 4268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4269
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    .line 4270
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4272
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAllReady()V
    .locals 4

    .line 4233
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x63986c7c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 4234
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    .line 4235
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyOverride:Z

    return-void
.end method

.method public setReadyFrom(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 4218
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 4221
    invoke-static {v0}, Lcom/android/server/wm/Transition;->-$$Nest$smisReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4222
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4223
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, -0x72b3a875

    const/4 p2, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4227
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
