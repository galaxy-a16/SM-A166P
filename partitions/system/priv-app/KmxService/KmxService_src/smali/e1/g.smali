.class public final Le1/g;
.super Le1/h;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Ljava/util/ArrayList;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public final j:Landroid/graphics/Matrix;

.field public final k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le1/h;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le1/g;->a:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le1/g;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Le1/g;->c:F

    iput v0, p0, Le1/g;->d:F

    iput v0, p0, Le1/g;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Le1/g;->f:F

    iput v1, p0, Le1/g;->g:F

    iput v0, p0, Le1/g;->h:F

    iput v0, p0, Le1/g;->i:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le1/g;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Le1/g;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Le1/g;Ll/b;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Le1/h;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le1/g;->a:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le1/g;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Le1/g;->c:F

    iput v0, p0, Le1/g;->d:F

    iput v0, p0, Le1/g;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Le1/g;->f:F

    iput v1, p0, Le1/g;->g:F

    iput v0, p0, Le1/g;->h:F

    iput v0, p0, Le1/g;->i:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le1/g;->j:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iput-object v1, p0, Le1/g;->l:Ljava/lang/String;

    iget v1, p1, Le1/g;->c:F

    iput v1, p0, Le1/g;->c:F

    iget v1, p1, Le1/g;->d:F

    iput v1, p0, Le1/g;->d:F

    iget v1, p1, Le1/g;->e:F

    iput v1, p0, Le1/g;->e:F

    iget v1, p1, Le1/g;->f:F

    iput v1, p0, Le1/g;->f:F

    iget v1, p1, Le1/g;->g:F

    iput v1, p0, Le1/g;->g:F

    iget v1, p1, Le1/g;->h:F

    iput v1, p0, Le1/g;->h:F

    iget v1, p1, Le1/g;->i:F

    iput v1, p0, Le1/g;->i:F

    iget-object v1, p1, Le1/g;->l:Ljava/lang/String;

    iput-object v1, p0, Le1/g;->l:Ljava/lang/String;

    iget v2, p1, Le1/g;->k:I

    iput v2, p0, Le1/g;->k:I

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1, p0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p1, Le1/g;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p1, Le1/g;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Le1/g;

    if-eqz v2, :cond_1

    check-cast v1, Le1/g;

    iget-object v2, p0, Le1/g;->b:Ljava/util/ArrayList;

    new-instance v3, Le1/g;

    invoke-direct {v3, v1, p2}, Le1/g;-><init>(Le1/g;Ll/b;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v2, v1, Le1/f;

    if-eqz v2, :cond_2

    new-instance v2, Le1/f;

    check-cast v1, Le1/f;

    invoke-direct {v2, v1}, Le1/f;-><init>(Le1/f;)V

    goto :goto_1

    :cond_2
    instance-of v2, v1, Le1/e;

    if-eqz v2, :cond_4

    new-instance v2, Le1/e;

    check-cast v1, Le1/e;

    invoke-direct {v2, v1}, Le1/e;-><init>(Le1/e;)V

    :goto_1
    iget-object v1, p0, Le1/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Le1/i;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p2, v1, v2}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown object in the tree!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Le1/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le1/h;

    invoke-virtual {v2}, Le1/h;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final b([I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Le1/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le1/h;

    invoke-virtual {v2, p1}, Le1/h;->b([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Le1/g;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Le1/g;->d:F

    neg-float v1, v1

    iget v2, p0, Le1/g;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v1, p0, Le1/g;->f:F

    iget v2, p0, Le1/g;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v1, p0, Le1/g;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget v1, p0, Le1/g;->h:F

    iget v2, p0, Le1/g;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Le1/g;->i:F

    iget p0, p0, Le1/g;->e:F

    add-float/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le1/g;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Le1/g;->j:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getPivotX()F
    .locals 0

    iget p0, p0, Le1/g;->d:F

    return p0
.end method

.method public getPivotY()F
    .locals 0

    iget p0, p0, Le1/g;->e:F

    return p0
.end method

.method public getRotation()F
    .locals 0

    iget p0, p0, Le1/g;->c:F

    return p0
.end method

.method public getScaleX()F
    .locals 0

    iget p0, p0, Le1/g;->f:F

    return p0
.end method

.method public getScaleY()F
    .locals 0

    iget p0, p0, Le1/g;->g:F

    return p0
.end method

.method public getTranslateX()F
    .locals 0

    iget p0, p0, Le1/g;->h:F

    return p0
.end method

.method public getTranslateY()F
    .locals 0

    iget p0, p0, Le1/g;->i:F

    return p0
.end method

.method public setPivotX(F)V
    .locals 1

    iget v0, p0, Le1/g;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Le1/g;->d:F

    invoke-virtual {p0}, Le1/g;->c()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    iget v0, p0, Le1/g;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Le1/g;->e:F

    invoke-virtual {p0}, Le1/g;->c()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget v0, p0, Le1/g;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Le1/g;->c:F

    invoke-virtual {p0}, Le1/g;->c()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget v0, p0, Le1/g;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Le1/g;->f:F

    invoke-virtual {p0}, Le1/g;->c()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget v0, p0, Le1/g;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Le1/g;->g:F

    invoke-virtual {p0}, Le1/g;->c()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    iget v0, p0, Le1/g;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Le1/g;->h:F

    invoke-virtual {p0}, Le1/g;->c()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    iget v0, p0, Le1/g;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Le1/g;->i:F

    invoke-virtual {p0}, Le1/g;->c()V

    :cond_0
    return-void
.end method
