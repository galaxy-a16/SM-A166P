.class public Lorg/jctools/maps/NonBlockingIdentityHashMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;,
        Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;,
        Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;,
        Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;,
        Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;,
        Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeK:",
        "Ljava/lang/Object;",
        "TypeV:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TTypeK;TTypeV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TTypeK;TTypeV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MATCH_ANY:Ljava/lang/Object;

.field private static final MIN_SIZE:I = 0x8

.field private static final MIN_SIZE_LOG:I = 0x3

.field private static final NO_MATCH_OLD:Ljava/lang/Object;

.field private static final REPROBE_LIMIT:I = 0xa

.field private static final TOMBPRIME:Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

.field private static final TOMBSTONE:Ljava/lang/Object;

.field private static final _Obase:I

.field private static final _Oscale:I

.field private static final _kvs_offset:J

.field private static final serialVersionUID:J = 0x11207cb4719799cbL


# instance fields
.field private transient _kvs:[Ljava/lang/Object;

.field private transient _last_resize_milli:J

.field private transient _reprobes:Lorg/jctools/maps/ConcurrentAutoTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_Obase:I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_Oscale:I

    const-class v0, Lorg/jctools/maps/NonBlockingHashMap;

    const-string v1, "_kvs"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs_offset:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->MATCH_ANY:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    new-instance v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    invoke-direct {v1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBPRIME:Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v0}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_reprobes:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->initialize(I)V

    return-void
.end method

.method private static final CAS_key([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->rawIndex([Ljava/lang/Object;I)J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final CAS_kvs([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs_offset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final CAS_val([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x3

    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->rawIndex([Ljava/lang/Object;I)J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->help_copy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/jctools/maps/NonBlockingIdentityHashMap;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_kvs([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$1500([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_key([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1600([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1700()Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;
    .locals 1

    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBPRIME:Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    return-object v0
.end method

.method public static synthetic access$1800([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_val([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(I)I
    .locals 0

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->reprobe_limit(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    .locals 0

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800([Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->len([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lorg/jctools/maps/NonBlockingIdentityHashMap;)J
    .locals 2

    iget-wide v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_last_resize_milli:J

    return-wide v0
.end method

.method public static synthetic access$902(Lorg/jctools/maps/NonBlockingIdentityHashMap;J)J
    .locals 0

    iput-wide p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_last_resize_milli:J

    return-wide p1
.end method

.method private static final chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    return-object p0
.end method

.method private static final get_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v0, v3

    const/4 v4, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v5, :cond_0

    return-object v7

    :cond_0
    iget-object v8, v2, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-ne v5, p2, :cond_3

    instance-of v1, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-nez v1, :cond_2

    sget-object p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v6, p0, :cond_1

    move-object v6, v7

    :cond_1
    return-object v6

    :cond_2
    invoke-static {v2, p0, p1, v0, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$000(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    invoke-static {v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->reprobe_limit(I)I

    move-result v5

    if-ge v4, v5, :cond_5

    sget-object v5, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne p2, v5, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v3

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0, v8}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->help_copy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_2
    return-object v7
.end method

.method private static final hash(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final hashes([Ljava/lang/Object;)[I
    .locals 1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    check-cast p0, [I

    return-object p0
.end method

.method private final help_copy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v1

    iget-object v2, v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$500(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Z)V

    return-object p1
.end method

.method private final initialize(I)V
    .locals 4

    .line 2
    const-string v0, "initial_sz"

    invoke-static {p1, v0}, Lorg/jctools/util/RangeUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    const/high16 v0, 0x100000

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x1

    shl-int v2, v1, v0

    shl-int/lit8 v3, p1, 0x2

    if-ge v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    new-instance v3, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v3}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    invoke-direct {v0, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;-><init>(Lorg/jctools/maps/ConcurrentAutoTable;)V

    const/4 v3, 0x0

    aput-object v0, p1, v3

    iget-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    new-array v0, v2, [I

    aput-object v0, p1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_last_resize_milli:J

    return-void
.end method

.method private static final key([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x2

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static final len([Ljava/lang/Object;)I
    .locals 0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x2

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final print([Ljava/lang/Object;)V
    .locals 7

    .line 2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const-string v1, "XXX"

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    if-ne v3, v4, :cond_1

    move-object v3, v5

    goto :goto_2

    :cond_1
    const-string v3, "prime_"

    :goto_2
    if-ne v4, v2, :cond_2

    const-string v2, "tombstone"

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object p1

    iget-object p1, p1, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-eqz p1, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->print([Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private final print2([Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;->unbox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_1

    sget-object v4, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    if-eqz v2, :cond_1

    if-eq v3, v4, :cond_1

    const-string v4, ""

    if-ne v2, v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    const-string v3, "prime_"

    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object p1

    iget-object p1, p1, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-eqz p1, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->print2([Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private final putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TTypeV;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {p0, v1, p1, p2, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    throw v0
.end method

.method private static final putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 2
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->len([Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    :goto_0
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    const-wide/16 v9, 0x1

    if-nez v8, :cond_2

    sget-object v8, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne p3, v8, :cond_0

    return-object p3

    :cond_0
    invoke-static {p1, v0, v4, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_key([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$100(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->key([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    :cond_2
    iget-object v6, v2, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-ne v8, p2, :cond_11

    :goto_1
    if-ne p3, v7, :cond_3

    return-object v7

    :cond_3
    if-nez v6, :cond_6

    if-nez v7, :cond_4

    invoke-static {v2, v5, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$300(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;II)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    instance-of v1, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {v2, p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$200(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    :cond_6
    if-eqz v6, :cond_7

    invoke-static {v2, p0, p1, v0, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$000(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    if-eq p4, v1, :cond_b

    if-eq v7, p4, :cond_b

    sget-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->MATCH_ANY:Ljava/lang/Object;

    if-ne p4, v1, :cond_8

    sget-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v7, v1, :cond_8

    if-nez v7, :cond_b

    :cond_8
    if-nez v7, :cond_9

    sget-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq p4, v1, :cond_b

    :cond_9
    if-eqz p4, :cond_a

    invoke-virtual {p4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    return-object v7

    :cond_b
    invoke-static {p1, v0, v7, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_val([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p4, :cond_f

    if-eqz v7, :cond_c

    sget-object p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v7, p0, :cond_d

    :cond_c
    sget-object p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq p3, p0, :cond_d

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$400(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;

    move-result-object p0

    invoke-virtual {p0, v9, v10}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    :cond_d
    if-eqz v7, :cond_f

    sget-object p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v7, p0, :cond_f

    if-ne p3, p0, :cond_f

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$400(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;

    move-result-object p0

    const-wide/16 p1, -0x1

    invoke-virtual {p0, p1, p2}, Lorg/jctools/maps/ConcurrentAutoTable;->add(J)V

    goto :goto_2

    :cond_e
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->val([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    instance-of v1, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    if-eqz v1, :cond_f

    invoke-static {v2, p0, p1, v0, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$000(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_2
    if-nez v7, :cond_10

    if-eqz p4, :cond_10

    sget-object v7, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    :cond_10
    return-object v7

    :cond_11
    add-int/lit8 v5, v5, 0x1

    invoke-static {v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->reprobe_limit(I)I

    move-result v7

    if-ge v5, v7, :cond_13

    sget-object v7, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne p2, v7, :cond_12

    goto :goto_3

    :cond_12
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v3

    goto/16 :goto_0

    :cond_13
    :goto_3
    invoke-static {v2, p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$200(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p4, :cond_14

    invoke-direct {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->help_copy([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_14
    invoke-static {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static rawIndex([Ljava/lang/Object;I)J
    .locals 1

    sget p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_Obase:I

    sget v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_Oscale:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->initialize(I)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static final reprobe_limit(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private static final val([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x3

    aget-object p0, p0, p1

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;-><init>(I)V

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->CAS_kvs([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->clear()V

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
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

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TTypeK;TTypeV;>;>;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$3;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$3;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTypeV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final initialize()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->initialize(I)V

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TTypeK;>;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TTypeK;>;"
        }
    .end annotation

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method

.method public final print()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "========="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->print2([Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)TTypeV;"
        }
    .end annotation

    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TTypeK;+TTypeV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)TTypeV;"
        }
    .end annotation

    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public rehash()V
    .locals 0

    return-void
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

    .line 1
    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    sget-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;->NO_MATCH_OLD:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 2
    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->TOMBSTONE:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)TTypeV;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->MATCH_ANY:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;TTypeV;)Z"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->putIfMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reprobes()J
    .locals 3

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_reprobes:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    new-instance v2, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v2}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object v2, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_reprobes:Lorg/jctools/maps/ConcurrentAutoTable;

    return-wide v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap;->_kvs:[Ljava/lang/Object;

    invoke-static {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->chm([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "{}"

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "(this Map)"

    if-ne v3, p0, :cond_1

    move-object v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v2, p0, :cond_2

    move-object v2, v4

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
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

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$1;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$1;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method
