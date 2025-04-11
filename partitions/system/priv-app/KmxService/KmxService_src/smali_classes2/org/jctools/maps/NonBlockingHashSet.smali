.class public Lorg/jctools/maps/NonBlockingHashSet;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final V:Ljava/lang/Object;


# instance fields
.field private final _map:Lorg/jctools/maps/NonBlockingHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/maps/NonBlockingHashMap<",
            "TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lorg/jctools/maps/NonBlockingHashSet;->V:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {v0}, Lorg/jctools/maps/NonBlockingHashMap;-><init>()V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    sget-object v0, Lorg/jctools/maps/NonBlockingHashSet;->V:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/jctools/maps/NonBlockingHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->getk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/jctools/maps/NonBlockingHashSet;->V:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashSet;->_map:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap;->size()I

    move-result p0

    return p0
.end method
