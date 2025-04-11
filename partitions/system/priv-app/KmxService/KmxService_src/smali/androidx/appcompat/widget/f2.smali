.class public Landroidx/appcompat/widget/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/f0;


# static fields
.field public static final G:Z


# instance fields
.field public A:Landroid/graphics/Rect;

.field public B:Z

.field public final C:Landroidx/appcompat/widget/h0;

.field public E:Z

.field public F:Z

.field public final a:Landroid/content/Context;

.field public b:Landroid/widget/ListAdapter;

.field public c:Landroidx/appcompat/widget/s1;

.field public final d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public final m:I

.field public n:Landroidx/appcompat/widget/c2;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/AdapterView$OnItemClickListener;

.field public t:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final u:Landroidx/appcompat/widget/y1;

.field public final v:Landroidx/appcompat/widget/e2;

.field public final w:Landroidx/appcompat/widget/d2;

.field public final x:Landroidx/appcompat/widget/y1;

.field public final y:Landroid/os/Handler;

.field public final z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lfc/k;->a()I

    move-result v0

    const v1, 0x224d4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/appcompat/widget/f2;->G:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroidx/appcompat/widget/f2;->d:I

    iput v0, p0, Landroidx/appcompat/widget/f2;->e:I

    const/16 v0, 0x3ea

    iput v0, p0, Landroidx/appcompat/widget/f2;->h:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/f2;->l:I

    const v1, 0x7fffffff

    iput v1, p0, Landroidx/appcompat/widget/f2;->m:I

    new-instance v1, Landroidx/appcompat/widget/y1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/y1;-><init>(Landroidx/appcompat/widget/f2;I)V

    iput-object v1, p0, Landroidx/appcompat/widget/f2;->u:Landroidx/appcompat/widget/y1;

    new-instance v1, Landroidx/appcompat/widget/e2;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/e2;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/appcompat/widget/f2;->v:Landroidx/appcompat/widget/e2;

    new-instance v1, Landroidx/appcompat/widget/d2;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/d2;-><init>(Landroidx/appcompat/widget/f2;)V

    iput-object v1, p0, Landroidx/appcompat/widget/f2;->w:Landroidx/appcompat/widget/d2;

    new-instance v1, Landroidx/appcompat/widget/y1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/y1;-><init>(Landroidx/appcompat/widget/f2;I)V

    iput-object v1, p0, Landroidx/appcompat/widget/f2;->x:Landroidx/appcompat/widget/y1;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/f2;->z:Landroid/graphics/Rect;

    iput-boolean v0, p0, Landroidx/appcompat/widget/f2;->F:Z

    iput-object p1, p0, Landroidx/appcompat/widget/f2;->a:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/appcompat/widget/f2;->y:Landroid/os/Handler;

    sget-object v1, Lb/a;->o:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/appcompat/widget/f2;->f:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/f2;->g:I

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroidx/appcompat/widget/f2;->i:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroidx/appcompat/widget/h0;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/f2;->f:I

    return p0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final d()Landroidx/appcompat/widget/s1;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    return-object p0
.end method

.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    iget-object v0, p0, Landroidx/appcompat/widget/f2;->y:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/f2;->u:Landroidx/appcompat/widget/y1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/h0;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/f2;->g:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/f2;->i:Z

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/f2;->f:I

    return-void
.end method

.method public final l()I
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/f2;->i:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/appcompat/widget/f2;->g:I

    return p0
.end method

.method public o(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/f2;->n:Landroidx/appcompat/widget/c2;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/c2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/c2;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/f2;->n:Landroidx/appcompat/widget/c2;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/f2;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/f2;->b:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/f2;->n:Landroidx/appcompat/widget/c2;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/appcompat/widget/f2;->b:Landroid/widget/ListAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public p(Landroid/content/Context;Z)Landroidx/appcompat/widget/s1;
    .locals 0

    new-instance p0, Landroidx/appcompat/widget/s1;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/s1;-><init>(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/f2;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/f2;->e:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/f2;->e:I

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    iget-object v2, v1, Landroidx/appcompat/widget/f2;->a:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, v1, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    if-nez v0, :cond_1

    iget-boolean v0, v1, Landroidx/appcompat/widget/f2;->B:Z

    xor-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/f2;->p(Landroid/content/Context;Z)Landroidx/appcompat/widget/s1;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    iget-object v6, v1, Landroidx/appcompat/widget/f2;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    iget-object v6, v1, Landroidx/appcompat/widget/f2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    new-instance v6, Landroidx/appcompat/widget/z1;

    invoke-direct {v6, v1, v4}, Landroidx/appcompat/widget/z1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    iget-object v6, v1, Landroidx/appcompat/widget/f2;->w:Landroidx/appcompat/widget/d2;

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->t:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v6, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    invoke-virtual {v6, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, v1, Landroidx/appcompat/widget/f2;->z:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    move v0, v4

    :goto_1
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    iget-object v9, v1, Landroidx/appcompat/widget/f2;->p:Landroid/view/View;

    iget v10, v1, Landroidx/appcompat/widget/f2;->g:I

    invoke-static {v5, v9, v10, v7}, Landroidx/appcompat/widget/a2;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result v7

    sget-boolean v10, Landroidx/appcompat/widget/f2;->G:Z

    if-nez v10, :cond_14

    iget-boolean v10, v1, Landroidx/appcompat/widget/f2;->E:Z

    if-eqz v10, :cond_14

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    const-string v11, "display"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/display/DisplayManager;

    const-string v12, "ListPopupWindow"

    if-nez v11, :cond_4

    const-string v3, "displayManager is null, can not update height"

    goto :goto_3

    :cond_4
    invoke-virtual {v11, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v11

    if-nez v11, :cond_5

    const-string v3, "display is null, can not update height"

    :goto_3
    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_5
    invoke-static {}, Lcom/fasterxml/jackson/annotation/i0;->y()Z

    move-result v13

    if-nez v13, :cond_6

    goto/16 :goto_a

    :cond_6
    move-object v13, v2

    :goto_4
    instance-of v14, v13, Landroid/content/ContextWrapper;

    if-eqz v14, :cond_8

    instance-of v14, v13, Landroid/app/Activity;

    if-eqz v14, :cond_7

    check-cast v13, Landroid/app/Activity;

    goto :goto_5

    :cond_7
    check-cast v13, Landroid/content/ContextWrapper;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v13

    if-eqz v13, :cond_9

    goto/16 :goto_a

    :cond_9
    new-array v13, v8, [I

    invoke-virtual {v9, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v11, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-static {}, Lfc/c;->i()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v8, :cond_d

    iget v4, v10, Landroid/graphics/Point;->y:I

    iget v9, v10, Landroid/graphics/Point;->x:I

    if-le v4, v9, :cond_b

    goto :goto_6

    :cond_a
    invoke-static {}, Lfc/c;->j()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v3, :cond_d

    iget v4, v10, Landroid/graphics/Point;->y:I

    iget v9, v10, Landroid/graphics/Point;->x:I

    if-le v4, v9, :cond_c

    :cond_b
    div-int/2addr v4, v8

    goto :goto_7

    :cond_c
    :goto_6
    div-int/lit8 v4, v9, 0x2

    :cond_d
    :goto_7
    const-string v8, "center = "

    const-string v9, " , anchor top = "

    invoke-static {v8, v4, v9}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v13, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_13

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0603fa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0603f0

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    aget v3, v13, v3

    if-le v4, v3, :cond_e

    sub-int/2addr v4, v3

    sub-int/2addr v4, v8

    sub-int/2addr v4, v9

    goto/16 :goto_b

    :cond_e
    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    iget v11, v3, Landroid/graphics/Insets;->bottom:I

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "systemBar insets = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v11, "android"

    const-string v14, "navigation_bar_height"

    const-string v15, "dimen"

    invoke-virtual {v3, v14, v15, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_10

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_8

    :cond_10
    const/4 v11, 0x0

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "navigationBarHeight = "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    aget v3, v13, v3

    sub-int v12, v3, v4

    sub-int/2addr v4, v11

    div-int/lit8 v4, v4, 0x2

    if-le v12, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_12

    sub-int/2addr v12, v8

    sub-int v4, v12, v9

    goto :goto_b

    :cond_12
    iget v4, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v3

    sub-int/2addr v4, v8

    sub-int/2addr v4, v9

    sub-int/2addr v4, v11

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v4, -0x2

    :goto_b
    if-lez v4, :cond_14

    if-ge v4, v7, :cond_14

    move v7, v4

    :cond_14
    iget v3, v1, Landroidx/appcompat/widget/f2;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    add-int/2addr v7, v0

    goto :goto_f

    :cond_15
    iget v8, v1, Landroidx/appcompat/widget/f2;->e:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_17

    if-eq v8, v4, :cond_16

    goto :goto_c

    :cond_16
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v6

    sub-int/2addr v8, v9

    :goto_c
    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_d

    :cond_17
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v6

    sub-int/2addr v8, v9

    const/high16 v6, -0x80000000

    :goto_d
    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v8, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    add-int/lit8 v7, v7, 0x0

    invoke-virtual {v8, v6, v7}, Landroidx/appcompat/widget/s1;->a(II)I

    move-result v6

    if-lez v6, :cond_18

    iget-object v7, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget-object v8, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, 0x0

    goto :goto_e

    :cond_18
    const/4 v8, 0x0

    :goto_e
    add-int v7, v6, v8

    :goto_f
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_19

    const/4 v0, 0x1

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    :goto_10
    iget v6, v1, Landroidx/appcompat/widget/f2;->h:I

    invoke-static {v5, v6}, Le0/o;->d(Landroid/widget/PopupWindow;I)V

    xor-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/h0;->b(Z)V

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v2, v1, Landroidx/appcompat/widget/f2;->p:Landroid/view/View;

    sget-object v6, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, Landroidx/core/view/l0;->b(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1a

    return-void

    :cond_1a
    iget v2, v1, Landroidx/appcompat/widget/f2;->e:I

    if-ne v2, v4, :cond_1b

    move v2, v4

    goto :goto_11

    :cond_1b
    const/4 v6, -0x2

    if-ne v2, v6, :cond_1c

    iget-object v2, v1, Landroidx/appcompat/widget/f2;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :cond_1c
    :goto_11
    if-ne v3, v4, :cond_21

    if-eqz v0, :cond_1d

    move v3, v7

    goto :goto_12

    :cond_1d
    move v3, v4

    :goto_12
    if-eqz v0, :cond_1f

    iget v0, v1, Landroidx/appcompat/widget/f2;->e:I

    if-ne v0, v4, :cond_1e

    move v0, v4

    goto :goto_13

    :cond_1e
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_15

    :cond_1f
    iget v0, v1, Landroidx/appcompat/widget/f2;->e:I

    if-ne v0, v4, :cond_20

    move v0, v4

    goto :goto_14

    :cond_20
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_15

    :cond_21
    const/4 v0, -0x2

    if-ne v3, v0, :cond_22

    move v3, v7

    :cond_22
    :goto_15
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget v0, v1, Landroidx/appcompat/widget/f2;->g:I

    iget-boolean v5, v1, Landroidx/appcompat/widget/f2;->F:Z

    if-eqz v5, :cond_23

    sub-int/2addr v0, v7

    iget-boolean v5, v1, Landroidx/appcompat/widget/f2;->j:Z

    if-nez v5, :cond_23

    iget-object v5, v1, Landroidx/appcompat/widget/f2;->p:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    :cond_23
    move v8, v0

    iget-object v5, v1, Landroidx/appcompat/widget/f2;->C:Landroidx/appcompat/widget/h0;

    iget-object v6, v1, Landroidx/appcompat/widget/f2;->p:Landroid/view/View;

    iget v7, v1, Landroidx/appcompat/widget/f2;->f:I

    if-gez v2, :cond_24

    move v9, v4

    goto :goto_16

    :cond_24
    move v9, v2

    :goto_16
    if-gez v3, :cond_25

    move v10, v4

    goto :goto_17

    :cond_25
    move v10, v3

    :goto_17
    invoke-virtual/range {v5 .. v10}, Landroidx/appcompat/widget/h0;->update(Landroid/view/View;IIII)V

    goto/16 :goto_25

    :cond_26
    iget v0, v1, Landroidx/appcompat/widget/f2;->e:I

    if-ne v0, v4, :cond_27

    const/4 v0, -0x2

    move v6, v4

    goto :goto_18

    :cond_27
    const/4 v6, -0x2

    if-ne v0, v6, :cond_28

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_28
    move/from16 v16, v6

    move v6, v0

    move/from16 v0, v16

    :goto_18
    if-ne v3, v4, :cond_29

    move v3, v4

    goto :goto_19

    :cond_29
    if-ne v3, v0, :cond_2a

    move v3, v7

    :cond_2a
    :goto_19
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2b

    goto/16 :goto_24

    :cond_2b
    if-nez v2, :cond_2c

    goto/16 :goto_24

    :cond_2c
    iget-boolean v0, v5, Landroidx/appcompat/widget/h0;->e:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2d

    goto/16 :goto_24

    :cond_2d
    invoke-static {v2}, Lva/n;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const v0, 0x7f0503b7

    goto :goto_1a

    :cond_2e
    const v0, 0x7f0503b8

    :goto_1a
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0603f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_active_themepackage"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2f

    const/4 v9, 0x1

    goto :goto_1b

    :cond_2f
    const/4 v9, 0x0

    :goto_1b
    if-nez v9, :cond_39

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/provider/Settings$System;

    const-string v12, "hidden_SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY"

    invoke-static {v11, v12, v10}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    if-eqz v10, :cond_30

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v11, v10, v9}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1c

    :cond_30
    const/4 v11, 0x0

    move-object v9, v11

    :goto_1c
    instance-of v10, v9, Ljava/lang/String;

    const-string v12, "not_supported"

    if-eqz v10, :cond_31

    check-cast v9, Ljava/lang/String;

    goto :goto_1d

    :cond_31
    move-object v9, v12

    :goto_1d
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_33

    move v0, v9

    goto :goto_1e

    :cond_32
    const/4 v9, 0x1

    const/4 v10, 0x0

    :cond_33
    move v0, v9

    move v9, v10

    :goto_1e
    if-nez v9, :cond_3a

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v0, v10

    const-string v9, "android.view.SemBlurInfo$Builder"

    :try_start_0
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1f

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "failed to get reflection - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "SeslBaseReflector"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    :goto_1f
    if-eqz v0, :cond_34

    const/4 v9, 0x1

    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_21

    :catch_1
    move-exception v0

    const-string v9, "semCreateBlurBuilder InstantiationException"

    goto :goto_20

    :catch_2
    move-exception v0

    const-string v9, "semCreateBlurBuilder InvocationTargetException"

    goto :goto_20

    :catch_3
    move-exception v0

    const-string v9, "semCreateBlurBuilder IllegalAccessException"

    :goto_20
    const-string v10, "SeslSemBlurInfoRftr"

    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_21
    if-eqz v11, :cond_39

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v10, v9, v12

    const-string v13, "hidden_setRadius"

    const-string v14, "android.view.SemBlurInfo$Builder"

    invoke-static {v14, v13, v9}, Lh3/a;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_35

    invoke-virtual {v9, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v13, v0, [Ljava/lang/Object;

    const/16 v15, 0x78

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v12

    invoke-static {v11, v9, v13}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    new-array v9, v0, [Ljava/lang/Class;

    aput-object v10, v9, v12

    const-string v10, "hidden_setBackgroundColor"

    invoke-static {v14, v10, v9}, Lh3/a;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_36

    invoke-virtual {v9, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v12

    invoke-static {v11, v9, v10}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    new-array v8, v0, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v12

    const-string v9, "hidden_setBackgroundCornerRadius"

    invoke-static {v14, v9, v8}, Lh3/a;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_37

    invoke-virtual {v8, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v12

    invoke-static {v11, v8, v9}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const-string v2, "hidden_build"

    new-array v8, v12, [Ljava/lang/Class;

    invoke-static {v14, v2, v8}, Lh3/a;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v0, v12, [Ljava/lang/Object;

    invoke-static {v11, v2, v0}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_2
    const-string v2, "android.view.SemBlurInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v8, Landroid/view/View;

    const-string v9, "hidden_semSetBlurInfo"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v8, v9, v11}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_38

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v0, v8, v12

    invoke-static {v7, v2, v8}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_22

    :catch_4
    move-exception v0

    const-string v2, "SeslViewReflector"

    const-string v7, "semSetBlurInfo ClassNotFoundException"

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    :goto_22
    const/4 v10, 0x1

    goto :goto_23

    :cond_39
    const/4 v10, 0x0

    :cond_3a
    :goto_23
    if-eqz v10, :cond_3b

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    if-eqz v0, :cond_3b

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_3b
    :goto_24
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, 0x1

    invoke-static {v5, v0}, Landroidx/appcompat/widget/b2;->b(Landroid/widget/PopupWindow;Z)V

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->v:Landroidx/appcompat/widget/e2;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, v1, Landroidx/appcompat/widget/f2;->k:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, v1, Landroidx/appcompat/widget/f2;->j:Z

    invoke-static {v5, v0}, Le0/o;->c(Landroid/widget/PopupWindow;Z)V

    :cond_3c
    iget-object v0, v1, Landroidx/appcompat/widget/f2;->A:Landroid/graphics/Rect;

    invoke-static {v5, v0}, Landroidx/appcompat/widget/b2;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->p:Landroid/view/View;

    iget v2, v1, Landroidx/appcompat/widget/f2;->f:I

    iget v3, v1, Landroidx/appcompat/widget/f2;->g:I

    iget v6, v1, Landroidx/appcompat/widget/f2;->l:I

    invoke-static {v5, v0, v2, v3, v6}, Le0/n;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v0, v1, Landroidx/appcompat/widget/f2;->B:Z

    if-eqz v0, :cond_3d

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/s1;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3d
    iget-object v0, v1, Landroidx/appcompat/widget/f2;->c:Landroidx/appcompat/widget/s1;

    if-eqz v0, :cond_3e

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/s1;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_3e
    iget-boolean v0, v1, Landroidx/appcompat/widget/f2;->B:Z

    if-nez v0, :cond_3f

    iget-object v0, v1, Landroidx/appcompat/widget/f2;->y:Landroid/os/Handler;

    iget-object v1, v1, Landroidx/appcompat/widget/f2;->x:Landroidx/appcompat/widget/y1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3f
    :goto_25
    return-void
.end method
