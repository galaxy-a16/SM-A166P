.class public final Lkotlin/jvm/internal/c;
.super Lkotlin/collections/n;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/jvm/internal/c;->a:I

    .line 1
    iput-object p1, p0, Lkotlin/jvm/internal/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Lkotlin/collections/n;-><init>()V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/jvm/internal/c;->a:I

    .line 2
    invoke-direct {p0}, Lkotlin/collections/n;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()C
    .locals 3

    iget v0, p0, Lkotlin/jvm/internal/c;->a:I

    iget-object v1, p0, Lkotlin/jvm/internal/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    check-cast v1, [C

    iget v0, p0, Lkotlin/jvm/internal/c;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/jvm/internal/c;->b:I

    aget-char p0, v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    iget v1, p0, Lkotlin/jvm/internal/c;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/jvm/internal/c;->b:I

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    iget v0, p0, Lkotlin/jvm/internal/c;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/jvm/internal/c;->b:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lkotlin/jvm/internal/c;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lkotlin/jvm/internal/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p0, p0, Lkotlin/jvm/internal/c;->b:I

    check-cast v3, [C

    array-length v0, v3

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    iget p0, p0, Lkotlin/jvm/internal/c;->b:I

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p0, v0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
