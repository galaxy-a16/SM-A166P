.class public final Lcom/fasterxml/jackson/databind/ser/impl/n;
.super Lcom/fasterxml/jackson/databind/o;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/f;


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/jsontype/k;

.field public final b:Lcom/fasterxml/jackson/databind/o;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/o;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/n;->a:Lcom/fasterxml/jackson/databind/jsontype/k;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/n;->b:Lcom/fasterxml/jackson/databind/o;

    return-void
.end method


# virtual methods
.method public final createContextual(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/n;->b:Lcom/fasterxml/jackson/databind/o;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/ser/f;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/z;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/n;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/n;->a:Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-direct {p2, p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/n;-><init>(Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V

    return-object p2
.end method

.method public final handledType()Ljava/lang/Class;
    .locals 0

    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/n;->b:Lcom/fasterxml/jackson/databind/o;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/n;->a:Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/fasterxml/jackson/databind/o;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-void
.end method

.method public final serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/n;->b:Lcom/fasterxml/jackson/databind/o;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/o;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-void
.end method
