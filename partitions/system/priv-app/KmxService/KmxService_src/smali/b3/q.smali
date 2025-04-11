.class public final Lb3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb3/a;

.field public final b:La3/d;


# direct methods
.method public synthetic constructor <init>(Lb3/a;La3/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/q;->a:Lb3/a;

    iput-object p2, p0, Lb3/q;->b:La3/d;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lb3/q;

    if-eqz v1, :cond_0

    check-cast p1, Lb3/q;

    iget-object v1, p0, Lb3/q;->a:Lb3/a;

    iget-object v2, p1, Lb3/q;->a:Lb3/a;

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lb3/q;->b:La3/d;

    iget-object p1, p1, Lb3/q;->b:La3/d;

    invoke-static {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lb3/q;->a:Lb3/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lb3/q;->b:La3/d;

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lp1/e;

    invoke-direct {v0, p0}, Lp1/e;-><init>(Ljava/lang/Object;)V

    const-string v1, "key"

    iget-object v2, p0, Lb3/q;->a:Lb3/a;

    invoke-virtual {v0, v2, v1}, Lp1/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feature"

    iget-object p0, p0, Lb3/q;->b:La3/d;

    invoke-virtual {v0, p0, v1}, Lp1/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lp1/e;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
