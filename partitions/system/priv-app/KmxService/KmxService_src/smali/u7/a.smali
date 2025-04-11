.class public abstract Lu7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu7/a;->a:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Lu7/a;->a:[B

    array-length p0, p0

    return p0
.end method

.method public b()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu7/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu7/a;

    invoke-virtual {p0}, Lu7/a;->b()I

    move-result v1

    invoke-virtual {p0}, Lu7/a;->a()I

    move-result v3

    iget-object v4, p1, Lu7/a;->a:[B

    invoke-virtual {p1}, Lu7/a;->b()I

    move-result v5

    invoke-virtual {p1}, Lu7/a;->a()I

    move-result p1

    sub-int v6, v3, v1

    sub-int/2addr p1, v5

    if-eq v6, p1, :cond_2

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lu7/a;->a:[B

    if-ne p0, v4, :cond_3

    if-ne v1, v5, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    if-ge v1, v3, :cond_5

    aget-byte p1, p0, v1

    aget-byte v6, v4, v5

    if-eq p1, v6, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return v0
.end method

.method public final hashCode()I
    .locals 4

    invoke-virtual {p0}, Lu7/a;->b()I

    move-result v0

    invoke-virtual {p0}, Lu7/a;->a()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lu7/a;->a:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
