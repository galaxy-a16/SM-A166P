.class public final Lkotlinx/serialization/json/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[C

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/serialization/json/internal/c;->a:Lkotlinx/serialization/json/internal/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lkotlinx/serialization/json/internal/c;->b:Lkotlin/collections/k;

    invoke-virtual {v1}, Lkotlin/collections/k;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lkotlin/collections/k;->removeLast()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, [C

    if-eqz v1, :cond_1

    sget v2, Lkotlinx/serialization/json/internal/c;->c:I

    array-length v3, v1

    sub-int/2addr v2, v3

    sput v2, Lkotlinx/serialization/json/internal/c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    :cond_1
    monitor-exit v0

    if-nez v3, :cond_2

    const/16 v0, 0x80

    new-array v3, v0, [C

    :cond_2
    iput-object v3, p0, Lkotlinx/serialization/json/internal/k;->a:[C

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    add-int/2addr p2, p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->a:[C

    array-length v1, v0

    if-gt v1, p2, :cond_1

    mul-int/lit8 p1, p1, 0x2

    if-ge p2, p1, :cond_0

    move p2, p1

    :cond_0
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    const-string p2, "copyOf(this, newSize)"

    invoke-static {p1, p2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/k;->a:[C

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 4

    sget-object v0, Lkotlinx/serialization/json/internal/c;->a:Lkotlinx/serialization/json/internal/c;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/k;->a:[C

    const-string v1, "array"

    invoke-static {p0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    sget v1, Lkotlinx/serialization/json/internal/c;->c:I

    array-length v2, p0

    add-int/2addr v2, v1

    sget v3, Lkotlinx/serialization/json/internal/c;->d:I

    if-ge v2, v3, :cond_0

    array-length v2, p0

    add-int/2addr v1, v2

    sput v1, Lkotlinx/serialization/json/internal/c;->c:I

    sget-object v1, Lkotlinx/serialization/json/internal/c;->b:Lkotlin/collections/k;

    invoke-virtual {v1, p0}, Lkotlin/collections/k;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    const-string v0, "text"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lkotlinx/serialization/json/internal/k;->b:I

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/k;->a(II)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k;->a:[C

    iget v2, p0, Lkotlinx/serialization/json/internal/k;->b:I

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lkotlinx/serialization/json/internal/k;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lkotlinx/serialization/json/internal/k;->b:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k;->a:[C

    const/4 v2, 0x0

    iget p0, p0, Lkotlinx/serialization/json/internal/k;->b:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
