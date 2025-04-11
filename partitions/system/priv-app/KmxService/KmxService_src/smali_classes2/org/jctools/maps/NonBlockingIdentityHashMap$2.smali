.class Lorg/jctools/maps/NonBlockingIdentityHashMap$2;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;->keySet()Ljava/util/Set;
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
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->containsKey(Ljava/lang/Object;)Z

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

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->size()I

    move-result p0

    return p0
.end method
