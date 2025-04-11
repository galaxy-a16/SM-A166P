.class public Lcom/android/server/wm/BoundsCompatAlignment;
.super Ljava/lang/Object;
.source "BoundsCompatController.java"


# instance fields
.field public mAlignment:I

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    return-void
.end method

.method public static getCenterOffset(II)I
    .locals 0

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public getAlignment()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    return p0
.end method

.method public getHorizontalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/BoundsCompatAlignment;->getHorizontalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result p0

    return p0
.end method

.method public getHorizontalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 0

    and-int/lit8 p0, p3, 0x7

    const/4 p3, 0x3

    if-eq p0, p3, :cond_1

    const/4 p3, 0x5

    if-eq p0, p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatAlignment;->getCenterOffset(II)I

    move-result p0

    return p0

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/BoundsCompatAlignment;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result p0

    return p0
.end method

.method public final getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 2

    and-int/lit8 p3, p3, 0x70

    const/16 v0, 0x30

    if-eq p3, v0, :cond_1

    const/16 p0, 0x50

    if-eq p3, p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatAlignment;->getCenterOffset(II)I

    move-result p0

    return p0

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_1
    iget-object p3, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez p3, :cond_2

    iget p0, p1, Landroid/graphics/Rect;->top:I

    return p0

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    iget v0, p3, Landroid/view/DisplayInfo;->rotation:I

    iget v1, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p0

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, p3, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    return p0
.end method

.method public isCenterVertical()Z
    .locals 1

    iget p0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    and-int/lit8 p0, p0, 0x70

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopVertical()Z
    .locals 1

    iget p0, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    and-int/lit8 p0, p0, 0x70

    const/16 v0, 0x30

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAlignment(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mAlignment:I

    return-void
.end method

.method public setDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatAlignment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatAlignment;->getAlignment()I

    move-result p0

    const-string v1, "BoundsCompatAlignment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Alignment=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
