.class public final Lcom/google/protobuf/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/util/Iterator;

.field public final synthetic d:Lcom/google/protobuf/ca;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ca;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/ga;->d:Lcom/google/protobuf/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/protobuf/ga;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/ga;->c:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/ga;->d:Lcom/google/protobuf/ca;

    iget-object v0, v0, Lcom/google/protobuf/ca;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ga;->c:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/ga;->c:Ljava/util/Iterator;

    return-object p0
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lcom/google/protobuf/ga;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/protobuf/ga;->d:Lcom/google/protobuf/ca;

    iget-object v3, v2, Lcom/google/protobuf/ca;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    iget-object v0, v2, Lcom/google/protobuf/ca;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/ga;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/ga;->b:Z

    iget v1, p0, Lcom/google/protobuf/ga;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/ga;->a:I

    iget-object v0, p0, Lcom/google/protobuf/ga;->d:Lcom/google/protobuf/ca;

    iget-object v2, v0, Lcom/google/protobuf/ca;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lcom/google/protobuf/ca;->b:Ljava/util/List;

    iget p0, p0, Lcom/google/protobuf/ga;->a:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/ga;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/protobuf/ga;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/ga;->b:Z

    sget v0, Lcom/google/protobuf/ca;->g:I

    iget-object v0, p0, Lcom/google/protobuf/ga;->d:Lcom/google/protobuf/ca;

    invoke-virtual {v0}, Lcom/google/protobuf/ca;->c()V

    iget v1, p0, Lcom/google/protobuf/ga;->a:I

    iget-object v2, v0, Lcom/google/protobuf/ca;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/google/protobuf/ga;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/ga;->a:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ca;->q(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/ga;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() was called before next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
