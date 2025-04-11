.class public final Lp/a;
.super Lp/d;
.source "SourceFile"


# instance fields
.field public h:I

.field public i:I

.field public j:Lo/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lp/d;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final f(Landroid/util/AttributeSet;)V
    .locals 6

    invoke-super {p0, p1}, Lp/d;->f(Landroid/util/AttributeSet;)V

    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    iput-object v0, p0, Lp/a;->j:Lo/a;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp/r;->b:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lp/a;->setType(I)V

    goto :goto_1

    :cond_0
    const/16 v4, 0xe

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lp/a;->j:Lo/a;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v4, Lo/a;->n0:Z

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iget-object v4, p0, Lp/a;->j:Lo/a;

    iput v3, v4, Lo/a;->o0:I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    iget-object p1, p0, Lp/a;->j:Lo/a;

    iput-object p1, p0, Lp/d;->d:Lo/m;

    invoke-virtual {p0}, Lp/d;->h()V

    return-void
.end method

.method public final g(Lo/f;Z)V
    .locals 3

    iget v0, p0, Lp/a;->h:I

    iput v0, p0, Lp/a;->i:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz p2, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    :goto_0
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    if-ne v0, v1, :cond_3

    :goto_1
    const/4 p2, 0x1

    :goto_2
    iput p2, p0, Lp/a;->i:I

    :cond_3
    instance-of p2, p1, Lo/a;

    if-eqz p2, :cond_4

    check-cast p1, Lo/a;

    iget p0, p0, Lp/a;->i:I

    iput p0, p1, Lo/a;->m0:I

    :cond_4
    return-void
.end method

.method public getMargin()I
    .locals 0

    iget-object p0, p0, Lp/a;->j:Lo/a;

    iget p0, p0, Lo/a;->o0:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lp/a;->h:I

    return p0
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 0

    iget-object p0, p0, Lp/a;->j:Lo/a;

    iput-boolean p1, p0, Lo/a;->n0:Z

    return-void
.end method

.method public setDpMargin(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object p0, p0, Lp/a;->j:Lo/a;

    iput p1, p0, Lo/a;->o0:I

    return-void
.end method

.method public setMargin(I)V
    .locals 0

    iget-object p0, p0, Lp/a;->j:Lo/a;

    iput p1, p0, Lo/a;->o0:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lp/a;->h:I

    return-void
.end method
