.class public final Lv7/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/q;


# instance fields
.field public final a:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7/n;->a:[I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv7/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p1, Lv7/n;

    iget-object p0, p0, Lv7/n;->a:[I

    if-eqz v1, :cond_2

    check-cast p1, Lv7/n;

    iget-object p1, p1, Lv7/n;->a:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_2
    check-cast p1, Lv7/q;

    array-length v1, p0

    invoke-interface {p1}, Lv7/q;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_5

    aget v3, p0, v1

    invoke-interface {p1, v1}, Lv7/q;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final get(I)I
    .locals 1

    iget-object p0, p0, Lv7/n;->a:[I

    array-length v0, p0

    invoke-static {p1, v0}, Lp9/d;->O(II)V

    aget p0, p0, p1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lv7/n;->a:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lv7/n;->a:[I

    array-length p0, p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lv7/n;->a:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
