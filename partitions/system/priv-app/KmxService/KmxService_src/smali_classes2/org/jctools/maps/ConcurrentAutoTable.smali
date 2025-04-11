.class public Lorg/jctools/maps/ConcurrentAutoTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jctools/maps/ConcurrentAutoTable$CAT;
    }
.end annotation


# static fields
.field private static _catUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jctools/maps/ConcurrentAutoTable;",
            "Lorg/jctools/maps/ConcurrentAutoTable$CAT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile _cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    const-string v1, "_cat"

    const-class v2, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/ConcurrentAutoTable;->_catUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;-><init>(Lorg/jctools/maps/ConcurrentAutoTable$CAT;IJ)V

    iput-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    return-void
.end method

.method private CAS_cat(Lorg/jctools/maps/ConcurrentAutoTable$CAT;Lorg/jctools/maps/ConcurrentAutoTable$CAT;)Z
    .locals 1

    sget-object v0, Lorg/jctools/maps/ConcurrentAutoTable;->_catUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/jctools/maps/ConcurrentAutoTable;)Lorg/jctools/maps/ConcurrentAutoTable$CAT;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/ConcurrentAutoTable$CAT;Lorg/jctools/maps/ConcurrentAutoTable$CAT;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/ConcurrentAutoTable;->CAS_cat(Lorg/jctools/maps/ConcurrentAutoTable$CAT;Lorg/jctools/maps/ConcurrentAutoTable$CAT;)Z

    move-result p0

    return p0
.end method

.method private add_if(J)J
    .locals 2

    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-static {}, Lorg/jctools/maps/ConcurrentAutoTable;->hash()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->add_if(JILorg/jctools/maps/ConcurrentAutoTable;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static hash()I
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public add(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/ConcurrentAutoTable;->add_if(J)J

    return-void
.end method

.method public decrement()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lorg/jctools/maps/ConcurrentAutoTable;->add_if(J)J

    return-void
.end method

.method public estimate_get()J
    .locals 2

    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->estimate_sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public get()J
    .locals 2

    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public increment()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jctools/maps/ConcurrentAutoTable;->add_if(J)J

    return-void
.end method

.method public intValue()I
    .locals 2

    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public internal_size()I
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-static {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->access$000(Lorg/jctools/maps/ConcurrentAutoTable$CAT;)[J

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public longValue()J
    .locals 2

    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public print()V
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->print()V

    return-void
.end method

.method public set(J)V
    .locals 3

    new-instance v0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;-><init>(Lorg/jctools/maps/ConcurrentAutoTable$CAT;IJ)V

    :goto_0
    iget-object p1, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-direct {p0, p1, v0}, Lorg/jctools/maps/ConcurrentAutoTable;->CAS_cat(Lorg/jctools/maps/ConcurrentAutoTable$CAT;Lorg/jctools/maps/ConcurrentAutoTable$CAT;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
