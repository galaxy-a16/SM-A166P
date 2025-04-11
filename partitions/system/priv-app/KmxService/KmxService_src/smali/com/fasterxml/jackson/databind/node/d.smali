.class public final Lcom/fasterxml/jackson/databind/node/d;
.super Lcom/fasterxml/jackson/databind/node/g;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Iterator;

.field public g:Lcom/fasterxml/jackson/databind/k;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/node/g;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/g;-><init>(ILcom/fasterxml/jackson/databind/node/g;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/k;->elements()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/d;->f:Ljava/util/Iterator;

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

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/d;->g:Lcom/fasterxml/jackson/databind/k;

    return-object p0
.end method

.method public final k()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/d;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/d;->g:Lcom/fasterxml/jackson/databind/k;

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/i;->b:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/k;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/d;->g:Lcom/fasterxml/jackson/databind/k;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/n;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lcom/fasterxml/jackson/databind/node/d;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/d;->g:Lcom/fasterxml/jackson/databind/k;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/d;-><init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/node/g;)V

    return-object v0
.end method

.method public final m()Lcom/fasterxml/jackson/databind/node/e;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/d;->g:Lcom/fasterxml/jackson/databind/k;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/e;-><init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/node/g;)V

    return-object v0
.end method
