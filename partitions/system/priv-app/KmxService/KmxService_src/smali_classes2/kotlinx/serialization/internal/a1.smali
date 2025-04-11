.class public Lkotlinx/serialization/internal/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/g;
.implements Lkotlinx/serialization/internal/l;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lkotlinx/serialization/internal/f0;

.field public final c:I

.field public d:I

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/util/List;

.field public final g:[Z

.field public h:Ljava/util/Map;

.field public final i:Lkotlin/f;

.field public final j:Lkotlin/f;

.field public final k:Lkotlin/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/internal/f0;I)V
    .locals 1

    const-string v0, "serialName"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/a1;->a:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/internal/a1;->b:Lkotlinx/serialization/internal/f0;

    iput p3, p0, Lkotlinx/serialization/internal/a1;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/serialization/internal/a1;->d:I

    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const-string v0, "[UNINITIALIZED]"

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lkotlinx/serialization/internal/a1;->e:[Ljava/lang/String;

    iget p1, p0, Lkotlinx/serialization/internal/a1;->c:I

    new-array p2, p1, [Ljava/util/List;

    iput-object p2, p0, Lkotlinx/serialization/internal/a1;->f:[Ljava/util/List;

    new-array p1, p1, [Z

    iput-object p1, p0, Lkotlinx/serialization/internal/a1;->g:[Z

    invoke-static {}, Lkotlin/collections/z;->k0()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/a1;->h:Ljava/util/Map;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;

    invoke-direct {p2, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$childSerializers$2;-><init>(Lkotlinx/serialization/internal/a1;)V

    invoke-static {p1, p2}, Lkotlin/h;->c(Lkotlin/LazyThreadSafetyMode;Lvb/a;)Lkotlin/f;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/internal/a1;->i:Lkotlin/f;

    new-instance p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$typeParameterDescriptors$2;

    invoke-direct {p2, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$typeParameterDescriptors$2;-><init>(Lkotlinx/serialization/internal/a1;)V

    invoke-static {p1, p2}, Lkotlin/h;->c(Lkotlin/LazyThreadSafetyMode;Lvb/a;)Lkotlin/f;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/internal/a1;->j:Lkotlin/f;

    new-instance p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$_hashCode$2;

    invoke-direct {p2, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$_hashCode$2;-><init>(Lkotlinx/serialization/internal/a1;)V

    invoke-static {p1, p2}, Lkotlin/h;->c(Lkotlin/LazyThreadSafetyMode;Lvb/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/a1;->k:Lkotlin/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/a1;->h:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x3

    :goto_0
    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/a1;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lkotlinx/serialization/descriptors/n;
    .locals 0

    sget-object p0, Lkotlinx/serialization/descriptors/o;->a:Lkotlinx/serialization/descriptors/o;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/internal/a1;->c:I

    return p0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/a1;->e:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lkotlinx/serialization/internal/a1;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/descriptors/g;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/serialization/internal/a1;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    check-cast p1, Lkotlinx/serialization/internal/a1;

    iget-object v2, p0, Lkotlinx/serialization/internal/a1;->j:Lkotlin/f;

    invoke-interface {v2}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lkotlinx/serialization/descriptors/g;

    iget-object p1, p1, Lkotlinx/serialization/internal/a1;->j:Lkotlin/f;

    invoke-interface {p1}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/serialization/descriptors/g;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/g;->d()I

    move-result p1

    iget v2, p0, Lkotlinx/serialization/internal/a1;->c:I

    if-eq v2, p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_0
    if-ge p1, v2, :cond_7

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v3

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v4

    invoke-static {v3, v4}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method public final f()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/a1;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final h(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/a1;->f:[Ljava/util/List;

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/a1;->k:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public i(I)Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/a1;->i:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/serialization/c;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(I)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/a1;->g:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public final k(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/internal/a1;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlinx/serialization/internal/a1;->d:I

    iget-object v1, p0, Lkotlinx/serialization/internal/a1;->e:[Ljava/lang/String;

    aput-object p1, v1, v0

    iget-object p1, p0, Lkotlinx/serialization/internal/a1;->g:[Z

    aput-boolean p2, p1, v0

    iget-object p1, p0, Lkotlinx/serialization/internal/a1;->f:[Ljava/util/List;

    const/4 p2, 0x0

    aput-object p2, p1, v0

    iget p1, p0, Lkotlinx/serialization/internal/a1;->c:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    array-length p2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lkotlinx/serialization/internal/a1;->h:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lkotlinx/serialization/internal/a1;->c:I

    invoke-static {v0, v1}, Lp9/d;->v0(II)Lxb/f;

    move-result-object v2

    const-string v3, ", "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/serialization/internal/a1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ")"

    new-instance v6, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$toString$1;

    invoke-direct {v6, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$toString$1;-><init>(Lkotlinx/serialization/internal/a1;)V

    const/16 v7, 0x18

    invoke-static/range {v2 .. v7}, Lkotlin/collections/r;->V0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvb/b;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
