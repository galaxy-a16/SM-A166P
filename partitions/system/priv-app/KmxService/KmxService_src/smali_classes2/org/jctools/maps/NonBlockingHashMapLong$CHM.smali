.class final Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMapLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CHM"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final _copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMapLong$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMapLong$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _newchmUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMapLong$CHM;",
            "Lorg/jctools/maps/NonBlockingHashMapLong$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMapLong$CHM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile _copyDone:J

.field volatile _copyIdx:J

.field final _keys:[J

.field final _nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

.field volatile _newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

.field volatile _resizers:J

.field private final _size:Lorg/jctools/maps/ConcurrentAutoTable;

.field private final _slots:Lorg/jctools/maps/ConcurrentAutoTable;

.field final _vals:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "_newchm"

    const-class v1, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {v1, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchmUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_resizers"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_copyIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_copyDone"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMapLong;Lorg/jctools/maps/ConcurrentAutoTable;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyIdx:J

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDone:J

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    iput-object p2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    new-instance p1, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {p1}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    const/4 p1, 0x1

    shl-int/2addr p1, p3

    new-array p2, p1, [J

    iput-object p2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    return-void
.end method

.method private CAS_key(IJJ)Z
    .locals 8

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    invoke-static {v1, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$400([JI)J

    move-result-wide v2

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method private CAS_val(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$500([Ljava/lang/Object;I)J

    move-result-wide v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;)V
    .locals 0

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->print()V

    return-void
.end method

.method public static synthetic access$100(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;J)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->get_impl(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->help_copy_impl(Z)V

    return-void
.end method

.method private final copy_check_and_promote(I)V
    .locals 9

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v0, v0

    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDone:J

    if-lez p1, :cond_0

    :goto_0
    sget-object v3, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v4, p1

    add-long v7, v1, v4

    move-object v4, p0

    move-wide v5, v1

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDone:J

    goto :goto_0

    :cond_0
    int-to-long v3, p1

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1500(Lorg/jctools/maps/NonBlockingHashMapLong;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object p1

    if-ne p1, p0, :cond_1

    iget-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1600()J

    move-result-wide v0

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {p1, v0, v1, p0, v2}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1700(Lorg/jctools/maps/NonBlockingHashMapLong;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1402(Lorg/jctools/maps/NonBlockingHashMapLong;J)J

    :cond_1
    return-void
.end method

.method private copy_slot(I)Z
    .locals 10

    :goto_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v6, 0x0

    array-length v0, v0

    add-int/2addr v0, p1

    int-to-long v8, v0

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v4 .. v9}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_key(IJJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_1
    instance-of v3, v0, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    const/4 v4, 0x1

    if-nez v3, :cond_5

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    invoke-direct {v3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v3

    :goto_3
    invoke-direct {p0, p1, v0, v3}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_val(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v0

    if-ne v3, v0, :cond_3

    return v4

    :cond_3
    move-object v0, v3

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v3

    const/4 v5, 0x0

    if-ne v0, v3, :cond_6

    return v5

    :cond_6
    move-object v3, v0

    check-cast v3, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    iget-object v3, v3, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;->_V:Ljava/lang/Object;

    iget-object v6, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v2, v3, v7}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v1

    if-eq v0, v1, :cond_7

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_val(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_5

    :cond_7
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    move-result-object p0

    if-eq v0, p0, :cond_8

    goto :goto_6

    :cond_8
    move v4, v5

    :goto_6
    return v4
.end method

.method private copy_slot_and_check(ILjava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_check_and_promote(I)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1100(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    :cond_1
    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    return-object p0
.end method

.method private get_impl(J)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    int-to-long v2, v1

    and-long/2addr v2, p1

    long-to-int v2, v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    aget-wide v4, v4, v2

    iget-object v6, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v6, v6, v2

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    :cond_0
    cmp-long v4, p1, v4

    if-nez v4, :cond_3

    instance-of v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object p0

    if-ne v6, p0, :cond_1

    return-object v8

    :cond_1
    return-object v6

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot_and_check(ILjava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object p0

    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->get_impl(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$900(I)I

    move-result v4

    if-lt v3, v4, :cond_5

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot_and_check(ILjava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object p0

    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->get_impl(J)Ljava/lang/Object;

    move-result-object v8

    :goto_1
    return-object v8

    :cond_5
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v1

    goto :goto_0
.end method

.method private final help_copy_impl(Z)V
    .locals 13

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v0, v0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, -0x270f

    move v4, v2

    :cond_0
    iget-wide v5, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyDone:J

    int-to-long v7, v0

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-gez v5, :cond_6

    if-ne v4, v2, :cond_2

    :goto_0
    iget-wide v7, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyIdx:J

    long-to-int v3, v7

    sget-object v7, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v9, v3

    add-int v5, v3, v1

    int-to-long v11, v5

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    shl-int/lit8 v5, v0, 0x1

    if-lt v3, v5, :cond_2

    move v4, v3

    :cond_2
    move v5, v6

    :goto_1
    if-ge v6, v1, :cond_4

    add-int v7, v3, v6

    add-int/lit8 v8, v0, -0x1

    and-int/2addr v7, v8

    invoke-direct {p0, v7}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot(I)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-lez v5, :cond_5

    invoke-direct {p0, v5}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_check_and_promote(I)V

    :cond_5
    add-int/2addr v3, v1

    if-nez p1, :cond_0

    if-ne v4, v2, :cond_0

    return-void

    :cond_6
    invoke-direct {p0, v6}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_check_and_promote(I)V

    return-void
.end method

.method private print()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v0, v1, v2, v3}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$600(IJLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-eqz p0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->print()V

    :cond_2
    return-void
.end method

.method private print2()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v0, v1, v2, v3}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$700(IJLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-eqz p0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->print2()V

    :cond_2
    return-void
.end method

.method private putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v11, v0

    add-int/lit8 v12, v11, -0x1

    int-to-long v0, v12

    and-long/2addr v0, v7

    long-to-int v0, v0

    const/4 v1, 0x0

    move v13, v0

    move v14, v1

    :goto_0
    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v15, v0, v13

    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    aget-wide v0, v0, v13

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v4, 0x1

    if-nez v2, :cond_3

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_0

    return-object v9

    :cond_0
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1000()Ljava/lang/Object;

    move-result-object v0

    if-ne v10, v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v16, v11

    move-wide v10, v4

    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_key(IJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0, v10, v11}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    goto :goto_2

    :cond_2
    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    aget-wide v0, v0, v13

    goto :goto_1

    :cond_3
    move/from16 v16, v11

    move-wide v10, v4

    :goto_1
    cmp-long v0, v0, v7

    if-nez v0, :cond_11

    :goto_2
    if-ne v9, v15, :cond_4

    return-object v15

    :cond_4
    if-nez v15, :cond_5

    move/from16 v0, v16

    invoke-direct {v6, v14, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->tableFull(II)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    instance-of v0, v15, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->resize()Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-object/from16 v1, p4

    :goto_3
    invoke-direct {v6, v13, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->copy_slot_and_check(ILjava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object v0

    invoke-direct {v0, v7, v8, v9, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v1, p4

    move-wide v2, v10

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1200()Ljava/lang/Object;

    move-result-object v0

    if-eq v1, v0, :cond_b

    if-eq v15, v1, :cond_b

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1000()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_8

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v0

    if-eq v15, v0, :cond_8

    if-nez v15, :cond_b

    :cond_8
    if-nez v15, :cond_9

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v0

    if-eq v1, v0, :cond_b

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-object v15

    :cond_b
    invoke-direct {v6, v13, v15, v9}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_val(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v1, :cond_f

    if-eqz v15, :cond_c

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v0

    if-ne v15, v0, :cond_d

    :cond_c
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v0

    if-eq v9, v0, :cond_d

    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0, v2, v3}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    :cond_d
    if-eqz v15, :cond_f

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v0

    if-eq v15, v0, :cond_f

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_f

    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    goto :goto_4

    :cond_e
    iget-object v0, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_vals:[Ljava/lang/Object;

    aget-object v15, v0, v13

    instance-of v0, v15, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-eqz v0, :cond_f

    goto :goto_3

    :cond_f
    :goto_4
    if-nez v15, :cond_10

    if-eqz v1, :cond_10

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v15

    :cond_10
    return-object v15

    :cond_11
    move-object/from16 v1, p4

    move/from16 v0, v16

    add-int/lit8 v14, v14, 0x1

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$900(I)I

    move-result v2

    if-lt v14, v2, :cond_13

    invoke-direct/range {p0 .. p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->resize()Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object v0

    if-eqz v1, :cond_12

    iget-object v2, v6, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1100(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    :cond_12
    invoke-direct {v0, v7, v8, v9, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    add-int/lit8 v13, v13, 0x1

    and-int/2addr v13, v12

    move v11, v0

    move-object v10, v1

    goto/16 :goto_0
.end method

.method private final resize()Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .locals 14

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v0, v0

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->size()I

    move-result v1

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1300(Lorg/jctools/maps/NonBlockingHashMapLong;)Z

    move-result v2

    if-eqz v2, :cond_1

    shr-int/lit8 v2, v0, 0x1

    if-lt v1, v2, :cond_2

    shl-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_1
    shr-int/lit8 v2, v0, 0x2

    if-lt v1, v2, :cond_2

    shl-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v0, 0x1

    if-lt v1, v3, :cond_3

    shl-int/lit8 v2, v0, 0x2

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-gt v2, v0, :cond_4

    iget-object v5, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {v5}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1400(Lorg/jctools/maps/NonBlockingHashMapLong;)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    cmp-long v3, v3, v6

    if-gtz v3, :cond_4

    shl-int/lit8 v2, v0, 0x1

    :cond_4
    if-ge v2, v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    const/4 v2, 0x4

    :goto_2
    const/4 v6, 0x1

    shl-int v3, v6, v2

    if-ge v3, v0, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const-wide/16 v7, 0x1

    shl-long v3, v7, v2

    shl-long/2addr v3, v6

    const-wide/16 v9, 0x2

    add-long/2addr v3, v9

    long-to-int v0, v3

    int-to-long v11, v0

    cmp-long v0, v11, v3

    if-eqz v0, :cond_8

    int-to-long v0, v1

    const-wide/32 v2, 0x30000001

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    const/16 v2, 0x1e

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Table is full."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    move v11, v2

    iget-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_resizers:J

    move-wide v12, v0

    :goto_4
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    add-long v4, v12, v7

    move-object v1, p0

    move-wide v2, v12

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-nez v0, :cond_9

    iget-wide v12, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_resizers:J

    goto :goto_4

    :cond_9
    shl-long v0, v7, v11

    shl-long/2addr v0, v6

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, 0x14

    shr-long/2addr v0, v2

    cmp-long v2, v12, v9

    if-ltz v2, :cond_b

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-eqz v2, :cond_a

    return-object v2

    :cond_a
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_b
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_nbhml:Lorg/jctools/maps/NonBlockingHashMapLong;

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v0, v1, v2, v11}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;Lorg/jctools/maps/ConcurrentAutoTable;I)V

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-eqz v1, :cond_d

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    return-object v0

    :cond_d
    invoke-virtual {p0, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->CAS_newchm(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    :goto_5
    return-object v0
.end method

.method private final tableFull(II)Z
    .locals 4

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    invoke-static {p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$900(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable;->estimate_get()J

    move-result-wide p0

    shr-int/2addr p2, v1

    int-to-long v2, p2

    cmp-long p0, p0, v2

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public CAS_newchm(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;)Z
    .locals 2

    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchmUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 2

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public slots()I
    .locals 2

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method
