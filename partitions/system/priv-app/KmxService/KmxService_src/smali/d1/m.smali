.class public Ld1/m;
.super Landroidx/fragment/app/r1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/r1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ld1/q;

    invoke-virtual {p2, p1}, Ld1/q;->b(Landroid/view/View;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, Ld1/q;

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Ld1/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Ld1/v;

    iget-object v0, p1, Ld1/v;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_6

    if-ltz v2, :cond_2

    iget-object v3, p1, Ld1/v;->A:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Ld1/v;->A:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/q;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v1

    :goto_2
    invoke-virtual {p0, v3, p2}, Ld1/m;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p1, Ld1/q;->e:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/fragment/app/r1;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1}, Landroidx/fragment/app/r1;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1}, Landroidx/fragment/app/r1;->h(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move p0, v2

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p0, 0x1

    :goto_4
    if-nez p0, :cond_6

    iget-object p0, p1, Ld1/q;->f:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/fragment/app/r1;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_5
    if-ge v2, p0, :cond_6

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Ld1/q;->b(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ld1/q;

    invoke-static {p1, p2}, Ld1/t;->a(Landroid/view/ViewGroup;Ld1/q;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Ld1/q;

    return p0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Ld1/q;

    invoke-virtual {p1}, Ld1/q;->j()Ld1/q;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld1/q;

    check-cast p2, Ld1/q;

    check-cast p3, Ld1/q;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p0, Ld1/v;

    invoke-direct {p0}, Ld1/v;-><init>()V

    invoke-virtual {p0, p1}, Ld1/v;->H(Ld1/q;)V

    invoke-virtual {p0, p2}, Ld1/v;->H(Ld1/q;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ld1/v;->J(I)V

    move-object p1, p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    new-instance p0, Ld1/v;

    invoke-direct {p0}, Ld1/v;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Ld1/v;->H(Ld1/q;)V

    :cond_3
    invoke-virtual {p0, p3}, Ld1/v;->H(Ld1/q;)V

    return-object p0

    :cond_4
    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ld1/v;

    invoke-direct {p0}, Ld1/v;-><init>()V

    if-eqz p1, :cond_0

    check-cast p1, Ld1/q;

    invoke-virtual {p0, p1}, Ld1/v;->H(Ld1/q;)V

    :cond_0
    check-cast p2, Ld1/q;

    invoke-virtual {p0, p2}, Ld1/v;->H(Ld1/q;)V

    return-object p0
.end method

.method public final k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    check-cast p1, Ld1/q;

    new-instance p0, Ld1/j;

    invoke-direct {p0, p2, p3}, Ld1/j;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p0}, Ld1/q;->a(Ld1/p;)V

    return-void
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7

    check-cast p1, Ld1/q;

    new-instance v6, Ld1/k;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Ld1/k;-><init>(Ld1/m;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v6}, Ld1/q;->a(Ld1/p;)V

    return-void
.end method

.method public final m(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Ld1/q;

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, p0}, Landroidx/fragment/app/r1;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance p0, Ld1/i;

    invoke-direct {p0}, Ld1/i;-><init>()V

    invoke-virtual {p2, p0}, Ld1/q;->A(Lp1/f;)V

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    check-cast p1, Ld1/q;

    new-instance p0, Ld1/i;

    invoke-direct {p0}, Ld1/i;-><init>()V

    invoke-virtual {p1, p0}, Ld1/q;->A(Lp1/f;)V

    return-void
.end method

.method public final o(Ljava/lang/Object;Landroidx/core/os/f;Ld/p0;)V
    .locals 2

    check-cast p1, Ld1/q;

    new-instance v0, Lp1/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lp1/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroidx/core/os/f;->a(Landroidx/core/os/e;)V

    new-instance p0, Ld1/l;

    invoke-direct {p0, p3}, Ld1/l;-><init>(Ld/p0;)V

    invoke-virtual {p1, p0}, Ld1/q;->a(Ld1/p;)V

    return-void
.end method

.method public final p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, Ld1/v;

    iget-object v0, p1, Ld1/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/r1;->d(Landroid/view/View;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p3}, Ld1/m;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    check-cast p1, Ld1/v;

    if-eqz p1, :cond_0

    iget-object v0, p1, Ld1/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3}, Ld1/m;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ld1/v;

    invoke-direct {p0}, Ld1/v;-><init>()V

    check-cast p1, Ld1/q;

    invoke-virtual {p0, p1}, Ld1/v;->H(Ld1/q;)V

    return-object p0
.end method

.method public final s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, Ld1/q;

    instance-of v0, p1, Ld1/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ld1/v;

    iget-object v0, p1, Ld1/v;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_7

    if-ltz v2, :cond_1

    iget-object v3, p1, Ld1/v;->A:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, Ld1/v;->A:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/q;

    goto :goto_2

    :cond_1
    :goto_1
    move-object v3, v1

    :goto_2
    invoke-virtual {p0, v3, p2, p3}, Ld1/m;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p1, Ld1/q;->e:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/fragment/app/r1;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1}, Landroidx/fragment/app/r1;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1}, Landroidx/fragment/app/r1;->h(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move p0, v2

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p0, 0x1

    :goto_4
    if-nez p0, :cond_7

    iget-object p0, p1, Ld1/q;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    invoke-interface {p0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-nez p3, :cond_5

    move p0, v2

    goto :goto_5

    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_5
    if-ge v2, p0, :cond_6

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Ld1/q;->b(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_6
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_7

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Ld1/q;->w(Landroid/view/View;)V

    goto :goto_6

    :cond_7
    return-void
.end method
