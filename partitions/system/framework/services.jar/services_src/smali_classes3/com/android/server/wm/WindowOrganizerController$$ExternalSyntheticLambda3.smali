.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;

.field public final synthetic f$2:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/Transition;

    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$2:Landroid/window/WindowContainerTransaction;

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iput-boolean p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/Transition;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$2:Landroid/window/WindowContainerTransaction;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;->f$4:Z

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->$r8$lambda$Bc2VOa5xBetACk_GAvygz0fAMB4(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ZZ)V

    return-void
.end method
