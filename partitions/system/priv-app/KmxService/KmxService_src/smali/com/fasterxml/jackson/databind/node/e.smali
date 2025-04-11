.class public final Lcom/fasterxml/jackson/databind/node/e;
.super Lcom/fasterxml/jackson/databind/node/g;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Iterator;

.field public g:Ljava/util/Map$Entry;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/node/g;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/g;-><init>(ILcom/fasterxml/jackson/databind/node/g;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/k;->fields()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/e;->f:Ljava/util/Iterator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/node/e;->h:Z

    return-void
.end method


# virtual methods
.method public final c()Lcom/fasterxml/jackson/core/i;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/g;->c:Lcom/fasterxml/jackson/databind/node/g;

    return-object p0
.end method

.method public final j()Lcom/fasterxml/jackson/databind/k;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/e;->g:Ljava/util/Map$Entry;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/k;

    :goto_0
    return-object p0
.end method

.method public final k()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/e;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/node/g;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/node/e;->g:Ljava/util/Map$Entry;

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/i;->b:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/fasterxml/jackson/core/i;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/e;->h:Z

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->g:Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :goto_0
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/node/g;->d:Ljava/lang/String;

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_2
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/e;->h:Z

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/e;->g:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/k;

    invoke-interface {p0}, Lcom/fasterxml/jackson/core/n;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lcom/fasterxml/jackson/databind/node/d;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/d;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->j()Lcom/fasterxml/jackson/databind/k;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/d;-><init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/node/g;)V

    return-object v0
.end method

.method public final m()Lcom/fasterxml/jackson/databind/node/e;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/e;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->j()Lcom/fasterxml/jackson/databind/k;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/e;-><init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/node/g;)V

    return-object v0
.end method
