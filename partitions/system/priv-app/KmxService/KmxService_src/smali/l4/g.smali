.class public Ll4/g;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:Ll4/k;

.field public b:Le4/a;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/content/res/ColorStateList;

.field public final e:Landroid/content/res/ColorStateList;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/graphics/PorterDuff$Mode;

.field public h:Landroid/graphics/Rect;

.field public final i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:F

.field public n:F

.field public final o:F

.field public final p:I

.field public q:I

.field public r:I

.field public final s:I

.field public final t:Z

.field public final u:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(Ll4/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll4/g;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ll4/g;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ll4/g;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ll4/g;->f:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Ll4/g;->g:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Ll4/g;->h:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ll4/g;->i:F

    iput v0, p0, Ll4/g;->j:F

    const/16 v0, 0xff

    iput v0, p0, Ll4/g;->l:I

    const/4 v0, 0x0

    iput v0, p0, Ll4/g;->m:F

    iput v0, p0, Ll4/g;->n:F

    iput v0, p0, Ll4/g;->o:F

    const/4 v0, 0x0

    iput v0, p0, Ll4/g;->p:I

    iput v0, p0, Ll4/g;->q:I

    iput v0, p0, Ll4/g;->r:I

    iput v0, p0, Ll4/g;->s:I

    iput-boolean v0, p0, Ll4/g;->t:Z

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Ll4/g;->u:Landroid/graphics/Paint$Style;

    iget-object v0, p1, Ll4/g;->a:Ll4/k;

    iput-object v0, p0, Ll4/g;->a:Ll4/k;

    iget-object v0, p1, Ll4/g;->b:Le4/a;

    iput-object v0, p0, Ll4/g;->b:Le4/a;

    iget v0, p1, Ll4/g;->k:F

    iput v0, p0, Ll4/g;->k:F

    iget-object v0, p1, Ll4/g;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ll4/g;->c:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Ll4/g;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ll4/g;->d:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Ll4/g;->g:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Ll4/g;->g:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p1, Ll4/g;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ll4/g;->f:Landroid/content/res/ColorStateList;

    iget v0, p1, Ll4/g;->l:I

    iput v0, p0, Ll4/g;->l:I

    iget v0, p1, Ll4/g;->i:F

    iput v0, p0, Ll4/g;->i:F

    iget v0, p1, Ll4/g;->r:I

    iput v0, p0, Ll4/g;->r:I

    iget v0, p1, Ll4/g;->p:I

    iput v0, p0, Ll4/g;->p:I

    iget-boolean v0, p1, Ll4/g;->t:Z

    iput-boolean v0, p0, Ll4/g;->t:Z

    iget v0, p1, Ll4/g;->j:F

    iput v0, p0, Ll4/g;->j:F

    iget v0, p1, Ll4/g;->m:F

    iput v0, p0, Ll4/g;->m:F

    iget v0, p1, Ll4/g;->n:F

    iput v0, p0, Ll4/g;->n:F

    iget v0, p1, Ll4/g;->o:F

    iput v0, p0, Ll4/g;->o:F

    iget v0, p1, Ll4/g;->q:I

    iput v0, p0, Ll4/g;->q:I

    iget v0, p1, Ll4/g;->s:I

    iput v0, p0, Ll4/g;->s:I

    iget-object v0, p1, Ll4/g;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ll4/g;->e:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Ll4/g;->u:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Ll4/g;->u:Landroid/graphics/Paint$Style;

    iget-object v0, p1, Ll4/g;->h:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Ll4/g;->h:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Ll4/g;->h:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ll4/k;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll4/g;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ll4/g;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ll4/g;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ll4/g;->f:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Ll4/g;->g:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Ll4/g;->h:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ll4/g;->i:F

    iput v1, p0, Ll4/g;->j:F

    const/16 v1, 0xff

    iput v1, p0, Ll4/g;->l:I

    const/4 v1, 0x0

    iput v1, p0, Ll4/g;->m:F

    iput v1, p0, Ll4/g;->n:F

    iput v1, p0, Ll4/g;->o:F

    const/4 v1, 0x0

    iput v1, p0, Ll4/g;->p:I

    iput v1, p0, Ll4/g;->q:I

    iput v1, p0, Ll4/g;->r:I

    iput v1, p0, Ll4/g;->s:I

    iput-boolean v1, p0, Ll4/g;->t:Z

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v1, p0, Ll4/g;->u:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Ll4/g;->a:Ll4/k;

    iput-object v0, p0, Ll4/g;->b:Le4/a;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Ll4/h;

    invoke-direct {v0, p0}, Ll4/h;-><init>(Ll4/g;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Ll4/h;->e:Z

    return-object v0
.end method
