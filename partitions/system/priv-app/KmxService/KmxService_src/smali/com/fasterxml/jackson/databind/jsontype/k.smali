.class public abstract Lcom/fasterxml/jackson/databind/jsontype/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/k;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.end method

.method public final d(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lf2/c;
    .locals 1

    new-instance v0, Lf2/c;

    invoke-direct {v0, p1, p2}, Lf2/c;-><init>(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/j;->a:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/k;->c()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    sget-object p0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    :goto_0
    iput-object p0, v0, Lf2/c;->e:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->METADATA_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->PARENT_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->PAYLOAD_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    :goto_1
    iput-object p1, v0, Lf2/c;->e:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/k;->b()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lf2/c;->d:Ljava/lang/String;

    :goto_2
    return-object v0
.end method

.method public abstract e(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;
.end method

.method public abstract f(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;
.end method
