.class public final Lj/d;
.super Lj/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lj/c;

.field public b:Z

.field public final synthetic c:Lj/g;


# direct methods
.method public constructor <init>(Lj/g;)V
    .locals 0

    iput-object p1, p0, Lj/d;->c:Lj/g;

    invoke-direct {p0}, Lj/f;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj/d;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lj/c;)V
    .locals 1

    iget-object v0, p0, Lj/d;->a:Lj/c;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, Lj/c;->d:Lj/c;

    iput-object p1, p0, Lj/d;->a:Lj/c;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lj/d;->b:Z

    :cond_1
    return-void
.end method

.method public final hasNext()Z
    .locals 3

    iget-boolean v0, p0, Lj/d;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lj/d;->c:Lj/g;

    iget-object p0, p0, Lj/g;->a:Lj/c;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object p0, p0, Lj/d;->a:Lj/c;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lj/c;->c:Lj/c;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj/d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/d;->b:Z

    iget-object v0, p0, Lj/d;->c:Lj/g;

    iget-object v0, v0, Lj/g;->a:Lj/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/d;->a:Lj/c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lj/c;->c:Lj/c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lj/d;->a:Lj/c;

    return-object v0
.end method
