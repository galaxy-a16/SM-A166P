.class public final Ll/b;
.super Ll/j;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public h:Ll/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll/j;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ll/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ll/b;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ll/j;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    iget v0, p1, Ll/j;->c:I

    iget v1, p0, Ll/j;->c:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ll/j;->c(I)V

    iget v1, p0, Ll/j;->c:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    iget-object v1, p1, Ll/j;->a:[I

    iget-object v3, p0, Ll/j;->a:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Ll/j;->b:[Ljava/lang/Object;

    iget-object v1, p0, Ll/j;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Ll/j;->c:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ll/j;->i(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Ll/j;->k(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Ll/b;->h:Ll/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ll/a;

    invoke-direct {v0, p0, v1}, Ll/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Ll/b;->h:Ll/a;

    :cond_0
    iget-object p0, p0, Ll/b;->h:Ll/a;

    iget-object v0, p0, Lh/e;->a:Ljava/lang/Object;

    check-cast v0, Ll/g;

    if-nez v0, :cond_1

    new-instance v0, Ll/g;

    invoke-direct {v0, p0, v1}, Ll/g;-><init>(Lh/e;I)V

    iput-object v0, p0, Lh/e;->a:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lh/e;->a:Ljava/lang/Object;

    check-cast p0, Ll/g;

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Ll/b;->h:Ll/a;

    if-nez v0, :cond_0

    new-instance v0, Ll/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Ll/b;->h:Ll/a;

    :cond_0
    iget-object p0, p0, Ll/b;->h:Ll/a;

    iget-object v0, p0, Lh/e;->b:Ljava/lang/Object;

    check-cast v0, Ll/g;

    if-nez v0, :cond_1

    new-instance v0, Ll/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ll/g;-><init>(Lh/e;I)V

    iput-object v0, p0, Lh/e;->b:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lh/e;->b:Ljava/lang/Object;

    check-cast p0, Ll/g;

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Ll/j;->c:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ll/j;->c(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Ll/b;->h:Ll/a;

    if-nez v0, :cond_0

    new-instance v0, Ll/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Ll/b;->h:Ll/a;

    :cond_0
    iget-object p0, p0, Ll/b;->h:Ll/a;

    iget-object v0, p0, Lh/e;->c:Ljava/lang/Object;

    check-cast v0, Ll/i;

    if-nez v0, :cond_1

    new-instance v0, Ll/i;

    invoke-direct {v0, p0}, Ll/i;-><init>(Lh/e;)V

    iput-object v0, p0, Lh/e;->c:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lh/e;->c:Ljava/lang/Object;

    check-cast p0, Ll/i;

    return-object p0
.end method
