.class public abstract Lu6/d;
.super Lu6/e;
.source "SourceFile"

# interfaces
.implements Lu6/a;


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(ILh8/b;Lf6/j;Lf6/h;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lu6/e;-><init>(Lh8/b;Lf6/j;Lf6/h;)V

    iput p1, p0, Lu6/d;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lu6/d;->e:I

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packetIdentifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lu6/d;->e:I

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
