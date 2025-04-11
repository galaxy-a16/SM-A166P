.class public final Lcom/google/protobuf/lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q8;


# instance fields
.field public final a:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/lb;->a:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/ob;
    .locals 3

    iget-object p0, p0, Lcom/google/protobuf/lb;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/mb;

    invoke-virtual {v1}, Lcom/google/protobuf/mb;->b()Lcom/google/protobuf/nb;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/protobuf/ob;

    invoke-direct {p0, v0}, Lcom/google/protobuf/ob;-><init>(Ljava/util/TreeMap;)V

    :goto_1
    return-object p0
.end method

.method public final b(I)Lcom/google/protobuf/mb;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/lb;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/mb;

    if-nez v0, :cond_1

    sget v0, Lcom/google/protobuf/nb;->f:I

    new-instance v0, Lcom/google/protobuf/mb;

    invoke-direct {v0}, Lcom/google/protobuf/mb;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/r8;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p0

    return-object p0
.end method

.method public final buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p0

    return-object p0
.end method

.method public final c(ILcom/google/protobuf/nb;)V
    .locals 3

    const-string v0, " is not a valid field number."

    if-lez p1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/lb;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/lb;->b(I)Lcom/google/protobuf/mb;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/mb;->d(Lcom/google/protobuf/nb;)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget p1, Lcom/google/protobuf/nb;->f:I

    new-instance p1, Lcom/google/protobuf/mb;

    invoke-direct {p1}, Lcom/google/protobuf/mb;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/protobuf/mb;->d(Lcom/google/protobuf/nb;)V

    invoke-virtual {v1, p0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    new-instance v0, Lcom/google/protobuf/lb;

    invoke-direct {v0}, Lcom/google/protobuf/lb;-><init>()V

    iget-object p0, p0, Lcom/google/protobuf/lb;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/mb;

    iget-object v3, v0, Lcom/google/protobuf/lb;->a:Ljava/util/TreeMap;

    invoke-virtual {v1}, Lcom/google/protobuf/mb;->c()Lcom/google/protobuf/mb;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final d(ILcom/google/protobuf/i0;)Z
    .locals 3

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/lb;->b(I)Lcom/google/protobuf/mb;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/protobuf/i0;->q()I

    move-result p1

    iget-object p2, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v0, p2, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object p0, p0, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    sget-object p1, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    new-instance p1, Lcom/google/protobuf/lb;

    invoke-direct {p1}, Lcom/google/protobuf/lb;-><init>()V

    sget-object v2, Lcom/google/protobuf/q4;->e:Lcom/google/protobuf/q4;

    invoke-virtual {p2, v0, p1, v2}, Lcom/google/protobuf/i0;->t(ILcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/lb;->b(I)Lcom/google/protobuf/mb;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p1

    iget-object p2, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v0, p2, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    :cond_4
    iget-object p0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object p0, p0, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/protobuf/lb;->b(I)Lcom/google/protobuf/mb;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/mb;->a(Lcom/google/protobuf/ByteString;)V

    return v1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/protobuf/lb;->b(I)Lcom/google/protobuf/mb;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/protobuf/i0;->r()J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v2, v0, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    :cond_7
    iget-object p0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object p0, p0, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/protobuf/lb;->b(I)Lcom/google/protobuf/mb;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/protobuf/i0;->v()J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v2, v0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    if-nez v2, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    :cond_9
    iget-object p0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object p0, p0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public final e(Lcom/google/protobuf/i0;)V
    .locals 1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/lb;->d(ILcom/google/protobuf/i0;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final f(Lcom/google/protobuf/ob;)V
    .locals 2

    sget-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    if-eq p1, v0, :cond_0

    iget-object p1, p1, Lcom/google/protobuf/ob;->a:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nb;

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/lb;->c(ILcom/google/protobuf/nb;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(II)V
    .locals 2

    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/lb;->b(I)Lcom/google/protobuf/mb;

    move-result-object p0

    int-to-long p1, p2

    iget-object v0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object v1, v0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/mb;->a:Lcom/google/protobuf/nb;

    iget-object p0, p0, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/lb;->e(Lcom/google/protobuf/i0;)V

    return-object p0
.end method

.method public final mergeFrom([B)Lcom/google/protobuf/q8;
    .locals 2

    .line 2
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0, v1}, Lcom/google/protobuf/i0;->h([BIIZ)Lcom/google/protobuf/e0;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/lb;->e(Lcom/google/protobuf/i0;)V

    invoke-virtual {p1, v1}, Lcom/google/protobuf/e0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public final mergeFrom([BII)Lcom/google/protobuf/q8;
    .locals 1

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {p1, p2, p3, v0}, Lcom/google/protobuf/i0;->h([BIIZ)Lcom/google/protobuf/e0;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/lb;->e(Lcom/google/protobuf/i0;)V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/e0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public final mergeFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    const/4 p4, 0x0

    .line 7
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/i0;->h([BIIZ)Lcom/google/protobuf/e0;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/protobuf/lb;->e(Lcom/google/protobuf/i0;)V

    invoke-virtual {p1, p4}, Lcom/google/protobuf/e0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method
