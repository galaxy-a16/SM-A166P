.class public abstract Lu6/e;
.super Lu6/g;
.source "SourceFile"


# instance fields
.field public final d:Lh8/b;


# direct methods
.method public constructor <init>(Lh8/b;Lf6/j;Lf6/h;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lu6/g;-><init>(Lf6/j;Lf6/h;)V

    iput-object p1, p0, Lu6/e;->d:Lh8/b;

    return-void
.end method


# virtual methods
.method public final e()I
    .locals 1

    invoke-super {p0}, Lu6/g;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lu6/e;->d:Lh8/b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final f(Lu6/e;)Z
    .locals 4

    iget-object v0, p1, Lu6/h;->b:Lf6/h;

    iget-object v1, p0, Lu6/h;->b:Lf6/h;

    invoke-virtual {v1, v0}, Lf6/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu6/g;->c:Lf6/j;

    iget-object v3, p1, Lu6/g;->c:Lf6/j;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lu6/e;->d:Lh8/b;

    iget-object p1, p1, Lu6/e;->d:Lh8/b;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method
