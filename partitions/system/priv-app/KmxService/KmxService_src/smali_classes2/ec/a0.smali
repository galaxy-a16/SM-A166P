.class public final Lec/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lkc/e;

.field public b:I

.field public c:Z

.field public final d:Lec/d;

.field public final e:Lkc/f;

.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lec/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lec/a0;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lkc/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec/a0;->e:Lkc/f;

    iput-boolean p2, p0, Lec/a0;->f:Z

    new-instance p1, Lkc/e;

    invoke-direct {p1}, Lkc/e;-><init>()V

    iput-object p1, p0, Lec/a0;->a:Lkc/e;

    const/16 p2, 0x4000

    iput p2, p0, Lec/a0;->b:I

    new-instance p2, Lec/d;

    invoke-direct {p2, p1}, Lec/d;-><init>(Lkc/e;)V

    iput-object p2, p0, Lec/a0;->d:Lec/d;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lec/e0;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "peerSettings"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lec/a0;->c:Z

    if-nez v0, :cond_7

    iget v0, p0, Lec/a0;->b:I

    iget v1, p1, Lec/e0;->a:I

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    iget-object v0, p1, Lec/e0;->b:[I

    const/4 v2, 0x5

    aget v0, v0, v2

    :cond_0
    iput v0, p0, Lec/a0;->b:I

    and-int/lit8 v0, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lec/e0;->b:[I

    aget v0, v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lec/a0;->d:Lec/d;

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object p1, p1, Lec/e0;->b:[I

    aget p1, p1, v2

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x4000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, v0, Lec/d;->c:I

    if-ne v1, p1, :cond_3

    goto :goto_2

    :cond_3
    if-ge p1, v1, :cond_4

    iget v1, v0, Lec/d;->a:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lec/d;->a:I

    :cond_4
    iput-boolean v2, v0, Lec/d;->b:Z

    iput p1, v0, Lec/d;->c:I

    iget v1, v0, Lec/d;->g:I

    if-ge p1, v1, :cond_6

    if-nez p1, :cond_5

    iget-object p1, v0, Lec/d;->d:[Lec/b;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lkotlin/collections/l;->j0([Ljava/lang/Object;Lkotlinx/coroutines/internal/z;)V

    iget-object p1, v0, Lec/d;->d:[Lec/b;

    array-length p1, p1

    add-int/2addr p1, v3

    iput p1, v0, Lec/d;->e:I

    iput v4, v0, Lec/d;->f:I

    iput v4, v0, Lec/d;->g:I

    goto :goto_2

    :cond_5
    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lec/d;->a(I)V

    :cond_6
    :goto_2
    const/4 p1, 0x4

    invoke-virtual {p0, v4, v4, p1, v2}, Lec/a0;->d(IIII)V

    iget-object p1, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {p1}, Lkc/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(ZILkc/e;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lec/a0;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p4, v0, p1}, Lec/a0;->d(IIII)V

    if-lez p4, :cond_1

    if-eqz p3, :cond_0

    int-to-long p1, p4

    iget-object p4, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {p4, p3, p1, p2}, Lkc/r;->f0(Lkc/e;J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Li4/f;->M()V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lec/a0;->c:Z

    iget-object v0, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {v0}, Lkc/r;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(IIII)V
    .locals 5

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sget-object v1, Lec/a0;->g:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, v2}, Lec/f;->a(IIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lec/a0;->b:I

    const/4 v1, 0x1

    if-gt p2, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    const-wide v3, 0x80000000L

    long-to-int v0, v3

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    sget-object v0, Lac/c;->a:[B

    iget-object p0, p0, Lec/a0;->e:Lkc/f;

    const-string v0, "$this$writeMedium"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    ushr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lkc/f;->writeByte(I)Lkc/f;

    ushr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lkc/f;->writeByte(I)Lkc/f;

    and-int/lit16 p2, p2, 0xff

    invoke-interface {p0, p2}, Lkc/f;->writeByte(I)Lkc/f;

    and-int/lit16 p2, p3, 0xff

    invoke-interface {p0, p2}, Lkc/f;->writeByte(I)Lkc/f;

    and-int/lit16 p2, p4, 0xff

    invoke-interface {p0, p2}, Lkc/f;->writeByte(I)Lkc/f;

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    invoke-interface {p0, p1}, Lkc/f;->writeInt(I)Lkc/f;

    return-void

    :cond_3
    const-string p0, "reserved bit set: "

    invoke-static {p0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "FRAME_SIZE_ERROR length > "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lec/a0;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized i(ILokhttp3/internal/http2/ErrorCode;[B)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lec/a0;->c:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v2, 0x7

    invoke-virtual {p0, v3, v0, v2, v3}, Lec/a0;->d(IIII)V

    iget-object v0, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {v0, p1}, Lkc/f;->writeInt(I)Lkc/f;

    iget-object p1, p0, Lec/a0;->e:Lkc/f;

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result p2

    invoke-interface {p1, p2}, Lkc/f;->writeInt(I)Lkc/f;

    array-length p1, p3

    if-nez p1, :cond_1

    move v3, v1

    :cond_1
    xor-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {p1, p3}, Lkc/f;->write([B)Lkc/f;

    :cond_2
    iget-object p1, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {p1}, Lkc/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized t(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lec/a0;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2, p3}, Lec/a0;->d(IIII)V

    iget-object p3, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {p3, p1}, Lkc/f;->writeInt(I)Lkc/f;

    iget-object p1, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {p1, p2}, Lkc/f;->writeInt(I)Lkc/f;

    iget-object p1, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {p1}, Lkc/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized x(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lec/a0;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1, v2}, Lec/a0;->d(IIII)V

    iget-object p1, p0, Lec/a0;->e:Lkc/f;

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result p2

    invoke-interface {p1, p2}, Lkc/f;->writeInt(I)Lkc/f;

    iget-object p1, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {p1}, Lkc/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "Failed requirement."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized y(IJ)V
    .locals 5

    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lec/a0;->c:Z

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, p2, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1, v2}, Lec/a0;->d(IIII)V

    iget-object p1, p0, Lec/a0;->e:Lkc/f;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lkc/f;->writeInt(I)Lkc/f;

    iget-object p1, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {p1}, Lkc/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final z(IJ)V
    .locals 5

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    iget v2, p0, Lec/a0;->b:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr p2, v2

    long-to-int v4, v2

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    invoke-virtual {p0, p1, v4, v1, v0}, Lec/a0;->d(IIII)V

    iget-object v0, p0, Lec/a0;->e:Lkc/f;

    iget-object v1, p0, Lec/a0;->a:Lkc/e;

    invoke-interface {v0, v1, v2, v3}, Lkc/r;->f0(Lkc/e;J)V

    goto :goto_0

    :cond_1
    return-void
.end method
