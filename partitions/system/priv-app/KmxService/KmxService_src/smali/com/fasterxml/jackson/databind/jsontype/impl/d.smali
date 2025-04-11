.class public final Lcom/fasterxml/jackson/databind/jsontype/impl/d;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/m;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/m;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->b:Lcom/fasterxml/jackson/databind/d;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->a:Lcom/fasterxml/jackson/databind/jsontype/h;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/d;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object p0
.end method
