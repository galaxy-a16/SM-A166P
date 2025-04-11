.class public final Lec/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/t;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public final f:Lkc/g;


# direct methods
.method public constructor <init>(Lkc/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec/v;->f:Lkc/g;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final read(Lkc/e;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lec/v;->d:I

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lec/v;->f:Lkc/g;

    if-nez v0, :cond_4

    iget v0, p0, Lec/v;->e:I

    int-to-long v4, v0

    invoke-interface {v3, v4, v5}, Lkc/g;->skip(J)V

    const/4 v0, 0x0

    iput v0, p0, Lec/v;->e:I

    iget v0, p0, Lec/v;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget v0, p0, Lec/v;->c:I

    invoke-static {v3}, Lac/c;->q(Lkc/g;)I

    move-result v1

    iput v1, p0, Lec/v;->d:I

    iput v1, p0, Lec/v;->a:I

    invoke-interface {v3}, Lkc/g;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v3}, Lkc/g;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lec/v;->b:I

    sget-object v2, Lec/w;->f:Lcom/google/gson/internal/d;

    invoke-virtual {v2}, Lcom/google/gson/internal/d;->a()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/google/gson/internal/d;->a()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v4, Lec/f;->a:Lokio/ByteString;

    iget v4, p0, Lec/v;->c:I

    iget v5, p0, Lec/v;->a:I

    iget v6, p0, Lec/v;->b:I

    const/4 v7, 0x1

    invoke-static {v4, v5, v1, v6, v7}, Lec/f;->a(IIIIZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v3}, Lkc/g;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lec/v;->c:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TYPE_CONTINUATION streamId changed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != TYPE_CONTINUATION"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_5

    return-wide v1

    :cond_5
    iget p3, p0, Lec/v;->d:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Lec/v;->d:I

    return-wide p1
.end method

.method public final timeout()Lkc/v;
    .locals 0

    iget-object p0, p0, Lec/v;->f:Lkc/g;

    invoke-interface {p0}, Lkc/t;->timeout()Lkc/v;

    move-result-object p0

    return-object p0
.end method
