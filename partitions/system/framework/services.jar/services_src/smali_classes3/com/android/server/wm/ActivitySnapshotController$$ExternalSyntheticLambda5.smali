.class public final synthetic Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivitySnapshotController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    iput p2, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget p0, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->$r8$lambda$iOnDMPzqvZdGg4QEYXaVm2F_2V0(Lcom/android/server/wm/ActivitySnapshotController;ILcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
