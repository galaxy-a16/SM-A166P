.class Lcom/google/gson/internal/bind/TypeAdapters$28;
.super Lcom/google/gson/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/i;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/i;-><init>()V

    return-void
.end method

.method public static d(Lt5/a;)Lcom/google/gson/d;
    .locals 4

    sget-object v0, Lcom/google/gson/internal/bind/f;->a:[I

    invoke-virtual {p0}, Lt5/a;->C0()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    invoke-virtual {p0}, Lt5/a;->b()V

    :goto_0
    invoke-virtual {p0}, Lt5/a;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lt5/a;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/gson/internal/bind/TypeAdapters$28;->d(Lt5/a;)Lcom/google/gson/d;

    move-result-object v2

    iget-object v3, v0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v3, v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt5/a;->x()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/gson/c;

    invoke-direct {v0}, Lcom/google/gson/c;-><init>()V

    invoke-virtual {p0}, Lt5/a;->a()V

    :goto_1
    invoke-virtual {p0}, Lt5/a;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/google/gson/internal/bind/TypeAdapters$28;->d(Lt5/a;)Lcom/google/gson/d;

    move-result-object v1

    iget-object v2, v0, Lcom/google/gson/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lt5/a;->t()V

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lt5/a;->y0()V

    sget-object p0, Lcom/google/gson/e;->a:Lcom/google/gson/e;

    return-object p0

    :pswitch_3
    new-instance v0, Lcom/google/gson/g;

    invoke-virtual {p0}, Lt5/a;->N()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/g;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/google/gson/g;

    invoke-virtual {p0}, Lt5/a;->A0()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/g;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lt5/a;->A0()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/gson/g;

    new-instance v1, Lcom/google/gson/internal/LazilyParsedNumber;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson/g;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lcom/google/gson/d;Lt5/b;)V
    .locals 2

    if-eqz p0, :cond_c

    instance-of v0, p0, Lcom/google/gson/e;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v0, p0, Lcom/google/gson/g;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    check-cast p0, Lcom/google/gson/g;

    iget-object v0, p0, Lcom/google/gson/g;->a:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/g;->b()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, Lt5/b;->b0(Ljava/lang/Number;)V

    goto/16 :goto_4

    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/g;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    invoke-virtual {p1, p0}, Lt5/b;->w0(Z)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/google/gson/g;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lt5/b;->h0(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a JSON Primitive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    instance-of v0, p0, Lcom/google/gson/c;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lt5/b;->b()V

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/gson/c;

    invoke-virtual {p0}, Lcom/google/gson/c;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/d;

    invoke-static {v0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$28;->e(Lcom/google/gson/d;Lt5/b;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lt5/b;->t()V

    goto/16 :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a JSON Array: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    instance-of v0, p0, Lcom/google/gson/f;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lt5/b;->d()V

    if-eqz v0, :cond_a

    check-cast p0, Lcom/google/gson/f;

    iget-object p0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lt5/b;->y(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/d;

    invoke-static {v0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$28;->e(Lcom/google/gson/d;Lt5/b;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lt5/b;->x()V

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a JSON Object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_3
    invoke-virtual {p1}, Lt5/b;->H()Lt5/b;

    :goto_4
    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lt5/a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/gson/internal/bind/TypeAdapters$28;->d(Lt5/a;)Lcom/google/gson/d;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c(Lt5/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/gson/d;

    invoke-static {p2, p1}, Lcom/google/gson/internal/bind/TypeAdapters$28;->e(Lcom/google/gson/d;Lt5/b;)V

    return-void
.end method
