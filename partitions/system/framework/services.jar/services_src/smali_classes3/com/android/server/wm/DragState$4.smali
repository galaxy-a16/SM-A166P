.class public Lcom/android/server/wm/DragState$4;
.super Lcom/android/server/wm/DragState$ScaleAnimationListener;
.source "DragState.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .locals 1

    .line 1591
    iput-object p1, p0, Lcom/android/server/wm/DragState$4;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DragState$ScaleAnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$ScaleAnimationListener-IA;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1594
    iget-object p1, p0, Lcom/android/server/wm/DragState$4;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DragState;->endAnimator(I)V

    .line 1597
    iget-object p0, p0, Lcom/android/server/wm/DragState$4;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    return-void
.end method
