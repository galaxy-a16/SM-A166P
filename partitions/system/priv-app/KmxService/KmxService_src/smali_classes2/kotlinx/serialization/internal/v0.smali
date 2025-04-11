.class public abstract Lkotlinx/serialization/internal/v0;
.super Lkotlinx/serialization/internal/a;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/serialization/c;

.field public final b:Lkotlinx/serialization/c;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/a;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/v0;->a:Lkotlinx/serialization/c;

    iput-object p2, p0, Lkotlinx/serialization/internal/v0;->b:Lkotlinx/serialization/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic f(Lzb/a;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/v0;->i(Lzb/a;ILjava/util/Map;Z)V

    return-void
.end method

.method public final i(Lzb/a;ILjava/util/Map;Z)V
    .locals 5

    const-string v0, "builder"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/internal/h0;

    iget-object v0, v0, Lkotlinx/serialization/internal/h0;->d:Lkotlinx/serialization/internal/g0;

    iget-object v1, p0, Lkotlinx/serialization/internal/v0;->a:Lkotlinx/serialization/c;

    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v1, v2}, Lzb/a;->C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    invoke-interface {p1, v0}, Lzb/a;->m(Lkotlinx/serialization/descriptors/g;)I

    move-result p4

    add-int/lit8 v4, p2, 0x1

    if-ne p4, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "Value must follow key in a map, index for key: "

    const-string p1, ", returned index for value: "

    invoke-static {p0, p2, p1, p4}, Landroidx/activity/b;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 p4, p2, 0x1

    :goto_1
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    iget-object p0, p0, Lkotlinx/serialization/internal/v0;->b:Lkotlinx/serialization/c;

    if-eqz p2, :cond_3

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object p2

    instance-of p2, p2, Lkotlinx/serialization/descriptors/f;

    if-nez p2, :cond_3

    invoke-static {p3, v1}, Lkotlin/collections/z;->l0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, p4, p0, p2}, Lzb/a;->C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-interface {p1, v0, p4, p0, v2}, Lzb/a;->C(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-interface {p3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->d(Ljava/lang/Object;)I

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/internal/h0;

    check-cast p1, Lp1/f;

    const-string v1, "descriptor"

    iget-object v0, v0, Lkotlinx/serialization/internal/h0;->d:Lkotlinx/serialization/internal/g0;

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lzb/d;->a(Lkotlinx/serialization/descriptors/g;)Lzb/b;

    move-result-object p1

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->c(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    move-object v5, p1

    check-cast v5, Lp1/f;

    iget-object v6, p0, Lkotlinx/serialization/internal/v0;->a:Lkotlinx/serialization/c;

    invoke-virtual {v5, v0, v1, v6, v3}, Lp1/f;->y(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/c;Ljava/lang/Object;)V

    add-int/lit8 v1, v4, 0x1

    iget-object v3, p0, Lkotlinx/serialization/internal/v0;->b:Lkotlinx/serialization/c;

    invoke-virtual {v5, v0, v4, v3, v2}, Lp1/f;->y(Lkotlinx/serialization/descriptors/g;ILkotlinx/serialization/c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lzb/b;->b(Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method
