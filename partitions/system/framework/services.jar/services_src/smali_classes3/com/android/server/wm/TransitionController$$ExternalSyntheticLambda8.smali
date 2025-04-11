.class public final synthetic Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TransitionController;

.field public final synthetic f$1:Lcom/android/server/wm/TransitionController$QueuedTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/TransitionController$QueuedTransition;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/TransitionController;

    iput-object p2, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/TransitionController$QueuedTransition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/TransitionController$QueuedTransition;

    invoke-static {v0, p0}, Lcom/android/server/wm/TransitionController;->$r8$lambda$NsY7NhB7tR_2VHbN_Tco2YfVD8Y(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/TransitionController$QueuedTransition;)V

    return-void
.end method
