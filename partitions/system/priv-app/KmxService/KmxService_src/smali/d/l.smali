.class public final Ld/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroid/widget/ListAdapter;

.field public B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public G:I

.field public H:Ld/d;

.field public final I:Z

.field public final J:Ld/j;

.field public final K:Ld/f;

.field public final a:Landroid/content/Context;

.field public final b:Ld/n;

.field public final c:Landroid/view/Window;

.field public final d:I

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public h:Landroid/widget/Button;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/os/Message;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Landroid/widget/Button;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/os/Message;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Landroid/widget/Button;

.field public q:Ljava/lang/CharSequence;

.field public r:Landroid/os/Message;

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Landroidx/core/widget/NestedScrollView;

.field public u:I

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/n;Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/l;->u:I

    const/4 v1, -0x1

    iput v1, p0, Ld/l;->B:I

    new-instance v1, Ld/f;

    invoke-direct {v1, p0, v0}, Ld/f;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Ld/l;->K:Ld/f;

    iput-object p1, p0, Ld/l;->a:Landroid/content/Context;

    iput-object p2, p0, Ld/l;->b:Ld/n;

    iput-object p3, p0, Ld/l;->c:Landroid/view/Window;

    new-instance p3, Ld/j;

    invoke-direct {p3, p2}, Ld/j;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Ld/l;->J:Ld/j;

    sget-object p3, Lb/a;->e:[I

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Ld/l;->C:I

    const/4 p3, 0x2

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    const/4 p3, 0x5

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Ld/l;->D:I

    const/4 p3, 0x6

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    const/16 p3, 0x9

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Ld/l;->E:I

    const/4 p3, 0x4

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Ld/l;->F:I

    const/16 p3, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Ld/l;->I:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Ld/l;->d:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Ld/n;->g()Ld/u;

    move-result-object p0

    invoke-virtual {p0, v1}, Ld/u;->k(I)Z

    return-void
.end method

.method public static b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public static c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p0, :cond_1

    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    instance-of p1, p0, Landroid/view/ViewStub;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    :cond_3
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;I)V
    .locals 2

    iget-object p0, p0, Ld/l;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    int-to-float p2, p2

    div-float/2addr p2, p0

    const/4 p0, 0x0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public final d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Ld/l;->J:Ld/j;

    invoke-virtual {v1, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    const/4 v1, -0x3

    if-eq p1, v1, :cond_3

    const/4 v1, -0x2

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iput-object p2, p0, Ld/l;->i:Ljava/lang/CharSequence;

    iput-object p3, p0, Ld/l;->j:Landroid/os/Message;

    iput-object v0, p0, Ld/l;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iput-object p2, p0, Ld/l;->m:Ljava/lang/CharSequence;

    iput-object p3, p0, Ld/l;->n:Landroid/os/Message;

    iput-object v0, p0, Ld/l;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iput-object p2, p0, Ld/l;->q:Ljava/lang/CharSequence;

    iput-object p3, p0, Ld/l;->r:Landroid/os/Message;

    iput-object v0, p0, Ld/l;->s:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void
.end method
