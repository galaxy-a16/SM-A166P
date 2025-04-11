.class public final Lcom/google/protobuf/h8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Z

.field public volatile b:Lcom/google/protobuf/MapField$StorageMode;

.field public c:Lcom/google/protobuf/g8;

.field public d:Ljava/util/ArrayList;

.field public final e:Lcom/google/protobuf/w8;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/w8;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/h8;->e:Lcom/google/protobuf/w8;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/protobuf/h8;->a:Z

    iput-object p2, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    new-instance p1, Lcom/google/protobuf/g8;

    invoke-direct {p1, p0, p3}, Lcom/google/protobuf/g8;-><init>(Lcom/google/protobuf/h8;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/google/protobuf/h8;->c:Lcom/google/protobuf/g8;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/h8;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/z7;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/w8;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/w8;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/protobuf/h8;-><init>(Lcom/google/protobuf/w8;Lcom/google/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/google/protobuf/g8;
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n8;

    iget-object v2, p0, Lcom/google/protobuf/h8;->e:Lcom/google/protobuf/w8;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/google/protobuf/z7;

    iget-object v2, v1, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/protobuf/g8;

    invoke-direct {p1, p0, v0}, Lcom/google/protobuf/g8;-><init>(Lcom/google/protobuf/h8;Ljava/util/Map;)V

    return-object p1
.end method

.method public final b(Lcom/google/protobuf/g8;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/g8;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/f8;

    invoke-virtual {p1}, Lcom/google/protobuf/f8;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/e8;

    invoke-virtual {v1}, Lcom/google/protobuf/e8;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/e8;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/google/protobuf/h8;->e:Lcom/google/protobuf/w8;

    iget-object v3, v3, Lcom/google/protobuf/w8;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/z7;

    invoke-virtual {v3}, Lcom/google/protobuf/z7;->e()Lcom/google/protobuf/x7;

    move-result-object v3

    iput-object v2, v3, Lcom/google/protobuf/x7;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/protobuf/x7;->d:Z

    iput-object v1, v3, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    iput-boolean v4, v3, Lcom/google/protobuf/x7;->e:Z

    new-instance v4, Lcom/google/protobuf/z7;

    iget-object v3, v3, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    invoke-direct {v4, v3, v2, v1}, Lcom/google/protobuf/z7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/h8;->a:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final d()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/h8;->c:Lcom/google/protobuf/g8;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/h8;->b(Lcom/google/protobuf/g8;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/h8;->d:Ljava/util/ArrayList;

    sget-object v0, Lcom/google/protobuf/MapField$StorageMode;->BOTH:Lcom/google/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/h8;->d:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->LIST:Lcom/google/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/h8;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/h8;->a(Ljava/util/List;)Lcom/google/protobuf/g8;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/h8;->c:Lcom/google/protobuf/g8;

    sget-object v0, Lcom/google/protobuf/MapField$StorageMode;->BOTH:Lcom/google/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/h8;->c:Lcom/google/protobuf/g8;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/protobuf/h8;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/google/protobuf/h8;

    invoke-virtual {p0}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->LIST:Lcom/google/protobuf/MapField$StorageMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    sget-object v2, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/h8;->c:Lcom/google/protobuf/g8;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/h8;->b(Lcom/google/protobuf/g8;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/h8;->d:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/h8;->c:Lcom/google/protobuf/g8;

    iput-object v1, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/h8;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final g()Lcom/google/protobuf/g8;
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/google/protobuf/MapField$StorageMode;->MAP:Lcom/google/protobuf/MapField$StorageMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    sget-object v2, Lcom/google/protobuf/MapField$StorageMode;->LIST:Lcom/google/protobuf/MapField$StorageMode;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/h8;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/h8;->a(Ljava/util/List;)Lcom/google/protobuf/g8;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/h8;->c:Lcom/google/protobuf/g8;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/h8;->d:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/protobuf/h8;->b:Lcom/google/protobuf/MapField$StorageMode;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/h8;->c:Lcom/google/protobuf/g8;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/h8;->e()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result p0

    return p0
.end method
