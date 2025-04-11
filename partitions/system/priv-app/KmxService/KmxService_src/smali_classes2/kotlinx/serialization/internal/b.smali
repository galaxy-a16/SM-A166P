.class public abstract Lkotlinx/serialization/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lzb/a;Ljava/lang/String;)Lkotlinx/serialization/b;
    .locals 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lzb/a;->c()Lkotlinx/serialization/modules/b;

    move-result-object p1

    check-cast p0, Lkotlinx/serialization/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "baseClass"

    iget-object p0, p0, Lkotlinx/serialization/e;->a:Lkotlin/reflect/c;

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lkotlinx/serialization/modules/b;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/c;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lkotlinx/serialization/c;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object p1, p1, Lkotlinx/serialization/modules/b;->e:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Li4/g;->q(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast p0, Lvb/b;

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/b;

    :cond_4
    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 7

    const-string v0, "decoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/e;

    invoke-virtual {v0}, Lkotlinx/serialization/e;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v1

    invoke-interface {p1, v1}, Lzb/c;->a(Lkotlinx/serialization/descriptors/g;)Lzb/a;

    move-result-object p1

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface {p1}, Lzb/a;->n()V

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-virtual {v0}, Lkotlinx/serialization/e;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v5

    invoke-interface {p1, v5}, Lzb/a;->m(Lkotlinx/serialization/descriptors/g;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    if-eq v5, v4, :cond_1

    new-instance p0, Lkotlinx/serialization/SerializationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid index in polymorphic deserialization of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown class"

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n Expected 0, 1 or DECODE_DONE(-1), but found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lkotlinx/serialization/internal/b;->a(Lzb/a;Ljava/lang/String;)Lkotlinx/serialization/b;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lkotlinx/serialization/e;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v4

    invoke-interface {p1, v4, v5, v6, v3}, Lzb/a;->C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lkotlinx/serialization/e;->a:Lkotlin/reflect/c;

    invoke-static {v4, p0}, Lp9/d;->s0(Ljava/lang/String;Lkotlin/reflect/c;)V

    throw v3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot read polymorphic value before its type token"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v0}, Lkotlinx/serialization/e;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v6

    invoke-interface {p1, v6, v5}, Lzb/a;->h(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {p1, v1}, Lzb/a;->b(Lkotlinx/serialization/descriptors/g;)V

    return-object v4

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Polymorphic value has not been read for class "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 5

    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Ll9/b;->Z(Lkotlinx/serialization/internal/b;Lzb/d;Ljava/lang/Object;)Lkotlinx/serialization/c;

    move-result-object v0

    check-cast p0, Lkotlinx/serialization/e;

    invoke-virtual {p0}, Lkotlinx/serialization/e;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v1

    invoke-interface {p1, v1}, Lzb/d;->a(Lkotlinx/serialization/descriptors/g;)Lzb/b;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/e;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Lp1/f;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Lp1/f;->z(Lkotlinx/serialization/descriptors/g;ILjava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/e;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2, v0, p2}, Lp1/f;->y(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/c;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lzb/b;->b(Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method
