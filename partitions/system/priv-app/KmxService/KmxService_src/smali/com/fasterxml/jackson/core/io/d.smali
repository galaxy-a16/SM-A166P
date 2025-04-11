.class public final Lcom/fasterxml/jackson/core/io/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/core/io/ContentReference;

.field public final b:Ljava/lang/Object;

.field public c:Lcom/fasterxml/jackson/core/JsonEncoding;

.field public final d:Z

.field public final e:Lcom/fasterxml/jackson/core/util/a;

.field public f:[B

.field public g:[B

.field public h:[B

.field public i:[C

.field public j:[C

.field public k:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/a;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/d;->a:Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/io/ContentReference;->getRawContent()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/io/d;->d:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to call same allocXxx() method second time"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->h:[B

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->h:[B

    return-object v0
.end method

.method public final c(I)[C
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->k:[C

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->b(II)[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->k:[C

    return-object p1
.end method

.method public final d([B)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->h:[B

    if-eq p1, v0, :cond_1

    array-length v1, p1

    array-length v0, v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to release buffer smaller than original"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->h:[B

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final e([B)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->f:[B

    if-eq p1, v0, :cond_1

    array-length v1, p1

    array-length v0, v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to release buffer smaller than original"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->f:[B

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method
