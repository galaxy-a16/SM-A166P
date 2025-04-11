.class public Lh/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lh/n;

.field public final c:Z

.field public final d:I

.field public final e:I

.field public f:Landroid/view/View;

.field public g:I

.field public h:Z

.field public i:Lh/a0;

.field public j:Lh/g0;

.field public k:Landroid/widget/PopupWindow$OnDismissListener;

.field public l:Z

.field public m:Z

.field public n:Z

.field public final o:Z

.field public final p:Lh/x;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Lh/n;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    iput v0, p0, Lh/z;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/z;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/z;->o:Z

    new-instance v0, Lh/x;

    invoke-direct {v0, p0}, Lh/x;-><init>(Lh/z;)V

    iput-object v0, p0, Lh/z;->p:Lh/x;

    iput-object p3, p0, Lh/z;->a:Landroid/content/Context;

    iput-object p5, p0, Lh/z;->b:Lh/n;

    iput-object p4, p0, Lh/z;->f:Landroid/view/View;

    iput-boolean p6, p0, Lh/z;->c:Z

    iput p1, p0, Lh/z;->d:I

    iput p2, p0, Lh/z;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lh/n;Landroid/view/View;ZI)V
    .locals 7

    .line 2
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p5

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lh/z;-><init>(IILandroid/content/Context;Landroid/view/View;Lh/n;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lh/w;
    .locals 9

    iget-object v0, p0, Lh/z;->j:Lh/g0;

    if-nez v0, :cond_2

    const-string v0, "window"

    iget-object v1, p0, Lh/z;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0, v2}, Lh/y;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    new-instance v0, Lh/g0;

    iget-object v5, p0, Lh/z;->a:Landroid/content/Context;

    iget-object v7, p0, Lh/z;->b:Lh/n;

    iget-object v6, p0, Lh/z;->f:Landroid/view/View;

    iget v3, p0, Lh/z;->d:I

    iget v4, p0, Lh/z;->e:I

    iget-boolean v8, p0, Lh/z;->c:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lh/g0;-><init>(IILandroid/content/Context;Landroid/view/View;Lh/n;Z)V

    iget-boolean v1, p0, Lh/z;->m:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lh/z;->l:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lh/g0;->m:Z

    iput-boolean v1, v0, Lh/g0;->l:Z

    iget-boolean v1, p0, Lh/z;->n:Z

    iput-boolean v1, v0, Lh/g0;->n:Z

    :cond_0
    iget-boolean v1, p0, Lh/z;->o:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lh/g0;->p:Z

    :cond_1
    iget-object v1, p0, Lh/z;->p:Lh/x;

    iput-object v1, v0, Lh/g0;->u:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v1, p0, Lh/z;->f:Landroid/view/View;

    iput-object v1, v0, Lh/g0;->v:Landroid/view/View;

    iget-object v1, p0, Lh/z;->i:Lh/a0;

    iput-object v1, v0, Lh/g0;->x:Lh/a0;

    iget-boolean v1, p0, Lh/z;->h:Z

    iget-object v2, v0, Lh/g0;->d:Lh/k;

    iput-boolean v1, v2, Lh/k;->e:Z

    iget v1, p0, Lh/z;->g:I

    iput v1, v0, Lh/g0;->C:I

    iput-object v0, p0, Lh/z;->j:Lh/g0;

    :cond_2
    iget-object p0, p0, Lh/z;->j:Lh/g0;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lh/z;->j:Lh/g0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lh/g0;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/z;->j:Lh/g0;

    iget-object p0, p0, Lh/z;->k:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final d(Lh/a0;)V
    .locals 0

    iput-object p1, p0, Lh/z;->i:Lh/a0;

    iget-object p0, p0, Lh/z;->j:Lh/g0;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lh/g0;->x:Lh/a0;

    :cond_0
    return-void
.end method

.method public final e(ZZ)V
    .locals 7

    invoke-virtual {p0}, Lh/z;->a()Lh/w;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lh/g0;

    iput-boolean p2, v1, Lh/g0;->E:Z

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lh/z;->f:Landroid/view/View;

    sget-object v3, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/j0;->d(Landroid/view/View;)I

    move-result p1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget-object p0, p0, Lh/z;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0603f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    if-eqz p1, :cond_1

    add-int/2addr v3, p2

    iget-object p1, v1, Lh/g0;->i:Landroidx/appcompat/widget/j2;

    iput v3, p1, Landroidx/appcompat/widget/f2;->f:I

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, v3, 0x0

    iget-object v3, v1, Lh/g0;->i:Landroidx/appcompat/widget/j2;

    iput p1, v3, Landroidx/appcompat/widget/f2;->f:I

    :goto_1
    iget-object p1, v1, Lh/g0;->i:Landroidx/appcompat/widget/j2;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/f2;->g(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x42400000    # 48.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    new-instance p1, Landroid/graphics/Rect;

    rsub-int/lit8 v3, p0, 0x0

    add-int/2addr p0, p2

    invoke-direct {p1, v3, v3, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, v0, Lh/w;->a:Landroid/graphics/Rect;

    :cond_2
    invoke-virtual {v1}, Lh/g0;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-boolean p0, v1, Lh/g0;->z:Z

    if-nez p0, :cond_e

    iget-object p0, v1, Lh/g0;->v:Landroid/view/View;

    if-nez p0, :cond_4

    goto/16 :goto_6

    :cond_4
    iput-object p0, v1, Lh/g0;->w:Landroid/view/View;

    iget-boolean p0, v1, Lh/g0;->m:Z

    iget-object p1, v1, Lh/g0;->i:Landroidx/appcompat/widget/j2;

    if-eqz p0, :cond_5

    iget-boolean p0, v1, Lh/g0;->l:Z

    iput-boolean v2, p1, Landroidx/appcompat/widget/f2;->k:Z

    iput-boolean p0, p1, Landroidx/appcompat/widget/f2;->j:Z

    iget-boolean p0, v1, Lh/g0;->n:Z

    iput-boolean p0, p1, Landroidx/appcompat/widget/f2;->F:Z

    :cond_5
    iget-boolean p0, v1, Lh/g0;->p:Z

    if-nez p0, :cond_6

    iget-object v0, p1, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/h0;->b(Z)V

    :cond_6
    iget-object p0, p1, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v1, p1, Landroidx/appcompat/widget/f2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    iput-boolean v2, p1, Landroidx/appcompat/widget/f2;->B:Z

    iget-object p0, p1, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, v1, Lh/g0;->w:Landroid/view/View;

    iget-object v3, v1, Lh/g0;->y:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_2

    :cond_7
    move v3, p2

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, v1, Lh/g0;->y:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_8

    iget-object v3, v1, Lh/g0;->q:Lh/f;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    iget-object v3, v1, Lh/g0;->t:Lh/g;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v0, p1, Landroidx/appcompat/widget/f2;->p:Landroid/view/View;

    iget v0, v1, Lh/g0;->C:I

    iput v0, p1, Landroidx/appcompat/widget/f2;->l:I

    iget-boolean v0, v1, Lh/g0;->A:Z

    iget-object v3, v1, Lh/g0;->b:Landroid/content/Context;

    iget-object v4, v1, Lh/g0;->d:Lh/k;

    if-nez v0, :cond_9

    iget v0, v1, Lh/g0;->f:I

    invoke-static {v4, v3, v0}, Lh/w;->l(Lh/k;Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lh/g0;->B:I

    iput-boolean v2, v1, Lh/g0;->A:Z

    :cond_9
    iget v0, v1, Lh/g0;->B:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/f2;->q(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p0, v1, Lh/w;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_a
    move-object v5, v0

    :goto_3
    iput-object v5, p1, Landroidx/appcompat/widget/f2;->A:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/appcompat/widget/f2;->r()V

    iget-object p0, p1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v5, v1, Lh/g0;->j:Z

    if-eqz v5, :cond_b

    move-object v6, v0

    goto :goto_4

    :cond_b
    move-object v6, p0

    :goto_4
    iput-object v6, v1, Lh/g0;->k:Landroidx/appcompat/widget/s1;

    iget-boolean v6, v1, Lh/g0;->E:Z

    if-eqz v6, :cond_d

    iget-object v1, v1, Lh/g0;->c:Lh/n;

    iget-object v6, v1, Lh/n;->m:Ljava/lang/CharSequence;

    if-eqz v6, :cond_d

    if-nez v5, :cond_d

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0c0091

    invoke-virtual {v3, v5, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_c

    iget-object v1, v1, Lh/n;->m:Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-virtual {v3, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v3, v0, p2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_d
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/f2;->o(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/f2;->r()V

    :goto_5
    move p2, v2

    :cond_e
    :goto_6
    if-eqz p2, :cond_f

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()Z
    .locals 2

    invoke-virtual {p0}, Lh/z;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lh/z;->f:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v1, v1}, Lh/z;->e(ZZ)V

    return v1
.end method
