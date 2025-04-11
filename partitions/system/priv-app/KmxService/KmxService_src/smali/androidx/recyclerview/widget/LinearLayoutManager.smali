.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/i1;


# instance fields
.field public A:Landroidx/recyclerview/widget/z;

.field public final B:Landroidx/recyclerview/widget/w;

.field public final C:Landroidx/recyclerview/widget/x;

.field public final D:I

.field public final E:[I

.field public p:I

.field public q:Landroidx/recyclerview/widget/y;

.field public r:Landroidx/recyclerview/widget/c0;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public final w:Z

.field public x:I

.field public y:I

.field public final z:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    new-instance v2, Landroidx/recyclerview/widget/w;

    invoke-direct {v2}, Landroidx/recyclerview/widget/w;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/w;

    new-instance v2, Landroidx/recyclerview/widget/x;

    invoke-direct {v2}, Landroidx/recyclerview/widget/x;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:Landroidx/recyclerview/widget/x;

    const/4 v2, 0x2

    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:I

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:[I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(I)V

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    new-instance v1, Landroidx/recyclerview/widget/w;

    invoke-direct {v1}, Landroidx/recyclerview/widget/w;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/w;

    new-instance v1, Landroidx/recyclerview/widget/x;

    invoke-direct {v1}, Landroidx/recyclerview/widget/x;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:Landroidx/recyclerview/widget/x;

    const/4 v1, 0x2

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:[I

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/u0;->I(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/t0;

    move-result-object p1

    iget p2, p1, Landroidx/recyclerview/widget/t0;->a:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(I)V

    iget-boolean p2, p1, Landroidx/recyclerview/widget/t0;->c:Z

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    .line 3
    :goto_0
    iget-boolean p1, p1, Landroidx/recyclerview/widget/t0;->d:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(Z)V

    return-void
.end method


# virtual methods
.method public final A0()Z
    .locals 6

    iget v0, p0, Landroidx/recyclerview/widget/u0;->m:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/u0;->l:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    move p0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method public C0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/b0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/b0;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroidx/recyclerview/widget/b0;->a:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->D0(Landroidx/recyclerview/widget/b0;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "SS pos to : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslLinearLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public E0()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public F0(Landroidx/recyclerview/widget/j1;[I)V
    .locals 3

    iget p1, p1, Landroidx/recyclerview/widget/j1;->a:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/c0;->i()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget p0, p0, Landroidx/recyclerview/widget/y;->f:I

    if-ne p0, v1, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, p1

    move p1, v2

    :goto_2
    aput p1, p2, v2

    aput p0, p2, v0

    return-void
.end method

.method public G0(Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/r;)V
    .locals 0

    iget p0, p2, Landroidx/recyclerview/widget/y;->d:I

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Landroidx/recyclerview/widget/y;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, p0, p1}, Landroidx/recyclerview/widget/r;->a(II)V

    :cond_0
    return-void
.end method

.method public final H0(Landroidx/recyclerview/widget/j1;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/i0;->f(Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/u0;Z)I

    move-result p0

    return p0
.end method

.method public final I0(Landroidx/recyclerview/widget/j1;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/i0;->g(Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/u0;ZZ)I

    move-result p0

    return p0
.end method

.method public final J0(Landroidx/recyclerview/widget/j1;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/i0;->h(Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/u0;Z)I

    move-result p0

    return p0
.end method

.method public final K0(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0()Z

    move-result p0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0()Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final L0()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/y;

    invoke-direct {v0}, Landroidx/recyclerview/widget/y;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    :cond_0
    return-void
.end method

.method public final M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I
    .locals 7

    iget v0, p2, Landroidx/recyclerview/widget/y;->c:I

    iget v1, p2, Landroidx/recyclerview/widget/y;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/y;->g:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;)V

    :cond_1
    iget v1, p2, Landroidx/recyclerview/widget/y;->c:I

    iget v3, p2, Landroidx/recyclerview/widget/y;->h:I

    add-int/2addr v1, v3

    :cond_2
    iget-boolean v3, p2, Landroidx/recyclerview/widget/y;->l:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_a

    :cond_3
    iget v3, p2, Landroidx/recyclerview/widget/y;->d:I

    const/4 v4, 0x0

    if-ltz v3, :cond_4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v5

    if-ge v3, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    if-eqz v3, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:Landroidx/recyclerview/widget/x;

    iput v4, v3, Landroidx/recyclerview/widget/x;->a:I

    iput-boolean v4, v3, Landroidx/recyclerview/widget/x;->b:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/x;->c:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/x;->d:Z

    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/x;)V

    iget-boolean v4, v3, Landroidx/recyclerview/widget/x;->b:Z

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    iget v4, p2, Landroidx/recyclerview/widget/y;->b:I

    iget v5, v3, Landroidx/recyclerview/widget/x;->a:I

    iget v6, p2, Landroidx/recyclerview/widget/y;->f:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    iput v6, p2, Landroidx/recyclerview/widget/y;->b:I

    iget-boolean v4, v3, Landroidx/recyclerview/widget/x;->c:Z

    if-eqz v4, :cond_6

    iget-object v4, p2, Landroidx/recyclerview/widget/y;->k:Ljava/util/List;

    if-nez v4, :cond_6

    iget-boolean v4, p3, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v4, :cond_7

    :cond_6
    iget v4, p2, Landroidx/recyclerview/widget/y;->c:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/y;->c:I

    sub-int/2addr v1, v5

    :cond_7
    iget v4, p2, Landroidx/recyclerview/widget/y;->g:I

    if-eq v4, v2, :cond_9

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/y;->g:I

    iget v5, p2, Landroidx/recyclerview/widget/y;->c:I

    if-gez v5, :cond_8

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/y;->g:I

    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;)V

    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v3, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v3, :cond_2

    :cond_a
    :goto_1
    iget p0, p2, Landroidx/recyclerview/widget/y;->c:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final N()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final N0(Z)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    move v2, v1

    move v1, v0

    move v0, v2

    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(IIZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final O0(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(IIZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final P0()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(IIZ)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final Q0()I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(IIZ)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final R0(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v2, :cond_4

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/a2;

    goto :goto_2

    :cond_4
    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->d:Landroidx/recyclerview/widget/a2;

    :goto_2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/a2;->f(IIII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final S0(IIZ)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/a2;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->d:Landroidx/recyclerview/widget/a2;

    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/a2;->f(IIII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public T0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;ZZ)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v4, -0x1

    move v5, v4

    goto :goto_0

    :cond_0
    move v4, v1

    move v1, v2

    move v5, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v6

    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    :goto_1
    if-eq v1, v4, :cond_a

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v13

    iget-object v14, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v14, v12}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v14

    iget-object v15, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v15

    if-ltz v13, :cond_9

    if-ge v13, v6, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/v0;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/v0;->c()Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez v11, :cond_9

    move-object v11, v12

    goto :goto_7

    :cond_1
    if-gt v15, v7, :cond_2

    if-ge v14, v7, :cond_2

    move v13, v3

    goto :goto_2

    :cond_2
    move v13, v2

    :goto_2
    if-lt v14, v8, :cond_3

    if-le v15, v8, :cond_3

    move v14, v3

    goto :goto_3

    :cond_3
    move v14, v2

    :goto_3
    if-nez v13, :cond_5

    if-eqz v14, :cond_4

    goto :goto_4

    :cond_4
    return-object v12

    :cond_5
    :goto_4
    if-eqz p3, :cond_7

    if-eqz v14, :cond_6

    goto :goto_5

    :cond_6
    if-nez v9, :cond_9

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_8

    :goto_5
    move-object v10, v12

    goto :goto_7

    :cond_8
    if-nez v9, :cond_9

    :goto_6
    move-object v9, v12

    :cond_9
    :goto_7
    add-int/2addr v1, v5

    goto :goto_1

    :cond_a
    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v10, :cond_c

    move-object v9, v10

    goto :goto_8

    :cond_c
    move-object v9, v11

    :goto_8
    return-object v9
.end method

.method public final U(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final U0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/c0;->f()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/c0;->m(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public V(Landroid/view/View;ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->i()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eaaaaab

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->h1(IIZLandroidx/recyclerview/widget/j1;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput p2, v1, Landroidx/recyclerview/widget/y;->g:I

    iput-boolean v2, v1, Landroidx/recyclerview/widget/y;->a:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v1, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0, p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p3

    invoke-virtual {p0, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_3
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p3

    invoke-virtual {p0, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0, p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(II)Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0()Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0()Landroid/view/View;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p3, :cond_6

    return-object v0

    :cond_6
    return-object p0

    :cond_7
    return-object p3
.end method

.method public final V0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/c0;->h()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/c0;->m(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final W(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->W(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public final W0()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final X0()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final Y0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->B()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/x;)V
    .locals 11

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/y;->b(Landroidx/recyclerview/widget/c1;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Landroidx/recyclerview/widget/x;->b:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    iget-object v1, p3, Landroidx/recyclerview/widget/y;->k:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v4, p3, Landroidx/recyclerview/widget/y;->f:I

    if-ne v4, v3, :cond_1

    move v4, p2

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-ne v1, v4, :cond_2

    invoke-virtual {p0, p1, v3, v2}, Landroidx/recyclerview/widget/u0;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2, v2}, Landroidx/recyclerview/widget/u0;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v4, p3, Landroidx/recyclerview/widget/y;->f:I

    if-ne v4, v3, :cond_4

    move v4, p2

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_5

    invoke-virtual {p0, p1, v3, p2}, Landroidx/recyclerview/widget/u0;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2, p2}, Landroidx/recyclerview/widget/u0;->b(Landroid/view/View;IZ)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/v0;

    iget-object v4, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->d0(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v4

    add-int/2addr v6, v2

    iget v2, p0, Landroidx/recyclerview/widget/u0;->n:I

    iget v4, p0, Landroidx/recyclerview/widget/u0;->l:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d()Z

    move-result v7

    invoke-static {v2, v4, v8, v5, v7}, Landroidx/recyclerview/widget/u0;->x(IIIIZ)I

    move-result v2

    iget v4, p0, Landroidx/recyclerview/widget/u0;->o:I

    iget v5, p0, Landroidx/recyclerview/widget/u0;->m:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->e()Z

    move-result v7

    invoke-static {v4, v5, v8, v6, v7}, Landroidx/recyclerview/widget/u0;->x(IIIIZ)I

    move-result v4

    invoke-virtual {p0, p1, v2, v4, v1}, Landroidx/recyclerview/widget/u0;->z0(Landroid/view/View;IILandroidx/recyclerview/widget/v0;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/c0;->c(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Landroidx/recyclerview/widget/x;->a:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne v1, p2, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c0;->n(Landroid/view/View;)I

    move-result p0

    sub-int p0, v1, p0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c0;->n(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v1

    move v9, v1

    move v1, p0

    move p0, v9

    :goto_3
    iget v2, p3, Landroidx/recyclerview/widget/y;->f:I

    iget p3, p3, Landroidx/recyclerview/widget/y;->b:I

    if-ne v2, v3, :cond_8

    iget v2, p4, Landroidx/recyclerview/widget/x;->a:I

    sub-int v2, p3, v2

    move v9, v2

    move v2, p3

    move p3, v9

    goto :goto_4

    :cond_8
    iget v2, p4, Landroidx/recyclerview/widget/x;->a:I

    add-int/2addr v2, p3

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c0;->n(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v1

    iget v2, p3, Landroidx/recyclerview/widget/y;->f:I

    iget p3, p3, Landroidx/recyclerview/widget/y;->b:I

    if-ne v2, v3, :cond_a

    iget v2, p4, Landroidx/recyclerview/widget/x;->a:I

    sub-int v2, p3, v2

    move v9, v2

    move v2, p0

    move p0, v9

    move v10, v1

    move v1, p3

    move p3, v10

    goto :goto_4

    :cond_a
    iget v2, p4, Landroidx/recyclerview/widget/x;->a:I

    add-int/2addr v2, p3

    move v9, v2

    move v2, p0

    move p0, p3

    move p3, v1

    move v1, v9

    :goto_4
    invoke-static {p1, p0, p3, v1, v2}, Landroidx/recyclerview/widget/u0;->P(Landroid/view/View;IIII)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/v0;->c()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/v0;->b()Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    iput-boolean p2, p4, Landroidx/recyclerview/widget/x;->c:Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    iput-boolean p0, p4, Landroidx/recyclerview/widget/x;->d:Z

    return-void
.end method

.method public final a(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 p1, 0x0

    if-nez p0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public a1(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/w;I)V
    .locals 0

    return-void
.end method

.method public final b1(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;)V
    .locals 5

    iget-boolean v0, p2, Landroidx/recyclerview/widget/y;->a:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Landroidx/recyclerview/widget/y;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/y;->g:I

    iget v1, p2, Landroidx/recyclerview/widget/y;->i:I

    iget p2, p2, Landroidx/recyclerview/widget/y;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p2

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/c0;->e()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_4

    move v0, v3

    :goto_0
    if-ge v0, p2, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v2

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c0;->l(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(Landroidx/recyclerview/widget/c1;II)V

    goto/16 :goto_8

    :cond_4
    add-int/2addr p2, v2

    move v0, p2

    :goto_2
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v2

    if-lt v2, v4, :cond_6

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c0;->l(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(Landroidx/recyclerview/widget/c1;II)V

    goto :goto_8

    :cond_7
    if-gez v0, :cond_8

    goto :goto_8

    :cond_8
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p2

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_b

    add-int/2addr p2, v2

    move v1, p2

    :goto_4
    if-ltz v1, :cond_e

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/c0;->k(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(Landroidx/recyclerview/widget/c1;II)V

    goto :goto_8

    :cond_b
    move v1, v3

    :goto_6
    if-ge v1, p2, :cond_e

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_d

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/c0;->k(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(Landroidx/recyclerview/widget/c1;II)V

    :cond_e
    :goto_8
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c1(Landroidx/recyclerview/widget/c1;II)V
    .locals 1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/u0;->o0(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/c1;->i(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/u0;->o0(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/c1;->i(Landroid/view/View;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final d()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d1()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/y;->a:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->h1(IIZLandroidx/recyclerview/widget/j1;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v4, v2, Landroidx/recyclerview/widget/y;->g:I

    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_2

    return v1

    :cond_2
    if-le v3, p2, :cond_3

    mul-int p1, v0, p2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    neg-int v0, p1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/c0;->m(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput p1, p2, Landroidx/recyclerview/widget/y;->j:I

    iget p2, p3, Landroidx/recyclerview/widget/j1;->d:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public f0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/u0;->l0(Landroidx/recyclerview/widget/c1;)V

    return-void

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    iget v3, v3, Landroidx/recyclerview/widget/z;->a:I

    if-ltz v3, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    if-eqz v7, :cond_3

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput-boolean v6, v3, Landroidx/recyclerview/widget/y;->a:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1()V

    iget-object v3, v0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_5

    :cond_4
    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v8, v0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v8, v3}, Landroidx/recyclerview/widget/d;->j(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/w;

    iget-boolean v9, v8, Landroidx/recyclerview/widget/w;->e:Z

    const/high16 v10, -0x80000000

    if-eqz v9, :cond_9

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v9, v4, :cond_9

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_2d

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v11

    if-ge v9, v11, :cond_8

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v11

    if-gt v9, v11, :cond_2d

    :cond_8
    invoke-static {v3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroidx/recyclerview/widget/w;->b(Landroid/view/View;I)V

    goto/16 :goto_1c

    :cond_9
    :goto_3
    invoke-virtual {v8}, Landroidx/recyclerview/widget/w;->c()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/2addr v3, v9

    iput-boolean v3, v8, Landroidx/recyclerview/widget/w;->d:Z

    iget-boolean v3, v2, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v3, :cond_1b

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v3, v4, :cond_a

    goto/16 :goto_f

    :cond_a
    if-ltz v3, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v9

    if-lt v3, v9, :cond_b

    goto/16 :goto_e

    :cond_b
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    iput v3, v8, Landroidx/recyclerview/widget/w;->b:I

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    if-eqz v9, :cond_e

    iget v11, v9, Landroidx/recyclerview/widget/z;->a:I

    if-ltz v11, :cond_c

    move v11, v5

    goto :goto_4

    :cond_c
    move v11, v6

    :goto_4
    if-eqz v11, :cond_e

    iget-boolean v3, v9, Landroidx/recyclerview/widget/z;->c:Z

    iput-boolean v3, v8, Landroidx/recyclerview/widget/w;->d:Z

    if-eqz v3, :cond_d

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    iget v9, v9, Landroidx/recyclerview/widget/z;->b:I

    goto/16 :goto_a

    :cond_d
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    iget v9, v9, Landroidx/recyclerview/widget/z;->b:I

    goto/16 :goto_b

    :cond_e
    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    if-ne v9, v10, :cond_18

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/c0;->c(Landroid/view/View;)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/c0;->i()I

    move-result v11

    if-le v9, v11, :cond_f

    goto/16 :goto_8

    :cond_f
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v11

    sub-int/2addr v9, v11

    if-gez v9, :cond_10

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v3

    iput v3, v8, Landroidx/recyclerview/widget/w;->c:I

    iput-boolean v6, v8, Landroidx/recyclerview/widget/w;->d:Z

    goto/16 :goto_d

    :cond_10
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v9, v11

    if-gez v9, :cond_11

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v3

    iput v3, v8, Landroidx/recyclerview/widget/w;->c:I

    iput-boolean v5, v8, Landroidx/recyclerview/widget/w;->d:Z

    goto/16 :goto_d

    :cond_11
    iget-boolean v9, v8, Landroidx/recyclerview/widget/w;->d:Z

    if-eqz v9, :cond_12

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/d0;->j()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_5

    :cond_12
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v9

    :goto_5
    iput v9, v8, Landroidx/recyclerview/widget/w;->c:I

    goto :goto_d

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v3

    if-lez v3, :cond_16

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v3

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ge v9, v3, :cond_14

    move v3, v5

    goto :goto_6

    :cond_14
    move v3, v6

    :goto_6
    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-ne v3, v9, :cond_15

    move v3, v5

    goto :goto_7

    :cond_15
    move v3, v6

    :goto_7
    iput-boolean v3, v8, Landroidx/recyclerview/widget/w;->d:Z

    :cond_16
    :goto_8
    iget-boolean v3, v8, Landroidx/recyclerview/widget/w;->d:Z

    if-eqz v3, :cond_17

    iget-object v3, v8, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v3

    goto :goto_9

    :cond_17
    iget-object v3, v8, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v3

    :goto_9
    iput v3, v8, Landroidx/recyclerview/widget/w;->c:I

    goto :goto_d

    :cond_18
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iput-boolean v3, v8, Landroidx/recyclerview/widget/w;->d:Z

    if-eqz v3, :cond_19

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v3

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    :goto_a
    sub-int/2addr v3, v9

    goto :goto_c

    :cond_19
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v3

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    :goto_b
    add-int/2addr v3, v9

    :goto_c
    iput v3, v8, Landroidx/recyclerview/widget/w;->c:I

    :goto_d
    move v3, v5

    goto :goto_10

    :cond_1a
    :goto_e
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    iput v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    :cond_1b
    :goto_f
    move v3, v6

    :goto_10
    if-eqz v3, :cond_1c

    goto/16 :goto_1b

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_17

    :cond_1d
    iget-object v3, v0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1f

    :cond_1e
    :goto_11
    const/4 v3, 0x0

    goto :goto_12

    :cond_1f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v9, v0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/d;->j(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_20

    goto :goto_11

    :cond_20
    :goto_12
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/v0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/v0;->c()Z

    move-result v11

    if-nez v11, :cond_21

    invoke-virtual {v9}, Landroidx/recyclerview/widget/v0;->a()I

    move-result v11

    if-ltz v11, :cond_21

    invoke-virtual {v9}, Landroidx/recyclerview/widget/v0;->a()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v11

    if-ge v9, v11, :cond_21

    move v9, v5

    goto :goto_13

    :cond_21
    move v9, v6

    :goto_13
    if-eqz v9, :cond_22

    invoke-static {v3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroidx/recyclerview/widget/w;->b(Landroid/view/View;I)V

    goto :goto_16

    :cond_22
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-eq v3, v9, :cond_23

    goto :goto_17

    :cond_23
    iget-boolean v3, v8, Landroidx/recyclerview/widget/w;->d:Z

    invoke-virtual {v0, v1, v2, v3, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;ZZ)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-static {v3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroidx/recyclerview/widget/w;->a(Landroid/view/View;I)V

    iget-boolean v9, v2, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v9, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0()Z

    move-result v9

    if-eqz v9, :cond_28

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v3

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v12

    if-gt v3, v11, :cond_24

    if-ge v9, v11, :cond_24

    move v13, v5

    goto :goto_14

    :cond_24
    move v13, v6

    :goto_14
    if-lt v9, v12, :cond_25

    if-le v3, v12, :cond_25

    move v3, v5

    goto :goto_15

    :cond_25
    move v3, v6

    :goto_15
    if-nez v13, :cond_26

    if-eqz v3, :cond_28

    :cond_26
    iget-boolean v3, v8, Landroidx/recyclerview/widget/w;->d:Z

    if-eqz v3, :cond_27

    move v11, v12

    :cond_27
    iput v11, v8, Landroidx/recyclerview/widget/w;->c:I

    :cond_28
    :goto_16
    move v3, v5

    goto :goto_18

    :cond_29
    :goto_17
    move v3, v6

    :goto_18
    if-eqz v3, :cond_2a

    goto :goto_1b

    :cond_2a
    iget-boolean v3, v8, Landroidx/recyclerview/widget/w;->d:Z

    if-eqz v3, :cond_2b

    iget-object v3, v8, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v3

    goto :goto_19

    :cond_2b
    iget-object v3, v8, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v3

    :goto_19
    iput v3, v8, Landroidx/recyclerview/widget/w;->c:I

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-eqz v3, :cond_2c

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1a

    :cond_2c
    move v3, v6

    :goto_1a
    iput v3, v8, Landroidx/recyclerview/widget/w;->b:I

    :goto_1b
    iput-boolean v5, v8, Landroidx/recyclerview/widget/w;->e:Z

    :cond_2d
    :goto_1c
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v9, v3, Landroidx/recyclerview/widget/y;->j:I

    if-ltz v9, :cond_2e

    move v9, v5

    goto :goto_1d

    :cond_2e
    move v9, v4

    :goto_1d
    iput v9, v3, Landroidx/recyclerview/widget/y;->f:I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:[I

    aput v6, v3, v6

    aput v6, v3, v5

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(Landroidx/recyclerview/widget/j1;[I)V

    aget v9, v3, v6

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v11

    add-int/2addr v11, v9

    aget v3, v3, v5

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/c0;->o()I

    move-result v9

    add-int/2addr v9, v3

    iget-boolean v3, v2, Landroidx/recyclerview/widget/j1;->g:Z

    if-eqz v3, :cond_31

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-eq v3, v4, :cond_31

    iget v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    if-eq v12, v10, :cond_31

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_31

    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v10, :cond_2f

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v10

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v12, v3}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v10, v3

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    goto :goto_1e

    :cond_2f
    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v10, v3}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v3

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v10

    sub-int/2addr v3, v10

    iget v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    :goto_1e
    sub-int/2addr v10, v3

    if-lez v10, :cond_30

    add-int/2addr v11, v10

    goto :goto_1f

    :cond_30
    sub-int/2addr v9, v10

    :cond_31
    :goto_1f
    iget-boolean v3, v8, Landroidx/recyclerview/widget/w;->d:Z

    if-eqz v3, :cond_32

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v3, :cond_33

    goto :goto_20

    :cond_32
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v3, :cond_34

    :cond_33
    move v3, v4

    goto :goto_21

    :cond_34
    :goto_20
    move v3, v5

    :goto_21
    invoke-virtual {v0, v1, v2, v8, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/w;I)V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/u0;->p(Landroidx/recyclerview/widget/c1;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/c0;->g()I

    move-result v10

    if-nez v10, :cond_35

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/c0;->e()I

    move-result v10

    if-nez v10, :cond_35

    move v10, v5

    goto :goto_22

    :cond_35
    move v10, v6

    :goto_22
    iput-boolean v10, v3, Landroidx/recyclerview/widget/y;->l:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput v6, v3, Landroidx/recyclerview/widget/y;->i:I

    iget-boolean v3, v8, Landroidx/recyclerview/widget/w;->d:Z

    if-eqz v3, :cond_37

    iget v3, v8, Landroidx/recyclerview/widget/w;->b:I

    iget v10, v8, Landroidx/recyclerview/widget/w;->c:I

    invoke-virtual {v0, v3, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->j1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput v11, v3, Landroidx/recyclerview/widget/y;->h:I

    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v10, v3, Landroidx/recyclerview/widget/y;->b:I

    iget v11, v3, Landroidx/recyclerview/widget/y;->d:I

    iget v3, v3, Landroidx/recyclerview/widget/y;->c:I

    if-lez v3, :cond_36

    add-int/2addr v9, v3

    :cond_36
    iget v3, v8, Landroidx/recyclerview/widget/w;->b:I

    iget v12, v8, Landroidx/recyclerview/widget/w;->c:I

    invoke-virtual {v0, v3, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->i1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput v9, v3, Landroidx/recyclerview/widget/y;->h:I

    iget v9, v3, Landroidx/recyclerview/widget/y;->d:I

    iget v12, v3, Landroidx/recyclerview/widget/y;->e:I

    add-int/2addr v9, v12

    iput v9, v3, Landroidx/recyclerview/widget/y;->d:I

    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v9, v3, Landroidx/recyclerview/widget/y;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/y;->c:I

    if-lez v3, :cond_3a

    invoke-virtual {v0, v11, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->j1(II)V

    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput v3, v10, Landroidx/recyclerview/widget/y;->h:I

    invoke-virtual {v0, v1, v10, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v10, v3, Landroidx/recyclerview/widget/y;->b:I

    goto :goto_23

    :cond_37
    iget v3, v8, Landroidx/recyclerview/widget/w;->b:I

    iget v10, v8, Landroidx/recyclerview/widget/w;->c:I

    invoke-virtual {v0, v3, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->i1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput v9, v3, Landroidx/recyclerview/widget/y;->h:I

    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v9, v3, Landroidx/recyclerview/widget/y;->b:I

    iget v10, v3, Landroidx/recyclerview/widget/y;->d:I

    iget v3, v3, Landroidx/recyclerview/widget/y;->c:I

    if-lez v3, :cond_38

    add-int/2addr v11, v3

    :cond_38
    iget v3, v8, Landroidx/recyclerview/widget/w;->b:I

    iget v12, v8, Landroidx/recyclerview/widget/w;->c:I

    invoke-virtual {v0, v3, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->j1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput v11, v3, Landroidx/recyclerview/widget/y;->h:I

    iget v11, v3, Landroidx/recyclerview/widget/y;->d:I

    iget v12, v3, Landroidx/recyclerview/widget/y;->e:I

    add-int/2addr v11, v12

    iput v11, v3, Landroidx/recyclerview/widget/y;->d:I

    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v11, v3, Landroidx/recyclerview/widget/y;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/y;->c:I

    if-lez v3, :cond_39

    invoke-virtual {v0, v10, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->i1(II)V

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput v3, v9, Landroidx/recyclerview/widget/y;->h:I

    invoke-virtual {v0, v1, v9, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v3, v3, Landroidx/recyclerview/widget/y;->b:I

    move v9, v3

    :cond_39
    move v10, v11

    :cond_3a
    :goto_23
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v3

    if-lez v3, :cond_3c

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget-boolean v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/2addr v3, v11

    if-eqz v3, :cond_3b

    invoke-virtual {v0, v9, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Z)I

    move-result v3

    add-int/2addr v10, v3

    add-int/2addr v9, v3

    invoke-virtual {v0, v10, v1, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Z)I

    move-result v3

    goto :goto_24

    :cond_3b
    invoke-virtual {v0, v10, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Z)I

    move-result v3

    add-int/2addr v10, v3

    add-int/2addr v9, v3

    invoke-virtual {v0, v9, v1, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Z)I

    move-result v3

    :goto_24
    add-int/2addr v10, v3

    add-int/2addr v9, v3

    :cond_3c
    iget-boolean v3, v2, Landroidx/recyclerview/widget/j1;->k:Z

    if-eqz v3, :cond_45

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v3

    if-eqz v3, :cond_45

    iget-boolean v3, v2, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v3, :cond_45

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0()Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_2b

    :cond_3d
    iget-object v3, v1, Landroidx/recyclerview/widget/c1;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v12

    move v13, v6

    move v14, v13

    move v15, v14

    :goto_25
    if-ge v13, v11, :cond_42

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/recyclerview/widget/n1;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v16

    if-eqz v16, :cond_3e

    goto :goto_28

    :cond_3e
    invoke-virtual {v5}, Landroidx/recyclerview/widget/n1;->getLayoutPosition()I

    move-result v7

    if-ge v7, v12, :cond_3f

    const/4 v7, 0x1

    goto :goto_26

    :cond_3f
    move v7, v6

    :goto_26
    iget-boolean v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eq v7, v6, :cond_40

    move v6, v4

    goto :goto_27

    :cond_40
    const/4 v6, 0x1

    :goto_27
    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget-object v5, v5, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/c0;->c(Landroid/view/View;)I

    move-result v5

    if-ne v6, v4, :cond_41

    add-int/2addr v14, v5

    goto :goto_28

    :cond_41
    add-int/2addr v15, v5

    :goto_28
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_25

    :cond_42
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput-object v3, v4, Landroidx/recyclerview/widget/y;->k:Ljava/util/List;

    if-lez v14, :cond_43

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->j1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput v14, v3, Landroidx/recyclerview/widget/y;->h:I

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/y;->c:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/y;->a(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I

    goto :goto_29

    :cond_43
    const/4 v4, 0x0

    :goto_29
    if-lez v15, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->i1(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput v15, v3, Landroidx/recyclerview/widget/y;->h:I

    iput v4, v3, Landroidx/recyclerview/widget/y;->c:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/y;->a(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/j1;Z)I

    goto :goto_2a

    :cond_44
    const/4 v5, 0x0

    :goto_2a
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput-object v5, v1, Landroidx/recyclerview/widget/y;->k:Ljava/util/List;

    :cond_45
    :goto_2b
    iget-boolean v1, v2, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v1, :cond_46

    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->i()I

    move-result v2

    iput v2, v1, Landroidx/recyclerview/widget/d0;->a:I

    goto :goto_2c

    :cond_46
    invoke-virtual {v8}, Landroidx/recyclerview/widget/w;->c()V

    :goto_2c
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    return-void
.end method

.method public final f1(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation:"

    invoke-static {v0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/d0;->a(Landroidx/recyclerview/widget/u0;I)Landroidx/recyclerview/widget/c0;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/w;

    iput-object v0, v1, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/c0;

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    :cond_3
    return-void
.end method

.method public g0(Landroidx/recyclerview/widget/j1;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/w;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w;->c()V

    return-void
.end method

.method public g1(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    return-void
.end method

.method public final h(IILandroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/r;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->h1(IIZLandroidx/recyclerview/widget/j1;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/r;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final h0(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroidx/recyclerview/widget/z;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/z;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p1, Landroidx/recyclerview/widget/z;->a:I

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    :cond_1
    return-void
.end method

.method public final h1(IIZLandroidx/recyclerview/widget/j1;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->g()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->e()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Landroidx/recyclerview/widget/y;->l:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput p1, v0, Landroidx/recyclerview/widget/y;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:[I

    aput v3, v0, v3

    aput v3, v0, v2

    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(Landroidx/recyclerview/widget/j1;[I)V

    aget p4, v0, v3

    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    aget v0, v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v2, :cond_1

    move v3, v2

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    if-eqz v3, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    iput v1, p1, Landroidx/recyclerview/widget/y;->h:I

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move p4, v0

    :goto_2
    iput p4, p1, Landroidx/recyclerview/widget/y;->i:I

    const/4 p4, -0x1

    if-eqz v3, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->o()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/recyclerview/widget/y;->h:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_4

    move v2, p4

    :cond_4
    iput v2, v0, Landroidx/recyclerview/widget/y;->e:I

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v2, v1, Landroidx/recyclerview/widget/y;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Landroidx/recyclerview/widget/y;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroidx/recyclerview/widget/y;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/c0;->f()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v1, v0, Landroidx/recyclerview/widget/y;->h:I

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Landroidx/recyclerview/widget/y;->h:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, p4

    :goto_3
    iput v2, v0, Landroidx/recyclerview/widget/y;->e:I

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget v2, v1, Landroidx/recyclerview/widget/y;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Landroidx/recyclerview/widget/y;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroidx/recyclerview/widget/y;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/c0;->h()I

    move-result p4

    add-int/2addr p1, p4

    :goto_4
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput p2, p0, Landroidx/recyclerview/widget/y;->c:I

    if-eqz p3, :cond_7

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/y;->c:I

    :cond_7
    iput p1, p0, Landroidx/recyclerview/widget/y;->g:I

    return-void
.end method

.method public final i(ILandroidx/recyclerview/widget/r;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v4, v0, Landroidx/recyclerview/widget/z;->a:I

    if-ltz v4, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_1

    iget-boolean v0, v0, Landroidx/recyclerview/widget/z;->c:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v4, v2, :cond_3

    if-eqz v0, :cond_2

    add-int/lit8 v4, p1, -0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    move v0, v3

    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:I

    if-ge v0, v2, :cond_5

    if-ltz v4, :cond_5

    if-ge v4, p1, :cond_5

    invoke-virtual {p2, v4, v3}, Landroidx/recyclerview/widget/r;->a(II)V

    add-int/2addr v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final i0()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    if-eqz v0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/z;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/z;-><init>(Landroidx/recyclerview/widget/z;)V

    return-object p0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/z;

    invoke-direct {v0}, Landroidx/recyclerview/widget/z;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/recyclerview/widget/z;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v0, Landroidx/recyclerview/widget/z;->b:I

    invoke-static {v1}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Landroidx/recyclerview/widget/z;->a:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/z;->a:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c0;->h()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroidx/recyclerview/widget/z;->b:I

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    iput p0, v0, Landroidx/recyclerview/widget/z;->a:I

    :goto_0
    return-object v0
.end method

.method public final i1(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/y;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/y;->e:I

    iput p1, v0, Landroidx/recyclerview/widget/y;->d:I

    iput v1, v0, Landroidx/recyclerview/widget/y;->f:I

    iput p2, v0, Landroidx/recyclerview/widget/y;->b:I

    const/high16 p0, -0x80000000

    iput p0, v0, Landroidx/recyclerview/widget/y;->g:I

    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public final j1(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroidx/recyclerview/widget/y;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/y;

    iput p1, v0, Landroidx/recyclerview/widget/y;->d:I

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/y;->e:I

    iput p1, v0, Landroidx/recyclerview/widget/y;->f:I

    iput p2, v0, Landroidx/recyclerview/widget/y;->b:I

    const/high16 p0, -0x80000000

    iput p0, v0, Landroidx/recyclerview/widget/y;->g:I

    return-void
.end method

.method public k(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public l(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public final m(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public n(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public o(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public final q(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->q(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public r()Landroidx/recyclerview/widget/v0;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/v0;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/v0;-><init>(II)V

    return-object p0
.end method

.method public r0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public final s0(I)V
    .locals 1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Landroidx/recyclerview/widget/z;->a:I

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    return-void
.end method

.method public t0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method
