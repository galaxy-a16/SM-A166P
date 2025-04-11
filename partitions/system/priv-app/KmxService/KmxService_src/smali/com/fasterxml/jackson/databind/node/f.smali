.class public final Lcom/fasterxml/jackson/databind/node/f;
.super Lcom/fasterxml/jackson/databind/node/g;
.source "SourceFile"


# instance fields
.field public f:Lcom/fasterxml/jackson/databind/k;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/k;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/g;-><init>(ILcom/fasterxml/jackson/databind/node/g;)V

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/f;->g:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/f;->f:Lcom/fasterxml/jackson/databind/k;

    return-void
.end method


# virtual methods
.method public final c()Lcom/fasterxml/jackson/core/i;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/g;->c:Lcom/fasterxml/jackson/databind/node/g;

    return-object p0
.end method

.method public final j()Lcom/fasterxml/jackson/databind/k;
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/f;->g:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/f;->f:Lcom/fasterxml/jackson/databind/k;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final k()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/f;->g:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/i;->b:I

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/f;->g:Z

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/f;->f:Lcom/fasterxml/jackson/databind/k;

    invoke-interface {p0}, Lcom/fasterxml/jackson/core/n;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/f;->f:Lcom/fasterxml/jackson/databind/k;

    return-object v0
.end method

.method public final l()Lcom/fasterxml/jackson/databind/node/d;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/f;->f:Lcom/fasterxml/jackson/databind/k;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/d;-><init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/node/g;)V

    return-object v0
.end method

.method public final m()Lcom/fasterxml/jackson/databind/node/e;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/f;->f:Lcom/fasterxml/jackson/databind/k;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/e;-><init>(Lcom/fasterxml/jackson/databind/k;Lcom/fasterxml/jackson/databind/node/g;)V

    return-object v0
.end method
