.class public final synthetic Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TransitionController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TransitionController;ZLcom/android/server/wm/Transition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/TransitionController;

    iput-boolean p2, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/wm/Transition;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/TransitionController;

    iget-boolean v1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;->f$1:Z

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/wm/Transition;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/TransitionController;->$r8$lambda$8KuCbVCJtUx2hJ914L-yHWusDc8(Lcom/android/server/wm/TransitionController;ZLcom/android/server/wm/Transition;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
