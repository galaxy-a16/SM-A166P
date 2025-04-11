.class Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;
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

.field private _nextK:Ljava/lang/Object;

.field private _nextV:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeV;"
        }
    .end annotation
.end field

.field private _prevK:Ljava/lang/Object;

.field private _prevV:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeV;"
        }
    .end annotation
.end field

.field final _sskvs:[Ljava/lang/Object;

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V
    .locals 3

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1100(Lorg/jctools/maps/NonBlockingIdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v1

    iget-object v2, v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-nez v2, :cond_0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->next()Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$500(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public static synthetic access$2000(Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevK:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2100(Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 0

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->hasNext()Z

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public key(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1300([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$800([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeV;"
        }
    .end annotation

    iget v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_idx:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextK:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevK:Ljava/lang/Object;

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    :cond_2
    iget v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_idx:I

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_idx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_idx:I

    invoke-virtual {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->key(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextK:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1400()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextK:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_3
    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 5

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevK:Ljava/lang/Object;

    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1400()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1900(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
