.class public final Lcom/android/server/wm/WmCoverState;
.super Lcom/samsung/android/cover/CoverState;
.source "WmCoverState.java"


# static fields
.field public static sIsEnabled:Z = false

.field public static sWmCoverState:Lcom/android/server/wm/WmCoverState;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    return-void
.end method

.method public static enable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    sget-object v0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/WmCoverState;

    invoke-direct {v0}, Lcom/android/server/wm/WmCoverState;-><init>()V

    sput-object v0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/WmCoverState;
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    return v0
.end method


# virtual methods
.method public getWindowLayerFromTypeLw(I)I
    .locals 3

    const/16 v0, 0x833

    if-eq p1, v0, :cond_0

    const/16 v1, 0x96b

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    :cond_1
    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_3
    :goto_1
    const/16 p0, 0x1a

    return p0
.end method

.method public isClearTypeCover()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isClearTypeCoverClosed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isClearTypeCover()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCoverAppSupported()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isCoverClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFlipTypeCoverClosed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isViewCoverClosed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public shouldHideStatusBarForCover()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isClearTypeCover()Z

    move-result p0

    return p0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)Z
    .locals 2

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    const/4 p0, 0x1

    return p0
.end method

.method public windowAttrsHasShowWallpaperOrShowWhenLocked(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p1, 0x100000

    and-int/2addr p1, p0

    if-nez p1, :cond_1

    const/high16 p1, 0x80000

    and-int/2addr p0, p1

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
