.class public final synthetic Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TransitionController;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/Transition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/TransitionController;

    iput-object p2, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/wm/Transition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/wm/Transition;

    invoke-static {v0, p0}, Lcom/android/server/wm/TransitionController;->$r8$lambda$gzFAvcA5sZNoyyo8pbGeuYeD7Fg(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/Transition;)V

    return-void
.end method
