.class public final Lv7/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/q;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv7/o;->a:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv7/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv7/q;

    invoke-interface {p1}, Lv7/q;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget p0, p0, Lv7/o;->a:I

    invoke-interface {p1, v2}, Lv7/q;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final get(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lp9/d;->O(II)V

    iget p0, p0, Lv7/o;->a:I

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lv7/o;->a:I

    add-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lv7/o;->a:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
