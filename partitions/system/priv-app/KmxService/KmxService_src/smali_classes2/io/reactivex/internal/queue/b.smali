.class public final Lio/reactivex/internal/queue/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/f;


# static fields
.field public static final i:I

.field public static final j:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicLong;

.field public b:I

.field public c:J

.field public final d:I

.field public e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final f:I

.field public g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lio/reactivex/internal/queue/b;->i:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/queue/b;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v0, p1

    add-int/lit8 v0, p1, -0x1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v1, p0, Lio/reactivex/internal/queue/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v0, p0, Lio/reactivex/internal/queue/b;->d:I

    div-int/lit8 p1, p1, 0x4

    sget v2, Lio/reactivex/internal/queue/b;->i:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/reactivex/internal/queue/b;->b:I

    iput-object v1, p0, Lio/reactivex/internal/queue/b;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v0, p0, Lio/reactivex/internal/queue/b;->f:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lio/reactivex/internal/queue/b;->c:J

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/queue/b;->b(J)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lio/reactivex/internal/queue/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v1, p0, Lio/reactivex/internal/queue/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    add-long/2addr v3, v1

    long-to-int v5, v3

    iget v6, p0, Lio/reactivex/internal/queue/b;->d:I

    and-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    long-to-int v1, v1

    and-int/2addr v1, v6

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v7, p0, Lio/reactivex/internal/queue/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    long-to-int v1, v1

    and-int/2addr v1, v6

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v7, v2, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {v7, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    sget-object p1, Lio/reactivex/internal/queue/b;->j:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lio/reactivex/internal/queue/b;->b(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public final b(J)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/queue/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method public final c(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V
    .locals 0

    invoke-virtual {p1, p5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    const-wide/16 p1, 0x1

    add-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lio/reactivex/internal/queue/b;->b(J)V

    return-void
.end method

.method public final clear()V
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/queue/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final isEmpty()Z
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/queue/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object p0, p0, Lio/reactivex/internal/queue/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 13

    if-eqz p1, :cond_3

    iget-object v1, p0, Lio/reactivex/internal/queue/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v0, p0, Lio/reactivex/internal/queue/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    long-to-int v0, v3

    iget v2, p0, Lio/reactivex/internal/queue/b;->d:I

    and-int v5, v2, v0

    iget-wide v6, p0, Lio/reactivex/internal/queue/b;->c:J

    cmp-long v0, v3, v6

    const/4 v6, 0x1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/reactivex/internal/queue/b;->b:I

    int-to-long v7, v0

    add-long/2addr v7, v3

    long-to-int v0, v7

    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v9, 0x1

    if-nez v0, :cond_1

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lio/reactivex/internal/queue/b;->c:J

    goto :goto_0

    :cond_1
    add-long v7, v3, v9

    long-to-int v0, v7

    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/queue/b;->c(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)V

    return v6

    :cond_2
    int-to-long v11, v2

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v2, p0, Lio/reactivex/internal/queue/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-long/2addr v11, v3

    sub-long/2addr v11, v9

    iput-wide v11, p0, Lio/reactivex/internal/queue/b;->c:J

    invoke-virtual {v2, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    sget-object p1, Lio/reactivex/internal/queue/b;->j:Ljava/lang/Object;

    invoke-virtual {v1, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {p0, v7, v8}, Lio/reactivex/internal/queue/b;->b(J)V

    return v6

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null is not a valid element"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lio/reactivex/internal/queue/b;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v1, p0, Lio/reactivex/internal/queue/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, Lio/reactivex/internal/queue/b;->f:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lio/reactivex/internal/queue/b;->j:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    iput-object v3, p0, Lio/reactivex/internal/queue/b;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v3
.end method

.method public final poll()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lio/reactivex/internal/queue/b;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v1, p0, Lio/reactivex/internal/queue/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-int v4, v2

    iget v5, p0, Lio/reactivex/internal/queue/b;->f:I

    and-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lio/reactivex/internal/queue/b;->j:Ljava/lang/Object;

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v9, 0x0

    const-wide/16 v10, 0x1

    if-eqz v6, :cond_1

    if-nez v7, :cond_1

    invoke-virtual {v0, v4, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    add-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-object v6

    :cond_1
    if-eqz v7, :cond_3

    add-int/2addr v5, v8

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v5, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    iput-object v6, p0, Lio/reactivex/internal/queue/b;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v6, v4, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    add-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    :cond_2
    return-object p0

    :cond_3
    return-object v9
.end method
