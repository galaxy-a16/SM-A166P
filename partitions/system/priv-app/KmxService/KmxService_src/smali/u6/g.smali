.class public abstract Lu6/g;
.super Lu6/h;
.source "SourceFile"


# instance fields
.field public final c:Lf6/j;


# direct methods
.method public constructor <init>(Lf6/j;Lf6/h;)V
    .locals 0

    invoke-direct {p0, p2}, Lu6/h;-><init>(Lf6/h;)V

    iput-object p1, p0, Lu6/g;->c:Lf6/j;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lu6/g;->c:Lf6/j;

    if-nez v0, :cond_0

    invoke-super {p0}, Lu6/h;->d()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reasonString="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lu6/h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll9/b;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lu6/h;->b:Lf6/h;

    invoke-virtual {v0}, Lf6/h;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lu6/g;->c:Lf6/j;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
