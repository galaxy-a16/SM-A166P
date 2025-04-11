.class public final Lio/reactivex/internal/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:F

.field public c:I

.field public d:I

.field public e:I

.field public f:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, Lio/reactivex/internal/util/c;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 1
    invoke-direct {p0, v0, v0}, Lio/reactivex/internal/util/c;-><init>(II)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, v1, v0}, Lio/reactivex/internal/util/c;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    iput p1, p0, Lio/reactivex/internal/util/c;->a:I

    const/16 p2, 0xf

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lio/reactivex/internal/util/c;->b:F

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v1, p1

    add-int/lit8 p2, p1, -0x1

    .line 5
    iput p2, p0, Lio/reactivex/internal/util/c;->c:I

    int-to-float p2, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p0, Lio/reactivex/internal/util/c;->e:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lio/reactivex/internal/util/c;->b:F

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v1, p1

    add-int/lit8 p2, p1, -0x1

    .line 8
    iput p2, p0, Lio/reactivex/internal/util/c;->c:I

    int-to-float p2, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p0, Lio/reactivex/internal/util/c;->e:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    const v0, -0x61c88647

    iget v1, p0, Lio/reactivex/internal/util/c;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    iget v2, p0, Lio/reactivex/internal/util/c;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/2addr v3, v0

    ushr-int/lit8 v0, v3, 0x10

    xor-int/2addr v0, v3

    and-int/2addr v0, v2

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    aget-object v3, v1, v0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    aput-object p1, v1, v0

    iget p1, p0, Lio/reactivex/internal/util/c;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/util/c;->d:I

    iget v0, p0, Lio/reactivex/internal/util/c;->e:I

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Lio/reactivex/internal/util/c;->b()V

    :cond_3
    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    iget v2, p0, Lio/reactivex/internal/util/c;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/2addr v3, v0

    ushr-int/lit8 v0, v3, 0x10

    xor-int/2addr v0, v3

    and-int/2addr v0, v2

    aget-object v3, v1, v0

    if-eqz v3, :cond_6

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    aget-object v3, v1, v0

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_6
    :goto_3
    aput-object p1, v1, v0

    iget p1, p0, Lio/reactivex/internal/util/c;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/util/c;->d:I

    iget v0, p0, Lio/reactivex/internal/util/c;->e:I

    if-lt p1, v0, :cond_7

    invoke-virtual {p0}, Lio/reactivex/internal/util/c;->b()V

    :cond_7
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 10

    const v0, -0x61c88647

    iget v1, p0, Lio/reactivex/internal/util/c;->a:I

    iget v2, p0, Lio/reactivex/internal/util/c;->b:F

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    array-length v3, v1

    shl-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, -0x1

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lio/reactivex/internal/util/c;->d:I

    :goto_0
    add-int/lit8 v8, v7, -0x1

    if-eqz v7, :cond_3

    :goto_1
    add-int/lit8 v3, v3, -0x1

    aget-object v7, v1, v3

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    mul-int/2addr v7, v0

    ushr-int/lit8 v9, v7, 0x10

    xor-int/2addr v7, v9

    and-int/2addr v7, v5

    aget-object v9, v6, v7

    if-eqz v9, :cond_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    and-int/2addr v7, v5

    aget-object v9, v6, v7

    if-nez v9, :cond_1

    :cond_2
    aget-object v9, v1, v3

    aput-object v9, v6, v7

    move v7, v8

    goto :goto_0

    :cond_3
    iput v5, p0, Lio/reactivex/internal/util/c;->c:I

    int-to-float v0, v4

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lio/reactivex/internal/util/c;->e:I

    iput-object v6, p0, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    return-void

    :goto_2
    iget-object v1, p0, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    array-length v3, v1

    shl-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, -0x1

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lio/reactivex/internal/util/c;->d:I

    :goto_3
    add-int/lit8 v8, v7, -0x1

    if-eqz v7, :cond_7

    :goto_4
    add-int/lit8 v3, v3, -0x1

    aget-object v7, v1, v3

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    mul-int/2addr v7, v0

    ushr-int/lit8 v9, v7, 0x10

    xor-int/2addr v7, v9

    and-int/2addr v7, v5

    aget-object v9, v6, v7

    if-eqz v9, :cond_6

    :cond_5
    add-int/lit8 v7, v7, 0x1

    and-int/2addr v7, v5

    aget-object v9, v6, v7

    if-nez v9, :cond_5

    :cond_6
    aget-object v9, v1, v3

    aput-object v9, v6, v7

    move v7, v8

    goto :goto_3

    :cond_7
    iput v5, p0, Lio/reactivex/internal/util/c;->c:I

    int-to-float v0, v4

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lio/reactivex/internal/util/c;->e:I

    iput-object v6, p0, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 6

    const v0, -0x61c88647

    iget v1, p0, Lio/reactivex/internal/util/c;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    iget v4, p0, Lio/reactivex/internal/util/c;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    mul-int/2addr v5, v0

    ushr-int/lit8 v0, v5, 0x10

    xor-int/2addr v0, v5

    and-int/2addr v0, v4

    aget-object v5, v1, v0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    and-int/2addr v0, v4

    aget-object v5, v1, v0

    if-nez v5, :cond_2

    :goto_0
    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v4, v1}, Lio/reactivex/internal/util/c;->d(II[Ljava/lang/Object;)V

    :goto_2
    return v2

    :goto_3
    iget-object v1, p0, Lio/reactivex/internal/util/c;->f:[Ljava/lang/Object;

    iget v4, p0, Lio/reactivex/internal/util/c;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    mul-int/2addr v5, v0

    ushr-int/lit8 v0, v5, 0x10

    xor-int/2addr v0, v5

    and-int/2addr v0, v4

    aget-object v5, v1, v0

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_5

    :cond_4
    add-int/2addr v0, v2

    and-int/2addr v0, v4

    aget-object v5, v1, v0

    if-nez v5, :cond_5

    :goto_4
    move v2, v3

    goto :goto_6

    :cond_5
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_5
    invoke-virtual {p0, v0, v4, v1}, Lio/reactivex/internal/util/c;->d(II[Ljava/lang/Object;)V

    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(II[Ljava/lang/Object;)V
    .locals 5

    const v0, -0x61c88647

    iget v1, p0, Lio/reactivex/internal/util/c;->a:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget v1, p0, Lio/reactivex/internal/util/c;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/util/c;->d:I

    :goto_0
    move v1, p1

    add-int/lit8 p0, v1, 0x1

    :goto_1
    and-int p1, p0, p2

    aget-object p0, p3, p1

    if-nez p0, :cond_0

    aput-object v2, p3, v1

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/2addr v3, v0

    ushr-int/lit8 v4, v3, 0x10

    xor-int/2addr v3, v4

    and-int/2addr v3, p2

    if-gt v1, p1, :cond_1

    if-ge v1, v3, :cond_2

    if-le v3, p1, :cond_3

    goto :goto_2

    :cond_1
    if-lt v1, v3, :cond_3

    if-le v3, p1, :cond_3

    :cond_2
    :goto_2
    aput-object p0, p3, v1

    goto :goto_0

    :cond_3
    add-int/lit8 p0, p1, 0x1

    goto :goto_1

    :goto_3
    iget v1, p0, Lio/reactivex/internal/util/c;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/util/c;->d:I

    :goto_4
    add-int/lit8 p0, p1, 0x1

    :goto_5
    and-int/2addr p0, p2

    aget-object v1, p3, p0

    if-nez v1, :cond_4

    aput-object v2, p3, p1

    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/2addr v3, v0

    ushr-int/lit8 v4, v3, 0x10

    xor-int/2addr v3, v4

    and-int/2addr v3, p2

    if-gt p1, p0, :cond_5

    if-ge p1, v3, :cond_6

    if-le v3, p0, :cond_7

    goto :goto_6

    :cond_5
    if-lt p1, v3, :cond_7

    if-le v3, p0, :cond_7

    :cond_6
    :goto_6
    aput-object v1, p3, p1

    move p1, p0

    goto :goto_4

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
