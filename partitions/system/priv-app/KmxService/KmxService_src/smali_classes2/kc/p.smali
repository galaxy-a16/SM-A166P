.class public final Lkc/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Lkc/p;

.field public g:Lkc/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lkc/p;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkc/p;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkc/p;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1

    .line 2
    const-string v0, "data"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/p;->a:[B

    iput p2, p0, Lkc/p;->b:I

    iput p3, p0, Lkc/p;->c:I

    iput-boolean p4, p0, Lkc/p;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkc/p;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lkc/p;
    .locals 4

    iget-object v0, p0, Lkc/p;->f:Lkc/p;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lkc/p;->g:Lkc/p;

    if-eqz v3, :cond_2

    iput-object v0, v3, Lkc/p;->f:Lkc/p;

    iget-object v0, p0, Lkc/p;->f:Lkc/p;

    if-eqz v0, :cond_1

    iput-object v3, v0, Lkc/p;->g:Lkc/p;

    iput-object v1, p0, Lkc/p;->f:Lkc/p;

    iput-object v1, p0, Lkc/p;->g:Lkc/p;

    return-object v2

    :cond_1
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_2
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method

.method public final b(Lkc/p;)V
    .locals 1

    iput-object p0, p1, Lkc/p;->g:Lkc/p;

    iget-object v0, p0, Lkc/p;->f:Lkc/p;

    iput-object v0, p1, Lkc/p;->f:Lkc/p;

    iget-object v0, p0, Lkc/p;->f:Lkc/p;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lkc/p;->g:Lkc/p;

    iput-object p1, p0, Lkc/p;->f:Lkc/p;

    return-void

    :cond_0
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c()Lkc/p;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkc/p;->d:Z

    new-instance v1, Lkc/p;

    iget v2, p0, Lkc/p;->b:I

    iget v3, p0, Lkc/p;->c:I

    iget-object p0, p0, Lkc/p;->a:[B

    invoke-direct {v1, p0, v2, v3, v0}, Lkc/p;-><init>([BIIZ)V

    return-object v1
.end method

.method public final d(Lkc/p;I)V
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lkc/p;->e:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lkc/p;->c:I

    add-int v1, v0, p2

    iget-object v2, p1, Lkc/p;->a:[B

    const/16 v3, 0x2000

    if-le v1, v3, :cond_2

    iget-boolean v4, p1, Lkc/p;->d:Z

    if-nez v4, :cond_1

    iget v4, p1, Lkc/p;->b:I

    sub-int/2addr v1, v4

    if-gt v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v2, v4, v2, v0}, Lkotlin/collections/l;->e0(I[BI[BI)V

    iget v0, p1, Lkc/p;->c:I

    iget v3, p1, Lkc/p;->b:I

    sub-int/2addr v0, v3

    iput v0, p1, Lkc/p;->c:I

    iput v1, p1, Lkc/p;->b:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget v0, p1, Lkc/p;->c:I

    iget v1, p0, Lkc/p;->b:I

    add-int v3, v1, p2

    iget-object v4, p0, Lkc/p;->a:[B

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/collections/l;->e0(I[BI[BI)V

    iget v0, p1, Lkc/p;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lkc/p;->c:I

    iget p1, p0, Lkc/p;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lkc/p;->b:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only owner can write"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
