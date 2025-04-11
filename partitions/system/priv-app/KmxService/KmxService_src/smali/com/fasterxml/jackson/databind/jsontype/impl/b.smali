.class public final Lcom/fasterxml/jackson/databind/jsontype/impl/b;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/m;
.source "SourceFile"


# static fields
.field public static final c:Lcom/fasterxml/jackson/databind/jsontype/impl/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/b;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/b;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/b;->c:Lcom/fasterxml/jackson/databind/jsontype/impl/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/m;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXISTING_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object p0
.end method

.method public final e(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;
    .locals 0

    iget-object p0, p2, Lf2/c;->f:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->isStructStart()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->i()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/f;->a1(Lf2/c;)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/f;->b1(Lf2/c;)V

    :goto_0
    return-object p2
.end method
