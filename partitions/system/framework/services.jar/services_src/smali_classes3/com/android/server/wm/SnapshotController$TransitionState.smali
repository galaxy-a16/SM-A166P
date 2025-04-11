.class public Lcom/android/server/wm/SnapshotController$TransitionState;
.super Ljava/lang/Object;
.source "SnapshotController.java"


# instance fields
.field public final mCloseParticipant:Landroid/util/ArraySet;

.field public final mOpenParticipant:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController$TransitionState;->mOpenParticipant:Landroid/util/ArraySet;

    .line 147
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController$TransitionState;->mCloseParticipant:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public addParticipant(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 151
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$TransitionState;->mOpenParticipant:Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$TransitionState;->mCloseParticipant:Landroid/util/ArraySet;

    .line 152
    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getParticipant(Z)Landroid/util/ArraySet;
    .locals 0

    if-eqz p1, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$TransitionState;->mOpenParticipant:Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$TransitionState;->mCloseParticipant:Landroid/util/ArraySet;

    :goto_0
    return-object p0
.end method
