.class public final synthetic Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iput p2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/TaskSnapshotController;->$r8$lambda$bgnW8POjb6bxXWHZvI-xI_xHVMM(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method
