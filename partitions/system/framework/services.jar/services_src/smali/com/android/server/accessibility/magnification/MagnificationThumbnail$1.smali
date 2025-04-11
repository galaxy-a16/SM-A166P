.class public Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;
.super Ljava/lang/Object;
.source "MagnificationThumbnail.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public mIsCancelled:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

.field public final synthetic val$fadeIn:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;Z)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    iput-boolean p2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->val$fadeIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;->mIsCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method
