.class Lorg/jctools/maps/NonBlockingHashMap$1;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jctools/maps/NonBlockingHashMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TTypeV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMap;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMap$1;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMap$1;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMap$1;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TTypeV;>;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMap$1;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMap$1;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->size()I

    move-result p0

    return p0
.end method
