.class public Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

.field public final synthetic val$animSet:Landroid/view/animation/AnimationSet;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;Landroid/view/animation/AnimationSet;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;->val$animSet:Landroid/view/animation/AnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 638
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;->val$v:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 639
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    iget-boolean p1, p1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mShowOkButton:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 640
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;->val$v:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;->val$animSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 633
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;->val$v:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
