.class public abstract Landroidx/core/view/s1;
.super Landroidx/core/view/u1;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/view/u1;-><init>()V

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Landroidx/core/view/s1;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/c2;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroidx/core/view/u1;-><init>(Landroidx/core/view/c2;)V

    invoke-virtual {p1}, Landroidx/core/view/c2;->f()Landroid/view/WindowInsets;

    move-result-object p1

    new-instance v0, Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/s1;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Landroidx/core/view/c2;
    .locals 2

    invoke-virtual {p0}, Landroidx/core/view/u1;->a()V

    iget-object p0, p0, Landroidx/core/view/s1;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroidx/core/view/c2;->g(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/c2;

    move-result-object p0

    iget-object v1, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    invoke-virtual {v1, v0}, Landroidx/core/view/a2;->l([Lw/c;)V

    return-object p0
.end method

.method public c(Lw/c;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/s1;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lw/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public d(Lw/c;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/s1;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lw/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public e(Lw/c;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/s1;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lw/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public f(Lw/c;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/s1;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lw/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public g(Lw/c;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/s1;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lw/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
