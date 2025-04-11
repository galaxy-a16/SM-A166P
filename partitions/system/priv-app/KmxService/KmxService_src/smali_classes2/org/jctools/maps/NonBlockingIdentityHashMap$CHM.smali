.class final Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CHM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeK:",
        "Ljava/lang/Object;",
        "TypeV:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final _copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile _copyDone:J

.field volatile _copyIdx:J

.field volatile _newkvs:[Ljava/lang/Object;

.field private final _newkvsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile _resizers:J

.field private final _size:Lorg/jctools/maps/ConcurrentAutoTable;

.field private final _slots:Lorg/jctools/maps/ConcurrentAutoTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "_resizers"

    const-class v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_copyIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_copyDone"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lorg/jctools/maps/ConcurrentAutoTable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, [Ljava/lang/Object;

    const-string v1, "_newkvs"

    const-class v2, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyIdx:J

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDone:J

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    new-instance p1, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {p1}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    return-void
.end method

.method public static synthetic access$000(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_slot_and_check(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->resize(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->tableFull(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;
    .locals 0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->help_copy_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Z)V

    return-void
.end method

.method private final copy_check_and_promote(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;I)V
    .locals 9

    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$800([Ljava/lang/Object;)I

    move-result v0

    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDone:J

    if-lez p3, :cond_0

    :goto_0
    sget-object v3, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v4, p3

    add-long v7, v1, v4

    move-object v4, p0

    move-wide v5, v1

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDone:J

    goto :goto_0

    :cond_0
    int-to-long v3, p3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long p3, v1, v3

    if-nez p3, :cond_1

    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1100(Lorg/jctools/maps/NonBlockingIdentityHashMap;)[Ljava/lang/Object;

    move-result-object p3

    if-ne p3, p2, :cond_1

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    invoke-static {p1, p2, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1200(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$902(Lorg/jctools/maps/NonBlockingIdentityHashMap;J)J

    :cond_1
    return-void
.end method

.method private copy_slot(Lorg/jctools/maps/NonBlockingIdentityHashMap;I[Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    :goto_0
    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1300([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1400()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3, p2, v0, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1500([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1600([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    const/4 v3, 0x1

    if-nez v2, :cond_4

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1400()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    invoke-direct {v2, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1700()Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    move-result-object v2

    :goto_2
    invoke-static {p3, p2, v1, v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1800([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1700()Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    move-result-object v1

    if-ne v2, v1, :cond_3

    return v3

    :cond_3
    move-object v1, v2

    :cond_4
    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1700()Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    move-result-object v2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_5

    return v4

    :cond_5
    move-object v2, v1

    check-cast v2, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    iget-object v2, v2, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;->_V:Ljava/lang/Object;

    invoke-static {p1, p4, p0, v2, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1900(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1700()Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    move-result-object p0

    invoke-static {p3, p2, v1, p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1800([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1600([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_7
    return v3
.end method

.method private final copy_slot_and_check(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    invoke-direct {p0, p1, p3, p2, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_slot(Lorg/jctools/maps/NonBlockingIdentityHashMap;I[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_check_and_promote(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;I)V

    :cond_0
    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1000(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final help_copy_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Z)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v9, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$800([Ljava/lang/Object;)I

    move-result v10

    const/16 v0, 0x400

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, -0x1

    const/16 v0, -0x270f

    move v13, v12

    :goto_0
    iget-wide v1, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDone:J

    int-to-long v3, v10

    cmp-long v1, v1, v3

    if-gez v1, :cond_8

    if-ne v13, v12, :cond_3

    iget-wide v0, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyIdx:J

    long-to-int v0, v0

    move v15, v0

    :goto_1
    shl-int/lit8 v4, v10, 0x1

    if-ge v15, v4, :cond_0

    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v2, v15

    add-int v1, v15, v11

    move/from16 v16, v13

    int-to-long v12, v1

    move-object/from16 v1, p0

    move v14, v4

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyIdx:J

    long-to-int v15, v0

    move/from16 v13, v16

    const/4 v12, -0x1

    goto :goto_1

    :cond_0
    move v14, v4

    move/from16 v16, v13

    :cond_1
    move v0, v15

    if-lt v15, v14, :cond_2

    move v13, v0

    goto :goto_2

    :cond_2
    move/from16 v13, v16

    goto :goto_2

    :cond_3
    move/from16 v16, v13

    :goto_2
    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v11, :cond_5

    add-int v2, v0, v14

    add-int/lit8 v3, v10, -0x1

    and-int/2addr v2, v3

    invoke-direct {v6, v7, v2, v8, v9}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_slot(Lorg/jctools/maps/NonBlockingIdentityHashMap;I[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    if-lez v1, :cond_6

    invoke-direct {v6, v7, v8, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_check_and_promote(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;I)V

    :cond_6
    add-int/2addr v0, v11

    const/4 v1, -0x1

    if-nez p3, :cond_7

    if-ne v13, v1, :cond_7

    return-void

    :cond_7
    move v12, v1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    invoke-direct {v6, v7, v8, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_check_and_promote(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;I)V

    return-void
.end method

.method private final resize(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$800([Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->size()I

    move-result v0

    shr-int/lit8 v1, p2, 0x2

    if-lt v0, v1, :cond_1

    shl-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p2, 0x1

    if-lt v0, v2, :cond_2

    shl-int/lit8 v1, p2, 0x2

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    if-gt v1, p2, :cond_3

    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$900(Lorg/jctools/maps/NonBlockingIdentityHashMap;)J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long v2, v2, v5

    if-gtz v2, :cond_3

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v2}, Lorg/jctools/maps/ConcurrentAutoTable;->estimate_get()J

    move-result-wide v2

    shl-int/2addr v0, v4

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_3

    shl-int/lit8 v1, p2, 0x1

    :cond_3
    if-ge v1, p2, :cond_4

    goto :goto_1

    :cond_4
    move p2, v1

    :goto_1
    const/4 v0, 0x3

    move v1, v0

    :goto_2
    shl-int v2, v4, v1

    if-ge v2, p2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-wide v5, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_resizers:J

    sget-object v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v8, 0x1

    add-long v11, v5, v8

    move-object v8, p0

    move-wide v9, v5

    invoke-virtual/range {v7 .. v12}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    shl-int/lit8 p2, v2, 0x1

    add-int/lit8 v1, p2, 0x4

    shl-int/lit8 v0, v1, 0x3

    shr-int/lit8 v0, v0, 0x14

    const-wide/16 v7, 0x2

    cmp-long v1, v5, v7

    if-ltz v1, :cond_8

    if-lez v0, :cond_8

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    add-int/lit8 p2, p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;-><init>(Lorg/jctools/maps/ConcurrentAutoTable;)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-array v0, v2, [I

    aput-object v0, p2, v4

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    return-object p0

    :cond_a
    invoke-virtual {p0, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->CAS_newkvs([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->rehash()V

    goto :goto_4

    :cond_b
    iget-object p2, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    :goto_4
    return-object p2
.end method

.method private final tableFull(II)Z
    .locals 2

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable;->estimate_get()J

    move-result-wide p0

    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$600(I)I

    move-result p2

    int-to-long v0, p2

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public CAS_newkvs([Ljava/lang/Object;)Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 2

    iget-object p0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {p0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method
