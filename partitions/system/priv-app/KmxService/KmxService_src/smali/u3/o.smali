.class public abstract Lu3/o;
.super Lr/c;
.source "SourceFile"


# instance fields
.field public a:Lu3/p;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu3/o;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lr/c;-><init>(I)V

    iput p1, p0, Lu3/o;->b:I

    return-void
.end method


# virtual methods
.method public i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lu3/o;->u(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lu3/o;->a:Lu3/p;

    if-nez p1, :cond_0

    new-instance p1, Lu3/p;

    invoke-direct {p1, p2}, Lu3/p;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lu3/o;->a:Lu3/p;

    :cond_0
    iget-object p1, p0, Lu3/o;->a:Lu3/p;

    iget-object p2, p1, Lu3/p;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iput p3, p1, Lu3/p;->b:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Lu3/p;->c:I

    iget-object p1, p0, Lu3/o;->a:Lu3/p;

    invoke-virtual {p1}, Lu3/p;->a()V

    iget p1, p0, Lu3/o;->b:I

    if-eqz p1, :cond_2

    iget-object p2, p0, Lu3/o;->a:Lu3/p;

    iget p3, p2, Lu3/p;->d:I

    if-eq p3, p1, :cond_1

    iput p1, p2, Lu3/p;->d:I

    invoke-virtual {p2}, Lu3/p;->a()V

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lu3/o;->b:I

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final t()I
    .locals 0

    iget-object p0, p0, Lu3/o;->a:Lu3/p;

    if-eqz p0, :cond_0

    iget p0, p0, Lu3/p;->d:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public u(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    return-void
.end method
