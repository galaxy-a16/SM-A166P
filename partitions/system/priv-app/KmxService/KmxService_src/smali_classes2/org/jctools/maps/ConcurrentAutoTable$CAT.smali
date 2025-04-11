.class Lorg/jctools/maps/ConcurrentAutoTable$CAT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/ConcurrentAutoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CAT"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_SPIN:I = 0x1

.field private static final _Lbase:I

.field private static final _Lscale:I


# instance fields
.field private volatile _fuzzy_sum_cache:J

.field private volatile _fuzzy_time:J

.field private final _next:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

.field private final _t:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [J

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_Lbase:I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_Lscale:I

    return-void
.end method

.method public constructor <init>(Lorg/jctools/maps/ConcurrentAutoTable$CAT;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_next:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    new-array p1, p2, [J

    iput-object p1, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    const/4 p0, 0x0

    aput-wide p3, p1, p0

    return-void
.end method

.method private static CAS([JIJJ)Z
    .locals 8

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-static {p0, p1}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->rawIndex([JI)J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lorg/jctools/maps/ConcurrentAutoTable$CAT;)[J
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    return-object p0
.end method

.method private static rawIndex([JI)J
    .locals 1

    sget p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_Lbase:I

    sget v0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_Lscale:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0
.end method


# virtual methods
.method public add_if(JILorg/jctools/maps/ConcurrentAutoTable;)J
    .locals 11

    iget-object v6, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    array-length v0, v6

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    and-int/2addr p3, v0

    aget-wide v8, v6, p3

    add-long v4, v8, p1

    move-object v0, v6

    move v1, p3

    move-wide v2, v8

    invoke-static/range {v0 .. v5}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->CAS([JIJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8

    :cond_0
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    aget-wide v9, v6, p3

    add-long v4, v9, p1

    move-object v0, v6

    move v1, p3

    move-wide v2, v9

    invoke-static/range {v0 .. v5}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->CAS([JIJJ)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ge v8, v7, :cond_1

    return-wide v9

    :cond_1
    array-length p1, v6

    const/high16 p2, 0x100000

    if-lt p1, p2, :cond_2

    return-wide v9

    :cond_2
    invoke-static {p4}, Lorg/jctools/maps/ConcurrentAutoTable;->access$100(Lorg/jctools/maps/ConcurrentAutoTable;)Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    move-result-object p1

    if-eq p1, p0, :cond_3

    return-wide v9

    :cond_3
    new-instance p1, Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    array-length p2, v6

    mul-int/lit8 p2, p2, 0x2

    const-wide/16 v0, 0x0

    invoke-direct {p1, p0, p2, v0, v1}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;-><init>(Lorg/jctools/maps/ConcurrentAutoTable$CAT;IJ)V

    :goto_1
    invoke-static {p4}, Lorg/jctools/maps/ConcurrentAutoTable;->access$100(Lorg/jctools/maps/ConcurrentAutoTable;)Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    move-result-object p2

    if-ne p2, p0, :cond_4

    invoke-static {p4, p0, p1}, Lorg/jctools/maps/ConcurrentAutoTable;->access$200(Lorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/ConcurrentAutoTable$CAT;Lorg/jctools/maps/ConcurrentAutoTable$CAT;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    return-wide v9

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public estimate_sum()J
    .locals 4

    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_fuzzy_time:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_fuzzy_sum_cache:J

    iput-wide v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_fuzzy_time:J

    :cond_1
    iget-wide v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_fuzzy_sum_cache:J

    return-wide v0
.end method

.method public print()V
    .locals 6

    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_next:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->print()V

    :cond_1
    return-void
.end method

.method public sum()J
    .locals 6

    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_next:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    :goto_0
    iget-object p0, p0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->_t:[J

    array-length v2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-wide v4, p0, v3

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
