.class public Landroidx/appcompat/widget/SeslLinearLayoutCompat;
.super Landroidx/appcompat/widget/x1;
.source "SourceFile"


# instance fields
.field public final q:Lcom/google/android/gms/internal/measurement/h3;

.field public final t:Lp1/c;

.field public final u:Landroidx/appcompat/util/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/x1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v3, Lb/a;->w:[I

    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v7, 0x0

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Landroidx/core/view/u0;->d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p2, 0x1

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroidx/appcompat/util/c;

    invoke-direct {v0, p1}, Landroidx/appcompat/util/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->u:Landroidx/appcompat/util/c;

    invoke-virtual {v0, p2}, Landroidx/appcompat/util/c;->c(I)V

    new-instance p2, Lcom/google/android/gms/internal/measurement/h3;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/h3;-><init>(Landroidx/appcompat/widget/SeslLinearLayoutCompat;)V

    iput-object p2, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->q:Lcom/google/android/gms/internal/measurement/h3;

    new-instance p2, Lp1/c;

    invoke-direct {p2, p1}, Lp1/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->t:Lp1/c;

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->u:Landroidx/appcompat/util/c;

    iget-object v0, p0, Landroidx/appcompat/util/c;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/c;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->t:Lp1/c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lp1/c;->i(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lp1/c;->j()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->t:Lp1/c;

    iget-object v3, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->q:Lcom/google/android/gms/internal/measurement/h3;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_2

    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    const/16 v6, 0xd3

    if-eq v0, v6, :cond_4

    const/16 v5, 0xd4

    if-eq v0, v5, :cond_2

    goto/16 :goto_5

    :cond_0
    iget-object v0, v3, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    instance-of v5, v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    if-eqz v5, :cond_1

    check-cast v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    new-array v4, v4, [I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    new-array v4, v4, [I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iput-object v1, v3, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, v3, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    new-array v4, v4, [I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iput-object v1, v3, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lp1/c;->j()V

    goto/16 :goto_5

    :cond_4
    move v0, v4

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    iget v10, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move-object v6, v1

    :goto_3
    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v6, v0, v7}, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->l(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int/2addr v8, v7

    int-to-double v7, v8

    int-to-double v9, v6

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v9, v11

    cmpg-double v6, v7, v9

    if-gez v6, :cond_8

    :goto_4
    move-object v0, v1

    :cond_8
    if-eqz v0, :cond_b

    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9

    new-array v7, v4, [I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iput-object v1, v3, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    if-eqz v1, :cond_a

    new-array v3, v5, [I

    const v5, 0x1010367

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_a
    invoke-virtual {v2, v0}, Lp1/c;->i(Landroid/view/View;)V

    :cond_b
    :goto_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getRoundedCorner()Landroidx/appcompat/util/c;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->u:Landroidx/appcompat/util/c;

    return-object p0
.end method

.method public final l(Landroid/view/View;II)Landroid/view/View;
    .locals 7

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, p2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p3

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, p2, p3}, Landroidx/appcompat/widget/SeslLinearLayoutCompat;->l(Landroid/view/View;II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    return-object v1
.end method
