.class Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;
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
    name = "SnapshotV"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TTypeV;>;",
        "Ljava/util/Enumeration<",
        "TTypeV;>;"
    }
.end annotation


# instance fields
.field private _idx:I

.field private _nextK:J

.field private _nextV:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeV;"
        }
    .end annotation
.end field

.field private _prevK:J

.field private _prevV:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeV;"
        }
    .end annotation
.end field

.field final _sschm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMapLong;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V
    .locals 2

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1500(Lorg/jctools/maps/NonBlockingHashMapLong;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object v0

    iget-object v1, v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_sschm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    const/4 p1, -0x1

    iput p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->next()Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$300(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;Z)V

    goto :goto_0
.end method

.method public static synthetic access$1900(Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;)J
    .locals 2

    iget-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevK:J

    return-wide v0
.end method

.method public static synthetic access$2000(Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 0

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->hasNext()Z

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public key(I)J
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_sschm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_sschm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length p0, p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeV;"
        }
    .end annotation

    iget v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-wide v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextK:J

    iput-wide v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevK:J

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    iput-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    iput-wide v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextK:J

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {v0, v2, v3}, Lorg/jctools/maps/NonBlockingHashMapLong;->get(J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object p0

    :cond_2
    iget v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    invoke-virtual {p0, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->key(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextK:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {v4, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->get(J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_3
    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 5

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_sschm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevK:J

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$100(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
