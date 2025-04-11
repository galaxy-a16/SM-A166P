.class public final Lkotlinx/serialization/descriptors/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/g;
.implements Lkotlinx/serialization/internal/l;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lkotlinx/serialization/descriptors/n;

.field public final c:I

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/HashSet;

.field public final f:[Ljava/lang/String;

.field public final g:[Lkotlinx/serialization/descriptors/g;

.field public final h:[Ljava/util/List;

.field public final i:[Z

.field public final j:Ljava/util/Map;

.field public final k:[Lkotlinx/serialization/descriptors/g;

.field public final l:Lkotlin/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;ILjava/util/List;Lkotlinx/serialization/descriptors/a;)V
    .locals 2

    const-string v0, "serialName"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameters"

    invoke-static {p4, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/descriptors/h;->b:Lkotlinx/serialization/descriptors/n;

    iput p3, p0, Lkotlinx/serialization/descriptors/h;->c:I

    iget-object p1, p5, Lkotlinx/serialization/descriptors/a;->a:Ljava/util/List;

    iput-object p1, p0, Lkotlinx/serialization/descriptors/h;->d:Ljava/util/List;

    iget-object p1, p5, Lkotlinx/serialization/descriptors/a;->b:Ljava/util/ArrayList;

    const-string p2, "<this>"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/util/HashSet;

    const/16 v0, 0xc

    invoke-static {v0, p1}, Lkotlin/collections/o;->P0(ILjava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lv9/a;->B(I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p1, p3}, Lkotlin/collections/r;->X0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    iput-object p3, p0, Lkotlinx/serialization/descriptors/h;->e:Ljava/util/HashSet;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v0}, Li4/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lkotlinx/serialization/descriptors/h;->f:[Ljava/lang/String;

    iget-object p1, p5, Lkotlinx/serialization/descriptors/a;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Lv9/a;->l(Ljava/util/List;)[Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/h;->g:[Lkotlinx/serialization/descriptors/g;

    iget-object p1, p5, Lkotlinx/serialization/descriptors/a;->e:Ljava/util/ArrayList;

    new-array v1, p3, [Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Li4/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/util/List;

    iput-object p1, p0, Lkotlinx/serialization/descriptors/h;->h:[Ljava/util/List;

    iget-object p1, p5, Lkotlinx/serialization/descriptors/a;->f:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    add-int/lit8 v0, p3, 0x1

    aput-boolean p5, p2, p3

    move p3, v0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lkotlinx/serialization/descriptors/h;->i:[Z

    iget-object p1, p0, Lkotlinx/serialization/descriptors/h;->f:[Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/m;->r0([Ljava/lang/Object;)Lkotlin/collections/u;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p3, p1}, Lkotlin/collections/o;->P0(ILjava/lang/Iterable;)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lkotlin/collections/u;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/collections/t;

    iget-object p5, p3, Lkotlin/collections/t;->b:Ljava/lang/Object;

    iget p3, p3, Lkotlin/collections/t;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p5, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lkotlin/collections/z;->m0(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/h;->j:Ljava/util/Map;

    invoke-static {p4}, Lv9/a;->l(Ljava/util/List;)[Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/h;->k:[Lkotlinx/serialization/descriptors/g;

    new-instance p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;

    invoke-direct {p1, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;-><init>(Lkotlinx/serialization/descriptors/h;)V

    invoke-static {p1}, Lkotlin/h;->d(Lvb/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/h;->l:Lkotlin/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/descriptors/h;->j:Ljava/util/Map;

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

    iget-object p0, p0, Lkotlinx/serialization/descriptors/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lkotlinx/serialization/descriptors/n;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/h;->b:Lkotlinx/serialization/descriptors/n;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/descriptors/h;->c:I

    return p0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/h;->f:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, p1, Lkotlinx/serialization/descriptors/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/descriptors/g;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lkotlinx/serialization/descriptors/h;

    iget-object v1, p0, Lkotlinx/serialization/descriptors/h;->k:[Lkotlinx/serialization/descriptors/g;

    iget-object p1, p1, Lkotlinx/serialization/descriptors/h;->k:[Lkotlinx/serialization/descriptors/g;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->d()I

    move-result p1

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/g;->d()I

    move-result v1

    if-eq p1, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->d()I

    move-result p1

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_7

    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v4

    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v5

    invoke-static {v4, v5}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v0
.end method

.method public final f()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/h;->e:Ljava/util/HashSet;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/h;->d:Ljava/util/List;

    return-object p0
.end method

.method public final h(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/h;->h:[Ljava/util/List;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/h;->l:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final i(I)Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/h;->g:[Lkotlinx/serialization/descriptors/g;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(I)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/h;->i:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lkotlinx/serialization/descriptors/h;->c:I

    invoke-static {v0, v1}, Lp9/d;->v0(II)Lxb/f;

    move-result-object v2

    const-string v3, ", "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/serialization/descriptors/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ")"

    new-instance v6, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;

    invoke-direct {v6, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;-><init>(Lkotlinx/serialization/descriptors/h;)V

    const/16 v7, 0x18

    invoke-static/range {v2 .. v7}, Lkotlin/collections/r;->V0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvb/b;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
