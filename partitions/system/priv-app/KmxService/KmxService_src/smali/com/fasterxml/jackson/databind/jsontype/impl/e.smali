.class public Lcom/fasterxml/jackson/databind/jsontype/impl/e;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/a;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/a;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;I)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/e;->h(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/impl/e;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object p0
.end method

.method public bridge synthetic g(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/impl/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/e;->h(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/impl/e;

    move-result-object p0

    return-object p0
.end method

.method public h(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/impl/e;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->b:Lcom/fasterxml/jackson/databind/d;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->a:Lcom/fasterxml/jackson/databind/jsontype/h;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/e;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/e;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
