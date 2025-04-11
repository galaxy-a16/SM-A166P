.class public Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;
.super Ljava/lang/Object;
.source "CoverPolicy.java"

# interfaces
.implements Lcom/android/server/wm/ExtraDisplayPolicy;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CoverPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CoverPolicy;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->this$0:Lcom/android/server/wm/CoverPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOtherDisplayId(I)I
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->isCoverClosed()Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_0

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public hasCoverHome(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCoverClosed()Z
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->this$0:Lcom/android/server/wm/CoverPolicy;

    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisplayControlledByPolicy(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldChooseDefaultTaskDisplayArea(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldNotHandleForcedResizableTaskIfNeeded(II)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldNotTopDisplay(I)Z
    .locals 2

    .line 450
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->isCoverClosed()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public shouldSkipAppTransition(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->isCoverClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
