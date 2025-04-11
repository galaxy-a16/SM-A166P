.class public final Lf6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lf6/j;

.field public final b:Lf6/j;


# direct methods
.method public constructor <init>(Lf6/j;Lf6/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf6/i;->a:Lf6/j;

    iput-object p2, p0, Lf6/i;->b:Lf6/j;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lf6/i;

    iget-object v0, p1, Lf6/i;->a:Lf6/j;

    iget-object v1, p0, Lf6/i;->a:Lf6/j;

    invoke-virtual {v1}, Lf6/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf6/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf6/i;->b:Lf6/j;

    invoke-virtual {p0}, Lf6/j;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lf6/i;->b:Lf6/j;

    invoke-virtual {p1}, Lf6/j;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lf6/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lf6/i;

    iget-object v1, p1, Lf6/i;->a:Lf6/j;

    iget-object v3, p0, Lf6/i;->a:Lf6/j;

    invoke-virtual {v3, v1}, Lf6/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lf6/i;->b:Lf6/j;

    iget-object p1, p1, Lf6/i;->b:Lf6/j;

    invoke-virtual {p0, p1}, Lf6/j;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lf6/i;->a:Lf6/j;

    invoke-virtual {v0}, Lf6/j;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lf6/i;->b:Lf6/j;

    invoke-virtual {p0}, Lf6/j;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lf6/i;->a:Lf6/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lf6/i;->b:Lf6/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
