.class public abstract Lorg/jctools/util/Pow2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static roundToPowerOfTwo(I)I
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_1

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    shl-int p0, v0, p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given value:"

    const-string v2, ". Expecting value >= 0."

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There is no larger power of 2 int for value:"

    const-string v2, " since it exceeds 2^31."

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
