.class Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;
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
    name = "SnapshotK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TTypeK;>;",
        "Ljava/util/Enumeration<",
        "TTypeK;>;"
    }
.end annotation


# instance fields
.field final _ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/maps/NonBlockingIdentityHashMap<",
            "TTypeK;TTypeV;>.SnapshotV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V
    .locals 1

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-direct {v0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 0

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;->hasNext()Z

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->next()Ljava/lang/Object;

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->access$2000(Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->remove()V

    return-void
.end method
