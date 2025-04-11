.class public abstract Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->visitStringFormat(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-void
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    const-string p1, "string"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializerBase;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializerBase;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/f;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p4, v0, p1}, Lcom/fasterxml/jackson/databind/jsontype/k;->d(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lf2/c;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/k;->e(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializerBase;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/k;->f(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;

    return-void
.end method

.method public abstract valueToString(Ljava/lang/Object;)Ljava/lang/String;
.end method
