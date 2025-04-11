.class Lorg/jctools/maps/NonBlockingHashMap$2;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jctools/maps/NonBlockingHashMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TTypeK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMap;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TTypeK;>;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->size()I

    move-result p0

    return p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap;->raw_array()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap$2;->size()I

    move-result p0

    array-length v1, p1

    if-lt v1, p0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMap;->access$800([Ljava/lang/Object;)I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-static {v0, v2}, Lorg/jctools/maps/NonBlockingHashMap;->access$1300([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v2}, Lorg/jctools/maps/NonBlockingHashMap;->access$1500([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/jctools/maps/NonBlockingHashMap$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v4, :cond_3

    sget-object v6, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v4, v6, :cond_3

    if-eqz v5, :cond_3

    if-eq v5, v6, :cond_3

    array-length v5, p0

    if-lt v3, v5, :cond_2

    int-to-long v5, v3

    const/4 v7, 0x1

    shl-long/2addr v5, v7

    const-wide/32 v7, 0x7ffffff7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    array-length v6, p0

    if-le v5, v6, :cond_1

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string p1, "Required array size too large"

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    add-int/lit8 v5, v3, 0x1

    aput-object v4, p0, v3

    move v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    array-length v0, p1

    if-gt v3, v0, :cond_7

    if-eq p1, p0, :cond_5

    invoke-static {p0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    array-length v0, p1

    if-ge v3, v0, :cond_6

    const/4 v0, 0x0

    aput-object v0, p0, v3

    :cond_6
    return-object p1

    :cond_7
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
