.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;->f$1:Lcom/android/server/wm/Transition;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;->f$1:Lcom/android/server/wm/Transition;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$Sy1PJiAXO4i0i9wRR3lDvoQIHeU(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;Z)V

    return-void
.end method
