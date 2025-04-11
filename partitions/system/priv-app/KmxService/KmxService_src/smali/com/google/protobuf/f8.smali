.class public final Lcom/google/protobuf/f8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public final a:Lcom/google/protobuf/h8;

.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/h8;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/f8;->a:Lcom/google/protobuf/h8;

    iput-object p2, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/f8;->a:Lcom/google/protobuf/h8;

    invoke-virtual {v0}, Lcom/google/protobuf/h8;->c()V

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/f8;->a:Lcom/google/protobuf/h8;

    invoke-virtual {v0}, Lcom/google/protobuf/h8;->c()V

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/f8;->a:Lcom/google/protobuf/h8;

    invoke-virtual {v0}, Lcom/google/protobuf/h8;->c()V

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/protobuf/e8;

    iget-object v1, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object p0, p0, Lcom/google/protobuf/f8;->a:Lcom/google/protobuf/h8;

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/e8;-><init>(Lcom/google/protobuf/h8;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/f8;->a:Lcom/google/protobuf/h8;

    invoke-virtual {v0}, Lcom/google/protobuf/h8;->c()V

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/f8;->a:Lcom/google/protobuf/h8;

    invoke-virtual {v0}, Lcom/google/protobuf/h8;->c()V

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/f8;->a:Lcom/google/protobuf/h8;

    invoke-virtual {v0}, Lcom/google/protobuf/h8;->c()V

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/f8;->b:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
