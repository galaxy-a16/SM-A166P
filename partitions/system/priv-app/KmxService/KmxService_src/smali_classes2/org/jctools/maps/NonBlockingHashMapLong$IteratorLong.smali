.class public Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMapLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IteratorLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final _ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;
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

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-direct {v0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 0

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->hasNext()Z

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->next()Ljava/lang/Object;

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->access$1900(Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->next()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public nextElement()Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->next()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->nextElement()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public nextLong()J
    .locals 2

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->next()Ljava/lang/Object;

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->access$1900(Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->remove()V

    return-void
.end method
