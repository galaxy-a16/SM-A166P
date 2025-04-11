.class Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;
.super Lorg/jctools/maps/AbstractEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMapLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NBHMLEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jctools/maps/AbstractEntry<",
        "Ljava/lang/Long;",
        "TTypeV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMapLong;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMapLong;Ljava/lang/Long;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TTypeV;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

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

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    iget-object p0, p0, Lorg/jctools/maps/AbstractEntry;->_key:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {v0, p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
