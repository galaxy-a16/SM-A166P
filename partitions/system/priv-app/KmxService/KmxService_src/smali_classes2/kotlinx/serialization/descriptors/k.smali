.class public abstract Lkotlinx/serialization/descriptors/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;[Lkotlinx/serialization/descriptors/g;Lvb/b;)Lkotlinx/serialization/descriptors/h;
    .locals 7

    invoke-static {p0}, Lkotlin/text/r;->I(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v6, Lkotlinx/serialization/descriptors/a;

    invoke-direct {v6, p0}, Lkotlinx/serialization/descriptors/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v6}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lkotlinx/serialization/descriptors/h;

    sget-object v3, Lkotlinx/serialization/descriptors/o;->a:Lkotlinx/serialization/descriptors/o;

    iget-object v0, v6, Lkotlinx/serialization/descriptors/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {p1}, Lkotlin/collections/m;->q0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/descriptors/h;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;ILjava/util/List;Lkotlinx/serialization/descriptors/a;)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blank serial names are prohibited"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;[Lkotlinx/serialization/descriptors/g;Lvb/b;)Lkotlinx/serialization/descriptors/h;
    .locals 7

    const-string v0, "serialName"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/r;->I(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lkotlinx/serialization/descriptors/o;->a:Lkotlinx/serialization/descriptors/o;

    invoke-static {p1, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v6, Lkotlinx/serialization/descriptors/a;

    invoke-direct {v6, p0}, Lkotlinx/serialization/descriptors/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v6}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lkotlinx/serialization/descriptors/h;

    iget-object v0, v6, Lkotlinx/serialization/descriptors/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {p2}, Lkotlin/collections/m;->q0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/descriptors/h;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;ILjava/util/List;Lkotlinx/serialization/descriptors/a;)V

    return-object p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blank serial names are prohibited"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;[Lkotlinx/serialization/descriptors/g;)Lkotlinx/serialization/descriptors/h;
    .locals 1

    sget-object v0, Lkotlinx/serialization/descriptors/SerialDescriptorsKt$buildSerialDescriptor$1;->INSTANCE:Lkotlinx/serialization/descriptors/SerialDescriptorsKt$buildSerialDescriptor$1;

    invoke-static {p0, p1, p2, v0}, Lkotlinx/serialization/descriptors/k;->b(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;[Lkotlinx/serialization/descriptors/g;Lvb/b;)Lkotlinx/serialization/descriptors/h;

    move-result-object p0

    return-object p0
.end method
