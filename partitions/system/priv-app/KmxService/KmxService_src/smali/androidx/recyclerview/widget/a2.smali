.class public final Landroidx/recyclerview/widget/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/recyclerview/widget/a2;->a:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ll/j;

    invoke-direct {p1}, Ll/j;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    new-instance p1, Ll/d;

    invoke-direct {p1}, Ll/d;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/a2;->a:I

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/s0;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/recyclerview/widget/a2;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    new-instance p1, Landroidx/recyclerview/widget/x1;

    invoke-direct {p1}, Landroidx/recyclerview/widget/x1;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/n1;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, Ll/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/z1;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/z1;->a()Landroidx/recyclerview/widget/z1;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast p0, Ll/j;

    invoke-virtual {p0, p1, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p0, v0, Landroidx/recyclerview/widget/z1;->a:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroidx/recyclerview/widget/z1;->a:I

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/n1;Landroidx/recyclerview/widget/o0;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, Ll/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/z1;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/z1;->a()Landroidx/recyclerview/widget/z1;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast p0, Ll/j;

    invoke-virtual {p0, p1, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/z1;->c:Landroidx/recyclerview/widget/o0;

    iget p0, v0, Landroidx/recyclerview/widget/z1;->a:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v0, Landroidx/recyclerview/widget/z1;->a:I

    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/n1;Landroidx/recyclerview/widget/o0;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, Ll/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/z1;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/z1;->a()Landroidx/recyclerview/widget/z1;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast p0, Ll/j;

    invoke-virtual {p0, p1, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/z1;->b:Landroidx/recyclerview/widget/o0;

    iget p0, v0, Landroidx/recyclerview/widget/z1;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Landroidx/recyclerview/widget/z1;->a:I

    return-void
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/a2;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, Ll/j;

    invoke-virtual {v0}, Ll/j;->clear()V

    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast p0, Ll/d;

    invoke-virtual {p0}, Ll/d;->a()V

    return-void

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [I

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    :cond_0
    move-object v1, v0

    check-cast v1, [I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    move-object v1, v0

    check-cast v1, [I

    check-cast v0, [I

    array-length v0, v0

    :goto_0
    if-gt v0, p1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, [I

    array-length v0, v1

    check-cast p0, [I

    array-length p0, p0

    invoke-static {p1, v0, p0, v2}, Ljava/util/Arrays;->fill([IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final f(IIII)Landroid/view/View;
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/y1;

    check-cast v0, Landroidx/recyclerview/widget/s0;

    iget v1, v0, Landroidx/recyclerview/widget/s0;->a:I

    iget-object v0, v0, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v0

    goto :goto_1

    :goto_0
    check-cast v0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v0

    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/y1;

    check-cast v1, Landroidx/recyclerview/widget/s0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->c()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-eq p1, p2, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/y1;

    check-cast v4, Landroidx/recyclerview/widget/s0;

    iget v5, v4, Landroidx/recyclerview/widget/s0;->a:I

    iget-object v4, v4, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    packed-switch v5, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    check-cast v4, Landroidx/recyclerview/widget/u0;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v4

    goto :goto_5

    :goto_4
    check-cast v4, Landroidx/recyclerview/widget/u0;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v4

    :goto_5
    iget-object v5, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/recyclerview/widget/y1;

    check-cast v5, Landroidx/recyclerview/widget/s0;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/s0;->b(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/recyclerview/widget/y1;

    check-cast v6, Landroidx/recyclerview/widget/s0;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/s0;->a(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Landroidx/recyclerview/widget/x1;

    iput v0, v8, Landroidx/recyclerview/widget/x1;->b:I

    iput v1, v8, Landroidx/recyclerview/widget/x1;->c:I

    iput v5, v8, Landroidx/recyclerview/widget/x1;->d:I

    iput v6, v8, Landroidx/recyclerview/widget/x1;->e:I

    if-eqz p3, :cond_1

    move-object v5, v7

    check-cast v5, Landroidx/recyclerview/widget/x1;

    or-int/lit8 v6, p3, 0x0

    iput v6, v5, Landroidx/recyclerview/widget/x1;->a:I

    check-cast v7, Landroidx/recyclerview/widget/x1;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/x1;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_2

    iget-object v5, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroidx/recyclerview/widget/x1;

    or-int/lit8 v7, p4, 0x0

    iput v7, v6, Landroidx/recyclerview/widget/x1;->a:I

    check-cast v5, Landroidx/recyclerview/widget/x1;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/x1;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    :cond_2
    add-int/2addr p1, v2

    goto :goto_3

    :cond_3
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final g(I)I
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/u1;

    iget v4, v3, Landroidx/recyclerview/widget/u1;->a:I

    if-ne v4, p1, :cond_4

    move-object v2, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_8

    iget-object v3, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/u1;

    iget v3, v3, Landroidx/recyclerview/widget/u1;->a:I

    if-lt v3, p1, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move v2, v1

    :goto_3
    if-eq v2, v1, :cond_9

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/u1;

    iget-object v3, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, v0, Landroidx/recyclerview/widget/u1;->a:I

    goto :goto_5

    :cond_9
    :goto_4
    move v0, v1

    :goto_5
    if-ne v0, v1, :cond_a

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, [I

    array-length v2, v0

    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast p0, [I

    array-length p0, p0

    return p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {p0, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    return v0
.end method

.method public final h(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/x1;

    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/y1;

    check-cast v1, Landroidx/recyclerview/widget/s0;

    iget v2, v1, Landroidx/recyclerview/widget/s0;->a:I

    iget-object v1, v1, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/recyclerview/widget/u0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v1

    goto :goto_1

    :goto_0
    check-cast v1, Landroidx/recyclerview/widget/u0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v1

    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/y1;

    check-cast v2, Landroidx/recyclerview/widget/s0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/s0;->c()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/y1;

    check-cast v3, Landroidx/recyclerview/widget/s0;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/s0;->b(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/y1;

    check-cast v4, Landroidx/recyclerview/widget/s0;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/s0;->a(Landroid/view/View;)I

    move-result p1

    iput v1, v0, Landroidx/recyclerview/widget/x1;->b:I

    iput v2, v0, Landroidx/recyclerview/widget/x1;->c:I

    iput v3, v0, Landroidx/recyclerview/widget/x1;->d:I

    iput p1, v0, Landroidx/recyclerview/widget/x1;->e:I

    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/recyclerview/widget/x1;

    const/16 v0, 0x6003

    or-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroidx/recyclerview/widget/x1;->a:I

    check-cast p0, Landroidx/recyclerview/widget/x1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/x1;->a()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a2;->e(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/u1;

    iget v2, v1, Landroidx/recyclerview/widget/u1;->a:I

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, p2

    iput v2, v1, Landroidx/recyclerview/widget/u1;->a:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final j(II)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a2;->e(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p2

    array-length v3, v1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v4

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/u1;

    iget v3, v2, Landroidx/recyclerview/widget/u1;->a:I

    if-ge v3, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v3, v0, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sub-int/2addr v3, p2

    iput v3, v2, Landroidx/recyclerview/widget/u1;->a:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/n1;I)Landroidx/recyclerview/widget/o0;
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v0, Ll/j;

    invoke-virtual {v0, p1}, Ll/j;->f(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast v1, Ll/j;

    invoke-virtual {v1, p1}, Ll/j;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/z1;

    if-eqz v1, :cond_4

    iget v2, v1, Landroidx/recyclerview/widget/z1;->a:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    not-int v3, p2

    and-int/2addr v2, v3

    iput v2, v1, Landroidx/recyclerview/widget/z1;->a:I

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    iget-object p2, v1, Landroidx/recyclerview/widget/z1;->b:Landroidx/recyclerview/widget/o0;

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    if-ne p2, v3, :cond_3

    iget-object p2, v1, Landroidx/recyclerview/widget/z1;->c:Landroidx/recyclerview/widget/o0;

    :goto_0
    and-int/lit8 v2, v2, 0xc

    if-nez v2, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast p0, Ll/j;

    invoke-virtual {p0, p1}, Ll/j;->j(I)Ljava/lang/Object;

    const/4 p0, 0x0

    iput p0, v1, Landroidx/recyclerview/widget/z1;->a:I

    iput-object v0, v1, Landroidx/recyclerview/widget/z1;->b:Landroidx/recyclerview/widget/o0;

    iput-object v0, v1, Landroidx/recyclerview/widget/z1;->c:Landroidx/recyclerview/widget/o0;

    sget-object p0, Landroidx/recyclerview/widget/z1;->d:Ln/e;

    invoke-virtual {p0, v1}, Ln/e;->b(Ljava/lang/Object;)Z

    :cond_2
    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must provide flag PRE or POST"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0
.end method

.method public final l(Landroidx/recyclerview/widget/n1;)V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast p0, Ll/j;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/z1;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/z1;->a:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/recyclerview/widget/z1;->a:I

    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/n1;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v0, Ll/d;

    iget-boolean v1, v0, Ll/d;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ll/d;->c()V

    :cond_0
    iget v0, v0, Ll/d;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v2, Ll/d;

    invoke-virtual {v2, v0}, Ll/d;->f(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/a2;->c:Ljava/lang/Object;

    check-cast v2, Ll/d;

    iget-object v3, v2, Ll/d;->c:[Ljava/lang/Object;

    aget-object v4, v3, v0

    sget-object v5, Ll/d;->e:Ljava/lang/Object;

    if-eq v4, v5, :cond_2

    aput-object v5, v3, v0

    iput-boolean v1, v2, Ll/d;->a:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Landroidx/recyclerview/widget/a2;->b:Ljava/lang/Object;

    check-cast p0, Ll/j;

    invoke-virtual {p0, p1}, Ll/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/z1;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/z1;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/z1;->b:Landroidx/recyclerview/widget/o0;

    iput-object p1, p0, Landroidx/recyclerview/widget/z1;->c:Landroidx/recyclerview/widget/o0;

    sget-object p1, Landroidx/recyclerview/widget/z1;->d:Ln/e;

    invoke-virtual {p1, p0}, Ln/e;->b(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
