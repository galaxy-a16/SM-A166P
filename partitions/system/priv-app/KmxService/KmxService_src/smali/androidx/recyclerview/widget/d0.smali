.class public abstract Landroidx/recyclerview/widget/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/u0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/d0;->a:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/d0;->c:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/u0;I)Landroidx/recyclerview/widget/c0;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/c0;

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/c0;-><init>(Landroidx/recyclerview/widget/u0;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Landroidx/recyclerview/widget/c0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/c0;-><init>(Landroidx/recyclerview/widget/u0;I)V

    return-object p1
.end method


# virtual methods
.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public final j()I
    .locals 2

    const/high16 v0, -0x80000000

    iget v1, p0, Landroidx/recyclerview/widget/d0;->a:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/d0;->i()I

    move-result v0

    iget p0, p0, Landroidx/recyclerview/widget/d0;->a:I

    sub-int p0, v0, p0

    :goto_0
    return p0
.end method

.method public abstract k(Landroid/view/View;)I
.end method

.method public abstract l(Landroid/view/View;)I
.end method

.method public abstract m(I)V
.end method
