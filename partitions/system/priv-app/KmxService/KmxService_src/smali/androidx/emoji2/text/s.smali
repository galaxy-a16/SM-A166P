.class public final Landroidx/emoji2/text/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Landroidx/emoji2/text/x;

.field public c:Landroidx/emoji2/text/x;

.field public d:Landroidx/emoji2/text/x;

.field public e:I

.field public f:I

.field public final g:Z

.field public final h:[I


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/x;Z[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/s;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/s;->b:Landroidx/emoji2/text/x;

    iput-object p1, p0, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    iput-boolean p2, p0, Landroidx/emoji2/text/s;->g:Z

    iput-object p3, p0, Landroidx/emoji2/text/s;->h:[I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    iget-object v0, p0, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    iget-object v0, v0, Landroidx/emoji2/text/x;->a:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/x;

    :goto_0
    iget v1, p0, Landroidx/emoji2/text/s;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iput v3, p0, Landroidx/emoji2/text/s;->a:I

    iput-object v0, p0, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    iput v2, p0, Landroidx/emoji2/text/s;->f:I

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iput-object v0, p0, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    iget v0, p0, Landroidx/emoji2/text/s;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/emoji2/text/s;->f:I

    goto :goto_2

    :cond_3
    const v0, 0xfe0e

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const v0, 0xfe0f

    if-ne p1, v0, :cond_6

    move v1, v2

    :cond_6
    if-eqz v1, :cond_7

    :goto_2
    move v2, v3

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    iget-object v1, v0, Landroidx/emoji2/text/x;->b:Landroidx/emoji2/text/r;

    if-eqz v1, :cond_9

    iget v1, p0, Landroidx/emoji2/text/s;->f:I

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Landroidx/emoji2/text/s;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    :cond_8
    iput-object v0, p0, Landroidx/emoji2/text/s;->d:Landroidx/emoji2/text/x;

    invoke-virtual {p0}, Landroidx/emoji2/text/s;->b()V

    const/4 v0, 0x3

    move v2, v0

    goto :goto_4

    :cond_9
    :goto_3
    invoke-virtual {p0}, Landroidx/emoji2/text/s;->b()V

    :goto_4
    iput p1, p0, Landroidx/emoji2/text/s;->e:I

    return v2
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/s;->a:I

    iget-object v0, p0, Landroidx/emoji2/text/s;->b:Landroidx/emoji2/text/x;

    iput-object v0, p0, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/s;->f:I

    return-void
.end method

.method public final c()Z
    .locals 5

    iget-object v0, p0, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    iget-object v0, v0, Landroidx/emoji2/text/x;->b:Landroidx/emoji2/text/r;

    invoke-virtual {v0}, Landroidx/emoji2/text/r;->c()Landroidx/emoji2/text/flatbuffer/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/flatbuffer/c;->a(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v4, v0, Landroidx/emoji2/text/flatbuffer/c;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v0, v0, Landroidx/emoji2/text/flatbuffer/c;->a:I

    add-int/2addr v1, v0

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget v0, p0, Landroidx/emoji2/text/s;->e:I

    const v1, 0xfe0f

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    return v3

    :cond_3
    iget-boolean v0, p0, Landroidx/emoji2/text/s;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/emoji2/text/s;->h:[I

    if-nez v0, :cond_4

    return v3

    :cond_4
    iget-object p0, p0, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    iget-object p0, p0, Landroidx/emoji2/text/x;->b:Landroidx/emoji2/text/r;

    invoke-virtual {p0, v2}, Landroidx/emoji2/text/r;->a(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_5

    return v3

    :cond_5
    return v2
.end method
