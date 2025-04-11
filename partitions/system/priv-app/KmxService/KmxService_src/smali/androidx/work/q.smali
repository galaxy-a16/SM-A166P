.class public final Landroidx/work/q;
.super Landroidx/work/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/work/p;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/work/y;->a:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/work/y;->b:Lp1/q;

    iget-object p1, p1, Landroidx/work/y;->c:Ljava/util/LinkedHashSet;

    invoke-direct {p0, v0, v1, p1}, Landroidx/work/z;-><init>(Ljava/util/UUID;Lp1/q;Ljava/util/LinkedHashSet;)V

    return-void
.end method
