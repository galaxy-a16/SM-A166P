.class public Lcom/google/protobuf/j8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/i8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/protobuf/h8;

    check-cast p2, Lcom/google/protobuf/h8;

    iget-boolean p0, p1, Lcom/google/protobuf/h8;->a:Z

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/h8;

    sget-object v0, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    invoke-virtual {p1}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Lcom/google/protobuf/h8;->e:Lcom/google/protobuf/w8;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/protobuf/h8;-><init>(Lcom/google/protobuf/w8;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/h8;->g()Lcom/google/protobuf/g8;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/google/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g8;->putAll(Ljava/util/Map;)V

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/protobuf/z7;

    new-instance p0, Lcom/google/protobuf/h8;

    sget-object v0, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/protobuf/h8;-><init>(Lcom/google/protobuf/z7;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object p0
.end method

.method public final c(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    const/4 p0, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Lcom/google/protobuf/h8;

    invoke-virtual {p2}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object p2

    check-cast p3, Lcom/google/protobuf/z7;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/protobuf/n0;->r(I)I

    move-result v1

    iget-object v2, p3, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/protobuf/c8;->O(Lcom/google/protobuf/b8;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/n0;->t(I)I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/protobuf/h8;

    iget-boolean p0, p1, Lcom/google/protobuf/h8;->a:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    move-object p0, p1

    check-cast p0, Lcom/google/protobuf/h8;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/h8;->a:Z

    return-object p1
.end method

.method public final f(Ljava/lang/Object;)Lcom/google/protobuf/b8;
    .locals 0

    check-cast p1, Lcom/google/protobuf/z7;

    iget-object p0, p1, Lcom/google/protobuf/z7;->c:Lcom/google/protobuf/y7;

    return-object p0
.end method

.method public final g(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    check-cast p1, Lcom/google/protobuf/h8;

    invoke-virtual {p1}, Lcom/google/protobuf/h8;->g()Lcom/google/protobuf/g8;

    move-result-object p0

    return-object p0
.end method
