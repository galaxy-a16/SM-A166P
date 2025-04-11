.class Lorg/jctools/maps/NonBlockingHashMapLong$2;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jctools/maps/NonBlockingHashMapLong;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMapLong;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V
    .locals 0

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$2;->iterator()Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jctools/maps/NonBlockingHashMapLong<",
            "TTypeV;>.Iterator",
            "Long;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->size()I

    move-result p0

    return p0
.end method
