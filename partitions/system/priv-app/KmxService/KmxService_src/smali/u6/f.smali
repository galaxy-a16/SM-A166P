.class public abstract Lu6/f;
.super Lu6/g;
.source "SourceFile"

# interfaces
.implements Lu6/a;


# instance fields
.field public final d:I

.field public final e:Lv7/t;


# direct methods
.method public constructor <init>(ILv7/t;Lf6/j;Lf6/h;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lu6/g;-><init>(Lf6/j;Lf6/h;)V

    iput p1, p0, Lu6/f;->d:I

    iput-object p2, p0, Lu6/f;->e:Lv7/t;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lu6/f;->d:I

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packetIdentifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lu6/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lu6/g;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll9/b;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()I
    .locals 1

    invoke-super {p0}, Lu6/g;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lu6/f;->e:Lv7/t;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
