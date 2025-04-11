.class public final Landroidx/core/view/o1;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# instance fields
.field public final a:Ly3/c;

.field public b:Ljava/util/List;

.field public c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ly3/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/o1;->d:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/core/view/o1;->a:Ly3/c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/q1;
    .locals 1

    iget-object p0, p0, Landroidx/core/view/o1;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/q1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/view/q1;

    invoke-direct {v0, p1}, Landroidx/core/view/q1;-><init>(Landroid/view/WindowInsetsAnimation;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/core/view/o1;->a(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/q1;

    iget-object v0, p0, Landroidx/core/view/o1;->a:Ly3/c;

    iget-object v0, v0, Ly3/c;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Landroidx/core/view/o1;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/core/view/o1;->a(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/q1;

    iget-object p0, p0, Landroidx/core/view/o1;->a:Ly3/c;

    iget-object p1, p0, Ly3/c;->a:Landroid/view/View;

    iget-object v0, p0, Ly3/c;->d:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x1

    aget p1, v0, p1

    iput p1, p0, Ly3/c;->b:I

    return-void
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/o1;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/core/view/o1;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/o1;->b:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, v1}, Landroidx/core/view/o1;->a(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/q1;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v1

    iget-object v3, v2, Landroidx/core/view/q1;->a:Landroidx/core/view/p1;

    invoke-virtual {v3, v1}, Landroidx/core/view/p1;->g(F)V

    iget-object v1, p0, Landroidx/core/view/o1;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-static {p2, p1}, Landroidx/core/view/c2;->g(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/c2;

    move-result-object p1

    iget-object p2, p0, Landroidx/core/view/o1;->b:Ljava/util/List;

    iget-object p0, p0, Landroidx/core/view/o1;->a:Ly3/c;

    invoke-virtual {p0, p1, p2}, Ly3/c;->a(Landroidx/core/view/c2;Ljava/util/List;)V

    invoke-virtual {p1}, Landroidx/core/view/c2;->f()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/core/view/o1;->a(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/q1;

    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation$Bounds;->getLowerBound()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lw/c;->c(Landroid/graphics/Insets;)Lw/c;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation$Bounds;->getUpperBound()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {p2}, Lw/c;->c(Landroid/graphics/Insets;)Lw/c;

    move-result-object p2

    iget-object p0, p0, Landroidx/core/view/o1;->a:Ly3/c;

    iget-object v0, p0, Ly3/c;->a:Landroid/view/View;

    iget-object v1, p0, Ly3/c;->d:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Ly3/c;->b:I

    sub-int/2addr v2, v1

    iput v2, p0, Ly3/c;->c:I

    int-to-float p0, v2

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p0, Landroid/view/WindowInsetsAnimation$Bounds;

    invoke-virtual {p1}, Lw/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p2}, Lw/c;->d()Landroid/graphics/Insets;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    return-object p0
.end method
