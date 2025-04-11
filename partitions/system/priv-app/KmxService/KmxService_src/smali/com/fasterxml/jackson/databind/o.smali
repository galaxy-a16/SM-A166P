.class public abstract Lcom/fasterxml/jackson/databind/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public getDelegatee()Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract handledType()Ljava/lang/Class;
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/o;->isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUnwrappingSerializer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public properties()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/ser/PropertyWriter;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/fasterxml/jackson/databind/util/h;->c:Ljava/util/Iterator;

    return-object p0
.end method

.method public replaceDelegatee(Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/f;",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/o;->handledType()Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    aput-object p4, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p4, 0x1

    aput-object p0, p1, p4

    const-string p0, "Type id handling not implemented for type %s (by serializer of type %s)"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/fasterxml/jackson/databind/e;->reportBadDefinition(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/p;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    return-object p0
.end method

.method public usesObjectId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    return-object p0
.end method
