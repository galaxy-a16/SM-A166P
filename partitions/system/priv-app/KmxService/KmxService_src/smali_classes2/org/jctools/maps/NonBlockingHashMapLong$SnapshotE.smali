.class Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMapLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnapshotE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Long;",
        "TTypeV;>;>;"
    }
.end annotation


# instance fields
.field final _ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/maps/NonBlockingHashMapLong<",
            "TTypeV;>.SnapshotV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMapLong;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V
    .locals 1

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-direct {v0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TTypeV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->next()Ljava/lang/Object;

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->access$1900(Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->access$2000(Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;Ljava/lang/Long;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->remove()V

    return-void
.end method
