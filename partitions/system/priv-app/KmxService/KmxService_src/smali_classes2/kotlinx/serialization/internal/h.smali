.class public final Lkotlinx/serialization/internal/h;
.super Lkotlinx/serialization/internal/b1;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/internal/b1;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/h;->a:[B

    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/internal/h;->b:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/h;->b(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/h;->a:[B

    iget p0, p0, Lkotlinx/serialization/internal/h;->b:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/h;->a:[B

    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/h;->a:[B

    :cond_1
    return-void
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/internal/h;->b:I

    return p0
.end method
