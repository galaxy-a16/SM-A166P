.class public Landroidx/appcompat/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroidx/appcompat/util/b;

.field public final c:Landroidx/appcompat/util/b;

.field public final d:Landroidx/appcompat/util/b;

.field public final e:Landroidx/appcompat/util/b;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public j:I

.field public final k:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/util/c;->k:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06044f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/util/c;->a:I

    invoke-static {p1}, Lva/n;->z(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v5, 0x7f0303c8

    invoke-virtual {p1, v5, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v4, Landroid/util/TypedValue;->resourceId:I

    const/16 v5, 0x1f

    const/4 v6, 0x0

    const/16 v7, 0x1c

    if-lez p1, :cond_1

    iget v8, v4, Landroid/util/TypedValue;->type:I

    if-lt v8, v7, :cond_0

    if-gt v8, v5, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    iget p1, v4, Landroid/util/TypedValue;->data:I

    if-lez p1, :cond_3

    iget v4, v4, Landroid/util/TypedValue;->type:I

    if-lt v4, v7, :cond_2

    if-gt v4, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    const p1, 0x7f0503d8

    goto :goto_2

    :cond_4
    const p1, 0x7f0503d9

    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_3
    iput p1, p0, Landroidx/appcompat/util/c;->i:I

    iput p1, p0, Landroidx/appcompat/util/c;->h:I

    iput p1, p0, Landroidx/appcompat/util/c;->g:I

    iput p1, p0, Landroidx/appcompat/util/c;->f:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroidx/appcompat/util/b;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Landroidx/appcompat/util/b;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Landroidx/appcompat/util/c;->b:Landroidx/appcompat/util/b;

    new-instance p1, Landroidx/appcompat/util/b;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-direct {p1, v1, v0, v2}, Landroidx/appcompat/util/b;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Landroidx/appcompat/util/c;->c:Landroidx/appcompat/util/b;

    new-instance p1, Landroidx/appcompat/util/b;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-direct {p1, v1, v0, v2}, Landroidx/appcompat/util/b;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Landroidx/appcompat/util/c;->d:Landroidx/appcompat/util/b;

    new-instance p1, Landroidx/appcompat/util/b;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-direct {p1, v1, v0, v2}, Landroidx/appcompat/util/b;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Landroidx/appcompat/util/c;->e:Landroidx/appcompat/util/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    int-to-float v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    int-to-float v5, v1

    sub-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v3, p0, Landroidx/appcompat/util/c;->k:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/util/c;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/util/c;->k:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x0

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x0

    iget v4, p0, Landroidx/appcompat/util/c;->j:I

    and-int/lit8 v4, v4, 0x1

    iget v5, p0, Landroidx/appcompat/util/c;->a:I

    if-eqz v4, :cond_0

    add-int v4, v1, v5

    add-int v6, v3, v5

    iget-object v7, p0, Landroidx/appcompat/util/c;->b:Landroidx/appcompat/util/b;

    invoke-virtual {v7, v1, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Landroidx/appcompat/util/b;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v4, p0, Landroidx/appcompat/util/c;->j:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    sub-int v4, v2, v5

    add-int v6, v3, v5

    iget-object v7, p0, Landroidx/appcompat/util/c;->c:Landroidx/appcompat/util/b;

    invoke-virtual {v7, v4, v3, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Landroidx/appcompat/util/b;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v3, p0, Landroidx/appcompat/util/c;->j:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    sub-int v3, v0, v5

    add-int v4, v1, v5

    iget-object v6, p0, Landroidx/appcompat/util/c;->d:Landroidx/appcompat/util/b;

    invoke-virtual {v6, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v6, p1}, Landroidx/appcompat/util/b;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v1, p0, Landroidx/appcompat/util/c;->j:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    sub-int v1, v2, v5

    sub-int v3, v0, v5

    iget-object v4, p0, Landroidx/appcompat/util/c;->e:Landroidx/appcompat/util/b;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroidx/appcompat/util/b;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget p1, p0, Landroidx/appcompat/util/c;->g:I

    iget v0, p0, Landroidx/appcompat/util/c;->f:I

    if-ne v0, p1, :cond_4

    iget p1, p0, Landroidx/appcompat/util/c;->h:I

    if-ne v0, p1, :cond_4

    iget p0, p0, Landroidx/appcompat/util/c;->i:I

    if-ne v0, p0, :cond_4

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    return-void
.end method

.method public final c(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_0

    iput p1, p0, Landroidx/appcompat/util/c;->j:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use wrong rounded corners to the param, corners = "

    invoke-static {v0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
