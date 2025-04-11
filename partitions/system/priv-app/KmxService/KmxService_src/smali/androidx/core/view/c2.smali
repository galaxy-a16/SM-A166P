.class public final Landroidx/core/view/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/core/view/c2;


# instance fields
.field public final a:Landroidx/core/view/a2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/core/view/z1;->f:Landroidx/core/view/c2;

    sput-object v0, Landroidx/core/view/c2;->b:Landroidx/core/view/c2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/a2;

    invoke-direct {v0, p0}, Landroidx/core/view/a2;-><init>(Landroidx/core/view/c2;)V

    iput-object v0, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/z1;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/z1;-><init>(Landroidx/core/view/c2;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    return-void
.end method

.method public static g(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/c2;
    .locals 2

    new-instance v0, Landroidx/core/view/c2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Landroidx/core/view/c2;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p0, :cond_0

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/l0;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/core/view/p0;->a(Landroid/view/View;)Landroidx/core/view/c2;

    move-result-object p1

    iget-object v1, v0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    invoke-virtual {v1, p1}, Landroidx/core/view/a2;->m(Landroidx/core/view/c2;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/core/view/a2;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(I)Lw/c;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    invoke-virtual {p0, p1}, Landroidx/core/view/a2;->f(I)Lw/c;

    move-result-object p0

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    invoke-virtual {p0}, Landroidx/core/view/a2;->h()Lw/c;

    move-result-object p0

    iget p0, p0, Lw/c;->d:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    invoke-virtual {p0}, Landroidx/core/view/a2;->h()Lw/c;

    move-result-object p0

    iget p0, p0, Lw/c;->a:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    invoke-virtual {p0}, Landroidx/core/view/a2;->h()Lw/c;

    move-result-object p0

    iget p0, p0, Lw/c;->c:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    invoke-virtual {p0}, Landroidx/core/view/a2;->h()Lw/c;

    move-result-object p0

    iget p0, p0, Lw/c;->b:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/core/view/c2;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/core/view/c2;

    iget-object p1, p1, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    iget-object p0, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    invoke-static {p0, p1}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Landroid/view/WindowInsets;
    .locals 1

    iget-object p0, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    instance-of v0, p0, Landroidx/core/view/v1;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/view/v1;

    iget-object p0, p0, Landroidx/core/view/v1;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c2;->a:Landroidx/core/view/a2;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/view/a2;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
