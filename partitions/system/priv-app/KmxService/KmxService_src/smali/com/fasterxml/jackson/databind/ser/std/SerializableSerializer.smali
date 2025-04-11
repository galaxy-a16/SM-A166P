.class public Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Lcom/fasterxml/jackson/databind/m;",
        ">;"
    }
.end annotation

.annotation runtime Lg2/a;
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/m;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/m;)Z
    .locals 0

    .line 1
    instance-of p0, p2, Lcom/fasterxml/jackson/databind/l;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/fasterxml/jackson/databind/l;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/l;->isEmpty(Lcom/fasterxml/jackson/databind/z;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p2, Lcom/fasterxml/jackson/databind/m;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/m;)Z

    move-result p0

    return p0
.end method

.method public serialize(Lcom/fasterxml/jackson/databind/m;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Lcom/fasterxml/jackson/databind/m;->serialize(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/m;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->serialize(Lcom/fasterxml/jackson/databind/m;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method

.method public final serializeWithType(Lcom/fasterxml/jackson/databind/m;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/m;->serializeWithType(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/m;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->serializeWithType(Lcom/fasterxml/jackson/databind/m;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-void
.end method
