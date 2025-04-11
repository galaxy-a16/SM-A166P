.class public Lorg/jctools/maps/NonBlockingSetInt;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jctools/maps/NonBlockingSetInt$NBSI;,
        Lorg/jctools/maps/NonBlockingSetInt$iter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final _nbsi_offset:J

.field private static final serialVersionUID:J = 0x11207cb4719799cbL


# instance fields
.field private transient _nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/jctools/maps/NonBlockingSetInt;

    const-string v1, "_nbsi"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi_offset:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    new-instance v1, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v1}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x3f

    invoke-direct {v0, v3, v1, p0, v2}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/a;)V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    return-void
.end method

.method private final CAS_nbsi(Lorg/jctools/maps/NonBlockingSetInt$NBSI;Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z
    .locals 6

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi_offset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lorg/jctools/maps/NonBlockingSetInt;)Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/NonBlockingSetInt$NBSI;Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingSetInt;->CAS_nbsi(Lorg/jctools/maps/NonBlockingSetInt$NBSI;Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z

    move-result p0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-instance v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    new-instance v2, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v2}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, p0, v3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/a;)V

    iput-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {v2, v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->add(I)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->access$100(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)[J

    move-result-object v0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {v2, v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->contains(I)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 1

    .line 1
    const-string v0, "i"

    invoke-static {p1, v0}, Lorg/jctools/util/RangeUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->add(I)Z

    move-result p0

    return p0
.end method

.method public add(Ljava/lang/Integer;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt;->add(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt;->add(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 4

    new-instance v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    new-instance v1, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v1}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x3f

    invoke-direct {v0, v3, v1, p0, v2}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/a;)V

    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-direct {p0, v1, v0}, Lorg/jctools/maps/NonBlockingSetInt;->CAS_nbsi(Lorg/jctools/maps/NonBlockingSetInt$NBSI;Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(I)Z
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingSetInt$iter;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingSetInt$iter;-><init>(Lorg/jctools/maps/NonBlockingSetInt;)V

    return-object v0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->access$100(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)[J

    move-result-object p0

    array-length p0, p0

    shl-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public print()V
    .locals 1

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->access$200(Lorg/jctools/maps/NonBlockingSetInt$NBSI;I)V

    return-void
.end method

.method public remove(I)Z
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->remove(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt;->remove(I)Z

    move-result p0

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

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->size()I

    move-result p0

    return p0
.end method
