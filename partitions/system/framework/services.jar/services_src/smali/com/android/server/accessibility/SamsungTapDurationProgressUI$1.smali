.class public Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;
.super Ljava/lang/Object;
.source "SamsungTapDurationProgressUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 265
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmView(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 266
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmView(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmCircle(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 252
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmArrow(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 253
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmArrow(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 254
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmView(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/view/View;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 255
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmView(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 256
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmView(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 257
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmProgress(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 259
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmRotationSet(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 260
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmFadeInAnimator(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
