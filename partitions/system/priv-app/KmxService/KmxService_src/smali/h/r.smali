.class public final Lh/r;
.super Lh/q;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public c:Ld/s0;


# direct methods
.method public constructor <init>(Lh/v;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/q;-><init>(Lh/v;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lh/q;->a:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lh/q;->a:Landroid/view/ActionProvider;

    invoke-virtual {p0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lh/q;->a:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result p0

    return p0
.end method

.method public final d(Ld/s0;)V
    .locals 0

    iput-object p1, p0, Lh/r;->c:Ld/s0;

    iget-object p1, p0, Lh/q;->a:Landroid/view/ActionProvider;

    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lh/r;->c:Ld/s0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ld/s0;->b:Ljava/lang/Object;

    check-cast p0, Lh/p;

    iget-object p0, p0, Lh/p;->n:Lh/n;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh/n;->h:Z

    invoke-virtual {p0, p1}, Lh/n;->p(Z)V

    :cond_0
    return-void
.end method
