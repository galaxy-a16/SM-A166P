.class public Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;
.super Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;
.source "SemMultiFingerMultiTapAndHold.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 41
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    if-ne v0, v1, :cond_0

    const-wide/16 v3, 0x1388

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 43
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    if-le v0, v1, :cond_1

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    return-void
.end method
