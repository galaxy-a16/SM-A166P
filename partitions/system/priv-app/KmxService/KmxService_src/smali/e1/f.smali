.class public final Le1/f;
.super Le1/i;
.source "SourceFile"


# instance fields
.field public e:Lv/c;

.field public f:F

.field public g:Lv/c;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Landroid/graphics/Paint$Cap;

.field public n:Landroid/graphics/Paint$Join;

.field public o:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le1/i;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le1/f;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Le1/f;->h:F

    iput v1, p0, Le1/f;->i:F

    iput v0, p0, Le1/f;->j:F

    iput v1, p0, Le1/f;->k:F

    iput v0, p0, Le1/f;->l:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Le1/f;->m:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Le1/f;->n:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Le1/f;->o:F

    return-void
.end method

.method public constructor <init>(Le1/f;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Le1/i;-><init>(Le1/i;)V

    const/4 v0, 0x0

    iput v0, p0, Le1/f;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Le1/f;->h:F

    iput v1, p0, Le1/f;->i:F

    iput v0, p0, Le1/f;->j:F

    iput v1, p0, Le1/f;->k:F

    iput v0, p0, Le1/f;->l:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Le1/f;->m:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Le1/f;->n:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Le1/f;->o:F

    iget-object v0, p1, Le1/f;->e:Lv/c;

    iput-object v0, p0, Le1/f;->e:Lv/c;

    iget v0, p1, Le1/f;->f:F

    iput v0, p0, Le1/f;->f:F

    iget v0, p1, Le1/f;->h:F

    iput v0, p0, Le1/f;->h:F

    iget-object v0, p1, Le1/f;->g:Lv/c;

    iput-object v0, p0, Le1/f;->g:Lv/c;

    iget v0, p1, Le1/i;->c:I

    iput v0, p0, Le1/i;->c:I

    iget v0, p1, Le1/f;->i:F

    iput v0, p0, Le1/f;->i:F

    iget v0, p1, Le1/f;->j:F

    iput v0, p0, Le1/f;->j:F

    iget v0, p1, Le1/f;->k:F

    iput v0, p0, Le1/f;->k:F

    iget v0, p1, Le1/f;->l:F

    iput v0, p0, Le1/f;->l:F

    iget-object v0, p1, Le1/f;->m:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Le1/f;->m:Landroid/graphics/Paint$Cap;

    iget-object v0, p1, Le1/f;->n:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Le1/f;->n:Landroid/graphics/Paint$Join;

    iget p1, p1, Le1/f;->o:F

    iput p1, p0, Le1/f;->o:F

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Le1/f;->g:Lv/c;

    invoke-virtual {v0}, Lv/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Le1/f;->e:Lv/c;

    invoke-virtual {p0}, Lv/c;->c()Z

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

.method public final b([I)Z
    .locals 1

    iget-object v0, p0, Le1/f;->g:Lv/c;

    invoke-virtual {v0, p1}, Lv/c;->d([I)Z

    move-result v0

    iget-object p0, p0, Le1/f;->e:Lv/c;

    invoke-virtual {p0, p1}, Lv/c;->d([I)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public getFillAlpha()F
    .locals 0

    iget p0, p0, Le1/f;->i:F

    return p0
.end method

.method public getFillColor()I
    .locals 0

    iget-object p0, p0, Le1/f;->g:Lv/c;

    iget p0, p0, Lv/c;->b:I

    return p0
.end method

.method public getStrokeAlpha()F
    .locals 0

    iget p0, p0, Le1/f;->h:F

    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget-object p0, p0, Le1/f;->e:Lv/c;

    iget p0, p0, Lv/c;->b:I

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget p0, p0, Le1/f;->f:F

    return p0
.end method

.method public getTrimPathEnd()F
    .locals 0

    iget p0, p0, Le1/f;->k:F

    return p0
.end method

.method public getTrimPathOffset()F
    .locals 0

    iget p0, p0, Le1/f;->l:F

    return p0
.end method

.method public getTrimPathStart()F
    .locals 0

    iget p0, p0, Le1/f;->j:F

    return p0
.end method

.method public setFillAlpha(F)V
    .locals 0

    iput p1, p0, Le1/f;->i:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    iget-object p0, p0, Le1/f;->g:Lv/c;

    iput p1, p0, Lv/c;->b:I

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Le1/f;->h:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iget-object p0, p0, Le1/f;->e:Lv/c;

    iput p1, p0, Lv/c;->b:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Le1/f;->f:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, Le1/f;->k:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, Le1/f;->l:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    iput p1, p0, Le1/f;->j:F

    return-void
.end method
