.class public Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/f;
.implements Lcom/fasterxml/jackson/databind/ser/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/ser/f;",
        "Lcom/fasterxml/jackson/databind/ser/k;"
    }
.end annotation


# instance fields
.field protected final _converter:Lcom/fasterxml/jackson/databind/util/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/j;"
        }
    .end annotation
.end field

.field protected final _delegateSerializer:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field

.field protected final _delegateType:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/j;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/j;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/j;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/j;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/fasterxml/jackson/databind/util/j;",
            ")V"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    return-void
.end method


# virtual methods
.method public _findSerializer(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/z;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/z;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/z;->findValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public acceptJsonFormatVisitor(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/o;->acceptJsonFormatVisitor(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V

    :cond_0
    return-void
.end method

.method public convertValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/j;

    check-cast p0, Lcom/fasterxml/jackson/databind/deser/impl/g;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/impl/g;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/g;->a:Lcom/fasterxml/jackson/databind/JavaType;

    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/z;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    :cond_1
    instance-of v2, v0, Lcom/fasterxml/jackson/databind/ser/f;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/z;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    if-ne v1, p1, :cond_3

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/j;

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->withDelegate(Lcom/fasterxml/jackson/databind/util/j;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    move-result-object p0

    return-object p0
.end method

.method public getConverter()Lcom/fasterxml/jackson/databind/util/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/j;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/j;

    return-object p0
.end method

.method public getDelegatee()Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    instance-of v1, v0, Lk2/c;

    if-eqz v1, :cond_0

    check-cast v0, Lk2/c;

    invoke-interface {v0, p1, p2}, Lk2/c;->getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;Z)Lcom/fasterxml/jackson/databind/k;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    instance-of v1, v0, Lk2/c;

    if-eqz v1, :cond_0

    check-cast v0, Lk2/c;

    invoke-interface {v0, p1, p2, p3}, Lk2/c;->getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;Z)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/o;->isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/z;)V
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/fasterxml/jackson/databind/ser/k;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/fasterxml/jackson/databind/ser/k;

    invoke-interface {p0, p1}, Lcom/fasterxml/jackson/databind/ser/k;->resolve(Lcom/fasterxml/jackson/databind/z;)V

    :cond_0
    return-void
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/z;->defaultSerializeNull(Lcom/fasterxml/jackson/core/f;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_findSerializer(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/z;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_findSerializer(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/z;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/o;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-void
.end method

.method public withDelegate(Lcom/fasterxml/jackson/databind/util/j;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/j;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    const-string v1, "withDelegate"

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/h;->F(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/j;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)V

    return-object p0
.end method
