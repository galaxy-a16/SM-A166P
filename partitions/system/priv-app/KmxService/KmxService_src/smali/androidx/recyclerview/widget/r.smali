.class public final Landroidx/recyclerview/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/r;->d:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/recyclerview/widget/r;->c:[I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/r;->c:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/r;->c:[I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/r;->c:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    iget p1, p0, Landroidx/recyclerview/widget/r;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/r;->d:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pixel distance must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Layout positions must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/r;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/r;->c:[I

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Landroidx/recyclerview/widget/u0;->i:Z

    if-eqz v2, :cond_5

    if-eqz p2, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v0, p0}, Landroidx/recyclerview/widget/u0;->i(ILandroidx/recyclerview/widget/r;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView;->H:Z

    if-nez v2, :cond_2

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/b;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    iget v0, p0, Landroidx/recyclerview/widget/r;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/r;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    invoke-virtual {v1, v0, v2, v3, p0}, Landroidx/recyclerview/widget/u0;->h(IILandroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/r;)V

    :cond_4
    :goto_0
    iget p0, p0, Landroidx/recyclerview/widget/r;->d:I

    iget v0, v1, Landroidx/recyclerview/widget/u0;->j:I

    if-le p0, v0, :cond_5

    iput p0, v1, Landroidx/recyclerview/widget/u0;->j:I

    iput-boolean p2, v1, Landroidx/recyclerview/widget/u0;->k:Z

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/c1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c1;->n()V

    :cond_5
    return-void
.end method
