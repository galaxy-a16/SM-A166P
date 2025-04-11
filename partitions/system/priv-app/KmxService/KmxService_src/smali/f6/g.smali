.class public final Lf6/g;
.super Lf6/f;
.source "SourceFile"


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1}, Lf6/f;-><init>([B)V

    iput p2, p0, Lf6/g;->c:I

    return-void
.end method

.method public static f(Lf6/f;Lf6/f;)Lf6/g;
    .locals 5

    invoke-virtual {p0}, Lf6/f;->e()Lf6/f;

    move-result-object v0

    iget-object v0, v0, Lu7/a;->a:[B

    invoke-virtual {p1}, Lf6/f;->e()Lf6/f;

    move-result-object p1

    iget-object p1, p1, Lu7/a;->a:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    const/16 v4, 0x2f

    aput-byte v4, v1, v2

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lf6/g;

    invoke-virtual {p0}, Lu7/a;->a()I

    move-result v0

    invoke-virtual {p0}, Lu7/a;->b()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-direct {p1, v1, v0}, Lf6/g;-><init>([BI)V

    return-object p1
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lf6/g;->c:I

    return p0
.end method
