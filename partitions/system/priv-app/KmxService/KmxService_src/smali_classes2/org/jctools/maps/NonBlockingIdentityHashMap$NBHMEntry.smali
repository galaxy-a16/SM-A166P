.class Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;
.super Lorg/jctools/maps/AbstractEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NBHMEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jctools/maps/AbstractEntry<",
        "TTypeK;TTypeV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {p0, p2, p3}, Lorg/jctools/maps/AbstractEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeV;)TTypeV;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lorg/jctools/maps/AbstractEntry;->_val:Ljava/lang/Object;

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    iget-object p0, p0, Lorg/jctools/maps/AbstractEntry;->_key:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
