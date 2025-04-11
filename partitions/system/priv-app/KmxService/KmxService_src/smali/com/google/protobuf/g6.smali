.class public final Lcom/google/protobuf/g6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Iterator;

.field public b:Ljava/util/Map$Entry;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->access$600(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)Lcom/google/protobuf/j5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/j5;->s()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/g6;->a:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/protobuf/g6;->b:Ljava/util/Map$Entry;

    :cond_0
    iput-boolean p2, p0, Lcom/google/protobuf/g6;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/n0;)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/g6;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/n3;

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v0

    const/high16 v1, 0x20000000

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/g6;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/n3;

    iget-boolean v1, p0, Lcom/google/protobuf/g6;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->i()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/g6;->b:Ljava/util/Map$Entry;

    instance-of v1, v1, Lcom/google/protobuf/i7;

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/g6;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/n8;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n0;->K(ILcom/google/protobuf/r8;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/g6;->b:Ljava/util/Map$Entry;

    check-cast p0, Lcom/google/protobuf/i7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/g6;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/j5;->y(Lcom/google/protobuf/i5;Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/g6;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/g6;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    :cond_2
    iput-object v2, p0, Lcom/google/protobuf/g6;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_3
    return-void
.end method
