.class public final Landroidx/recyclerview/widget/p1;
.super Landroidx/core/view/c;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Landroidx/recyclerview/widget/o1;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/p1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Landroidx/recyclerview/widget/p1;->e:Landroidx/recyclerview/widget/o1;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/o1;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/o1;-><init>(Landroidx/recyclerview/widget/p1;)V

    :goto_0
    iput-object p1, p0, Landroidx/recyclerview/widget/p1;->e:Landroidx/recyclerview/widget/o1;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/p1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_2

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/u0;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/u0;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/u0;->W(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    return-void
.end method

.method public final d(Landroid/view/View;Lc0/l;)V
    .locals 2

    iget-object v0, p2, Lc0/l;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Landroidx/core/view/c;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/p1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/b;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/u0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/u0;

    move-result-object p0

    iget-object p1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/c1;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/u0;->X(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Lc0/l;)V

    :cond_2
    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/c;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/p1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/b;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/u0;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/u0;

    move-result-object p0

    iget-object p1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/c1;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/u0;->k0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method
