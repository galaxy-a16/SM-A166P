.class public Lcom/fasterxml/jackson/databind/jsontype/impl/a;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/m;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;I)V
    .locals 0

    iput p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/a;->c:I

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/m;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/a;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/a;->g(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/impl/a;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->b:Lcom/fasterxml/jackson/databind/d;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/a;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->a:Lcom/fasterxml/jackson/databind/jsontype/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/a;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;I)V

    move-object p0, v0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/a;->c:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object p0

    :goto_0
    sget-object p0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/impl/a;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->b:Lcom/fasterxml/jackson/databind/d;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/a;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->a:Lcom/fasterxml/jackson/databind/jsontype/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/a;-><init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
