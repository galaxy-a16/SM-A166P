.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullScreenMagnificationActivationState(IZ)V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    :cond_1
    return-void
.end method

.method public onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onImeWindowVisibilityChanged(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRequestMagnificationSpec(II)V
    .locals 0

    .line 0
    return-void
.end method
