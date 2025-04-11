.class public final Landroidx/core/view/d2;
.super Ll4/e;
.source "SourceFile"


# instance fields
.field public final h:Landroid/view/WindowInsetsController;

.field public final i:Lp5/c;

.field public final j:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Lp5/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/core/view/d2;-><init>(Landroid/view/WindowInsetsController;Lp5/c;)V

    iput-object p1, p0, Landroidx/core/view/d2;->j:Landroid/view/Window;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;Lp5/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ll4/e;-><init>()V

    iput-object p1, p0, Landroidx/core/view/d2;->h:Landroid/view/WindowInsetsController;

    iput-object p2, p0, Landroidx/core/view/d2;->i:Lp5/c;

    return-void
.end method


# virtual methods
.method public final r(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/core/view/d2;->h:Landroid/view/WindowInsetsController;

    iget-object p0, p0, Landroidx/core/view/d2;->j:Landroid/view/Window;

    const/16 v1, 0x10

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    invoke-interface {v0, v1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    const/16 v2, -0x11

    and-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_0
    return-void
.end method

.method public final s(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/core/view/d2;->h:Landroid/view/WindowInsetsController;

    iget-object p0, p0, Landroidx/core/view/d2;->j:Landroid/view/Window;

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    const/16 v2, 0x2000

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    invoke-interface {v0, v1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    const/16 v2, -0x2001

    and-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_0
    return-void
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/d2;->i:Lp5/c;

    iget-object v0, v0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v0, Lh5/d;

    invoke-virtual {v0}, Lh5/d;->z()V

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/core/view/d2;->h:Landroid/view/WindowInsetsController;

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->show(I)V

    return-void
.end method
