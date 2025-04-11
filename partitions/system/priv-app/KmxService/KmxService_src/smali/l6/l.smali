.class public final Ll6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/a;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Ll6/l;->a:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll6/l;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj0/b;

    add-int/lit8 p2, p2, 0x1

    invoke-direct {v0, p1, p2}, Lj0/b;-><init>(II)V

    iput-object v0, p0, Ll6/l;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 5
    iput-object p1, p0, Ll6/l;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lvb/d;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/l;->a:Ljava/lang/Object;

    return-void
.end method

.method public static c(Lj0/b;I)Lj0/b;
    .locals 4

    iget-object v0, p0, Lj0/b;->c:Ljava/lang/Object;

    check-cast v0, Lj0/b;

    iget v1, p0, Lj0/b;->a:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    iput p1, p0, Lj0/b;->a:I

    return-object v2

    :cond_0
    iget v1, p0, Lj0/b;->b:I

    if-lt p1, v1, :cond_5

    const-string v3, "The id is greater than maxId. This must not happen and is a bug."

    if-ne p1, v1, :cond_3

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj0/b;->b:I

    iget p1, v0, Lj0/b;->a:I

    if-ne v1, p1, :cond_1

    iget p1, v0, Lj0/b;->b:I

    iput p1, p0, Lj0/b;->b:I

    iget-object p1, v0, Lj0/b;->c:Ljava/lang/Object;

    check-cast p1, Lj0/b;

    iput-object p1, p0, Lj0/b;->c:Ljava/lang/Object;

    :cond_1
    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The id was already returned. This must not happen and is a bug."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ll6/l;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ll6/k;

    if-eqz v1, :cond_1

    check-cast v0, Ll6/k;

    iget-object v1, v0, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    if-nez v1, :cond_0

    iget-object v1, v0, Ll6/k;->d:Ll6/k;

    if-nez v1, :cond_0

    iget-object v1, v0, Ll6/k;->e:Lv7/w;

    if-nez v1, :cond_0

    iget-object v0, v0, Ll6/k;->f:Lv7/w;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ll6/l;->a:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object p0, p0, Ll6/l;->a:Ljava/lang/Object;

    check-cast p0, Lj0/b;

    :goto_0
    iget v0, p0, Lj0/b;->b:I

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lj0/b;->c:Ljava/lang/Object;

    check-cast v0, Lj0/b;

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lj0/b;->b:I

    return-void

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lj0/b;->a:I

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_1
    iget-object v1, p0, Lj0/b;->c:Ljava/lang/Object;

    check-cast v1, Lj0/b;

    if-eqz v1, :cond_3

    iget v2, v1, Lj0/b;->a:I

    iget p0, p0, Lj0/b;->b:I

    sub-int/2addr v2, p0

    add-int/2addr v0, v2

    move-object p0, v1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iput p1, p0, Lj0/b;->b:I

    :cond_4
    return-void
.end method

.method public final d(I)V
    .locals 3

    iget-object v0, p0, Ll6/l;->a:Ljava/lang/Object;

    check-cast v0, Lj0/b;

    iget v1, v0, Lj0/b;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    new-instance v1, Lj0/b;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, p1, v2, v0}, Lj0/b;-><init>(IILjava/lang/Object;)V

    iput-object v1, p0, Ll6/l;->a:Ljava/lang/Object;

    return-void

    :cond_0
    :goto_0
    invoke-static {v0, p1}, Ll6/l;->c(Lj0/b;I)Lj0/b;

    move-result-object p0

    if-eqz p0, :cond_2

    iget v1, p0, Lj0/b;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    new-instance v1, Lj0/b;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, p1, v2, p0}, Lj0/b;-><init>(IILjava/lang/Object;)V

    iput-object v1, v0, Lj0/b;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, p0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iget-object p1, p0, Ll6/l;->a:Ljava/lang/Object;

    check-cast p1, Ly9/a;

    invoke-virtual {p1}, Ly9/a;->f()V

    iget-object p0, p0, Ll6/l;->a:Ljava/lang/Object;

    check-cast p0, Ly9/a;

    invoke-virtual {p0}, Ly9/a;->e()V

    return-void
.end method
