.class public final Lh/g0;
.super Lh/w;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public E:Z

.field public final b:Landroid/content/Context;

.field public final c:Lh/n;

.field public final d:Lh/k;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Landroidx/appcompat/widget/j2;

.field public final j:Z

.field public k:Landroidx/appcompat/widget/s1;

.field public l:Z

.field public m:Z

.field public n:Z

.field public p:Z

.field public final q:Lh/f;

.field public final t:Lh/g;

.field public u:Landroid/widget/PopupWindow$OnDismissListener;

.field public v:Landroid/view/View;

.field public w:Landroid/view/View;

.field public x:Lh/a0;

.field public y:Landroid/view/ViewTreeObserver;

.field public z:Z


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Lh/n;Z)V
    .locals 5

    invoke-direct {p0}, Lh/w;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/g0;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lh/g0;->k:Landroidx/appcompat/widget/s1;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh/g0;->p:Z

    new-instance v2, Lh/f;

    invoke-direct {v2, p0, v1}, Lh/f;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lh/g0;->q:Lh/f;

    new-instance v2, Lh/g;

    invoke-direct {v2, p0, v1}, Lh/g;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lh/g0;->t:Lh/g;

    iput v0, p0, Lh/g0;->C:I

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    new-instance v3, Lg/f;

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, p3, v2}, Lg/f;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lh/g0;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lh/g0;->b:Landroid/content/Context;

    :goto_0
    iput-object p5, p0, Lh/g0;->c:Lh/n;

    instance-of v2, p5, Lh/h0;

    iput-boolean v2, p0, Lh/g0;->j:Z

    iput-boolean p6, p0, Lh/g0;->e:Z

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    invoke-virtual {p5}, Lh/n;->size()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lh/g0;->c:Lh/n;

    invoke-virtual {v4, v3}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lh/p;

    iget v4, v4, Lh/p;->A:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    if-eqz v4, :cond_2

    move v0, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    new-instance v0, Lh/k;

    iget-boolean v1, p0, Lh/g0;->e:Z

    const v2, 0x7f0c0093

    invoke-direct {v0, p5, p6, v1, v2}, Lh/k;-><init>(Lh/n;Landroid/view/LayoutInflater;ZI)V

    goto :goto_4

    :cond_4
    new-instance v0, Lh/k;

    iget-boolean v1, p0, Lh/g0;->e:Z

    const v2, 0x7f0c0092

    invoke-direct {v0, p5, p6, v1, v2}, Lh/k;-><init>(Lh/n;Landroid/view/LayoutInflater;ZI)V

    :goto_4
    iput-object v0, p0, Lh/g0;->d:Lh/k;

    iput p1, p0, Lh/g0;->g:I

    iput p2, p0, Lh/g0;->h:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    iget-object v0, p0, Lh/g0;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p6

    iget p6, p6, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p6, v0

    iput p6, p0, Lh/g0;->f:I

    iput-object p4, p0, Lh/g0;->v:Landroid/view/View;

    new-instance p4, Landroidx/appcompat/widget/j2;

    iget-object p6, p0, Lh/g0;->b:Landroid/content/Context;

    invoke-direct {p4, p6, p1, p2}, Landroidx/appcompat/widget/j2;-><init>(Landroid/content/Context;II)V

    iput-object p4, p0, Lh/g0;->i:Landroidx/appcompat/widget/j2;

    iget-boolean p1, p0, Lh/g0;->e:Z

    iput-boolean p1, p4, Landroidx/appcompat/widget/f2;->E:Z

    invoke-virtual {p5, p0, p3}, Lh/n;->b(Lh/b0;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lh/g0;->z:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lh/g0;->i:Landroidx/appcompat/widget/j2;

    invoke-virtual {p0}, Landroidx/appcompat/widget/f2;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Lh/n;Z)V
    .locals 1

    iget-object v0, p0, Lh/g0;->c:Lh/n;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lh/g0;->dismiss()V

    iget-object p0, p0, Lh/g0;->x:Lh/a0;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lh/a0;->b(Lh/n;Z)V

    :cond_1
    return-void
.end method

.method public final c(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final d()Landroidx/appcompat/widget/s1;
    .locals 0

    iget-object p0, p0, Lh/g0;->i:Landroidx/appcompat/widget/j2;

    iget-object p0, p0, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    return-object p0
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Lh/g0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lh/g0;->i:Landroidx/appcompat/widget/j2;

    invoke-virtual {p0}, Landroidx/appcompat/widget/f2;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh/g0;->A:Z

    iget-object p0, p0, Lh/g0;->d:Lh/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lh/k;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final k(Lh/h0;)Z
    .locals 9

    invoke-virtual {p1}, Lh/n;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    new-instance v0, Lh/z;

    iget-object v5, p0, Lh/g0;->b:Landroid/content/Context;

    iget-object v6, p0, Lh/g0;->w:Landroid/view/View;

    iget-boolean v8, p0, Lh/g0;->e:Z

    iget v3, p0, Lh/g0;->g:I

    iget v4, p0, Lh/g0;->h:I

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lh/z;-><init>(IILandroid/content/Context;Landroid/view/View;Lh/n;Z)V

    iget-object v2, p0, Lh/g0;->x:Lh/a0;

    invoke-virtual {v0, v2}, Lh/z;->d(Lh/a0;)V

    invoke-static {p1}, Lh/w;->m(Lh/n;)Z

    move-result v2

    iput-boolean v2, v0, Lh/z;->h:Z

    iget-object v3, v0, Lh/z;->j:Lh/g0;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lh/g0;->d:Lh/k;

    iput-boolean v2, v3, Lh/k;->e:Z

    :cond_0
    iget-object v2, p0, Lh/g0;->u:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object v2, v0, Lh/z;->k:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    iput-object v2, p0, Lh/g0;->u:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v3, p0, Lh/g0;->c:Lh/n;

    invoke-virtual {v3}, Lh/n;->size()I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Lh/n;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v7

    if-ne p1, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v2

    :goto_1
    iget-object v4, p0, Lh/g0;->d:Lh/k;

    invoke-virtual {v4}, Lh/k;->getCount()I

    move-result v5

    move v7, v1

    :goto_2
    if-ge v7, v5, :cond_4

    invoke-virtual {v4, v7}, Lh/k;->b(I)Lh/p;

    move-result-object v8

    if-ne v6, v8, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, -0x1

    :goto_3
    iget-object v4, p0, Lh/g0;->k:Landroidx/appcompat/widget/s1;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v7, v2

    if-ltz v7, :cond_5

    iget-object v2, p0, Lh/g0;->k:Landroidx/appcompat/widget/s1;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    :cond_5
    iget-object v2, p0, Lh/g0;->k:Landroidx/appcompat/widget/s1;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    :cond_7
    iget v2, p0, Lh/g0;->C:I

    iput v2, v0, Lh/z;->g:I

    invoke-virtual {v3, v1}, Lh/n;->c(Z)V

    invoke-virtual {v0}, Lh/z;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lh/g0;->x:Lh/a0;

    if-eqz p0, :cond_8

    invoke-interface {p0, p1}, Lh/a0;->j(Lh/n;)Z

    :cond_8
    const/4 p0, 0x1

    return p0

    :cond_9
    return v1
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/g0;->z:Z

    iget-object v1, p0, Lh/g0;->c:Lh/n;

    invoke-virtual {v1, v0}, Lh/n;->c(Z)V

    iget-object v0, p0, Lh/g0;->y:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/g0;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lh/g0;->y:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lh/g0;->y:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lh/g0;->q:Lh/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/g0;->y:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lh/g0;->w:Landroid/view/View;

    iget-object v1, p0, Lh/g0;->t:Lh/g;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lh/g0;->u:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lh/g0;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
