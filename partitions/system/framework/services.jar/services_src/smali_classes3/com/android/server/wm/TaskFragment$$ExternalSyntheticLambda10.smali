.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskFragment;

.field public final synthetic f$1:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/TaskFragment;

    iput-object p2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/TaskFragment;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/TaskFragment;->$r8$lambda$cLqqGX4sYQzCXr_HgiWqIxhBLYY(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    return-void
.end method
