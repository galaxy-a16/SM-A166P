.class public final Lh/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/b0;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Lh/n;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:Lh/a0;

.field public f:Lh/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/j;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh/j;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final b(Lh/n;Z)V
    .locals 0

    iget-object p0, p0, Lh/j;->e:Lh/a0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lh/a0;->b(Lh/n;Z)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lh/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {p0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 0

    iget-object p0, p0, Lh/j;->f:Lh/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lh/i;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final f(Landroid/content/Context;Lh/n;)V
    .locals 1

    iget-object v0, p0, Lh/j;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lh/j;->a:Landroid/content/Context;

    iget-object v0, p0, Lh/j;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh/j;->b:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Lh/j;->c:Lh/n;

    iget-object p0, p0, Lh/j;->f:Lh/i;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lh/i;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h()Landroid/os/Parcelable;
    .locals 2

    iget-object v0, p0, Lh/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lh/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_1
    const-string p0, "android:menu:list"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public final i(Lh/p;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(Lh/p;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k(Lh/h0;)Z
    .locals 7

    invoke-virtual {p1}, Lh/n;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lh/o;

    invoke-direct {v0, p1}, Lh/o;-><init>(Lh/n;)V

    new-instance v1, Ld/m;

    iget-object v2, p1, Lh/n;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Ld/m;-><init>(Landroid/content/Context;)V

    new-instance v3, Lh/j;

    iget-object v4, v1, Ld/m;->b:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ld/i;

    iget-object v6, v5, Ld/i;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Lh/j;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lh/o;->c:Lh/j;

    iput-object v0, v3, Lh/j;->e:Lh/a0;

    invoke-virtual {p1, v3, v2}, Lh/n;->b(Lh/b0;Landroid/content/Context;)V

    iget-object v2, v0, Lh/o;->c:Lh/j;

    iget-object v3, v2, Lh/j;->f:Lh/i;

    if-nez v3, :cond_1

    new-instance v3, Lh/i;

    invoke-direct {v3, v2}, Lh/i;-><init>(Lh/j;)V

    iput-object v3, v2, Lh/j;->f:Lh/i;

    :cond_1
    iget-object v2, v2, Lh/j;->f:Lh/i;

    iput-object v2, v5, Ld/i;->n:Landroid/widget/ListAdapter;

    iput-object v0, v5, Ld/i;->o:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p1, Lh/n;->p:Landroid/view/View;

    if-eqz v2, :cond_2

    iput-object v2, v5, Ld/i;->e:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lh/n;->n:Landroid/graphics/drawable/Drawable;

    iput-object v2, v5, Ld/i;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lh/n;->m:Ljava/lang/CharSequence;

    check-cast v4, Ld/i;

    iput-object v2, v4, Ld/i;->d:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v5, Ld/i;->m:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1}, Ld/m;->a()Ld/n;

    move-result-object v1

    iput-object v1, v0, Lh/o;->b:Ld/n;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lh/o;->b:Ld/n;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Lh/o;->b:Ld/n;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lh/j;->e:Lh/a0;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lh/a0;->j(Lh/n;)Z

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lh/j;->c:Lh/n;

    iget-object p2, p0, Lh/j;->f:Lh/i;

    invoke-virtual {p2, p3}, Lh/i;->b(I)Lh/p;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lh/n;->q(Landroid/view/MenuItem;Lh/b0;I)Z

    return-void
.end method
