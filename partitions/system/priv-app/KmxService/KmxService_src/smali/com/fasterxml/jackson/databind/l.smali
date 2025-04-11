.class public abstract Lcom/fasterxml/jackson/databind/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty(Lcom/fasterxml/jackson/databind/z;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/l;->serialize(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method
