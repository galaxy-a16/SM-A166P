.class public final synthetic Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivitySnapshotController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    check-cast p1, Lcom/android/server/wm/SnapshotController$TransitionState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->handleCloseActivityTransition(Lcom/android/server/wm/SnapshotController$TransitionState;)V

    return-void
.end method
