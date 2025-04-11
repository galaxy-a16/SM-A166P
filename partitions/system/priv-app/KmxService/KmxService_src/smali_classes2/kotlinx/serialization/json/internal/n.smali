.class public final Lkotlinx/serialization/json/internal/n;
.super Lkotlinx/serialization/json/internal/l;
.source "SourceFile"


# instance fields
.field public final j:Lkotlinx/serialization/json/w;

.field public final k:Ljava/util/List;

.field public final l:I

.field public m:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/w;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lkotlinx/serialization/json/internal/l;-><init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/w;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/n;->j:Lkotlinx/serialization/json/w;

    invoke-virtual {p2}, Lkotlinx/serialization/json/w;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/r;->Y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/n;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lkotlinx/serialization/json/internal/n;->l:I

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/serialization/json/internal/n;->m:I

    return-void
.end method


# virtual methods
.method public final Q(Ljava/lang/String;)Lkotlinx/serialization/json/l;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/n;->m:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance p0, Lkotlinx/serialization/json/q;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/json/q;-><init>(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/n;->j:Lkotlinx/serialization/json/w;

    invoke-static {p0, p1}, Lkotlin/collections/z;->l0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/l;

    :goto_0
    return-object p0
.end method

.method public final S(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;
    .locals 1

    const-string v0, "desc"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    div-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lkotlinx/serialization/json/internal/n;->k:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final V()Lkotlinx/serialization/json/l;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/n;->j:Lkotlinx/serialization/json/w;

    return-object p0
.end method

.method public final X()Lkotlinx/serialization/json/w;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/n;->j:Lkotlinx/serialization/json/w;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/descriptors/g;)V
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final m(Lkotlinx/serialization/descriptors/g;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lkotlinx/serialization/json/internal/n;->m:I

    iget v0, p0, Lkotlinx/serialization/json/internal/n;->l:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/serialization/json/internal/n;->m:I

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
