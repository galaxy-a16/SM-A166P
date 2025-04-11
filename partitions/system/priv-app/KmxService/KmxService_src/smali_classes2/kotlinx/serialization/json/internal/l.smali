.class public Lkotlinx/serialization/json/internal/l;
.super Lkotlinx/serialization/json/internal/a;
.source "SourceFile"


# instance fields
.field public final e:Lkotlinx/serialization/json/w;

.field public final f:Ljava/lang/String;

.field public final g:Lkotlinx/serialization/descriptors/g;

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/w;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/a;-><init>(Lkotlinx/serialization/json/b;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/l;->e:Lkotlinx/serialization/json/w;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/l;->f:Ljava/lang/String;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/l;->g:Lkotlinx/serialization/descriptors/g;

    return-void
.end method


# virtual methods
.method public Q(Ljava/lang/String;)Lkotlinx/serialization/json/l;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l;->X()Lkotlinx/serialization/json/w;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/z;->l0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/l;

    return-object p0
.end method

.method public S(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;
    .locals 3

    const-string v0, "desc"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/g;->e(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->d:Lkotlinx/serialization/json/i;

    iget-boolean v1, v1, Lkotlinx/serialization/json/i;->l:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l;->X()Lkotlinx/serialization/json/w;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/w;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "<this>"

    iget-object v2, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    invoke-static {v2, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeDecoder$elementName$alternativeNamesMap$1;

    invoke-direct {v1, p1}, Lkotlinx/serialization/json/internal/JsonTreeDecoder$elementName$alternativeNamesMap$1;-><init>(Ljava/lang/Object;)V

    iget-object v2, v2, Lkotlinx/serialization/json/b;->c:Landroidx/room/z;

    invoke-virtual {v2, p1, v1}, Landroidx/room/z;->c(Lkotlinx/serialization/descriptors/g;Lvb/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l;->X()Lkotlinx/serialization/json/w;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/w;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method public bridge synthetic V()Lkotlinx/serialization/json/l;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l;->X()Lkotlinx/serialization/json/w;

    move-result-object p0

    return-object p0
.end method

.method public X()Lkotlinx/serialization/json/w;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/l;->e:Lkotlinx/serialization/json/w;

    return-object p0
.end method

.method public final a(Lkotlinx/serialization/descriptors/g;)Lzb/a;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l;->g:Lkotlinx/serialization/descriptors/g;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lkotlinx/serialization/json/internal/a;->a(Lkotlinx/serialization/descriptors/g;)Lzb/a;

    move-result-object p0

    return-object p0
.end method

.method public b(Lkotlinx/serialization/descriptors/g;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->d:Lkotlinx/serialization/json/i;

    iget-boolean v1, v0, Lkotlinx/serialization/json/i;->b:Z

    if-nez v1, :cond_7

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v1

    instance-of v1, v1, Lkotlinx/serialization/descriptors/d;

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, v0, Lkotlinx/serialization/json/i;->l:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lv9/a;->f(Lkotlinx/serialization/descriptors/g;)Ljava/util/Set;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lv9/a;->f(Lkotlinx/serialization/descriptors/g;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lkotlinx/serialization/json/b;->c:Landroidx/room/z;

    invoke-virtual {v1, p1}, Landroidx/room/z;->b(Lkotlinx/serialization/descriptors/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :cond_3
    invoke-static {v0, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "elements"

    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    :goto_1
    invoke-static {v2}, Lv9/a;->B(I)I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-object p1, v2

    :goto_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l;->X()Lkotlinx/serialization/json/w;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/w;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lkotlinx/serialization/json/internal/l;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l;->X()Lkotlinx/serialization/json/w;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/w;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "key"

    invoke-static {v1, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Encountered unknown key \'"

    const-string v0, "\'.\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys.\nCurrent input: "

    invoke-static {p1, v1, v0}, Landroidx/activity/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v0, p0}, Lv9/a;->D(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lv9/a;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_4
    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/l;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lkotlinx/serialization/json/internal/a;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m(Lkotlinx/serialization/descriptors/g;)I
    .locals 8

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/l;->h:I

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/g;->d()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget v0, p0, Lkotlinx/serialization/json/internal/l;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/l;->h:I

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/a;->U(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/l;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/l;->i:Z

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l;->X()Lkotlinx/serialization/json/w;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, p0, Lkotlinx/serialization/json/internal/a;->c:Lkotlinx/serialization/json/b;

    if-nez v4, :cond_2

    iget-object v4, v5, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iget-boolean v4, v4, Lkotlinx/serialization/json/i;->f:Z

    if-nez v4, :cond_1

    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/g;->j(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/g;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lkotlinx/serialization/json/internal/l;->i:Z

    if-eqz v4, :cond_0

    :cond_2
    iget-object v4, p0, Lkotlinx/serialization/json/internal/a;->d:Lkotlinx/serialization/json/i;

    iget-boolean v4, v4, Lkotlinx/serialization/json/i;->h:Z

    if-eqz v4, :cond_9

    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/g;->g()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/l;->Q(Ljava/lang/String;)Lkotlinx/serialization/json/l;

    move-result-object v6

    instance-of v6, v6, Lkotlinx/serialization/json/t;

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {v4}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v6

    sget-object v7, Lkotlinx/serialization/descriptors/m;->a:Lkotlinx/serialization/descriptors/m;

    invoke-static {v6, v7}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/l;->Q(Ljava/lang/String;)Lkotlinx/serialization/json/l;

    move-result-object v0

    instance-of v6, v0, Lkotlinx/serialization/json/a0;

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    check-cast v0, Lkotlinx/serialization/json/a0;

    goto :goto_1

    :cond_4
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_6

    instance-of v6, v0, Lkotlinx/serialization/json/t;

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object v7

    :cond_6
    :goto_2
    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v4, v5, v7}, Lkotlinx/serialization/json/internal/j;->b(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/json/b;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x3

    if-ne v0, v4, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move v2, v3

    :goto_4
    if-nez v2, :cond_0

    :cond_9
    return v1

    :cond_a
    const/4 p0, -0x1

    return p0
.end method
