.class final Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prime"
.end annotation


# instance fields
.field final _V:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;->_V:Ljava/lang/Object;

    return-void
.end method

.method public static unbox(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;->_V:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
