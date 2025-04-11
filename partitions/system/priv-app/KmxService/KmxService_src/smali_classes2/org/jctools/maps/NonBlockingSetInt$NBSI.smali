.class final Lorg/jctools/maps/NonBlockingSetInt$NBSI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingSetInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NBSI"
.end annotation


# static fields
.field private static final _Lbase:I

.field private static final _Lscale:I

.field private static final _new_offset:J


# instance fields
.field private final _bits:[J

.field private final transient _copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final transient _copyIdx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

.field private _new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

.field private final transient _non_blocking_set_int:Lorg/jctools/maps/NonBlockingSetInt;

.field private final transient _size:Lorg/jctools/maps/ConcurrentAutoTable;

.field private final transient _sum_bits_length:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [J

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_Lbase:I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_Lscale:I

    const-class v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    const-string v1, "_new"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new_offset:J

    return-void
.end method

.method private constructor <init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_non_blocking_set_int:Lorg/jctools/maps/NonBlockingSetInt;

    iput-object p2, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p2, :cond_1

    move-object p2, p3

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    :goto_1
    iput-object p2, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    int-to-long v0, p1

    const-wide/16 v2, 0x3f

    add-long/2addr v0, v2

    const/4 p2, 0x6

    ushr-long/2addr v0, p2

    long-to-int v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    add-int/lit8 p1, p1, 0x1

    ushr-int/2addr p1, p2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p2, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-direct {p2, p1, p3, p3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;)V

    move-object p3, p2

    :goto_2
    iput-object p3, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    array-length p1, v0

    if-nez p3, :cond_3

    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    iget p2, p3, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_sum_bits_length:I

    :goto_3
    add-int/2addr p1, p2

    iput p1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_sum_bits_length:I

    return-void
.end method

.method public synthetic constructor <init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;)V

    return-void
.end method

.method private final CAS(IJJ)Z
    .locals 8

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    invoke-static {v1, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->rawIndex([JI)J

    move-result-wide v2

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method private final CAS_new(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z
    .locals 6

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new_offset:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)[J
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    return-object p0
.end method

.method public static synthetic access$200(Lorg/jctools/maps/NonBlockingSetInt$NBSI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->print(I)V

    return-void
.end method

.method public static synthetic access$400(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    return-object p0
.end method

.method private help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .locals 5

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_non_blocking_set_int:Lorg/jctools/maps/NonBlockingSetInt;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingSetInt;->access$300(Lorg/jctools/maps/NonBlockingSetInt;)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v0

    iget-object v1, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x40

    add-int/2addr v3, v1

    iget-object v4, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x6

    rem-int/2addr v3, v4

    invoke-direct {v0, v3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    add-int/lit8 v3, v3, 0x3f

    invoke-direct {v0, v3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_sum_bits_length:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_non_blocking_set_int:Lorg/jctools/maps/NonBlockingSetInt;

    iget-object v2, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-static {v1, v0, v2}, Lorg/jctools/maps/NonBlockingSetInt;->access$500(Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/NonBlockingSetInt$NBSI;Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z

    :cond_1
    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    return-object p0
.end method

.method private help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v9, v0

    move-object v8, v1

    move/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v1, 0x3f

    const/16 v10, 0x3f

    if-ne v2, v10, :cond_1

    iget-object v9, v9, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    iget-object v8, v8, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    shr-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_1
    iget-object v2, v9, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v1, v1, 0x6

    aget-wide v2, v2, v1

    move-wide v4, v2

    :goto_1
    const-wide/16 v11, 0x0

    cmp-long v13, v4, v11

    const/4 v14, 0x1

    if-ltz v13, :cond_3

    invoke-static {v10}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v2

    or-long v15, v4, v2

    move-object v2, v9

    move v3, v1

    move-wide v6, v15

    invoke-direct/range {v2 .. v7}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS(IJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v13, :cond_4

    iget-object v2, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_2

    :cond_2
    iget-object v2, v9, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    aget-wide v4, v2, v1

    goto :goto_1

    :cond_3
    move-wide v15, v4

    :cond_4
    :goto_2
    invoke-static {v10}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v2

    cmp-long v2, v15, v2

    if-eqz v2, :cond_6

    iget-object v2, v8, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, v11

    if-nez v2, :cond_5

    invoke-static {v10}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v2

    not-long v2, v2

    and-long v6, v15, v2

    const-wide/16 v4, 0x0

    move-object v2, v8

    move v3, v1

    invoke-direct/range {v2 .. v7}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS(IJJ)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v8, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    aget-wide v2, v2, v1

    :cond_5
    invoke-static {v10}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v6

    move-object v2, v9

    move v3, v1

    move-wide v4, v15

    invoke-direct/range {v2 .. v7}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS(IJJ)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_6
    return-object v0
.end method

.method private install_larger_new_bits(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .locals 3

    iget-object p1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length p1, p1

    shl-int/lit8 p1, p1, 0x6

    shl-int/lit8 p1, p1, 0x1

    new-instance v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_non_blocking_set_int:Lorg/jctools/maps/NonBlockingSetInt;

    invoke-direct {v0, p1, v1, v2}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;)V

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS_new(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z

    :cond_0
    return-object p0
.end method

.method private static final mask(I)J
    .locals 2

    and-int/lit8 p0, p0, 0x3f

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method private print(I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSI - _bits.len="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    :goto_0
    const-string v2, " "

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->print(ILjava/lang/String;)V

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_2
    iget-object v3, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_copyIdx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " _copyDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_copyDone:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " _words_to_cpy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_sum_bits_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->print(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    if-eqz v0, :cond_5

    const-string v0, "__has_new - "

    invoke-direct {p0, p1, v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->print(ILjava/lang/String;)V

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->print(I)V

    :cond_5
    return-void
.end method

.method private print(ILjava/lang/String;)V
    .locals 2

    .line 2
    const/4 p0, 0x0

    :goto_0
    if-ge p0, p1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static rawIndex([JI)J
    .locals 1

    sget p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_Lbase:I

    sget v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_Lscale:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0
.end method


# virtual methods
.method public add(I)Z
    .locals 12

    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->install_larger_new_bits(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p0

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->add(I)Z

    move-result p0

    return p0

    :cond_0
    move-object v7, p0

    move v0, p1

    :goto_0
    and-int/lit8 v1, v0, 0x3f

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    iget-object v7, v7, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    shr-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v8

    :cond_2
    iget-object v1, v7, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v2, v0, 0x6

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p0

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->add(I)Z

    move-result p0

    return p0

    :cond_3
    and-long v10, v3, v8

    cmp-long v1, v10, v5

    if-eqz v1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    or-long v5, v3, v8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS(IJJ)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public contains(I)Z
    .locals 9

    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    move-object v1, p0

    move v0, p1

    :goto_1
    and-int/lit8 v4, v0, 0x3f

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_2

    iget-object v1, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    shr-int/lit8 v0, v0, 0x6

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v4

    iget-object v1, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v0, v0, 0x6

    aget-wide v0, v1, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-gez v8, :cond_3

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p0

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->contains(I)Z

    move-result p0

    return p0

    :cond_3
    and-long p0, v0, v4

    cmp-long p0, p0, v6

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method public remove(I)Z
    .locals 14

    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_new:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->remove(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    move-object v1, p0

    move v0, p1

    :goto_1
    and-int/lit8 v4, v0, 0x3f

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_2

    iget-object v1, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_nbsi64:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    shr-int/lit8 v0, v0, 0x6

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->mask(I)J

    move-result-wide v10

    :cond_3
    iget-object v4, v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_bits:[J

    shr-int/lit8 v5, v0, 0x6

    aget-wide v6, v4, v5

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_4

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy_impl(I)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p0

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->help_copy()Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->remove(I)Z

    move-result p0

    return p0

    :cond_4
    and-long v12, v6, v10

    cmp-long v4, v12, v8

    if-nez v4, :cond_5

    return v3

    :cond_5
    not-long v8, v10

    and-long/2addr v8, v6

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->CAS(IJJ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    return v2
.end method

.method public size()I
    .locals 2

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method
