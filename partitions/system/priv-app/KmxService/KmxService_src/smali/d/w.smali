.class public final Ld/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/t;
.implements Ld/c;
.implements Landroidx/appcompat/widget/t1;
.implements Lh/a0;


# instance fields
.field public final synthetic a:Ld/j0;


# direct methods
.method public synthetic constructor <init>(Ld/j0;)V
    .locals 0

    iput-object p1, p0, Ld/w;->a:Ld/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh/n;Z)V
    .locals 0

    iget-object p0, p0, Ld/w;->a:Ld/j0;

    invoke-virtual {p0, p1}, Ld/j0;->t(Lh/n;)V

    return-void
.end method

.method public h(Landroid/view/View;Landroidx/core/view/c2;)Landroidx/core/view/c2;
    .locals 4

    invoke-virtual {p2}, Landroidx/core/view/c2;->e()I

    move-result v0

    iget-object p0, p0, Ld/w;->a:Ld/j0;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Ld/j0;->L(Landroidx/core/view/c2;Landroid/graphics/Rect;)I

    move-result p0

    if-eq v0, p0, :cond_0

    invoke-virtual {p2}, Landroidx/core/view/c2;->c()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/view/c2;->d()I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/c2;->b()I

    move-result v2

    new-instance v3, Lf9/b;

    invoke-direct {v3, p2}, Lf9/b;-><init>(Landroidx/core/view/c2;)V

    invoke-static {v0, p0, v1, v2}, Lw/c;->b(IIII)Lw/c;

    move-result-object p0

    iget-object p2, v3, Lf9/b;->b:Ljava/lang/Object;

    check-cast p2, Landroidx/core/view/u1;

    invoke-virtual {p2, p0}, Landroidx/core/view/u1;->f(Lw/c;)V

    invoke-virtual {v3}, Lf9/b;->b()Landroidx/core/view/c2;

    move-result-object p2

    :cond_0
    sget-object p0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroidx/core/view/c2;->f()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1, p0}, Landroidx/core/view/m0;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1, v0}, Landroidx/core/view/c2;->g(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/c2;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public j(Lh/n;)Z
    .locals 1

    iget-object p0, p0, Ld/w;->a:Ld/j0;

    invoke-virtual {p0}, Ld/j0;->C()Landroid/view/Window$Callback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x6c

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
