.class public Lorg/jctools/maps/NonBlockingHashMapLong;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;,
        Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;,
        Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;,
        Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;,
        Lorg/jctools/maps/NonBlockingHashMapLong$CHM;,
        Lorg/jctools/maps/NonBlockingHashMapLong$Prime;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeV:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "Ljava/lang/Long;",
        "TTypeV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "Ljava/lang/Long;",
        "TTypeV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MATCH_ANY:Ljava/lang/Object;

.field private static final MIN_SIZE:I = 0x10

.field private static final MIN_SIZE_LOG:I = 0x4

.field private static final NO_KEY:J = 0x0L

.field private static final NO_MATCH_OLD:Ljava/lang/Object;

.field private static final REPROBE_LIMIT:I = 0xa

.field private static final TOMBPRIME:Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

.field private static final TOMBSTONE:Ljava/lang/Object;

.field private static final _Lbase:I

.field private static final _Lscale:I

.field private static final _Obase:I

.field private static final _Oscale:I

.field private static final _chm_offset:J

.field private static final _val_1_offset:J

.field private static final serialVersionUID:J = 0x11207cb4719799ccL


# instance fields
.field private transient _chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

.field private transient _last_resize_milli:J

.field private final _opt_for_space:Z

.field private transient _val_1:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lorg/jctools/maps/NonBlockingHashMapLong;->_Obase:I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Lorg/jctools/maps/NonBlockingHashMapLong;->_Oscale:I

    const-class v1, [J

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lorg/jctools/maps/NonBlockingHashMapLong;->_Lbase:I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lorg/jctools/maps/NonBlockingHashMapLong;->_Lscale:I

    const-string v0, "_chm"

    const-class v1, Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-static {v1, v0}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm_offset:J

    const-string v0, "_val_1"

    invoke-static {v1, v0}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1_offset:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->NO_MATCH_OLD:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->MATCH_ANY:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    new-instance v1, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    invoke-direct {v1, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBPRIME:Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-boolean p2, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_opt_for_space:Z

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->initialize(I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 4
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;-><init>(IZ)V

    return-void
.end method

.method private final CAS(JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->MATCH_ANY:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$1100(Lorg/jctools/maps/NonBlockingHashMapLong;)V
    .locals 0

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->help_copy()V

    return-void
.end method

.method public static synthetic access$1200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->NO_MATCH_OLD:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$1300(Lorg/jctools/maps/NonBlockingHashMapLong;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_opt_for_space:Z

    return p0
.end method

.method public static synthetic access$1400(Lorg/jctools/maps/NonBlockingHashMapLong;)J
    .locals 2

    iget-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_last_resize_milli:J

    return-wide v0
.end method

.method public static synthetic access$1402(Lorg/jctools/maps/NonBlockingHashMapLong;J)J
    .locals 0

    iput-wide p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_last_resize_milli:J

    return-wide p1
.end method

.method public static synthetic access$1500(Lorg/jctools/maps/NonBlockingHashMapLong;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    return-object p0
.end method

.method public static synthetic access$1600()J
    .locals 2

    sget-wide v0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm_offset:J

    return-wide v0
.end method

.method public static synthetic access$1700(Lorg/jctools/maps/NonBlockingHashMapLong;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingHashMapLong;->CAS(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1800()Lorg/jctools/maps/NonBlockingHashMapLong$Prime;
    .locals 1

    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBPRIME:Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    return-object v0
.end method

.method public static synthetic access$400([JI)J
    .locals 0

    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->rawIndex([JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$500([Ljava/lang/Object;I)J
    .locals 0

    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->rawIndex([Ljava/lang/Object;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$600(IJLjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->print_impl(IJLjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$700(IJLjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->print2_impl(IJLjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$800()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$900(I)I
    .locals 0

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->reprobe_limit(I)I

    move-result p0

    return p0
.end method

.method private help_copy()V
    .locals 1

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$300(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;Z)V

    return-void
.end method

.method private initialize(I)V
    .locals 2

    const-string v0, "initial_sz"

    invoke-static {p1, v0}, Lorg/jctools/util/RangeUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-ge v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    new-instance v1, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v1}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    invoke-direct {p1, p0, v1, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;Lorg/jctools/maps/ConcurrentAutoTable;I)V

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    sget-object p1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_last_resize_milli:J

    return-void
.end method

.method private print2()V
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "========="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    const/16 v4, -0x63

    invoke-static {v4, v2, v3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->print2_impl(IJLjava/lang/Object;)V

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$000(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static print2_impl(IJLjava/lang/Object;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->print_impl(IJLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static print_impl(IJLjava/lang/Object;)V
    .locals 4

    instance-of v0, p3, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;

    if-eqz v0, :cond_0

    const-string v0, "prime_"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {p3}, Lorg/jctools/maps/NonBlockingHashMapLong$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne p3, v1, :cond_1

    const-string p3, "tombstone"

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]=("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TTypeV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    iget-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    sget-object p2, Lorg/jctools/maps/NonBlockingHashMapLong;->NO_MATCH_OLD:Ljava/lang/Object;

    if-eq p4, p2, :cond_1

    if-eq p1, p4, :cond_1

    sget-object p2, Lorg/jctools/maps/NonBlockingHashMapLong;->MATCH_ANY:Ljava/lang/Object;

    if-ne p4, p2, :cond_0

    sget-object p2, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    sget-wide v1, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1_offset:J

    invoke-direct {p0, v1, v2, p1, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->CAS(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    :cond_2
    sget-object p0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne p1, p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    return-object v0

    :cond_4
    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$100(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p0

    :goto_1
    return-object v0

    :cond_6
    throw v0
.end method

.method private static rawIndex([JI)J
    .locals 4

    .line 1
    sget p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_Lbase:I

    int-to-long v0, p0

    int-to-long p0, p1

    sget v2, Lorg/jctools/maps/NonBlockingHashMapLong;->_Lscale:I

    int-to-long v2, v2

    mul-long/2addr p0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method private static rawIndex([Ljava/lang/Object;I)J
    .locals 4

    .line 2
    sget p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_Obase:I

    int-to-long v0, p0

    int-to-long p0, p1

    sget v2, Lorg/jctools/maps/NonBlockingHashMapLong;->_Oscale:I

    int-to-long v2, v2

    mul-long/2addr p0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->initialize(I)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/jctools/maps/NonBlockingHashMapLong;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static reprobe_limit(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/jctools/maps/NonBlockingHashMapLong;->get(J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v1, v2}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    new-instance v1, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v1}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;Lorg/jctools/maps/ConcurrentAutoTable;I)V

    :goto_0
    sget-wide v1, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm_offset:J

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->CAS(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-wide v0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1_offset:J

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    sget-object v3, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jctools/maps/NonBlockingHashMapLong;->CAS(JLjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsKey(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->get(J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->containsKey(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TTypeV;>;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TTypeV;>;>;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$3;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$3;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method

.method public final get(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTypeV;"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    sget-object p1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$200(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTypeV;"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->get(J)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$2;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$2;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method

.method public keySetLong()[J
    .locals 6

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->size()I

    move-result v0

    new-array v1, v0, [J

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;->nextLong()J

    move-result-wide v4

    aput-wide v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method

.method public final print()V
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "========="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    const/16 v4, -0x63

    invoke-static {v4, v2, v3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->print_impl(IJLjava/lang/Object;)V

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$000(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTTypeV;)TTypeV;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->NO_MATCH_OLD:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TTypeV;)TTypeV;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->put(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTTypeV;)TTypeV;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putIfAbsent(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TTypeV;)TTypeV;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfAbsent(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTypeV;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->NO_MATCH_OLD:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTypeV;"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->remove(J)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public remove(JLjava/lang/Object;)Z
    .locals 1

    .line 3
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->remove(JLjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public replace(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTTypeV;)TTypeV;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMapLong;->MATCH_ANY:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TTypeV;)TTypeV;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->replace(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMapLong;->replace(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public replace(JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTTypeV;TTypeV;)Z"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p4, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->putIfMatch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public replace(Ljava/lang/Long;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TTypeV;TTypeV;)Z"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->replace(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMapLong;->replace(Ljava/lang/Long;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_val_1:Ljava/lang/Object;

    sget-object v1, Lorg/jctools/maps/NonBlockingHashMapLong;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lorg/jctools/maps/NonBlockingHashMapLong;->_chm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TTypeV;>;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$1;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingHashMapLong$1;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method
