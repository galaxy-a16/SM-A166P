.class public final Ld/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/b;


# instance fields
.field public final a:Lg/b;

.field public final synthetic b:Ld/j0;


# direct methods
.method public constructor <init>(Ld/j0;Lg/b;)V
    .locals 0

    iput-object p1, p0, Ld/z;->b:Ld/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/z;->a:Lg/b;

    return-void
.end method


# virtual methods
.method public final a(Lg/c;Lh/n;)Z
    .locals 2

    iget-object v0, p0, Ld/z;->b:Ld/j0;

    iget-object v0, v0, Ld/j0;->B:Landroid/view/ViewGroup;

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/m0;->c(Landroid/view/View;)V

    iget-object p0, p0, Ld/z;->a:Lg/b;

    invoke-interface {p0, p1, p2}, Lg/b;->a(Lg/c;Lh/n;)Z

    move-result p0

    return p0
.end method

.method public final b(Lg/c;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Ld/z;->a:Lg/b;

    invoke-interface {p0, p1, p2}, Lg/b;->b(Lg/c;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final c(Lg/c;)V
    .locals 3

    iget-object v0, p0, Ld/z;->a:Lg/b;

    invoke-interface {v0, p1}, Lg/b;->c(Lg/c;)V

    iget-object p1, p0, Ld/z;->b:Ld/j0;

    iget-object v0, p1, Ld/j0;->x:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ld/j0;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Ld/j0;->y:Ld/v;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Ld/j0;->z:Landroidx/core/view/i1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/i1;->b()V

    :cond_1
    iget-object v0, p1, Ld/j0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/view/x0;->a(Landroid/view/View;)Landroidx/core/view/i1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/i1;->a(F)V

    iput-object v0, p1, Ld/j0;->z:Landroidx/core/view/i1;

    new-instance v1, Ld/y;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Ld/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroidx/core/view/i1;->d(Landroidx/core/view/j1;)V

    :cond_2
    iget-object p0, p1, Ld/j0;->l:Ld/r;

    if-eqz p0, :cond_3

    iget-object v0, p1, Ld/j0;->v:Lg/c;

    invoke-interface {p0, v0}, Ld/r;->onSupportActionModeFinished(Lg/c;)V

    :cond_3
    const/4 p0, 0x0

    iput-object p0, p1, Ld/j0;->v:Lg/c;

    iget-object p0, p1, Ld/j0;->B:Landroid/view/ViewGroup;

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/m0;->c(Landroid/view/View;)V

    invoke-virtual {p1}, Ld/j0;->K()V

    return-void
.end method

.method public final d(Lg/c;Lh/n;)Z
    .locals 0

    iget-object p0, p0, Ld/z;->a:Lg/b;

    invoke-interface {p0, p1, p2}, Lg/b;->d(Lg/c;Lh/n;)Z

    move-result p0

    return p0
.end method
