.class public final Ld1/d0;
.super Ld1/r;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ld1/h;


# direct methods
.method public constructor <init>(Ld1/h;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ld1/d0;->d:Ld1/h;

    iput-object p2, p0, Ld1/d0;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Ld1/d0;->b:Landroid/view/View;

    iput-object p4, p0, Ld1/d0;->c:Landroid/view/View;

    invoke-direct {p0}, Ld1/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lp5/c;

    iget-object v1, p0, Ld1/d0;->a:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lp5/c;-><init>(Landroid/view/ViewGroup;)V

    iget-object v0, v0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Ld1/d0;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ld1/d0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lp5/c;

    iget-object p0, p0, Ld1/d0;->a:Landroid/view/ViewGroup;

    invoke-direct {v1, p0}, Lp5/c;-><init>(Landroid/view/ViewGroup;)V

    iget-object p0, v1, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroupOverlay;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ld1/d0;->d:Ld1/h;

    invoke-virtual {p0}, Ld1/q;->cancel()V

    :goto_0
    return-void
.end method

.method public final e(Ld1/q;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ld1/d0;->c:Landroid/view/View;

    const v2, 0x7f0901d6

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lp5/c;

    iget-object v1, p0, Ld1/d0;->a:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lp5/c;-><init>(Landroid/view/ViewGroup;)V

    iget-object v0, v0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Ld1/d0;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Ld1/q;->v(Ld1/p;)V

    return-void
.end method
